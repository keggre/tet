// END

if (khe_obj_1 == "east" && khe_obj_2 == "east" && khe_obj_3 == "east") then {

	khe = false;

};


// WAYPOINTS

{[group _x, currentWaypoint (group _x)] setWaypointVisible false;} forEach playableUnits;
{[group _x, currentWaypoint (group _x)] showWaypoint "NEVER";} forEach playableUnits;

group north_leader setBehaviour "COMBAT";
group south_leader setBehaviour "COMBAT";

if (!isPlayer north_leader) then {

	if (khe_obj_1 == "west") then {

		_n_wp = group north_leader addWaypoint [getMarkerPos "khe_obj_1", 0];
	
	} else {

		if (khe_obj_2 == "west") then {

			_n_wp = group north_leader addWaypoint [getMarkerPos "khe_obj_2", 0];

		} else {

			if (khe_obj_3 == "west") then {

				_n_wp = group north_leader addWaypoint [getMarkerPos "khe_obj_3", 0];
				
			}
		}
	}

};

if (!isPlayer south_leader) then {

	if (vehicle south_leader == objNull && south_leader distance2D getMarkerPos "khe_obj_3" < 100) then {
			
			_s_wp = group south_leader addWaypoint [getPos south_leader, 0];
			_s_wp setWaypointType "GETIN NEAREST";

	} else {
			
		if (khe_obj_1 == "west") then {

			_s_wp = group south_leader addWaypoint [getMarkerPos "khe_obj_1", 0];
			_s_wp setWaypointType "SAD";
	
		} else {

			if (khe_obj_2 == "west") then {

				_s_wp = group south_leader addWaypoint [getMarkerPos "khe_obj_2", 0];
				_s_wp setWaypointType "SAD";

			} else {

				if (khe_obj_3 == "west") then {

					_s_wp = group south_leader addWaypoint [getMarkerPos "khe_obj_3", 0];
					_s_wp setWaypointType "SAD";
				
				};
			};
		};
	};
};



// BOUNDS

_center = getMarkerPos "playable_area_1";
_radius = 1100;
_buffer = 100;
_buffer_veh = 500;

{
	
	_distance = _x distance2D _center;

	if (isPlayer _x && side _x == east) then {

		if ( _distance > _radius) then {
			
			_id = clientOwner;
			"OUTSIDE PLAYABLE AREA" remoteExec ["systemChat", _id];
		
		};
		
		if (vehicle _x != objNull && _distance > _radius + _buffer_veh) then {

			_x setDamage 1;

		} else {

			if (_distance > _radius + _buffer) then {
	
				_x setDamage 1;

			};

		};
	
	};

} forEach playableUnits;



// BEHAVIOR

if (khe_obj_1 == "west") then {

	_n = 0;

	{

		_z = _x;

		_leader = leader _z;
		_enemy = _leader findNearestEnemy _leader;
		
		if (_enemy == objNull || _leader distance _enemy > 50) then {

			{
				_y = _x;

				_y setBehaviour "AWARE";
				{_y disableAI _x} foreach ["AUTOCOMBAT","TARGET","AUTOTARGET","SUPPRESSION","COVER", "WEAPONAIM"];

			} forEach units _z

		} else {

			{
				_y = _x;

				_y setBehaviour "COMBAT";
				_y enableAI "ALL";

			} forEach units _z

		}

	} forEach khe_n_squads;

};

// TASKS

if (!alive n_tank_1) then {["n_tank_1"] call BIS_fnc_deleteTask;};

if (!alive n_tank_2) then {["n_tank_2"] call BIS_fnc_deleteTask;};