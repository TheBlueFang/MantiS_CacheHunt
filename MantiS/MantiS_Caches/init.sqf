if !(isServer) exitWith {};

_handle = execVM "MantiS\MantiS_Caches\config.sqf";
waitUntil {scriptDone _handle};

private ["_allAreas", "_allCaches"];
CACHES = [];

[] call MantiS_fnc_hideAreaMarkers;
_allAreas = [] call MantiS_fnc_updateCacheAreas;
[] call MantiS_fnc_createParentTask;

_allCaches = [_allAreas] call MantiS_fnc_spawnCrates;

[] call MantiS_fnc_createTasks;
[] call MantiS_fnc_createAttackerTask;
[] call MantiS_fnc_createMarkers;

if (MANTIS_DEBUG) then {
	[_allCaches] remoteExec ["MantiS_fnc_debugShowCratesAdmin", 0, true];
};