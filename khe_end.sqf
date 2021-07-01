// MARKERS

{_x setMarkerAlpha 0;} forEach khe_markers;



// END ALL TASKS

{_x call BIS_fnc_deleteTask;} forEach (north_leader call BIS_fnc_tasksUnit);
{_x call BIS_fnc_deleteTask;} forEach (south_leader call BIS_fnc_tasksUnit);



// START NEXT MISSION

_handle = execVM "ho.sqf"