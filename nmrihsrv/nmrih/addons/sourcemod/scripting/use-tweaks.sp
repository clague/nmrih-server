
#include <sdktools>
#include <sdkhooks>
#include <dhooks>

#define KEEP_ITERATING true
#define FCAP_NONE 0
#define FCAP_USE_IN_RADIUS 0x00000200
#define CONTENTS_USEABLE CONTENTS_EMPTY | CONTENTS_SOLID | CONTENTS_WINDOW | CONTENTS_GRATE | CONTENTS_OPAQUE | CONTENTS_MOVEABLE | CONTENTS_MONSTER

#define PLUGIN_DESCRIPTION "Makes +use ignore players in the way"
#define PLUGIN_VERSION "1.0.2"

public Plugin myinfo =
{
	name		= "Use Tweaks",
	author		= "Dysphie",
	description = PLUGIN_DESCRIPTION,
	version		= PLUGIN_VERSION,
	url			= ""
};

ConVar sv_use_range;
ConVar sv_use_secondary_radius;

Handle fnIsUseable;
Handle fnCalcNearestPoint;

int	   offs_m_Collision;

ConVar cvEnabled;
bool   isEnabled;

// These are used by our sphere query
int	   g_Client;
float  g_SphereStart[3];
float  g_RayStart[3];
float  g_Fwd[3];
float  g_NearestDist;
int	   g_NearestEnt;

public void OnPluginStart()
{
	CreateConVar("use_tweaks_version", PLUGIN_VERSION, PLUGIN_DESCRIPTION,
				 FCVAR_SPONLY | FCVAR_NOTIFY | FCVAR_DONTRECORD);

	cvEnabled = CreateConVar("sm_use_ignore_players", "1");
	cvEnabled.AddChangeHook(OnConVarEnabledChanged);
	isEnabled = cvEnabled.BoolValue;

	GameData gamedata = new GameData("use-tweaks.games");

	StartPrepSDKCall(SDKCall_Player);
	PrepSDKCall_SetFromConf(gamedata, SDKConf_Signature, "CBasePlayer::IsUseableEntity");
	PrepSDKCall_AddParameter(SDKType_CBaseEntity, SDKPass_Pointer);	   // pEntity
	PrepSDKCall_AddParameter(SDKType_PlainOldData, SDKPass_Plain);	   // requiredCaps
	PrepSDKCall_SetReturnInfo(SDKType_Bool, SDKPass_Plain);
	fnIsUseable = EndPrepSDKCall();

	if (!fnIsUseable)
	{
		SetFailState("Failed to SDKCall CBaseEntity::IsUseableEntity");
	}

	StartPrepSDKCall(SDKCall_Raw);
	PrepSDKCall_SetFromConf(gamedata, SDKConf_Signature, "CCollisionProperty::CalcNearestPoint");
	PrepSDKCall_AddParameter(SDKType_Vector, SDKPass_ByRef);							  // vecWorldPt
	PrepSDKCall_AddParameter(SDKType_Vector, SDKPass_ByRef, _, VENCODE_FLAG_COPYBACK);	  // pVecNearestWorldPt
	fnCalcNearestPoint = EndPrepSDKCall();

	if (!fnCalcNearestPoint)
	{
		SetFailState("Failed to SDKCall CCollisionProperty::CalcNearestPoint");
	}

	offs_m_Collision = gamedata.GetOffset("CBaseEntity::m_Collision");
	if (offs_m_Collision == -1)
	{
		SetFailState("Failed to get offset CBaseEntity::m_Collision");
	}

	sv_use_range = FindConVarOrFail("sv_use_range");
	sv_use_secondary_radius = FindConVarOrFail("sv_use_secondary_radius");

	DynamicDetour detour = DynamicDetour.FromConf(gamedata, "CBasePlayer::FindUseEntity");
	if (!detour)
	{
		SetFailState("Failed to find signature CBasePlayer::FindUseEntity");
	}

	detour.Enable(Hook_Pre, Detour_FindUseEntity);
	delete detour;
	delete gamedata;

	AutoExecConfig(true, "use-tweaks");
}

ConVar FindConVarOrFail(const char[] name)
{
	ConVar cvar = FindConVar(name);
	if (!cvar)
	{
		SetFailState("Required convar \"%s\" not found, update needed", name);
	}
	return cvar;
}

void OnConVarEnabledChanged(ConVar convar, const char[] oldValue, const char[] newValue)
{
	isEnabled = StringToInt(newValue) != 0;
}

MRESReturn Detour_FindUseEntity(int client, DHookReturn ret)
{
	if (isEnabled)
	{
		ret.Value = FindUseEntity(client);
		return MRES_Supercede;
	}

	return MRES_Ignored;
}

bool IsUseableEntity(int client, int entity, int requiredCaps = FCAP_NONE)
{
	return SDKCall(fnIsUseable, client, entity, requiredCaps);
}

int FindUseEntity(int client)
{
	float eyePos[3], eyeAng[3];
	GetClientEyePosition(client, eyePos);
	GetClientEyeAngles(client, eyeAng);

	float fwd[3];
	GetAngleVectors(eyeAng, fwd, NULL_VECTOR, NULL_VECTOR);

	float endPos[3];
	ForwardVector(eyePos, eyeAng, sv_use_range.FloatValue, endPos);

	// Check if there's a useable in front of us
	TR_TraceRayFilter(eyePos, endPos, CONTENTS_USEABLE, RayType_EndPoint, TraceFilter_IgnorePlayers);

	int	hitEnt = -1;
	float sphereStart[3];
	sphereStart = endPos;

	if (TR_DidHit())
	{
		hitEnt = TR_GetEntityIndex();

		if (hitEnt && IsValidEntity(hitEnt) && IsUseableEntity(client, hitEnt, FCAP_NONE))
		{
			return hitEnt;
		}

		TR_GetEndPosition(sphereStart);
	}

	// Direct trace didn't find anything, try radial search
	g_Client = client;
	g_SphereStart = endPos;
	g_RayStart = eyePos;
	g_Fwd = fwd;
	g_NearestDist = view_as<float>(0x7F7FFFFF);
	g_NearestEnt = -1;

	TR_EnumerateEntitiesSphere(endPos, sv_use_secondary_radius.FloatValue, PARTITION_NON_STATIC_EDICTS, EntityInSphere);

	return g_NearestEnt;
}

bool CalcNearestPoint(int entity, float point[3], float nearestPoint[3])
{
	Address collision = GetEntityAddress(entity) + view_as<Address>(offs_m_Collision);
	if (collision)
	{
		SDKCall(fnCalcNearestPoint, collision, point, nearestPoint);
		return true;
	}
	return false;
}

bool TraceFilter_IgnorePlayers(int entity, int contentsMask)
{
	return !IsEntityPlayer(entity);
}

bool IsEntityPlayer(int entity)
{
	return 0 < entity <= MaxClients;
}

public bool TraceFilter_IgnoreOne(int entity, int contentsMask, int ignore)
{
	return entity != ignore;
}

bool EntityInSphere(int hitEnt)
{
	if (!IsValidEntity(hitEnt) || IsEntityPlayer(hitEnt))
	{
		return KEEP_ITERATING;
	}

	// SDK uses FCAP_USE_IN_RADIUS here, but it doesn't seem to work in NMRiH
	if (!IsUseableEntity(g_Client, hitEnt, FCAP_NONE))
	{
		return KEEP_ITERATING;
	}

	// Parented entities only react to direct traces, not sphere queries
	if (GetEntPropEnt(hitEnt, Prop_Data, "m_hMoveParent") != -1) {
		return KEEP_ITERATING;
	}

	float nearestSphereStart[3];
	if (!CalcNearestPoint(hitEnt, g_SphereStart, nearestSphereStart))
	{
		return KEEP_ITERATING;
	}

	float rayToSphere[3];
	MakeVectorFromPoints(g_RayStart, nearestSphereStart, rayToSphere);
	NormalizeVector(rayToSphere, rayToSphere);

	// See if it's more roughly in front of the player than previous guess
	float dot = GetVectorDotProduct(rayToSphere, g_Fwd);
	if (dot < 0.8)
	{
		return KEEP_ITERATING;
	}

	float dist = GetVectorDistance(nearestSphereStart, g_SphereStart);

	if (dist < g_NearestDist)
	{
		float nearestRayStart[3];
		if (!CalcNearestPoint(hitEnt, g_RayStart, nearestRayStart))
		{
			return KEEP_ITERATING;
		}

		// Since this has purely been a radius search to this point, we now
		// make sure the object isn't behind glass or a grate
		// New: Ignore players in the way!
		TR_TraceRayFilter(g_RayStart, nearestRayStart, CONTENTS_USEABLE, RayType_EndPoint, TraceFilter_IgnorePlayers);

		bool obstructed = TR_DidHit() && TR_GetEntityIndex() != hitEnt;

		if (!obstructed)
		{
			g_NearestEnt = hitEnt;
			g_NearestDist = dist;
		}
	}

	return KEEP_ITERATING;
}

void ForwardVector(const float pos[3], const float ang[3], float distance, float dest[3])
{
	float dir[3];
	GetAngleVectors(ang, dir, NULL_VECTOR, NULL_VECTOR);
	dest = pos;
	dest[0] += dir[0] * distance;
	dest[1] += dir[1] * distance;
	dest[2] += dir[2] * distance;
}

// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⣻⠁⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⢀⣾⠳⢶⣦⠤⣀⠀⠀⠀⠀⠀⠀⠀⣾⢀⡇⡴⠋⣀⠴⣊⣩⣤⠶⠞⢹⣄⠀⠀⠀
// ⠀⠀⠀⠀⢸⠀⠀⢠⠈⠙⠢⣙⠲⢤⠤⠤⠀⠒⠳⡄⣿⢀⠾⠓⢋⠅⠛⠉⠉⠝⠀⠼⠀⠀⠀
// ⠀⠀⠀⠀⢸⠀⢰⡀⠁⠀⠀⠈⠑⠦⡀⠀⠀⠀⠀⠈⠺⢿⣂⠀⠉⠐⠲⡤⣄⢉⠝⢸⠀⠀⠀
// ⠀⠀⠀⠀⢸⠀⢀⡹⠆⠀⠀⠀⠀⡠⠃⠀⠀⠀⠀⠀⠀⠀⠉⠙⠲⣄⠀⠀⠙⣷⡄⢸⠀⠀⠀
// ⠀⠀⠀⠀⢸⡀⠙⠂⢠⠀⠀⡠⠊⠀⠀⠀⠀⢠⠀⠀⠀⠀⠘⠄⠀⠀⠑⢦⣔⠀⢡⡸⠀⠀⠀
// ⠀⠀⠀⠀⢀⣧⠀⢀⡧⣴⠯⡀⠀⠀⠀⠀⠀⡎⠀⠀⠀⠀⠀⢸⡠⠔⠈⠁⠙⡗⡤⣷⡀⠀⠀
// ⠀⠀⠀⠀⡜⠈⠚⠁⣬⠓⠒⢼⠅⠀⠀⠀⣠⡇⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⡀⢹⠀⠸⡄⠀⠀
// ⠀⠀⠀⡸⠀⠀⠀⠘⢸⢀⠐⢃⠀⠀⠀⡰⠋⡇⠀⠀⠀⢠⠀⠀⡿⣆⠀⠀⣧⡈⡇⠆⢻⠀⠀
// ⠀⠀⢰⠃⠀⠀⢀⡇⠼⠉⠀⢸⡤⠤⣶⡖⠒⠺⢄⡀⢀⠎⡆⣸⣥⠬⠧⢴⣿⠉⠁⠸⡀⣇⠀
// ⠀⠀⠇⠀⠀⠀⢸⠀⠀⠀⣰⠋⠀⢸⣿⣿⠀⠀⠀⠙⢧⡴⢹⣿⣿⠀⠀⠀⠈⣆⠀⠀⢧⢹⡄
// ⠀⣸⠀⢠⠀⠀⢸⡀⠀⠀⢻⡀⠀⢸⣿⣿⠀⠀⠀⠀⡼⣇⢸⣿⣿⠀⠀⠀⢀⠏⠀⠀⢸⠀⠇
// ⠀⠓⠈⢃⠀⠀⠀⡇⠀⠀⠀⣗⠦⣀⣿⡇⠀⣀⠤⠊⠀⠈⠺⢿⣃⣀⠤⠔⢸⠀⠀⠀⣼⠑⢼
// ⠀⠀⠀⢸⡀⣀⣾⣷⡀⠀⢸⣯⣦⡀⠀⠀⠀⢇⣀⣀⠐⠦⣀⠘⠀⠀⢀⣰⣿⣄⠀⠀⡟⠀⠀
// ⠀⠀⠀⠀⠛⠁⣿⣿⣧⠀⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣿⣿⡿⠈⠢⣼⡇⠀⠀
// ⠀⠀⠀⠀⠀⠀⠈⠁⠈⠻⠈⢻⡿⠉⣿⠿⠛⡇⠒⠒⢲⠺⢿⣿⣿⠉⠻⡿⠁⠀⠀⠈⠁⠀⠀
// ⢀⠤⠒⠦⡀⠀⠀⠀⠀⠀⠀⠀⢀⠞⠉⠆⠀⠀⠉⠉⠉⠀⠀⡝⣍⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⡎⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⡰⠋⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⢡⠈⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⡇⠀⠀⠸⠁⠀⠀⠀⠀⢀⠜⠁⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠘⡄⠈⢳⡀⠀⠀⠀⠀⠀⠀⠀
// ⡇⠀⠀⢠⠀⠀⠀⠀⠠⣯⣀⠀⠀⠀⡰⡇⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⢀⡦⠤⢄⡀⠀⠀⠀⠀
// ⢱⡀⠀⠈⠳⢤⣠⠖⠋⠛⠛⢷⣄⢠⣷⠁⠀⠀⠀⠀⠀⠀⠀⠀⠘⡾⢳⠃⠀⠀⠘⢇⠀⠀⠀
// ⠀⠙⢦⡀⠀⢠⠁⠀⠀⠀⠀⠀⠙⣿⣏⣀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣧⡃⠀⠀⠀⠀⣸⠀⠀⠀
// ⠀⠀⠀⠈⠉⢺⣄⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⣤⣀⣠⡾⠃⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠣⢅⡤⣀⣀⣠⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠉⠉⠉⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠁⠀⠉⣿⣿⣿⣿⣿⡿⠻⣿⣿⣿⣿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣟⠀⠀⢠⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⠀⠀⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡏⠀⠀⢸⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⠀⠀⠀⢺⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠈⠉⠻⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀
// ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀