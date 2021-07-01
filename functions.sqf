fnc_setVehicleName = {

    params ["_veh", "_name"];
    missionNamespace setVariable [_name, _veh, true];
    [_veh, _name] remoteExecCall ["setVehicleVarName", 0, _name];

    _task_exists = [_name] call BIS_fnc_taskExists;
    
    if (_task_exists) then {

        [_name, _veh] call BIS_fnc_taskSetDestination;

    };

};

/*

if (true) then {    params [["_newVeh", objNull], ["_oldVeh", objNull],"_vehName"];    _vehName = vehicleVarName _newVeh;    [_newVeh, _vehName] call fnc_setVehicleName;    };

*/