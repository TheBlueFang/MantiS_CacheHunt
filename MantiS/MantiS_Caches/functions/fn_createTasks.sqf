for "_i" from 1 to (count CACHES) do {
	_object = CACHES select (_i - 1);
	_pos = getPos _object;
	_missionName = "Cache" + str(_i);

	_object setVehicleVarName _missionName;

	[DEFENDER_SIDE, [_missionName, "DefendCaches"] , ["Defend this cache", "Cache"], _pos, "CREATED", 2, false, "defend"] call BIS_fnc_taskCreate;

	systemChat format ["%1, %2", _pos, _object];

	_object addEventHandler ["Explosion", {
		params ["_vehicle", "_damage"];
		if ((damage _vehicle) >= 1) then {
			CACHES deleteAt (CACHES find _vehicle);
			[_vehicle] remoteExec ["MantiS_fnc_taskHint", 0, false];
			[vehicleVarName _vehicle, "FAILED", true] call BIS_fnc_taskSetState;
		};
	}];

	/*
	// When cache is damaged, check if it was destroyed and change mission state.
	[_object, _missionName] spawn {
		_object = _this select 0;
		_missionName = _this select 1;

		if !(alive _object) then {
			[_missionName, "FAILED", true] call BIS_fnc_taskSetState;
			if (true) exitWith {};
		};
		sleep 2;
	};*/

};