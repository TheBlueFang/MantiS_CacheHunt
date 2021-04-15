_text = param [0, objNull];

if (_text isEqualTo objNull) exitWith {"MANTIS_FNC_ERROR: Function was called improperly. No text parameter was given. CRITICAL." call MantiS_fnc_error;};

if !(typeName _text isEqualTo "STRING") then {
	_text = str _text;
};
systemChat _text;
diag_log "--------" + " ERROR	-> " + _text + "--------";

true