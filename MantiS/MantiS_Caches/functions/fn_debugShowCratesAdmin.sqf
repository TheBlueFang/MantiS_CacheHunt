// Broken. Do not use
_allCaches = param [0, []];

if (typeName _allCaches isEqualTo "OBJECT") then {
	_allCaches = [_allCaches];
};

if (!hasInterface || {isServer && {isMultiplayer}}) exitWith {true};

if (_allCaches isEqualTo []) then {
	format ["MANTIS SHOWCRATESADMIN: Parameters = %1. No caches passed through parameters.", _allCaches] call MantiS_fnc_error;
};

systemChat "format";
if (!isMultiplayer && {(admin clientOwner) in [1,2]} ) then {
	{
		_markerstr = createMarkerLocal [str(getPos _x),	getPos _x];
		_markerstr setMarkerShapeLocal "ICON";
		_markerstr setMarkerTypeLocal "hd_dot";
		_markerstr setMarkerColorLocal "ColorGreen";
		_markerstr setMarkerTextLocal "Cache";
	} forEach _allCaches;
}