//=========== (C) Copyright 1999 Valve, L.L.C. All rights reserved. ===========
//
// The copyright to the contents herein is the property of Valve, L.L.C.
// The contents may be used and/or copied only with the written permission of
// Valve, L.L.C., or in accordance with the terms and conditions stipulated in
// the agreement/contract under which the contents have been supplied.
//=============================================================================

// No spaces in event names, max length 32
// All strings are case sensitive
//
// valid data key types are:
//   string : a zero terminated string
//   bool   : unsigned int, 1 bit
//   byte   : unsigned int, 8 bit
//   short  : signed int, 16 bit
//   long   : signed int, 32 bit
//   float  : float, 32 bit
//   local  : any data, but not networked to clients
//
// following key names are reserved:
//   local      : if set to 1, event is not networked to clients
//   unreliable : networked, but unreliable
//   suppress   : never fire this event
//   time	: firing server time
//   eventid	: holds the event ID

"modevents"
{
	"player_active"				// Player has become active in the server
	{
		"userid"	"short"
	}
	
	"player_death"				// a game event, name may be 32 charaters long
	{
		"userid"	"short"   	// user ID who died				
		"attacker"	"short"	 	// user ID who killed, entindex if NPC
		"weapon"	"string" 	// weapon name killed used 
		"npctype"		"byte"		// NPC type, if player was killed by one (0 = player)
	}
	
	// Client-side
	"spec_target_updated"
	{
	}
	
	"achievement_earned"
	{
		"player"	"byte"		// entindex of the player
		"achievement"	"short"		// achievement ID
	}

	"achievement_event"
	{
		"achievement_name"	"string"
		"cur_val"	"short"
		"max_val"	"short"
		"userid"	"short"
	}
	
	"player_hurt"
	{
		"userid"	"short"   	// user ID who was hurt			
		"attacker"	"short"	 	// user ID who attacked
		"weapon"	"string" 	// weapon name attacker used
	}
	
	"player_spawn"
	{
		"userid"	"short"
	}
	
	"nmrih_practice_ending"
	{
	}
	
	"nmrih_reset_map"
	{
	}

	// Next two events had ill-fated naming
	// These are fired when clients connect/disconnect, not when they actually join the game after welcome screen
	"player_join"
	{
		"index"		"byte"
	}

	"player_leave"
	{
		"index"		"byte"
	}

	// This event is called when player enters the welcome screen
	"player_welcome"
	{
		"userid"	"short"
	}

	// This event is called when player enters the game 
	// (by clicking the "join game" button on the welcome screen)
	"player_join_game"
	{
		"userid"	"short"
	}

	"objective_complete"
	{
		"id"			"short"
		"name"			"string"
		"force_extract"	"string"
	}

	"objective_fail"
	{
		"id"		"short"
		"name"		"string"
	}

	"npc_killed"
	{
		"entidx"	"short"
		"killeridx"	"short"
		"isturned"	"bool"
		"weaponid"	"byte" 	// weapon id killer used
		"npctype"		"byte"		// NPC type
	}

	"spec_target_updated"
	{
	}

	"achievement_earned"
	{
		"player"		"short"
		"achievement"	"short"
	}

	"instant_zombie_spawn"
	{
		"spawn_amount"	"short"
		"spawn_brush"	"short"
		"spawn_target"	"string"
		"ignore_visibility"  "bool"
		"check_proximity"	 "bool"
		"track"				 "bool"
		"runner_chance"	"float"
		"child_chance"		"float"
	}

	"WalkieSound"
	{
		"sound_name"	"string"
		"global"		"bool"
		"held"			"bool"
	}

	"keycode_enter"
	{
		"keypad_idx"	"short"
		"code"			"string"
		"player"		"short"
	}

	"state_change"
	{
		"state"		"short"
		"game_type"	"short"
	}

	"zombie_spawning_enable"
	{
	}

	"zombie_spawning_disable"
	{
	}

	"new_wave"
	{
		"resupply"	"bool"
	}

	"wave_low_zombies"
	{
	}

	"wave_complete"
	{
	}

	"wave_system_begin"
	{
	}

	"wave_system_end"
	{
	}

	// Client-side
	"safe_zone_damage"
	{
		"index"		"short"
	}

	"safe_zone_heal"
	{
		"index"		"short"
		"amount"	"short"
		"health"		"short"
	}
	
	"safe_zone_deactivate"
	{
		"id"		"short"
		"killed"	"bool"
	}

	"extraction_complete"
	{
	}

	"extraction_expire"
	{
	}

	"freeze_all_the_things"
	{
		"frozen"	"bool"
	}

	// Client-side
	"cure"
	{
		"player_id"	"short"
	}
	
	"map_complete"
	{
	}
	
	"extraction_begin"
	{
	}
	
	"player_extracted"
	{
		"player_id" "short"
		"from_zone"	"bool"
	}
	
	"zombie_head_split"
	{
		"player_id" "short"
	}
	
	"arrow_stick"
	{
		"player_id"	"short"
		"victim_id"	"short"
	}
	
	"pills_taken"
	{
		"player_id"	"short"
	}
	
	"vaccine_taken"
	{
		"userid"	"short"
		"infected"		"bool"
		"effect"		"bool"
		"effect_duration"	"float"
	}
	
	"vaccine_effect_end"
	{
		"userid"	"short"
	}
	
	"ammo_checked"
	{
		"player_id"	"short"
		"weapon_id"	"short"
	}
	
	"weapon_picked_up"
	{
		"player_id"	"short"
		"weapon_id"	"short"
	}
	
	"weapon_fired"
	{
		"player_id"	"short"
		"weapon_id"	"short"
	}
	
	"zombie_killed_by_fire"
	{
		"igniter_id"	"short"
		"zombie_id"	"short"
	}
	
	"nmrih_round_begin"
	{
	}
	
	"game_restarting"
	{
	}

	"player_contemplate_suicide"
	{
		"player_id"		"short"
		"contemplating"	"bool"
	}

	"player_commit_suicide"
	{
		"player_id"		"short"
		"infected"		"bool"
		"mute_duration"	"float"
	}
	
	"zombie_shoved"
	{
		"player_id" "short"
		"zombie_id"	"short"
	}
	
	"token_earned"
	{
		"player_id" "short"
		"tokens"	"short"
	}
	
	"weapon_reload"
	{
		"player_id"			"short"
		"weapon_classname"	"string"
	}

	"grab_end"
	{
		"player_index"		"short"
		"causer_index"		"short"
	}

	"base_player_teleported"
	{
		"entindex"			"short"
	}
	
	"item_given"
	{
		"userid"	"short" // who gave the item
		"receiver"	"short" // receiver of the item
		"classname"	"string" // name of the item
	}
	
	"watermelon_rescue"
	{
		"userid"	"short"
	}
	
	"challenge_start"
	{
		"blitz"	"bool"
		"blitz_endtick"	"long"

		// The following rs_hash values are used for run validation e.g. by moderators of speedrun sites
		// It's not really a secret, simply a SHA1 checksum of the current ruleset
		// Nowadays (since 1.12.3) we ship rulesets as raw .txt, and they're trivial to edit, bypassing in-game validation
		// Don't go editing those now! :)
		"rs_hash" "string"
	}
	
	"challenge_end"
	{
		"ticks"	"long"
		"failed"	"bool"
		"rs_hash" "string"
	}
	
	"challenge_checkpoint"
	{
		"ticks"	"long"
		"blitz_timeradd"	"long"
	}

	"challenge_invalid"
	{
		// List of reasons:
		// 0: "Cheats were turned on.
		// 1: "Gameplay ConVar changed in middle of a run."
		// 2: "Modified difficulty / ruleset."
		// 3: "Custom MapHack script loaded."
		// 4: "Custom VScript was run."
		// 5: "Validation was turned on late."
		// 6: "Game state console command was used."
		"reason"	"short"
	}
	
	// Client-side event for recorded bookmarks on demos
	"demo_bookmark"
	{
		"tick"	"short" // Bookmarked tick
	}
	
	"set_instructor_group_enabled"
	{
		"group"		"string"
		"enabled"	"short"
	}
	
	"instructor_server_hint_create" // Originally ported from the Alien Swarm SDK
	{
		"hint_name"					"string"	// what to name the hint. For referencing it again later (e.g. a kill command for the hint instead of a timeout)
		"hint_replace_key"			"string"	// type name so that messages of the same type will replace each other
		"hint_target"				"long"		// entity id that the hint should display at
		"hint_activator_userid"		"short"		// userid id of the activator
		"hint_timeout"				"short"	 	// how long in seconds until the hint automatically times out, 0 = never
		"hint_icon_onscreen"		"string"	// the hint icon to use when the hint is onscreen. e.g. "icon_alert_red"
		"hint_icon_offscreen"		"string"	// the hint icon to use when the hint is offscreen. e.g. "icon_alert"
		"hint_caption"				"string"	// the hint caption. e.g. "#ThisIsDangerous"
		"hint_activator_caption"	"string"	// the hint caption that only the activator sees e.g. "#YouPushedItGood"
		"hint_color"				"string"	// the hint color in "r,g,b" format where each component is 0-255
		"hint_icon_offset"			"float"		// how far on the z axis to offset the hint from entity origin
		"hint_range"				"float"		// range before the hint is culled
		"hint_flags"				"long"		// hint flags
		"hint_binding"				"string"	// bindings to use when use_binding is the onscreen icon
		"hint_allow_nodraw_target"	"bool"		// if false, the hint will dissappear if the target entity is invisible
		"hint_nooffscreen"			"bool"		// if true, the hint will not show when outside the player view
		"hint_forcecaption"			"bool"		// if true, the hint caption will show even if the hint is occluded
		"hint_local_player_only"	"bool"		// if true, only the local player will see the hint
		"hint_start_sound"			"string"	// Mapbase - the sound to play when the hint is opened
		"hint_target_pos"			"short"	// Mapbase - where the icon should be when there's a hint target
	}
	
	"instructor_server_hint_stop" //destroys a server/map created hint
	{
		"hint_name"					"string"	// The hint to stop. Will stop ALL hints with this name
	}
}
