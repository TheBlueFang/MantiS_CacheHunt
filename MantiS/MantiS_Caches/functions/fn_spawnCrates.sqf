_allCacheAreas = param [0, []];

if (_allCacheAreas isEqualTo []) exitWith {
	["MANTIS CACHES: No cache areas defined."] call MantiS_fnc_error;
};

_caches = [];

private ["_area"];
for "_i" from 1 to CACHE_AMOUNT do {

	// If ran out of areas to randomise
	try {
		_area = selectRandom _allCacheAreas;
	} catch {
		_text = format ["MANTIS CACHES: Not enough areas to create caches. %1 caches wanted but only %2 areas defined.", CACHE_AMOUNT, count CACHE_AREAS];
		[_text] call MantiS_fnc_error;

		if (true) exitWith {false};
	};

	_allCacheAreas deleteAt (_allCacheAreas find _area);

	_markerName = _area select 0;
	_area deleteAt 0;

	_pos = selectRandom _area;
	
	// createVehicle [type, position, markers, placement, special]
	_crateClass = selectRandom CACHE_CLASSES;
	_cache = createVehicle [_crateClass, _pos];

	clearItemCargoGlobal _cache;
	clearBackpackCargoGlobal _cache;
	clearWeaponCargoGlobal _cache;
	clearMagazineCargoGlobal _cache;

	_caches pushBack _cache;

	_cache addEventHandler ["Explosion", {
		params ["_cache", "_damage"];
		if ((damage _cache) >= 1) then {
			CACHES deleteAt (CACHES find _cache);
			[_cache, count CACHES] remoteExec ["MantiS_fnc_taskHint", 0, false];
			[_cache getVariable "missionName", "FAILED", true] call BIS_fnc_taskSetState;
		};
	}];
};

_caches