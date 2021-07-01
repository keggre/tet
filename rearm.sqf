while {true} do {

	{

		if (markerText _x == "rearm") then {

			_code = compile _x;
			[] call _code;

			_trg = createTrigger [
				
				"EmptyDetector", 
				getMarkerPos _x, 
				false
				
			];

			_trg setTriggerActivation [
				
				"NONE", 
				"PRESENT", 
				true
				
			];

			_trg triggerAttachVehicle [rearm_owner];

			_trg setTriggerArea [
				10, 
				10, 
				1, 
				false
				
			];

			_trg setTriggerStatements [
				
				"this", 

				str rearm_owner + " setVehicleAmmo 1; " + str rearm_owner + " setDamage 0;" + str rearm_owner + " setFuel 1; _id = netID driver " + str rearm_owner + "; 'VEHICLE REARMED' remoteExec ['systemChat', _id]; playSound3D ['a3\sounds_f\sfx\ui\vehicles\vehicle_rearm.wss', " + str rearm_owner + "];",

				""
				
			];

			_trg setTriggerTimeout [1, 1, 1, false];

			sleep 2;

			deleteVehicle _trg;

		}

	} forEach allMapMarkers;

	sleep 1;

};