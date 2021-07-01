// VARIABLES
setTimeMultiplier 12; //18
current_mission = "";


// SCRIPTS
_handle = execVM "intro.sqf";
_handle = execVM "spawn_selection.sqf";
_handle = execVM "reload.sqf";
[] call compile preprocessFileLineNumbers "functions.sqf";
_handle = execVM "rearm.sqf";



// MARKERS
{_x setMarkerAlpha 0;} forEach allMapMarkers;
/*"respawn_east" setMarkerAlpha 1;
"respawn_west" setMarkerAlpha 1;
"respawn_pilot" setMarkerAlpha 1;*/