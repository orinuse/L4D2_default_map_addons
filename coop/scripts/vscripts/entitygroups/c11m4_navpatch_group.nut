// Dead Air - Terminals DLC Patches, of Orin's
// Copyright ©️ 2021 Orinuse (https://steamcommunity.com/id/orinuse/)
//// For full details on GNU General Public License v3.0, see the addon / repository's main folder.
//==================================================================
//-------------------------------------------------------
// Autogenerated from 'c11_m4_nav_patch.vmf'
//-------------------------------------------------------
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
					origin = Vector( -724, 5736, 456 )
					precise = "0"
					spawnflags = "0"
					stairs = "0"
					targetname = "orin_mobonly_nav_patch"
					extent = Vector( 196, 344, 72 )
				}
				PostPlaceCB = function( entity, rarity )
				{
					EntFire( entity.GetName(), "ApplyNavAttributes" )
				}
			}
			orin_mobonly_nav_patch1 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_attribute_region"
					crouch = "0"
					mob_only = "1"
					origin = Vector( -840, 5248, 360 )
					precise = "0"
					spawnflags = "0"
					stairs = "0"
					targetname = "orin_mobonly_nav_patch1"
					extent = Vector( 240, 128, 64 )
				}
				PostPlaceCB = function( entity, rarity )
				{
					EntFire( entity.GetName(), "ApplyNavAttributes" )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // C11M4NavPatch

RegisterEntityGroup( "C11M4NavPatch", C11M4NavPatch )
