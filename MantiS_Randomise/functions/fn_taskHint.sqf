if (side player != ATTACKER_SIDE) exitWith {};
params ["_cache"];

_cacheNum = str(count CACHES);
_taskName = vehicleVarName _cache;
private["_text"];

if (count CACHES == 1) then {
	_text = "You have destroyed a cache.\n" + _cacheNum + " cache remains."
} else {
	_text = "You have destroyed a cache.\n" + _cacheNum + " caches remain."
};
hintSilent _text;

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