// OBJ 1

khe_s_arty_1_guns = [

	s_gun_1,
	s_gun_2,
	s_gun_3,
	s_gun_4

];

khe_s_arty_1_tgts = [

	getMarkerPos "tgt_khe_1",
	getMarkerPos "tgt_khe_2",
	getMarkerPos "tgt_khe_3",
	getMarkerPos "tgt_khe_4",
	getMarkerPos "tgt_khe_5",
	getMarkerPos "tgt_khe_6",
	getMarkerPos "tgt_khe_7",
	getMarkerPos "tgt_khe_8",
	getMarkerPos "tgt_khe_9",
	getMarkerPos "tgt_khe_10"

];

while {khe && khe_obj_1 == "WEST"} do {
	
	{
		_x setVehicleAmmo 1;
		
		_tgt = selectRandom khe_s_arty_1_tgts;
		_ammo = getArtilleryAmmo [_x] select 0; 
		
		_x doArtilleryFire [_tgt, _ammo, 10];
		
		sleep 1;
	
	} forEach khe_s_arty_1_guns;

	sleep 120;

};



// OBJ 2

khe_s_arty_1_guns = [

	s_gun_1,
	s_gun_2,
	s_gun_3,
	s_gun_4

];

khe_s_arty_1_tgts = [

	getMarkerPos "tgt_khe_11",
	getMarkerPos "tgt_khe_12",
	getMarkerPos "tgt_khe_13",
	getMarkerPos "tgt_khe_14",
	getMarkerPos "tgt_khe_15",
	getMarkerPos "tgt_khe_16",
	getMarkerPos "tgt_khe_17",
	getMarkerPos "tgt_khe_18",
	getMarkerPos "tgt_khe_19",
	getMarkerPos "tgt_khe_20"

];

while {khe && khe_obj_2 == "WEST"} do {
	
	{
		_x setVehicleAmmo 1;
		
		_tgt = selectRandom khe_s_arty_1_tgts;
		_ammo = getArtilleryAmmo [_x] select 0; 
		
		_x doArtilleryFire [_tgt, _ammo, 10];
		
		sleep 1;
	
	} forEach khe_s_arty_1_guns;

	sleep 240;

};



// OBJ 3

khe_s_arty_1_guns = [

	s_gun_1,
	s_gun_2,
	s_gun_3,
	s_gun_4

];

khe_s_arty_1_tgts = [

	getMarkerPos "tgt_khe_21",
	getMarkerPos "tgt_khe_22",
	getMarkerPos "tgt_khe_23",
	getMarkerPos "tgt_khe_24",
	getMarkerPos "tgt_khe_25",
	getMarkerPos "tgt_khe_26",
	getMarkerPos "tgt_khe_27",
	getMarkerPos "tgt_khe_28",
	getMarkerPos "tgt_khe_29",
	getMarkerPos "tgt_khe_30"

];

while {khe && khe_obj_2 == "WEST"} do {
	
	{
		_x setVehicleAmmo 1;
		
		_tgt = selectRandom khe_s_arty_1_tgts;
		_ammo = getArtilleryAmmo [_x] select 0; 
		
		_x doArtilleryFire [_tgt, _ammo, 10];
		
		sleep 1;
	
	} forEach khe_s_arty_1_guns;

	sleep 240;

};
