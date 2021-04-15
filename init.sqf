call compile preprocessFileLineNumbers "Engima\Civilians\Init.sqf";
call compile preprocessFileLineNumbers "Engima\Traffic\Init.sqf";

if (isServer) then {
	execVM "MantiS\MantiS_Caches\init.sqf";
};