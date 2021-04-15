if (count CACHES <= 0) then {
	if (side player == ATTACKER_SIDE) then {
		["end1", true, 2] call BIS_fnc_endMission;
	} else {
		["end1", false, 2] call BIS_fnc_endMission;
	};
}