/* Goes through all vehicles in the mission and filters them into an array for later use.
Crates are deleted after detection.
Returns an array with all the areas.
*/

_allAreas = [];

{
	_markerName = _x;
	_newArray = [];
	_newArray pushBack _markerName;

	//Check vehicles inside area
	{
		if ((typeOf _x) in CACHE_CLASSES) then {
			if (_x inArea _markerName) then {
				_newArray pushBack (getPos _x);
				deleteVehicle _x;
			};
		};
	} forEach vehicles;
	
	_allAreas pushBack _newArray;

} forEach CACHE_AREAS;

_allAreas;