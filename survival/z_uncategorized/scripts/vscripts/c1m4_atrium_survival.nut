Msg("VSCRIPT: Running c1m4_atrium_survival ADDON script\n");

DirectorOptions <-
{
	CommonLimit = 26 //Capped at 50
	MegaMobSize = 46 //Capped at 70
	ZombieSpawnRange = 8000 / basically covers the whole map
	ZombieDiscardRange = 10000
	ZombieSpawnInFog = true //Why not?

	PreferredMobDirection = SPAWN_LARGE_VOLUME //SPAWN_FAR_AWAY_FROM_SURVIVORS //SPAWN_ABOVE_SURVIVORS
	PreferredSpecialDirection = SPAWN_ABOVE_SURVIVORS
}

//Ramps up the difficulty faster
function OnGameEvent_create_panic_event( params ) {
	if (DirectorOptions.CommonLimit < 50) //Activates 8 times
	{
		DirectorOptions.CommonLimit += 3
		DirectorOptions.MegaMobSize += 3
	}
}

//The DirectorOptions gets overriden without this
function OnGameEvent_survival_round_start( params ) {
	EntFire( "@Director", "BeginScript", "c1m4_atrium_survival" )
}
