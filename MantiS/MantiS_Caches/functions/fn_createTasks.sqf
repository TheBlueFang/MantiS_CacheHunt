// Effect global, run on server.

for "_i" from 1 to (count CACHES) do {
	_object = CACHES select (_i - 1);
	_pos = getPos _object;
	_missionName = "Cache" + str(_i);

	_object setVariable ["missionName", _missionName, true];

	[DEFENDER_SIDE, [_missionName, "DefendCaches"] , ["Defend this cache", "Cache"], _pos, "CREATED", 2, false, "defend"] call BIS_fnc_taskCreate;

};