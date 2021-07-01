_radius = 50;

while {true} do {

	{
		
		if (side _x == east) then {
			
			protected_spawn = "respawn_west"

		};

		if (side _x == west) then {
			
			protected_spawn = "respawn_east"

		};

		_distance = _x distance2D protected_spawn;
		
		if ( _distance < _radius ) then {
				
				_id = clientOwner;
				"LEAVE PROTECTED SPAWN AREA" remoteExec ["systemChat", _id];
			
			};

		};

	} forEach playableUnits;

	sleep 1;

};