// PREINIT

current_mission = "khe";
khe = true;
khe_skip = true;

khe_n_squads = [ 

	khe_n_squad_1,
	khe_n_squad_2,
	khe_n_squad_3,
	khe_n_squad_4,
	khe_n_squad_5,
	khe_n_squad_6,
	khe_n_squad_7,
	khe_n_squad_8,
	khe_n_squad_9,
	khe_n_squad_10

];

_n = 0;

for "_n" from 0 to count khe_n_squads - 1 do {

	{
		
		_x enableSimulation true;
		_x enableDynamicSimulation true;
		
	} forEach units (khe_n_squads select _n);

};

_handle = execVM "khe_s_arty_2.sqf";



// CUTSCENE

if (khe_skip == false) then {


	{_x enableSimulation false;} forEach playableUnits;

	khe_camera = "camera" camCreate [0,0,0];
	khe_camera camPreparePos [0,0,0];
	khe_camera camPrepareTarget [1,1,1];
	khe_camera cameraEffect ["internal", "back"];
	khe_camera camCommitPrepared 0;

	titleText ["<t size='5'>Khe Sanh</t><br/>21 January 1968", "BLACK FADED", -1, true, true];

	sleep 3;

	khe_cutscene_guns = [
		cutscene_gun_1,
		cutscene_gun_2,
		cutscene_gun_3,
		cutscene_gun_4
	];

	{

		_ammo = getArtilleryAmmo [cutscene_gun_1] select 0;
		_tgt = getMarkerPos "tgt_1";
		_x doArtilleryFire [_tgt, _ammo, 10];
		sleep 1;

	} forEach khe_cutscene_guns;

	sleep 3;

	khe_camera camPreparePos [12472.1,13332.7,0.572945];
	khe_camera camPrepareTarget cutscene_gun_1;
	khe_camera cameraEffect ["internal", "back"];
	khe_camera camCommitPrepared 0;

	sleep 15;

	{_x enableSimulation false;} forEach khe_cutscene_guns;

};

{_x enableSimulation true;} forEach playableUnits;

[1, "BLACK", 5, 1] spawn BIS_fnc_fadeEffect;



// INIT

_handle = execVM "khe_init.sqf";



// END CUTSCENE

if (khe_skip == false) then {

	sleep .1;

	khe_camera cameraEffect ["terminate", "back"];
	camDestroy khe_camera;

};



// LOOP

while {khe} do {

	sleep 1;
	_handle = execVM "khe_loop.sqf";
	waitUntil {scriptDone _handle};

};



// END

_handle = execVM "khe_end.sqf";