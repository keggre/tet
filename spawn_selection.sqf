// EVENTS TO SPAWN PILOTS AT A SEPARATE LOCATION

south_pilot_1 addEventHandler ["Respawn", {

	{if (_x == south_pilot_1) then {_x setpos (getmarkerpos "respawn_pilot");};} forEach _this;

}];

south_pilot_2 addEventHandler ["Respawn", {

	{if (_x == south_pilot_1) then {_x setpos (getmarkerpos "respawn_pilot");};} forEach _this;

}];



// TRIGGER TO CHECK IF NORTH ARE NEARBY

trg_south_respawn = createTrigger [
	
	"EmptyDetector", 
	[0,0,0], 
	false
	
];

trg_south_respawn setTriggerActivation [
	
	"EAST", 
	"PRESENT", 
	true
	
];

trg_south_respawn setTriggerArea [
	20, 
	20, 
	0, 
	false
	
];

trg_south_respawn setTriggerStatements [
	
	"this", 

	"",

	""
	
];



// SELECT SPAWNS

while {true} do {

	switch (current_mission) do {

		case "khe" : {
			


			// NORTH

			if (khe_obj_1 == "east" && khe_obj_2 == "east") then {

				"respawn_east" setMarkerDir markerDir "north_respawn_1_b";
				"respawn_east" setMarkerPos getMarkerPos "north_respawn_1_b";


			} else {

				"respawn_east" setMarkerDir markerDir "north_respawn_1_a";
				"respawn_east" setMarkerPos getMarkerPos "north_respawn_1_a";

				/* if (khe_obj_1 == "east") then {
					
					"respawn_east" setMarkerPos getMarkerPos "north_respawn_1_b";

				} else {
					
					"respawn_east" setMarkerPos getMarkerPos "north_respawn_1_a";

				}; */
			};



			// SOUTH

			"respawn_pilot" setMarkerDir markerDir "south_respawn_1_c";
			"respawn_pilot" setMarkerPos getMarkerPos "south_respawn_1_c";

			trg_south_respawn setPos getMarkerPos "south_respawn_1_a";
			sleep 1;

			if (khe_obj_1 == "west" && khe_obj_3 == "west" && !triggerActivated trg_south_respawn) then {

				"respawn_west" setMarkerDir markerDir "south_respawn_1_a";
				"respawn_west" setMarkerPos getMarkerPos "south_respawn_1_a";

			} else {

				trg_south_respawn setPos getMarkerPos "south_respawn_1_b";
				sleep 1;

				if (khe_obj_3 == "west" && !triggerActivated trg_south_respawn) then {
					
					"respawn_west" setMarkerDir markerDir "south_respawn_1_b";
					"respawn_west" setMarkerPos getMarkerPos "south_respawn_1_b";

				} else {
					
					"respawn_west" setMarkerDir markerDir "south_respawn_1_c";
					"respawn_west" setMarkerPos getMarkerPos "south_respawn_1_c";

				};
			};

		};

		default {};
	
	};

	sleep 1;

};