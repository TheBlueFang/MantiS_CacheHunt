/* 
 * This file contains parameters to config and function call to start an instance of
 * traffic in the mission. The file is edited by the mission developer.
 *
 * See file Engima\Traffic\Documentation.txt for documentation and a full reference of 
 * how to customize and use Engima's Traffic.
 */
 
 private ["_parameters"];

// Set traffic parameters.
_parameters = [
	["SIDE", civilian],
	["VEHICLES", ["UK3CB_TKC_C_TT650", "UK3CB_TKC_C_Gaz24", "UK3CB_TKC_C_Skoda", "UK3CB_TKC_C_Lada", "UK3CB_TKC_C_Hatchback"]],
	["VEHICLES_COUNT", 7],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1200],
	["AREA_MARKER", "1234"],
	["HIDE_AREA_MARKER", true],
	["MIN_SKILL", 0.4],
	["MAX_SKILL", 0.6],
	["DEBUG", false]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;
