#pragma newdecls required
#pragma semicolon 1

#include <sdkhooks>
#include <sourcemod>
#include <vscript_proxy>

#define GAMEDATA_FILE "movable-ammo.games"
#define PLUGIN_DESCRIPTION "Allows ammo to be transported when it doesn't fit in a player's inventory"
#define PLUGIN_VERSION "1.0.3"

public Plugin myinfo =
{
	name        = "Movable Ammo",
	author      = "Dysphie",
	description = PLUGIN_DESCRIPTION,
	version     = PLUGIN_VERSION,
	url         = "https://github.com/dysphie/nmrih-movable-ammo"
};

Handle fnPickupControllerInit;
Handle fnAmmoBoxFallInit;
bool   g_LateLoaded;
ConVar cvEnabled;
ConVar cvCooldown;

#define NMR_MAXPLAYERS 9

float g_NextPickupTime[NMR_MAXPLAYERS+1];

public APLRes AskPluginLoad2(Handle myself, bool late, char[] error, int err_max)
{
	g_LateLoaded = late;
	return APLRes_Success;
}

public void OnPluginStart()
{
	SetupSDKCalls();
	RegisterConvars();
	CheckLateload();
}

void SetupSDKCalls()
{
	GameData gamedata = new GameData(GAMEDATA_FILE);
	if (!gamedata)
	{
		SetFailState("Failed to load gamedata file " ... GAMEDATA_FILE);
	}

	StartPrepSDKCall(SDKCall_Entity);
	PrepSDKCall_SetFromConf(gamedata, SDKConf_Signature, "CPlayerPickupController::Init");
	PrepSDKCall_AddParameter(SDKType_CBasePlayer, SDKPass_Pointer);
	PrepSDKCall_AddParameter(SDKType_CBaseEntity, SDKPass_Pointer);
	fnPickupControllerInit = EndPrepSDKCall();
	if (!fnPickupControllerInit)
	{
		SetFailState("Failed to set up SDKCall for CPlayerPickupController::Init");
	}

	StartPrepSDKCall(SDKCall_Entity);
	PrepSDKCall_SetFromConf(gamedata, SDKConf_Signature, "CItem_AmmoBox::FallInit");
	fnAmmoBoxFallInit = EndPrepSDKCall();
	if (!fnAmmoBoxFallInit)
	{
		SetFailState("Failed to set up SDKCall for CItem_AmmoBox::FallInit");
	}
	
	delete gamedata;
}

void RegisterConvars()
{
	cvEnabled = CreateConVar("sv_movable_ammo", "1", "Whether ammo boxes can be carried like physics props");
	cvCooldown = CreateConVar("sv_movable_ammo_pickup_delay", "2.5", "Seconds that must pass after a player becomes full before we attempt to lift the ammo");

	CreateConVar("movable_ammo_version", PLUGIN_VERSION, PLUGIN_DESCRIPTION,
    	FCVAR_SPONLY|FCVAR_NOTIFY|FCVAR_DONTRECORD);

	AutoExecConfig(true, "movable-ammo");
}

void CheckLateload()
{
	// Hook existing ammo boxes
	if (g_LateLoaded)
	{
		int entity = -1;
		while ((entity = FindEntityByClassname(entity, "item_ammo_box")) != -1)
		{
			OnAmmoBoxCreated(entity);
		}
	}
}

public void OnEntityCreated(int entity, const char[] classname)
{
	if (StrEqual(classname, "item_ammo_box"))
	{
		OnAmmoBoxCreated(entity);
	}
}

void OnAmmoBoxCreated(int ammobox)
{
	SDKHook(ammobox, SDKHook_Use, OnAmmoBoxUse);
}

Action OnAmmoBoxUse(int ammobox, int activator, int caller, UseType type, float value)
{
	if (!cvEnabled.BoolValue || !IsPlayer(activator) || !IsValidEntity(ammobox))
	{
		return Plugin_Continue;
	}

	// On cooldown
	float curTime = GetGameTime();
	if (curTime < g_NextPickupTime[activator])
	{
		return Plugin_Continue;
	}

	if (HasInventorySpace(activator))
	{
		// Player successfully picked up the ammo, set a cooldown on our next pickup so that
		// players can freely spam +use on ammo without immediately picking up the leftovers
		g_NextPickupTime[activator] = curTime + cvCooldown.FloatValue;
		return Plugin_Continue;
	}

	// We need to make sure the ammobox has physics, else we crash!
	SDKCall(fnAmmoBoxFallInit, ammobox);

	int pickup = CreateEntityByName("player_pickup");
	if (pickup == -1 || !DispatchSpawn(pickup))
	{
		LogError("OnAmmoBoxUse: failed to create player_pickup");
		return Plugin_Continue;
	}

	SDKCall(fnPickupControllerInit, pickup, activator, ammobox);
	return Plugin_Handled;
}

bool IsPlayer(int entity)
{
	return 0 < entity <= MaxClients;
}

bool HasInventorySpace(int client)
{
	return RunEntVScriptBool(client, "HasLeftoverWeight(1)");
}

public void OnClientDisconnect(int client)
{
	g_NextPickupTime[client] = 0.0;
}
