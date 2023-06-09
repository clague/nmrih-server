#include <sourcemod>
#include <sdktools>
#include <sdktools_functions>
#undef REQUIRE_PLUGIN
#include <adminmenu>
#include <globalvariables>
#include <getoverit>

new Handle:hAdminMenu = INVALID_HANDLE

new Handle:Cvar_RocketMe = INVALID_HANDLE

new g_Explosion

new g_Ent[MAXPLAYERS+1]
new String:GameName[64]

#define PLUGIN_VERSION "1.0.110"

// Functions
public Plugin:myinfo =
{
    name = "Evil Admin - Rocket",
    author = "<eVa>Dog",
    description = "Make a rocket with a player",
    version = PLUGIN_VERSION,
    url = "http://www.theville.org"
}

public OnPluginStart()
{
    CreateConVar("sm_evilrocket_version", PLUGIN_VERSION, " Evil Rocket Version", FCVAR_SPONLY|FCVAR_REPLICATED|FCVAR_NOTIFY)
    Cvar_RocketMe = CreateConVar("sm_rocketme_enabled", "1", " Allow players to suicide as a rocket", _)
    
    RegAdminCmd("sm_evilrocket", Command_EvilRocket, ADMFLAG_SLAY, "sm_evilrocket <#userid|name>")
    RegConsoleCmd("sm_rocketme", Command_RocketMe, " a fun way to suicide")
    RegConsoleCmd("sm_rm", Command_RocketMe, " a fun way to suicide")
    
    LoadTranslations("common.phrases")
    
    GetGameFolderName(GameName, sizeof(GameName))
    
    new Handle:topmenu
    if (LibraryExists("adminmenu") && ((topmenu = GetAdminTopMenu()) != INVALID_HANDLE))
    {
        OnAdminMenuReady(topmenu)
    }
}

public OnMapStart()
{
    g_Explosion = PrecacheModel("sprites/sprite_fire01.vmt")
    
    PrecacheSound("ambient/explosions/exp2.wav", true)
    PrecacheSound("npc/env_headcrabcanister/launch.wav", true)
    PrecacheSound("weapons/rpg/rocketfire1.wav", true)
}

public Action:Command_EvilRocket(client, args)
{
    decl String:target[65]
    decl String:target_name[MAX_TARGET_LENGTH]
    decl target_list[MAXPLAYERS]
    decl target_count
    decl bool:tn_is_ml
    
    if (args < 1)
    {
        ReplyToCommand(client, "[SM] Usage: sm_evilrocket <#userid|name>");
        return Plugin_Handled
    }
    
    GetCmdArg(1, target, sizeof(target))
    
    if ((target_count = ProcessTargetString(
            target,
            client,
            target_list,
            MAXPLAYERS,
            0,
            target_name,
            sizeof(target_name),
            tn_is_ml)) <= 0)
    {
        ReplyToTargetError(client, target_count)
        return Plugin_Handled
    }
        
    for (new i = 0; i < target_count; i++)
    {
        if (IsClientInGame(target_list[i]) && IsPlayerAlive(target_list[i]))
        {
            PerformEvilRocket(client, target_list[i])
        }
    }
    return Plugin_Handled
}

PerformEvilRocket(client, target)
{
    if (g_Ent[target] == 0)
    {
        if (client != -1)
        {
            LogAction(client, target, "\"%L\" sent \"%L\" into space", client, target)
            ShowActivity(client, "launched %N into space", target) 
            
            AttachFlame(target)
            EmitSoundToAll("weapons/rpg/rocketfire1.wav", target, _, _, _, 0.8)
            CreateTimer(2.0, Launch, target)
            CreateTimer(3.5, Detonate, target)
        }
        else
        {
            AttachFlame(target)
            EmitSoundToAll("weapons/rpg/rocketfire1.wav", target, _, _, _, 0.8)
            CreateTimer(2.0, Launch, target)
            CreateTimer(3.5, Detonate, target)
        }
    }
}

public Action:Launch(Handle:timer, any:client)
{
    if (IsClientInGame(client))
    {
        new Float:vVel[3]
            
        vVel[0] = 0.0
        vVel[1] = 0.0
        vVel[2] = 800.0
        
        EmitSoundToAll("ambient/explosions/exp2.wav", client, _, _, _, 1.0)
        EmitSoundToAll("npc/env_headcrabcanister/launch.wav", client, _, _, _, 1.0)
        
        TeleportEntity(client, NULL_VECTOR, NULL_VECTOR, vVel)
        SetEntityGravity(client, 0.1)
    }
            
    return Plugin_Handled
}

public Action:Detonate(Handle:timer, any:client)
{
    if (IsClientInGame(client))
    {
        new Float:vPlayer[3]
        GetClientAbsOrigin(client, vPlayer)
             
        TE_SetupExplosion(vPlayer, g_Explosion, 10.0, 1, 0, 600, 5000)
        TE_SendToAll()
        g_Ent[client] = 0
            
        ForcePlayerSuicide(client)
            
        SetEntityGravity(client, 1.0)
    }
    return Plugin_Handled
}

public Action:KillExplosion(Handle:timer, any:ent)
{
    if (IsValidEntity(ent))
    {
        new String:classname[256]
        GetEdictClassname(ent, classname, sizeof(classname))
        if (StrEqual(classname, "env_explosion", false))
        {
            RemoveEdict(ent)
        }
    }
}

public OnLibraryRemoved(const String:name[])
{
    if (StrEqual(name, "adminmenu")) 
    {
        hAdminMenu = INVALID_HANDLE;
    }
}

public OnAdminMenuReady(Handle:topmenu)
{
    if (topmenu == hAdminMenu)
    {
        return;
    }
    
    hAdminMenu = topmenu

    new TopMenuObject:player_commands = FindTopMenuCategory(hAdminMenu, ADMINMENU_PLAYERCOMMANDS)

    if (player_commands != INVALID_TOPMENUOBJECT)
    {
        AddToTopMenu(hAdminMenu,
            "sm_evilrocket",
            TopMenuObject_Item,
            AdminMenu_rocket, 
            player_commands,
            "sm_evilrocket",
            ADMFLAG_SLAY)
    }
}
 
public AdminMenu_rocket( Handle:topmenu, TopMenuAction:action, TopMenuObject:object_id, param, String:buffer[], maxlength )
{
    if (action == TopMenuAction_DisplayOption)
    {
        Format(buffer, maxlength, "Evil Rocket")
    }
    else if( action == TopMenuAction_SelectOption)
    {
        DisplayPlayerMenu(param)
    }
}

DisplayPlayerMenu(client)
{
    new Handle:menu = CreateMenu(MenuHandler_Players)
    
    decl String:title[100]
    Format(title, sizeof(title), "Choose Player:")
    SetMenuTitle(menu, title)
    SetMenuExitBackButton(menu, true)
    
    AddTargetsToMenu(menu, client, true, true)
    
    DisplayMenu(menu, client, MENU_TIME_FOREVER)
}

public MenuHandler_Players(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_End)
    {
        CloseHandle(menu)
    }
    else if (action == MenuAction_Cancel)
    {
        if (param2 == MenuCancel_ExitBack && hAdminMenu != INVALID_HANDLE)
        {
            DisplayTopMenu(hAdminMenu, param1, TopMenuPosition_LastCategory);
        }
    }
    else if (action == MenuAction_Select)
    {
        decl String:info[32]
        new userid, target
        
        GetMenuItem(menu, param2, info, sizeof(info))
        userid = StringToInt(info)

        if ((target = GetClientOfUserId(userid)) == 0)
        {
            PrintToChat(param1, "[SM] %s", "Player no longer available")
        }
        else if (!CanUserTarget(param1, target))
        {
            PrintToChat(param1, "[SM] %s", "Unable to target")
        }
        else
        {					
            PerformEvilRocket(param1, target)
        }
        
        /* Re-draw the menu if they're still valid */
        if (IsClientInGame(param1) && !IsClientInKickQueue(param1))
        {
            DisplayPlayerMenu(param1)
        }
    }
}

AttachFlame(ent)
{
    new String:flame_name[128]
    Format(flame_name, sizeof(flame_name), "RocketFlame%i", ent)
    
    new String:tName[128]
    
    new flame = CreateEntityByName("env_steam")
    if (IsValidEdict(flame))
    {
        new Float:pos[3] 
        GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos)
        pos[2] += 30
        
        new Float:angles[3]
        angles[0] = 90.0
        angles[1] = 0.0
        angles[2] = 0.0
        
        Format(tName, sizeof(tName), "target%i", ent)
        DispatchKeyValue(ent, "targetname", tName)
        
        DispatchKeyValue(flame,"targetname", flame_name)
        DispatchKeyValue(flame, "parentname", tName)
        DispatchKeyValue(flame,"SpawnFlags", "1")
        DispatchKeyValue(flame,"Type", "0")
        DispatchKeyValue(flame,"InitialState", "1")
        DispatchKeyValue(flame,"Spreadspeed", "10")
        DispatchKeyValue(flame,"Speed", "800")
        DispatchKeyValue(flame,"Startsize", "10")
        DispatchKeyValue(flame,"EndSize", "250")
        DispatchKeyValue(flame,"Rate", "15")
        DispatchKeyValue(flame,"JetLength", "400")
        DispatchKeyValue(flame,"RenderColor", "180 71 8")
        DispatchKeyValue(flame,"RenderAmt", "180")
        DispatchSpawn(flame)
        TeleportEntity(flame, pos, angles, NULL_VECTOR)
        SetVariantString(tName)
        AcceptEntityInput(flame, "SetParent", flame, flame, 0)
        
        CreateTimer(3.0, DeleteFlame, flame)
        
        g_Ent[ent] = flame
    }
}

public Action:DeleteFlame(Handle:timer, any:ent)
{
    if (IsValidEntity(ent))
    {
        new String:classname[256]
        GetEdictClassname(ent, classname, sizeof(classname))
        if (StrEqual(classname, "env_steam", false))
        {
            RemoveEdict(ent)
        }
    }
}

public Action:Command_RocketMe(client, args)
{
    new flags = GetUserFlagBits(client)
        
    if (flags & ADMFLAG_ROOT || flags & ADMFLAG_VOTE )
    {
        if (IsClientInGame(client) && IsPlayerAlive(client))
        {
            PerformEvilRocket(-1, client)
            CreateTimer(3.0, MessageUs, client)
        }
    }
    else if (GetConVarInt(Cvar_RocketMe))
    {
        if (IsClientInGame(client) && IsPlayerAlive(client))
        {
            PerformEvilRocket(-1, client)
            CreateTimer(3.0, MessageUs, client)
        }
    }
    else
    {	
        PrintToChat(client, "[SM] RocketMe is not enabled")
    }
    
    return Plugin_Handled
}

public Action:MessageUs(Handle:timer, any:client)
{
    char name[500];
    FetchColoredName(client, name, sizeof(name));
    CPrintToChatAll(0, "{green}[系统] %s 将自己送上了太空！", name)
}
