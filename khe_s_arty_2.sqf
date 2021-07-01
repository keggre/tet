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

{
	_x setVehicleAmmo 1;
		
	_tgt = selectRandom khe_s_arty_1_tgts;
	_ammo = getArtilleryAmmo [_x] select 0; 
		
	_x doArtilleryFire [_tgt, _ammo, 10];
		
	sleep 1;
	
} forEach khe_s_arty_1_guns;
