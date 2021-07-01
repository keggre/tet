// MARKERS

khe_markers = [

	"playable_area_1",
	"khe_obj_1",
	"khe_obj_2",
	"khe_obj_3"

];

{_x setMarkerAlpha 1;} forEach khe_markers;

"playable_area_1" setMarkerAlpha .5;


// OBJECTIVES

khe_obj_1 = "west";
khe_obj_2 = "west";
khe_obj_3 = "west";

khe_objectives = [
	
	khe_obj_1,
	khe_obj_2,
	khe_obj_3

];



// ARTY

_handle = execVM "khe_s_arty_1.sqf";


// ENVIRONMENT

setDate [1968, 2, 21, 7, 0];

0 setOvercast .5;
0 setFog .5;
0 setRain 0;
forceWeatherChange;



// COMMON TASKS
[
	true, 
	["cat1"], 
	["","Hardware"], 	
	[objNull], 
	"CREATED", 
	-1, 
	false, 
	"CONTAINER"
] call BIS_fnc_taskCreate;

[
	true, 
	["cat2"], 
	["","Ammunition"], 	
	[objNull], 
	"CREATED", 
	-1, 
	false, 
	"REARM"
] call BIS_fnc_taskCreate;



// NORTH TASKS

[
	east, 
	["n_khe_1"], 
	["","capture the objectives"], 
	[objNull], 
	"ASSIGNED", 
	-1, 
	true, 
	"ATTACK"
] call BIS_fnc_taskCreate;

[
	east, 
	["n_transport_1", "cat1"], 
	["","transport"], 
	[n_transport_1], 
	"CREATED", 
	-1, 
	false, 
	"TRUCK"
] call BIS_fnc_taskCreate;

[
	east, 
	["n_transport_2", "cat1"], 
	["","transport"], 
	[n_transport_2], 
	"CREATED", 
	-1, 
	false, 
	"TRUCK"
] call BIS_fnc_taskCreate;

[
	east, 
	["n_tank_1", "cat1"], 
	["","tank"], 
	[n_tank_1], 
	"CREATED", 
	-1, 
	false, 
	"ARMOR"
] call BIS_fnc_taskCreate;

[
	east, 
	["n_tank_2", "cat1"], 
	["","tank"], 
	[n_tank_2], 
	"CREATED", 
	-1, 
	false, 
	"ARMOR"
] call BIS_fnc_taskCreate;

// SOUTH TASKS

[
	west, 
	["s_khe_1"], 
	["","defend the objectives"], 
	[objNull], 
	"ASSIGNED", 
	-1, 
	true, 
	"DEFEND"
] call BIS_fnc_taskCreate;

[
	west, 
	["s_heli_1_rearm", "cat2"], 
	["","rearm helicopter"], 
	getMarkerPos "rearm_owner = s_heli_1", 
	"CREATED", 
	-1, 
	false, 
	"REARM"
] call BIS_fnc_taskCreate;

[
	west, 
	["s_heli_1", "cat1"], 
	["","helicopter"], 
	[s_heli_1], 
	"CREATED", 
	-1, 
	false, 
	"HELI"
] call BIS_fnc_taskCreate;
