// Effect global, run on server.
// Creates question markers on the areas. Shows them in briefing if preprocessed.
_i = 0;
{
	_markerstr = createMarker ["markername" + str(_i), getMarkerPos _x];
	_markerstr setMarkerType "hd_unknown";

	_i = _i + 1;
} forEach CACHE_AREAS;