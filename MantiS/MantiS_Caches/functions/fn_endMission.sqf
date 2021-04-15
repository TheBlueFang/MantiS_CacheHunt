// Effect local, run on all clients.
_winnerSide = param [0, sideUnknown];

if (_winnerSide isEqualTo sideUnknown) exitWith {};

if ((side player) isEqualTo _winnerSide) then {
	["end1", true, 2, true] call BIS_fnc_endMission;
	systemChat "Mission win";
} else {
	["end1", false, 2, true] call BIS_fnc_endMission;
	systemChat "Mission fail";
};