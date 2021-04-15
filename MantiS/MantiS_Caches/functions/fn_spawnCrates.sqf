_allAreas = ALL_AREAS;

for "_i" from 1 to CACHE_AMOUNT do {
	_area = selectRandom _allAreas;
	_allAreas deleteAt (_allAreas find _area);

	_markerName = _area select 0;
	_area deleteAt 0;

	_pos = selectRandom _area;
	_crateClass = selectRandom CACHE_CLASSES;

	// createVehicle [type, position, markers, placement, special]
	_cache = createVehicle [_crateClass, _pos];

	clearItemCargoGlobal _cache;
	clearBackpackCargoGlobal _cache;
	clearWeaponCargoGlobal _cache;
	clearMagazineCargoGlobal _cache;

	//systemChat format ["AREA: %1, POS: %2, CACHE: %3", _area, _pos, _cache];

	CACHES pushBack _cache;
};

/*	
};
{
	_areaArray = _x;

	_markerName = _areaArray select 0;
	_areaArray deleteAt 0;

	_pos = selectRandom _areaArray;
	_crateClass = selectRandom CACHE_CLASSES;

	// createVehicle [type, position, markers, placement, special]
	_cache = createVehicle [_crateClass, _pos];
	clearItemCargoGlobal _cache;

	CACHES pushBack _cache;

} forEach _allAreas;