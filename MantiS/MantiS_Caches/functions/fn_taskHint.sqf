params ["_cache", "_cacheNum", "_attackerSide"];

if (_cacheNum isEqualTo 0 || !{side player isEqualTo _attackerSide}) exitWith {};


_taskName = _cache getVariable "missionName";
private["_text"];

_text = format ["getVariable returned %1", _taskName];
_text remoteExec ["systemChat", 0];

if (_cacheNum == 1) then {
	_text = "You have destroyed a cache.\n" + str _cacheNum + " cache remains."
} else {
	_text = "You have destroyed a cache.\n" + str _cacheNum + " caches remain."
};

_text remoteExec ["hintSilent", 0];

/*
if (isServer) then {
	[
		_taskName,
		[
			"Destroy " + _cacheNum + " more enemy caches to win.",
			"Destroy " + _cacheNum + " caches",
			""
		]
	] call BIS_fnc_taskSetDescription;
};*/

/*
params["_cache"];

_taskName = vehicleVarName _cache;
_cacheNum = str(count CACHES);

//[ATTACKER_SIDE, [_taskName, "DestroyCaches"] , ["You destroyed a cache", "Cache Destroyed", ""], getPos _cache, "SUCCEEDED", 2, true, "attack"] call BIS_fnc_taskCreate;

/*
sleep 5;

[
	_taskName,
	[
		"Destroy " + _cacheNum + " more enemy caches to win.",
		"Destroy " + _cacheNum + " more caches",
		""
	]
] call BIS_fnc_taskSetDescription;

[_taskName, "CREATED", true] call BIS_fnc_taskSetState;*/