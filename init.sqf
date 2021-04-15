call compile preprocessFileLineNumbers "Engima\Civilians\Init.sqf";
call compile preprocessFileLineNumbers "Engima\Traffic\Init.sqf";

if (isServer) then {
	 [] call compile preprocessFile "MantiS\MantiS_Caches\init.sqf";
	//execVM "MantiS\MantiS_Caches\init.sqf";
};