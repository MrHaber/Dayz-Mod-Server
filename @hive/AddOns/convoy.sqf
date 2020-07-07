//CASCA CONVOY FOR CHERNARUS
sleep 60;
diag_log "[CASCA CONVOY] Initialized!";

//KONFIGURATION! BEGIN
_cascasToSpawn = 5; //Number of vehicles to Spawn
_timeBetweenSpawns = 100; //Time between each consecutive spawn
_convoyFormation = [3,3,3,3,3]; //Chance to the spawned Casca convoy have 1, 2, or 3 Vehicles
_turretMansSkill = 0.6; //Skill ot the turret operators, from 0 to 1
_cargoMansSkill = 0.8; //Skill of the cargo ocupants, from 0 to 1
_showWpsOnMap = true; //Show waypoints on the map?
//KONFIGURATION! END

//EXTRA KONFIGURATION! BEGIN
//Vehicle Spawns
//[[vehicle spawn position],[waypoints to go first (one is choosen)*],spawn angle,spawn radius]
// * use _showWpsOnMap = true to see the way points
_origins = [
	[[2000,10907,0.2],[53],100,20],
	[[12786,4471,0.2],[123],30,15],
	[[7195,9700,0.2],[61],0,20]
];

//Simple loot, for car 1 of convoys with 1 car and for car 1 and 2 with convoys with 2 or 3 cars
//[command to add loot,the item to add as loot,[quantity of the item when in a convoy with 1 vehicle,2 vehicles,3 vehicles]]
_loot1 = [
	["addWeaponCargoGlobal","NVGoggles",[3,4,5]],
	["addWeaponCargoGlobal","ItemEtool",[3,4,5]],
	["addWeaponCargoGlobal","Binocular_Vector",[2,3,4]],
	["addMagazineCargoGlobal","ItemBloodBag",[8,12,16]],
	["addMagazineCargoGlobal","PartEngine",[5,7,9]],
	["addMagazineCargoGlobal","ItemBandage",[20,25,30]]
];

//High loot, for car 3 of convoys with 3 cars
//[command to add loot,the item to add as loot,[quantity of the item when in a convoy with 1 vehicle,2 vehicles,3 vehicles]]
_loot2 = [
	["addMagazineCargoGlobal","FoodMRE",[1,2,3]],
	["addMagazineCargoGlobal","ItemSandbag",[1,1,2]],
	["addMagazineCargoGlobal","ItemScrews",[1,1,2]]
];
//EXTRA KONFIGURATION! END

//End of Documented Configuration

//Waypoints
donn_wps = [
	[4888,5651,0],
	[4412,6413.5,0],
	[4362,4678.5,0],
	[3667,2481.4,0],
	[1910,2245,0],
	[6558,2860.5,0],
	[6201,3542,0],
	[1894,7603,0],
	[2272,9301.5,0],
	[2912,7336.5,0],
	[7093,4509,0],
	[6935.5,5587.4,0],
	[6584,6021,0],
	[4964,8135,0],
	[6067.6,7769.4,0],
	[5668,7258.4,0],
	[3318,3937.4,0],
	[4224,3796,0],
	[4679,4278,0],
	[5789.5,3092,0],
	[4594,2713,0],
	[4500,2455,0],
	[5840,4780,0],
	[5024,6805,0],
	[6352,2448,0],
	[6373,7526,0],
	[7556.6,3165.6,0],
	[9465,2042,0],
	[9154,3901,0],
	[7515,4636,0],
	[2519,9653,0],
	[3827,8859,0],
	[3086,7986,0],
	[4201,7249,0],
	[2720.5,6622.4,0],
	[4304,5494,0],
	[4057,6724,0],
	[2779.5,5375,0],
	[3473.4,4931.6,0],
	[1693,3842,0],
	[2593,3457,0],
	[3206,3484.5,0],
	[3064,4487,0],
	[4471,8832,0],
	[5171,8593,0],
	[4800,6796,0],
	[5314.2,8763.41,0],
	[5536.27,8729.39,0],
	[5107.09,9772.7,0],
	[4537.87,9878.26,0],
	[4248.48,10386,0],
	[4118.95,11173.6,0],
	[3305.22,11266.6,0],
	[2284.27,10920.9,0],
	[2670.87,9915.55,0],
	[4651.4,10690.1,0],
	[5405.6,10869.3,0],
	[5441.29,11051.4,0],
	[3337.2,11948.1,0],
	[5593.14,12036.1,0],
	[6089.54,10557.8,0],
	[7221.7,9936.01,0],
	[8073.87,11392.2,0],
	[8634.48,11853.4,0],
	[8537.6,9854.03,0],
	[8793.09,8998.25,0],
	[7054.1,7677.8,0],
	[7178.15,8289.56,0],
	[6575.42,9034.57,0],
	[5750.36,9262.81,0],
	[7996.25,8537.17,0],
	[8559.75,8356.42,0],
	[8723.22,7108.25,0],
	[8688.35,6525.63,0],
	[8054.13,7081.38,0],
	[7349.86,6364.59,0],
	[7114.08,6936.8,0],
	[7533.32,5909.59,0],
	[7564.9,5245.34,0],
	[7530,5005.23,0],
	[8418.05,4937.35,0],
	[8539.56,6048.38,0],
	[9531.4,5999.39,0],
	[9896.28,5998.52,0],
	[9055.63,4931.18,0],
	[10200.9,4047.07,0],
	[10484.5,2392.66,0],
	[10448.6,2112.65,0],
	[10331,1792.45,0],
	[10010.6,2068.75,0],
	[10045.9,1794.58,0],
	[10824.7,2571.8,0],
	[12053.8,3488.53,0],
	[13384.1,5429.78,0],
	[13459.2,6238.44,0],
	[13382.3,6038.74,0],
	[12885.4,8599.13,0],
	[12045,9093.46,0],
	[10435.7,9132.38,0],
	[10398.3,8954.13,0],
	[10753.8,8132.42,0],
	[10543.6,7043.58,0],
	[9823.4,7026.52,0],
	[9532.64,7221.07,0],
	[9454.65,8817.66,0],
	[9989,7947.85,0],
	[9206.74,7847.54,0],
	[9155.16,9640.59,0],
	[9876.57,10416.9,0],
	[9560.64,11803.3,0],
	[11244.2,12239.6,0],
	[11720.8,12203.8,0],
	[11482.6,12982.5,0],
	[11692.6,12721.4,0],
	[12738.3,12254.8,0],
	[10252.6,9802.45,0],
	[13027.9,10377.9,0],
	[12952.8,10191.2,0],
	[11227.3,4613.84,0],
	[11075.2,5329.58,0],
	[10408.6,5814.79,0],
	[10804.7,6734.21,0],
	[10139,5432.98,0],
	[12782,4452.01,0],
	[3524.78,7794.53,0],
	[5240.85,8623.96,0],
	[5424.01,8524.6,0],
	[6031.1,11107,0],
	[7477.11,9681.54,0],
	[8981.17,11848.5,0],
	[9685.77,12098.4,0],
	[12732.2,9823.13,0],
	[12632.9,9758.31,0],
	[12883.9,9360.39,0],
	[11949.7,9014.59,0],
	[7134.08,7028.41,0],
	[6454.58,7160.62,0],
	[4711.08,6356.44,0],
	[4388.31,5650.42,0],
	[3129.96,6616.18,0],
	[2754.43,5284.55,0],
	[2555.71,5029.94,0],
	[3215.7,4550.21,0],
	[5691.72,3031.24,0],
	[6563.52,2248.58,0],
	[7156.48,2536.07,0],
	[6598.64,2896.43,0],
	[6342.25,2423.41,0],
	[6653.95,2483.39,0],
	[6813.54,2657.44,0],
	[10524.1,2351.86,0],
	[12252.3,3513.91,0],
	[11962.9,4591.26,0],
	[11182.4,4945.9,0],
	[10038.6,5653.92,0],
	[10278.8,5727.45,0],
	[10344.5,5495.75,0],
	[12973.7,8377.76,0],
	[12905,8331,0],
	[12994.1,8034.5,0],
	[12760.7,8301.45,0],
	[12597.4,8722.99,0],
	[12624.7,10434.1,0],
	[10420.2,9843,0],
	[10966.9,9272.41,0],
	[12396.6,12662.9,0],
	[6053.3,10460.7,0],
	[2665.12,3013.13,0],
	[6321.04,3336.12,0]
];

//Ways to go from each waypoint
donn_wps_go = [
	[137,138],
	[36,137,138],
	[18,38,17],
	[21,4,167],
	[3,39],
	[24,146,168],
	[168,19,22],
	[9,8],
	[30,7,32],
	[32,7,34],
	[11,29,168],
	[10,78,12],
	[15,135,11],
	[44,45,124],
	[25,15,126],
	[14,23,12],
	[41,17,42],
	[16,2,38],
	[2,22,19],
	[143,6,18],
	[21,143,38],
	[3,20,147],
	[6,18,23],
	[45,15,22],
	[147,5,143],
	[136,14,66],
	[145,146,27],
	[89,28,26],
	[27,29,84],
	[79,10,28],
	[54,8,31],
	[43,30,32],
	[8,31,9],
	[124,36],
	[139,9,37],
	[139,138,37],
	[1,139,33],
	[140,35,34],
	[140,142,35,2],
	[141,4,40],
	[41,167,39],
	[167,16,40],
	[141,142,16],
	[49,31,44],
	[43,13,125],
	[13,23,137],
	[47,125],
	[126,46,69],
	[49,55],
	[48,50,43],
	[49,54,51],
	[55,50,52],
	[53,51,58],
	[52,54],
	[50,30,53],
	[48,51,56],
	[57,60,55],
	[56,127,59],
	[59,52],
	[58,57,127],
	[166,127,56],
	[128,166,62],
	[61,63],
	[62,129,64],
	[128,65,63],
	[64,70,104],
	[25,67,74,135],
	[66,70,68],
	[69,67],
	[68,166,47],
	[67,71,65],
	[72,70,104],
	[71,73,103],
	[72,74,81,82],
	[75,66,73],
	[77,76,74,81],
	[135,75,77],
	[75,76,78],
	[79,77,11],
	[78,29,80],
	[84,81,79],
	[82,73,75],
	[83,73,81],
	[102,82,154],
	[80,28,85],
	[84,122,86],
	[150,85],
	[88,150,89],
	[87,90],
	[90,150,27],
	[88,89],
	[150,92],
	[151,152,91],
	[151,94,153],
	[95,121,157],
	[121,93,94],
	[157,161,133],
	[161,134,132],
	[99,115,164],
	[98,104,100],
	[99,105,101],
	[121,102,100],
	[103,101,83],
	[102,72,106],
	[66,99,106],
	[106,100],
	[104,103,105],
	[108,64,65],
	[109,107,115],
	[108,130,129],
	[111,163,130],
	[162,110,114],
	[113,110],
	[112,111,110],
	[111,165],
	[163,108,98],
	[117,133],
	[162,131],
	[153,152,150],
	[153,156,120],
	[155,121,119],
	[120,101,94],
	[156,154,85],
	[152,93],
	[33,13,32],
	[44,46,126],
	[125,47,14],
	[59,57,60],
	[61,64,70],
	[63,130,109],
	[109,129,110],
	[132,117,163],
	[133,131,97],
	[132,95,116],
	[97,164,100],
	[76,66,136],
	[135,25,12],
	[1,45,0],
	[0,35,1],
	[36,35,34],
	[37,38,141],
	[140,42,39],
	[42,141,38],
	[20,19,24],
	[147,145,148],
	[26,144,146],
	[5,26,149],
	[24,144,21],
	[149,147,146],
	[146,145,148],
	[86,91,89,87],
	[92,152,93],
	[92,118,123],
	[118,119,93],
	[83,155,122],
	[120,154,156],
	[122,155,119],
	[158,96,94],
	[159,157,160],
	[158,160],
	[158,159,161],
	[96,160,97],
	[111,117],
	[115,164,131],
	[98,163,134],
	[114,113],
	[60,61,69],
	[40,41,3],
	[5,6,10]
];

//Show waypoints on map
_showWpsOnMap spawn {
	while {_this} do {
		{
			private ["_don_marker_put"];
			_don_marker_put = createMarker ["Don_Cascars_" + (str _forEachIndex),_x];
			_don_marker_put setMarkerText ((str _forEachIndex) + " " + (str (donn_wps_go select _forEachIndex)));
			_don_marker_put setMarkerShape "Icon";
			_don_marker_put setMarkerType "x_art";
			_don_marker_put setMarkerColor "ColorPink";
		} forEach donn_wps;
		sleep 25;
		{
			deleteMarker ("Don_Cascars_" + (str _forEachIndex));
		} forEach donn_wps;
	};
};

//Casca units icons on map
donn_units_motor = [];
[] spawn {
	_donn_units_motor = [];
	_donn_units_motor_delete = [];
	_iconFirstRun = false;
	while {true} do {
		if (_iconFirstRun) then {
			{
				deleteMarker ("Donn_Motor_" + str _x);
			} forEach _donn_units_motor_delete;
		} else {
			_iconFirstRun = true;
		};
		_donn_units_motor = donn_units_motor;
		_donn_units_motor_delete = [];
		_vehIcon = [];
		{
			_veh = vehicle _x;
			if ((_x != _veh && !(_veh in _vehIcon)) || _x == _veh) then {
				_mark = createMarker ["Donn_Motor_" + str _forEachIndex, getPosATL _x];
				_mark setMarkerShape "Icon";
				_mark setMarkerType "x_art";
				_mark setMarkerText (str (_x getVariable ["donn_goto",-1]));
				
				if (vehicle _x != _x) then {
					_mark setMarkerColor "ColorBlue";
				} else {
					_mark setMarkerColor "ColorYellow";
				};
				if (_x != _veh) then {
					_vehIcon = _vehIcon + [_veh];
				};
				_donn_units_motor_delete = _donn_units_motor_delete + [_forEachIndex];
			};
		} forEach _donn_units_motor;
		sleep 0.5;
	};
};

//Send casca positions to clients
[] spawn {
	while {true} do {
		cad_pvar_spositions = [];
		{
			cad_pvar_spositions = cad_pvar_spositions + [getPosATL _x];
		} forEach donn_units_motor;
		publicVariable"cad_pvar_spositions";
		sleep 2;
	};
};
[] spawn {
	while {true} do {
		{
			if !(alive _x) then {
				donn_units_motor = donn_units_motor - [_x];
			};
			sleep 0.001;
		} forEach donn_units_motor;
		sleep 25;
	};
};

//Spawn Casca unit/convoy
_spawnOrder = 1;
for "_cs" from 1 to _cascasToSpawn do {
	diag_log ("[CASCA CONVOY] Initialized Spawn! " + str _spawnOrder);
	
	//Inicializacao
	_spawn = _origins select ((_cs + 2) mod (count _origins));
	_origin = _spawn select 0;
	_rad = _spawn select 3;
	_cars = [
		//[vehicle, cargo places, [gunner 1 ammo, gunner 2 ammo, ...], loot]
		["Pickup_PK_INS",1,["100Rnd_762x54_PK"],_loot1 call BIS_fnc_selectRandom],
		["Pickup_PK_INS",1,["100Rnd_762x54_PK"],_loot1 call BIS_fnc_selectRandom],
		["Pickup_PK_INS",1,["100Rnd_762x54_PK"],_loot2 call BIS_fnc_selectRandom]
	];
	_rosa_group = createGroup EAST;
	_qtd = _convoyFormation call BIS_fnc_selectRandom;
	for "_x" from 1 to _qtd do {
		//Spawn Car
		_car = _cars select (_x - 1);
		_motor = createVehicle [_car select 0,_origin,[],_rad,"NONE"];
		_motor setDir (_spawn select 2);
		_motor setVariable ["ObjectID", "1", true];
		_motor setVariable ["ObjectUID", "1", true];
		_motor addEventHandler ["GetIn",{
			_motor = _this select 0;
			_player = _this select 2;
			if (_player in playableUnits) then {
				_player action ['getOut', _motor];
			};
		}];
				
		//Refuel Vehicle
		_motor spawn {
			while {alive _this} do {
				_this setFuel 0.8;
				sleep 120;
			};
		};
		
		//Put Loot in the Car
		clearWeaponCargoGlobal _motor;
		clearMagazineCargoGlobal _motor;
		call compile format [
			"_motor %1 ['%2',%3];",
			_car select 3 select 0,
			_car select 3 select 1,
			_car select 3 select 2 select (_qtd - 1)
		];
		
		//Put vehicle Ammo
		_ammos = _car select 2;
		{				
			_ammo = _x;
			for "_a" from 1 to 10 do {
				_motor addMagazineTurret [_ammo,[_forEachIndex]];
			};
		} forEach _ammos;
		
		//Spawn Soldier
		_driverCount = 1;
		_turreterCount = count _ammos;
		_cargorsCount = _car select 1;
		_crewCount = _driverCount + _turreterCount + _cargorsCount;
		_gunnerPos = 0;
		for "_y" from 1 to _crewCount do {
			//Create Soldier
			//_skin = ["BanditW1_DZ","Bandit1_DZ"];
			_unit = _rosa_group createUnit ["Bandit1_DZ",[50,50,50],[],50,"PRIVATE"];
			[_unit] joinSilent _rosa_group;
			_unit setCombatMode "YELLOW";
			_unit setBehaviour "SAFE";
			donn_units_motor = donn_units_motor + [_unit];
			_unit addEventHandler ["Killed",{
				_unit = _this select 0;
				removeAllWeapons _unit;
				removeAllItems _unit;
				if (random 100 > 50) then {
					_unit addWeapon "Mk48_CCO_DZ";
					_unit selectWeapon "Mk48_CCO_DZ";
				};
				donn_units_motor = donn_units_motor - [_unit];
				if ({alive _x} count (units group _unit) == 0) then {
					deleteGroup group _unit;
				};
			}];
			_unit setVariable ["donn_goto",_cs,false];
						
			//Give soldier weapon and ammo
			removeAllWeapons _unit;
			removeAllItems _unit;
			_unit addWeapon "Mk48_CCO_DZ";
			_unit selectWeapon "Mk48_CCO_DZ";
			for "_pa" from 1 to 8 do {
				_unit addMagazine "100Rnd_762x51_M240";
			};
			
			//Put boot in the car
			if (_y == 1) then {
				//Driver
				_unit assignAsDriver _motor;
				_unit moveInDriver _motor;
				_unit setSkill 1;
			};
			if (_y > 1 && _y <= 1 + _turreterCount) then {
				//Turreters
				_unit assignAsGunner _motor;
				_unit moveInTurret [_motor,[_gunnerPos]];
				_unit setSkill _turretMansSkill;
				_gunnerPos = _gunnerPos + 1;
			};
			if (_y > 1 + _turreterCount) then {
				//Cargors
				_unit assignAsCargo _motor;
				_unit moveInCargo _motor;
				_unit setSkill _cargoMansSkill;
				[_unit,_motor,_rosa_group] spawn {
					_unit = _this select 0;
					_motor = _this select 1;
					_rosa_group = _this select 2;
					while {alive _unit} do {
						if (vehicle _unit == _unit) then {
							if ({_unit knowsAbout _x > 3} count playableUnits == 0) then {
								[_unit] orderGetIn true;
							};
						};
						sleep 10;
					};
				};
			};
		};
	
		//Make the route
		[_rosa_group,_motor,_spawn,_qtd] spawn {
			private ["_alive"];
			_rosa_group = _this select 0;
			_motor = _this select 1;
			_spawn = _this select 2;
			_qtd = _this select 3;
			_nextWayIndex = (_spawn select 1) call BIS_fnc_selectRandom;
			_nextWay = donn_wps select _nextWayIndex;
			_initialWp = _nextWay;
			_lastWayIndex = [-1,-1,-1,-1];
			_wp = _rosa_group addWaypoint [_nextWay,15,0];
			_wp setWaypointType "MOVE";
			_wp setWaypointSpeed "FULL";
			for "_c" from 1 to 29 do {
				_lastWayIndex set [0,"delete"];
				_lastWayIndex = _lastWayIndex - ["delete"];
				_lastWayIndex set [count _lastWayIndex,_nextWayIndex];
				_wpOptions = donn_wps_go select _nextWayIndex;
				_temp = _wpOptions;
				while {true} do {
					_nextWayIndex = _temp call BIS_fnc_selectRandom;
					if !(_nextWayIndex in _lastWayIndex) exitWith {};
					_temp = _temp - [_nextWayIndex];
					if (count _temp == 0) then {
						_lastWayIndex = [-1,-1,-1,_lastWayIndex select 3];
						_temp = _wpOptions;
					};
					sleep 0.001;
				};
				_nextWay = donn_wps select _nextWayIndex;
				_wp = _rosa_group addWaypoint [_nextWay,15,_c];
				_wp setWaypointType "MOVE";
				_wp setWaypointSpeed "FULL";
			};
			_wp = _rosa_group addWaypoint [_initialWp,15,30];
			_wp setWaypointType "CYCLE";
			_wp setWaypointSpeed "FULL";
		};		
	};
	sleep _timeBetweenSpawns;
	_spawnOrder = _spawnOrder + 1;
};