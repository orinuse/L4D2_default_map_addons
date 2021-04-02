// Dead Air - Terminals DLC Patches, of Orin's
// Copyright ©️ 2021 Orinuse (https://steamcommunity.com/id/orinuse/)
//// For full details on GNU General Public License v3.0, see the addon / repository's main folder.
//==================================================================
//-------------------------------------------------------
// Autogenerated from 'c11_m4_alarm_holdout.vmf'
//-------------------------------------------------------
C11M4AlarmHoldout <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.alarm_patch_holdout_hint,
			EntityGroup.SpawnTables.securityalarm_patch_sparks,
			EntityGroup.SpawnTables.securityalarm_patch_sparks_idle,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			securityalarm_patch_sparks_idle = 
			{
				SpawnInfo =
				{
					classname = "env_spark"
					angles = Vector( 0, 0, 0 )
					Magnitude = "1"
					MaxDelay = "2"
					spawnflags = "64"
					targetname = "securityalarm_patch_sparks_idle"
					TrailLength = "1"
					origin = Vector( 1025, 1750.9, 126 )
				}
				PostPlaceCB = function( entity, rarity )
				{
					local alarm_on_relay = Ent("alarm_on_relay")
					EntityOutputs.AddOutput(alarm_on_relay, "OnTrigger", entity.GetName(), "StopSpark", "", 0, 1)
				//	EntFire("alarm_on_relay", "AddOutput", "OnTrigger !self:"+entity.GetName()+"StopSpark::0:1")
				}
			}
			securityalarm_patch_sparks = 
			{
				SpawnInfo =
				{
					classname = "env_spark"
					angles = Vector( 0, 0, 0 )
					Magnitude = "6"
					MaxDelay = "2"
					spawnflags = "0"
					targetname = "securityalarm_patch_sparks"
					TrailLength = "2"
					origin = Vector( 1025, 1751, 126 )
				}
				PostPlaceCB = function( entity, rarity )
				{
					local alarm_off_relay = Ent("alarm_off_relay")
					EntityOutputs.AddOutput(alarm_off_relay, "OnTrigger", entity.GetName(), "SparkOnce", "", 0, 1)
				//	EntFire("alarm_off_relay", "AddOutput", "OnTrigger !self:"+entity.GetName()+"SparkOnce::0:1")
				}
			}
			alarm_patch_holdout_hint = 
			{
				SpawnInfo =
				{
					classname = "env_instructor_hint"
					hint_allow_nodraw_target = "1"
					hint_alphaoption = "0"
					hint_auto_start = "1"
					hint_caption = "#L4D_Instructor_explain_panic_button2"
					hint_color = "255 255 255"
					hint_display_limit = "2"
					hint_forcecaption = "1"
					hint_icon_offscreen = "icon_alert_red"
					hint_icon_offset = "12"
					hint_icon_onscreen = "icon_alert_red"
					hint_instance_type = "2"
					hint_name = "explain_patch_metal_detector"
					hint_nooffscreen = "0"
					hint_pulseoption = "0"
					hint_range = "500"
					hint_shakeoption = "0"
					hint_static = "0"
					hint_suppress_rest = "0"
					hint_target = "securityalarmbase1"
					hint_timeout = "0"
					targetname = "alarm_patch_holdout_hint"
					origin = Vector( 1051, 1751, 126 )
				}
				PostPlaceCB = function( entity, rarity )
				{
					local alarm_on_relay = Ent("alarm_on_relay")
					EntityOutputs.AddOutput(alarm_on_relay, "OnTrigger", entity.GetName(), "Kill", "", 0, 1)
				//	EntFire("alarm_on_relay", "AddOutput", "OnTrigger !self:"+entity.GetName()+"Kill::0:1")
				}
			}
		} // SpawnTables
	} // EntityGroup
} // C11M4AlarmHoldout

RegisterEntityGroup( "C11M4AlarmHoldout", C11M4AlarmHoldout )
