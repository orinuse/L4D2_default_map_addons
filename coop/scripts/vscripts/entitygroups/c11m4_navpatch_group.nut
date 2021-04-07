// Dead Air - Terminals DLC Patches, of Orin's
// Copyright ©️ 2021 Orinuse (http://steamcommunity.com/profiles/76561198294712284)
//// For full details on the license, see the addon / repository's main folder.
//==================================================================
//-------------------------------------------------------
// Autogenerated from 'c11_m4_nav_patch.vmf'
//-------------------------------------------------------
local function NavEntsBaseCB( entity, rarity )
{
	EntFire( entity.GetName(), "ApplyNavAttributes" )
}
local function NavEntsMultiCB( entity, rarity )
{
	// turns out they're not horizontal squares ingame, but follows the bounding box outline in hammer
//	entity.SetAngles( entity.GetAngles() + QAngle(0, 45, 0) )
	NavEntsBaseCB(entity, rarity)
}
C11M4NavPatch <-
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
			EntityGroup.SpawnTables.orin_mobonly_nav_patch,
			EntityGroup.SpawnTables.orin_mobonly_nav_patch1,
			EntityGroup.SpawnTables.orin_multiattribs_nav_patch,
			EntityGroup.SpawnTables.orin_multiattribs_nav_patch1,
			EntityGroup.SpawnTables.orin_nothreat_nav_patch,
			EntityGroup.SpawnTables.orin_nothreat_nav_patch1,
			EntityGroup.SpawnTables.orin_nothreat_nav_patch2,
			EntityGroup.SpawnTables.orin_nothreat_nav_patch3,
			EntityGroup.SpawnTables.orin_nothreat_nav_patch4,
			EntityGroup.SpawnTables.orin_nothreat_nav_patch5,
			EntityGroup.SpawnTables.orin_nothreat_nav_patch6,
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
			orin_mobonly_nav_patch =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "1"
					precise = "0"
					spawnflags = "0"
					stairs = "0"
					targetname = "orin_mobonly_nav_patch"
					extent = Vector( 196, 344, 72 )
					origin = Vector( -724, 5736, 456 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_mobonly_nav_patch1 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "1"
					precise = "0"
					spawnflags = "0"
					stairs = "0"
					targetname = "orin_mobonly_nav_patch1"
					extent = Vector( 240, 128, 64 )
					origin = Vector( -840, 5248, 360 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_multiattribs_nav_patch =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "1"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "1"
					tank_only = "0"
					targetname = "orin_multiattribs_nav_patch"
					extent = Vector( 64, 24, 80.5 )
					origin = Vector( 232, 4800, 199.5 )
				}
				PostPlaceCB = NavEntsMultiCB
			}
			orin_multiattribs_nav_patch1 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "1"
					remove_attributes = "0"
					spawnflags = "524290"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_multiattribs_nav_patch1"
					extent = Vector( 16, 24, 32 )
					origin = Vector( 328, 4800, 296 )
				}
				PostPlaceCB = NavEntsMultiCB
			}
			orin_nothreat_nav_patch =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "0"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_nothreat_nav_patch"
					extent = Vector( 608, 512, 80 )
					origin = Vector( 984, 1560, 96 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_nothreat_nav_patch1 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "0"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_nothreat_nav_patch1"
					extent = Vector( 336, 288, 80 )
					origin = Vector( 1768, 2456, 96 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_nothreat_nav_patch2 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "0"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_nothreat_nav_patch2"
					extent = Vector( 592, 600, 216 )
					origin = Vector( 2184, 1568, 232 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_nothreat_nav_patch3 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "0"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_nothreat_nav_patch3"
					extent = Vector( 156, 144, 64 )
					origin = Vector( 1972, 808, 80 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_nothreat_nav_patch4 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "0"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_nothreat_nav_patch4"
					extent = Vector( 142, 168, 31 )
					origin = Vector( 1982, 1704, -15 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_nothreat_nav_patch5 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "0"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_nothreat_nav_patch5"
					extent = Vector( 716, 608, 128 )
					origin = Vector( 2060, 1560, 576 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
			orin_nothreat_nav_patch6 =
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "0"
					precise = "0"
					remove_attributes = "0"
					spawnflags = "524288"
					stairs = "0"
					tank_only = "0"
					targetname = "orin_nothreat_nav_patch6"
					extent = Vector( 392, 548, 128 )
					origin = Vector( 2384, 2716, 576 )
				}
				PostPlaceCB = NavEntsBaseCB
			}
		} // SpawnTables
	} // EntityGroup
} // C11M4NavPatch

RegisterEntityGroup( "C11M4NavPatch", C11M4NavPatch )
