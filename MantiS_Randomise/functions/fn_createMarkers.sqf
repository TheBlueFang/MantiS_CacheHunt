systemChat format ["%1", CACHE_AREAS];
sleep 2;
_i = 0;
{
	systemChat format ["%1", _x];
	_markerstr = createMarker ["markername" + str(_i), getMarkerPos _x];
	_markerstr setMarkerType "hd_unknown";

	_i = _i + 1;
} forEach CACHE_AREAS;