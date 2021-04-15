if !(isServer) exitWith {};

_handle = execVM "MantiS\config.sqf";
waitUntil {scriptDone _handle};

_allAreas = [];
ALL_AREAS = [];
CACHES = [];
//MARKERS = [];
call MantiS_fnc_hideAreaMarkers;
_allAreas call MantiS_fnc_updateCacheAreas; //Sets the updates list into global ALL_AREAS variable
ALL_AREAS = _allAreas;
//systemChat format ["ALL AREAS: %1", ALL_AREAS];

call MantiS_fnc_createParentTask;
call MantiS_fnc_spawnCrates;

call MantiS_fnc_createTasks;
call MantiS_fnc_createAttackerTask;
call MantiS_fnc_createMarkers;

sleep 1;

if (MANTIS_DEBUG) then {
	[_allCaches] remoteExec ["MantiS_fnc_debugShowCratesAdmin", 0, true];
};