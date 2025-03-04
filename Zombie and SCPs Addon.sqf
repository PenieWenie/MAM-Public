comment "Determine if execution context is composition and delete the helipad.";

if ((!isNull (findDisplay 312)) && (!isNil 'this')) then {
	if (!isNull this) then {
		if (typeOf this == 'Land_HelipadEmpty_F') then {
			deleteVehicle this;
		};
	};
};

comment "Zombies";
	M9SD_fnc_paintJob =
	{
		params ['_o', '_t', '_m'];
		if (isNil '_o') exitWith {
			systemChat 'error: no _o'
		};
		if (isNil '_t') exitWith {
			systemChat 'error: no _t'
		};
		if (isNil '_m') exitWith {
			systemChat 'error: no _m'
		};
		private ['_pTs', '_pMs', '_tc', '_mc'];
		_pTs = getObjectTextures _o;
		_pMs = getObjectMaterials _o;
		_tc = count _pTs;
		_mc = count _pMs;
		for '_i' from 0 to (_mc - 1) do
		{
			[_o, [_i, _m]] remoteExec ['setObjectMaterialGlobal', 0, _zobmie];
		};
		for '_i' from 0 to (_tc - 1) do
		{
			[_o, [_i, _t]] remoteExec ['setObjectTextureGlobal', 0, _zombie];
		};
		[_o, _m, _t];
	};
	zombieLoadouts = [
	"b_gen_soldier_f",
	"b_soldier_a_f",
	"b_fighter_pilot_f",
	"b_rangemaster_f",
	"b_g_soldier_a_f",
	"b_ctrg_soldier_medic_tna_f",
	"b_helicrew_f",
	"b_helipilot_f",
	"b_t_soldier_unarmed_f",
	"b_w_soldier_cbrn_f",
	"b_w_crew_f", 
	"b_w_soldier_f",
	"o_fighter_pilot_f",
	"o_soldier_gl_f",
	"o_helipilot_f",
	"o_r_soldier_gl_f",
	"i_engineer_f", 
	"i_fighter_pilot_f",
	"i_soldier_lat2_f",
	"i_helipilot_f",
	"i_c_soldier_para_6_f",
	"i_c_helipilot_f",
	"i_c_soldier_para_1_f", 
	"c_man_casual_3_f",
	"c_man_casual_5_f",
	"c_man_constructionworker_01_blue_f",
	"c_man_constructionworker_01_red_f",
	"c_man_constructionworker_01_black_f",
	"c_man_hunter_1_f",
	"c_journalist_01_war_f",
	"c_journalist_f",
	"c_man_fisherman_01_f",
	"c_man_paramedic_01_f",
	"c_idap_man_aidworker_07_f",
	"c_idap_man_aidworker_03_f",
	"c_man_p_shorts_1_f",
	"c_scientist_f",
	"c_man_w_worker_f",
	"c_man_smart_casual_2_f_afro",
	"c_man_polo_4_f_afro",
	"c_man_sport_2_f_afro",
	"c_man_casual_1_f_afro"
	];
PNI_fnc_createnormZombie = {
  	private _pos = [] call MAZ_EZM_fnc_getScreenPosition; 
	private _zombietypes = ["c_man_casual_1_f_afro_sick", "c_man_casual_3_f_afro_sick", "c_man_sport_2_f_afro_sick", "c_man_casual_4_f_afro_sick", "c_man_casual_5_f_afro_sick", "c_man_casual_6_f_afro_sick", "c_man_polo_1_f_afro_sick", "c_man_polo_2_f_afro_sick", "c_man_polo_3_f_afro_sick", "c_man_polo_6_f_afro_sick"];
	private _zombie = createAgent [selectRandom _zombietypes, _pos, [], 0, "NONE"];
	[_zombie] call MAZ_EZM_fnc_addObjectToInterface; 
    [_zombie] spawn MAZ_EZM_fnc_cleanerWaitTilNoPlayers; 
	private _loadout = selectRandom zombieLoadouts;
	_zombie setUnitLoadout _loadout;	
	removeVest _zombie;
	removeAllWeapons _zombie;
	removeAllAssignedItems _zombie;
	_zombie enableStamina false;
	_zombie disableAI "FSM";
	_zombie enableAI "ANIM";
	_zombie enableAI "move";
	_zombie enableAI "PATH";
	_zombie setBehaviour "CARELESS";
	_zombie setspeedMode "FULL";
	_zombie setSkill 1;
	_zombie setskill ["spotdistance", 1];
	_zombie setskill ["spottime", 4];
	_zombie setskill ["courage", 1];
	_zombie setskill ["commanding", 1];
	_zombie allowFleeing 0;
	_zombie forceSpeed 6;
	_zombie addRating -2000;
	_zombie disableAI "AIminGERRor";
	_zombie disableAI "SUPPRESSION";
	_zombie disableAI "CHECKVISIBLE";
	_zombie disableAI "Cover";
	_zombie setDamage 0.4;
	_zombie playAction "Panic";
	_zombie addRating -99;
	_zombie setVariable ["initAttack", false, true];
	_zombie setVariable ["Triggered", false, true];
	_zombieArray = missionnamespace getVariable "isZombie";
	_zombieArray pushBack _zombie;
	missionnamespace setVariable ["isZombie", _zombieArray, true];
	_zombie setVariable ["movingZombie", true, true];

	_zombie addEventHandler ["firedNear", {
		params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];

		if (_distance <= 300) then {
			_unit setVariable ["Triggered", true, true];
			playSound3D ["A3\sounds_f\characters\human-sfx\P01\max_hit_05.wss", _unit, false, getPosASL _unit, 1, 0.7];
			_unit removeEventHandler [_thisEvent, _thisEventHandler];
		};
	}];

	_zombie addEventHandler['Handledamage', {
		params["_agent", "_selection", "_damage", "_source", "_projectile", "_hitindex", "_instigator", "_hitPoint"];
		private _unit = _zombie select 0;
		private _hitselection = _zombie select 1;
		_returndamage = _damage;
		if ((_selection in ['head'])) then {
			_returndamage = _damage;
		} else {
			_returndamage = _damage / 3;
		};

		_returndamage;
	}];

	_zombie addEventHandler ["AnimChanged", {
		params ["_agent", "_anim"];
		_agent playActionNow "Panic";
		_agent setAnimSpeedCoef 1.5;
	}];
};

MAS_fnc_createFireZombie = {
  	private _pos = [] call MAZ_EZM_fnc_getScreenPosition; 
	private _zombie = createAgent ["C_Soldier_VR_F", _pos, [], 0, "NONE"];
	[_zombie] call MAZ_EZM_fnc_addObjectToInterface; 
    [_zombie] spawn MAZ_EZM_fnc_cleanerWaitTilNo_Players; 
	for "_i" from 0 to 5 do {_zombie setObjectMaterialGlobal [_i,"\a3\data_f\default.rvmat"]}; 
	for "_i" from 0 to 5 do {_zombie setObjectTextureGlobal [_i,"#(rgb,8,8,3)color(0,0.5,0,0.5)"]};
	for "_i" from 0 to 5 do {_zombie setObjectTextureglobal [_i,"a3\structures_f_mark\training\data\shootingmat_01_opfor_co.paa"]};
	_zombie addGoggles "g_balaclava_scarecrow_01";
	removeVest _zombie;
	removeAllWeapons _zombie;
	removeAllAssignedItems _zombie;
	removeHeadgear _zombie;
	0 = _zombie spawn { 
	private _light = createVehicle ["#lightpoint",getPos _this,[],0,"CAN_COLLIDE"]; 
	[_light,1.5] remoteExec ["setLightBrightness",0,_light]; 
	[_light,[0.75, 0.25, 0.1]] remoteExec ["setLightAmbient",0,_light]; 
	[_light,[0.75, 0.25, 0.1]] remoteExec ["setLightColor",0,_light]; 
	[_light,[_this, [0, 0, 0]]] remoteExec ["lightAttachObject"];
	private _emitter = createVehicle ["#particlesource",getpos _this,[],0,"CAN_COLLIDE"];
	[_emitter,"ObjectDestructionFire1Tiny"] remoteExec ["setParticleClass"];
	[_emitter,[0,0,0]] remoteExec ["setParticleFire"];
    _emitter attachTo [_this,[0,0,0.4],"head"]; 
    waitUntil {uisleep 2; !alive _this}; 
    lightDetachObject _light; 
    deleteVehicle _light; 
    detach _emitter; 
    deleteVehicle _emitter; 
	};
	_zombie enableStamina false;
	_zombie disableAI "FSM";
	_zombie setAnimSpeedCoef 3.5;
	_zombie enableAI "ANIM";
	_zombie enableAI "move";
	_zombie enableAI "PATH";
	_zombie setBehaviour "CARELESS";
	_zombie setspeedMode "FULL";
	_zombie setSkill 1;
	_zombie setskill ["spotdistance", 1];
	_zombie setskill ["spottime", 4];
	_zombie setskill ["courage", 1];
	_zombie setskill ["commanding", 1];
	_zombie allowFleeing 0;
	_zombie forceSpeed 6;
	_zombie addRating -2000;
	_zombie disableAI "AIminGERRor";
	_zombie disableAI "SUPPRESSION";
	_zombie disableAI "CHECKVISIBLE";
	_zombie disableAI "Cover";
	_zombie setDamage 0.4;
	_zombie addRating -99;
	_zombie setVariable ["initFAttack", false, true];
	_zombie setVariable ["Triggered", false, true];
	_zombie setVariable ["initFireNoises", false, true];
	_zombie setUnitPos "MIDDLE";
	_zombieArray = missionnamespace getVariable "isZombie";
	_zombieArray pushBack _zombie;
	missionnamespace setVariable ["isZombie", _zombieArray, true];
	_zombie setVariable ["movingZombie", true, true];

	_zombie addEventHandler ["firedNear", {
		params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];

		if (_distance <= 300) then {
			_unit setVariable ["Triggered", true, true];
			playSound3D ["A3\sounds_f\characters\human-sfx\P01\max_hit_05.wss", _unit, false, getPosASL _unit, 1, 0.7];
			_unit removeEventHandler [_thisEvent, _thisEventHandler];
		};
	}];

	_zombie addEventHandler['Handledamage', {
		params["_agent", "_selection", "_damage", "_source", "_projectile", "_hitindex", "_instigator", "_hitPoint"];
		private _unit = _zombie select 0;
		private _hitselection = _zombie select 1;
		_returndamage = _damage;
		if ((_selection in ['head'])) then {
			_returndamage = _damage / 3;
		} else {
			_returndamage = _damage / 8;
		};

		_returndamage;
	}];
};

MAS_fnc_createWen = {
  	private _pos = [] call MAZ_EZM_fnc_getScreenPosition; 
	private _zombietypes = ["c_man_casual_1_f_afro_sick"];
	private _zombie = createAgent [selectRandom _zombietypes, _pos, [], 0, "NONE"];
	[_zombie] call MAZ_EZM_fnc_addObjectToInterface; 
    [_zombie] spawn MAZ_EZM_fnc_cleanerWaitTilNoPlayers; 
	_zombie setUnitLoadout "B_ghillie_sard_F";
	removeVest _zombie;
	removeAllWeapons _zombie;
	removeAllAssignedItems _zombie;
	[
		_zombie,
		"#(argb,8,8,3)color(0,0,0,1,ca)",
		"a3\data_f\default.rvmat"
	] call M9SD_fnc_paintJob;
	private _skull = createSimpleObject ["Land_DeerSkeleton_skull_01_F", getPosATL _zombie];
	_skull attachTo [_zombie, [0, 0.1, 0.45], "head", true];
	[_skull, [230, 60, 360]] call BIS_fnc_setObjectRotation;
	_skull setPosATL [getPosATL _zombie];
	private _axe = createSimpleObject ["Land_Axe_F", getPosATL _zombie];
	_axe attachTo [_zombie, [0, 0.04, 0], "righthand", true];
	[_axe, [10, 300, 40]] call BIS_fnc_setObjectRotation;
	_zombie setVariable ["isWen", true, true];
	_zombie enableStamina false;
	_zombie disableAI "FSM";
	_zombie enableAI "ANIM";
	_zombie enableAI "move";
	_zombie enableAI "PATH";
	_zombie setBehaviour "CARELESS";
	_zombie setspeedMode "FULL";
	_zombie setSkill 1;
	_zombie setskill ["spotdistance", 1];
	_zombie setskill ["spottime", 4];
	_zombie setskill ["courage", 1];
	_zombie setskill ["commanding", 1];
	_zombie allowFleeing 0;
	_zombie forceSpeed 6;
	_zombie disableAI "AIminGERRor";
	_zombie disableAI "SUPPRESSION";
	_zombie disableAI "CHECKVISIBLE";
	_zombie disableAI "Cover";
	_zombie setDamage 0.4;
	_zombie playAction "Panic";
	_zombie addRating -99;

	_zombie setVariable ["initWenAttack", false, true];
	_zombie setVariable ["initWenNoises", false, true];
	_zombie setVariable ["Triggered", false, true];
	_zombieArray = missionnamespace getVariable "isZombie";
	_zombieArray pushBack _zombie;
	missionnamespace setVariable ["isZombie", _zombieArray, true];
	_zombie setVariable ["movingZombie", true, true];

	_zombie addEventHandler ["firedNear", {
		params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];

		if (_distance <= 300) then {
			_unit setVariable ["Triggered", true, true];
			playSound3D ["a3\sounds_f_orange\missionsfx\pastambiences\idaphospitaltent\orange_idaphospitaltent_cough_03.wss", _unit, false, getPosASL _unit, 1, 0.7];
			_unit removeEventHandler [_thisEvent, _thisEventHandler];
		};
	}];

	_zombie addEventHandler['Handledamage', {
		params["_agent", "_selection", "_damage", "_source", "_projectile", "_hitindex", "_instigator", "_hitPoint"];
		private _unit = _zombie select 0;
		private _hitselection = _zombie select 1;
		_returndamage = _damage;
		if ((_selection in ['head'])) then {
			_returndamage = _damage / 4;
		} else {
			_returndamage = _damage / 11;
		};
		_returndamage;
	}];

	_zombie addEventHandler ["AnimChanged", {
		params ["_agent", "_anim"];
		_agent playActionNow "Panic";
		_agent setAnimSpeedCoef 1.15;
	}];
};

MAS_fnc_createCreepZombie = {
  	private _pos = [] call MAZ_EZM_fnc_getScreenPosition; 
	private _zombie = createAgent ["C_Soldier_VR_F", _pos, [], 0, "NONE"];
	[_zombie] call MAZ_EZM_fnc_addObjectToInterface; 
    [_zombie] spawn MAZ_EZM_fnc_cleanerWaitTilNo_Players; 
	for "_i" from 0 to 5 do {_zombie setObjectMaterialGlobal [_i,"\a3\data_f\default.rvmat"]};
	for "_i" from 0 to 5 do {_zombie setObjectTextureGlobal [_i,"#(rgb,8,8,3)color(0,0,0,0)"]};
	_zombie enableStamina false;
	_zombie disableAI "FSM";
	_zombie disableAI "PATH";
	_zombie setAnimSpeedCoef 3.5;
	_zombie enableAI "ANIM";
	_zombie enableAI "move";
	_zombie enableAI "PATH";
	_zombie setBehaviour "CARELESS";
	_zombie setspeedMode "FULL";
	_zombie setSkill 1;
	_zombie setskill ["spotdistance", 1];
	_zombie setskill ["spottime", 4];
	_zombie setskill ["courage", 1];
	_zombie setskill ["commanding", 1];
	_zombie allowFleeing 0;
	_zombie forceSpeed 6;
	_zombie addRating -2000;
	_zombie disableAI "AIminGERRor";
	_zombie disableAI "SUPPRESSION";
	_zombie disableAI "CHECKVISIBLE";
	_zombie disableAI "Cover";
	_zombie setDamage 0.4;
	_zombie addRating -99;
	_zombie setVariable ["initCreepAttack", false, true];
	_zombie setVariable ["initCreepDefense", false, true];
	_zombie setVariable ["Triggered", false, true];
	_zombie setVariable ["initCreepNoises", false, true];
	_zombieArray = missionnamespace getVariable "isZombie";
	_zombieArray pushBack _zombie;
	missionnamespace setVariable ["isZombie", _zombieArray, true];
	_zombie setVariable ["teleportCreep", true, true];

	_zombie addEventHandler ["firedNear", {
		params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];

		if (_distance <= 300) then {
			_unit setVariable ["Triggered", true, true];
			playSound3D ["A3\sounds_f\characters\human-sfx\P01\max_hit_05.wss", _unit, false, getPosASL _unit, 1, 0.7];
			_unit removeEventHandler [_thisEvent, _thisEventHandler];
		};
	}];

	_zombie addEventHandler ["HandleDamage", {
		params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator"];
		[_unit] spawn {
		_zombie = _this select 0;
		if (_zombie getVariable "initCreepDefense" == false && alive _zombie) then {
		_zombie setVariable ["initCreepDefense", true, true];
		_zombie setDir (random 360);
		_zombiePos = getPos _zombie;
		private _helipad = createVehicle ["Land_HelipadEmpty_F", _zombiePos, [], 0, "NONE"];
		private _blast_blurp = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
		[_blast_blurp, [5, [-3, -3, 0]]] remoteExec ["setParticleCircle", 0, false];
		[_blast_blurp, [2, [6, 6, 0], [-7, -7, 0], 5, 1, [0, 0, 0, 1], 1, 1]] remoteExec ["setParticleRandom", 0, false];
		[_blast_blurp, [
		["\A3\data_f\ParticleEffects\Hit_Leaves\Leaves_Green.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [2, 2, 2], 0, 12, 7.9, 0.075,
		[2, 2, 2], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _helipad
		]] remoteExec ["setParticleParams", 0, false];
		[_blast_blurp, 0.005] remoteExec ["setDropInterval", 0, false];

		private _blast_dust = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
		[_blast_dust, [3, [-3, -3, 0]]] remoteExec ["setParticleCircle", 0, false];
		[_blast_dust, [2, [2, 2, 0], [-7, -7, 0], 5, 1, [0, 0, 0, 1], 1, 1]] remoteExec ["setParticleRandom", 0, false];
		[_blast_dust, [
		["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 2, [0, 0, 0], [0, 0, 0.1], 0, 10, 7.9, 0.075,
		[1, 3, 5], [[0.3, 0.27, 0.15, 0.1], [0.3, 0.27, 0.15, 0.01], [0.3, 0.27, 0.15, 0]], [0.08], 1, 0, "", "", _helipad
		]] remoteExec ["setParticleParams", 0, false];
		[_blast_dust, 0.01] remoteExec ["setDropInterval", 0, false];

		private _effect_sp_dist = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
		[_effect_sp_dist, [0, [0, 0, 0]]] remoteExec ["setParticleCircle", 0, false];
		[_effect_sp_dist, [0, [0,0, 0], [0,0, 0], 0, 0, [0, 0, 0, 0], 0, 0]] remoteExec ["setParticleRandom", 0, false];
		[_effect_sp_dist, [
		["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 1.5, [0, 0, 0], [0, 0, 0], 7, 10, 7.9, 0.007,
		[2, 2, 30, 1], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _helipad
		]] remoteExec ["setParticleParams", 0, false];
		[_effect_sp_dist, 0.4] remoteExec ["setDropInterval", 0, false];
		_zombie setPosATL [(getPosATL _zombie select 0) + (random 100) - (random 100), (getPosATL _zombie select 1) + (random 100) - (random 100), getPosATL _zombie select 2];
		playSound3D ["a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_01.wss", _zombie];
		_zombie setDamage 0;
		sleep 2;
		deleteVehicle _helipad;
		deleteVehicle _blast_blurp;
		deleteVehicle _blast_dust;
		deleteVehicle _effect_sp_dist;
		_zombie setDamage 0;
		_zombie setVariable ["initCreepDefense", false, true];
		};
		};
	}];
};

PNI_fnc_createHeavyZombie = {
  	private _pos = [] call MAZ_EZM_fnc_getScreenPosition; 
	private _zombietypes = ["c_man_casual_1_f_afro_sick", "c_man_casual_3_f_afro_sick", "c_man_sport_2_f_afro_sick", "c_man_casual_4_f_afro_sick", "c_man_casual_5_f_afro_sick", "c_man_casual_6_f_afro_sick", "c_man_polo_1_f_afro_sick", "c_man_polo_2_f_afro_sick", "c_man_polo_3_f_afro_sick", "c_man_polo_6_f_afro_sick"];
	private _zombie = createAgent [selectRandom _zombietypes, _pos, [], 0, "NONE"];
	[_zombie] call MAZ_EZM_fnc_addObjectToInterface; 
    [_zombie] spawn MAZ_EZM_fnc_cleanerWaitTilNoPlayers; 
	private _loadout = selectRandom zombieLoadouts;
	_zombie setUnitLoadout _loadout;	
	removeVest _zombie;
	removeAllWeapons _zombie;
	removeAllAssignedItems _zombie;
	_zombie setVariable ["isHeavy", true, true];
	_zombie enableStamina false;
	_zombie disableAI "FSM";
	_zombie enableAI "ANIM";
	_zombie enableAI "move";
	_zombie enableAI "PATH";
	_zombie setBehaviour "CARELESS";
	_zombie setspeedMode "FULL";
	_zombie setSkill 1;
	_zombie setskill ["spotdistance", 1];
	_zombie setskill ["spottime", 4];
	_zombie setskill ["courage", 1];
	_zombie setskill ["commanding", 1];
	_zombie allowFleeing 0;
	_zombie forceSpeed 6;
	_zombie disableAI "AIminGERRor";
	_zombie disableAI "SUPPRESSION";
	_zombie disableAI "CHECKVISIBLE";
	_zombie disableAI "Cover";
	_zombie setDamage 0.4;
	_zombie playAction "Panic";
	_zombie addRating -99;

	_zombie setVariable ["initHEAVYAttack", false, true];
	_zombie setVariable ["initHeavyZombieNoises", false, true];
	_zombie setVariable ["Triggered", false, true];
	_zombieArray = missionnamespace getVariable "isZombie";
	_zombieArray pushBack _zombie;
	missionnamespace setVariable ["isZombie", _zombieArray, true];
	_zombie setVariable ["movingZombie", true, true];

	_zombie addEventHandler ["fired", {
		_this spawn {
			params ["_agent", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner", "_target"];
			private _nearMen = nearestobjects [vehicle _agent, ["Man"], 2];
			private _target = allPlayers select 0;
			{
				if (isPlayer _x && alive _x) exitWith {
					_target = _x;
				};
			}forEach _nearmen;

			_target attachTo [_projectile, [0, 0, 0]];
			sleep 1;
			deleteVehicle _projectile;
		};
	}];

	_zombie addEventHandler ["firedNear", {
		params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];

		if (_distance <= 300) then {
			_unit setVariable ["Triggered", true, true];
			playSound3D ["a3\sounds_f_orange\missionsfx\pastambiences\idaphospitaltent\orange_idaphospitaltent_cough_03.wss", _unit, false, getPosASL _unit, 1, 0.7];
			_unit removeEventHandler [_thisEvent, _thisEventHandler];
		};
	}];

	_zombie addEventHandler['Handledamage', {
		params["_agent", "_selection", "_damage", "_source", "_projectile", "_hitindex", "_instigator", "_hitPoint"];
		private _unit = _zombie select 0;
		private _hitselection = _zombie select 1;
		_returndamage = _damage;
		if ((_selection in ['head'])) then {
			_returndamage = _damage / 3;
		} else {
			_returndamage = _damage / 6;
		};

		_returndamage;
	}];

	_zombie addEventHandler ["AnimChanged", {
		params ["_agent", "_anim"];
		_agent playActionNow "Panic";
	}];
};

[] spawn {
	missionnamespace setVariable ["isZombie", [], true];
	creepTeleportFnc = {
		_zombie = _this select 0;
		_zombiePos = getPos _zombie;
		private _helipad = createVehicle ["Land_HelipadEmpty_F", _zombiePos, [], 0, "NONE"];
		private _blast_blurp = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
		[_blast_blurp, [5, [-3, -3, 0]]] remoteExec ["setParticleCircle", 0, false];
		[_blast_blurp, [2, [6, 6, 0], [-7, -7, 0], 5, 1, [0, 0, 0, 1], 1, 1]] remoteExec ["setParticleRandom", 0, false];
		[_blast_blurp, [
		["\A3\data_f\ParticleEffects\Hit_Leaves\Leaves_Green.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [2, 2, 2], 0, 12, 7.9, 0.075,
		[2, 2, 2], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _helipad
		]] remoteExec ["setParticleParams", 0, false];
		[_blast_blurp, 0.005] remoteExec ["setDropInterval", 0, false];

		private _blast_dust = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
		[_blast_dust, [3, [-3, -3, 0]]] remoteExec ["setParticleCircle", 0, false];
		[_blast_dust, [2, [2, 2, 0], [-7, -7, 0], 5, 1, [0, 0, 0, 1], 1, 1]] remoteExec ["setParticleRandom", 0, false];
		[_blast_dust, [
		["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 2, [0, 0, 0], [0, 0, 0.1], 0, 10, 7.9, 0.075,
		[1, 3, 5], [[0.3, 0.27, 0.15, 0.1], [0.3, 0.27, 0.15, 0.01], [0.3, 0.27, 0.15, 0]], [0.08], 1, 0, "", "", _helipad
		]] remoteExec ["setParticleParams", 0, false];
		[_blast_dust, 0.01] remoteExec ["setDropInterval", 0, false];

		private _effect_sp_dist = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
		[_effect_sp_dist, [0, [0, 0, 0]]] remoteExec ["setParticleCircle", 0, false];
		[_effect_sp_dist, [0, [0,0, 0], [0,0, 0], 0, 0, [0, 0, 0, 0], 0, 0]] remoteExec ["setParticleRandom", 0, false];
		[_effect_sp_dist, [
		["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 1.5, [0, 0, 0], [0, 0, 0], 7, 10, 7.9, 0.007,
		[2, 2, 30, 1], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _helipad
		]] remoteExec ["setParticleParams", 0, false];
		[_effect_sp_dist, 0.4] remoteExec ["setDropInterval", 0, false];
		_zombie setPosATL [(getPosATL _zombie select 0) + (random 50) - (random 50), (getPosATL _zombie select 1) + (random 50) - (random 50), getPosATL _zombie select 2];
		_zombie setDir (random 360);
		playSound3D ["a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_01.wss", _zombie];
		sleep 2;
		deleteVehicle _helipad;
		deleteVehicle _blast_blurp;
		deleteVehicle _blast_dust;
		deleteVehicle _effect_sp_dist;
	};
	zombieNoises = {
		params ["_zombie"];

		_zombie setVariable ["initZombieNoises", true, true];

		_hitSounds = [
			'A3\sounds_f\characters\human-sfx\P01\Low_hit_01.wss',
			'A3\sounds_f\characters\human-sfx\P01\Low_hit_02.wss',
			'A3\sounds_f\characters\human-sfx\P01\Low_hit_03.wss',
			'A3\sounds_f\characters\human-sfx\P01\Low_hit_04.wss',
			'A3\sounds_f\characters\human-sfx\P01\Low_hit_05.wss',
			'A3\sounds_f\characters\human-sfx\P01\Mid_hit_01.wss',
			'A3\sounds_f\characters\human-sfx\P01\Mid_hit_02.wss',
			'A3\sounds_f\characters\human-sfx\P01\Mid_hit_03.wss',
			'A3\sounds_f\characters\human-sfx\P01\Mid_hit_04.wss',
			'A3\sounds_f\characters\human-sfx\P01\max_hit_01.wss',
			'A3\sounds_f\characters\human-sfx\P01\max_hit_02.wss',
			'A3\sounds_f\characters\human-sfx\P01\max_hit_03.wss',
			'A3\sounds_f\characters\human-sfx\P01\max_hit_04.wss',
			'A3\sounds_f\characters\human-sfx\P01\max_hit_05.wss'
		];
		_randomSound = selectRandom _hitSounds;
		_rNumber = random 20;

		sleep _rNumber;
		_zombie setVariable ["initZombieNoises", false, true];
	};

	zombieAttacklogic = {
		params ["_zombie"];
		private _nearMen = nearestobjects [vehicle _zombie, ["Man"], 200];
		private _target = allPlayers select 0;
		{
			if (isPlayer _x && alive _x) exitWith {
				_target = _x;

				if ((_zombie distance _target) <= 2) then {
					_zombie setDir ([_zombie, _target] call BIS_fnc_dirTo);

					_zombie setVariable ["initAttack", true, true];
					playSound3D ["a3\sounds_f\weapons\hits\body_1.wss", _zombie, false, getPosASL _zombie, 1, 0.7];
					_hitSounds = [
						'A3\sounds_f\characters\human-sfx\P01\Low_hit_01.wss',
						'A3\sounds_f\characters\human-sfx\P01\Low_hit_02.wss',
						'A3\sounds_f\characters\human-sfx\P01\Low_hit_03.wss',
						'A3\sounds_f\characters\human-sfx\P01\Low_hit_04.wss',
						'A3\sounds_f\characters\human-sfx\P01\Low_hit_05.wss',
						'A3\sounds_f\characters\human-sfx\P01\Mid_hit_01.wss',
						'A3\sounds_f\characters\human-sfx\P01\Mid_hit_02.wss',
						'A3\sounds_f\characters\human-sfx\P01\Mid_hit_03.wss',
						'A3\sounds_f\characters\human-sfx\P01\Mid_hit_04.wss',
						'A3\sounds_f\characters\human-sfx\P01\max_hit_01.wss',
						'A3\sounds_f\characters\human-sfx\P01\max_hit_02.wss',
						'A3\sounds_f\characters\human-sfx\P01\max_hit_03.wss',
						'A3\sounds_f\characters\human-sfx\P01\max_hit_04.wss',
						'A3\sounds_f\characters\human-sfx\P01\max_hit_05.wss'
					];
					_randomSound = selectRandom _hitSounds;
					playSound3D [_randomSound, _zombie, false, getPosASL _zombie, 1, 0.5];

					[_zombie, "AwopPercMstpSgthWnonDnon_end"] remoteExec ["switchMove"];
					_damage = damage _target;
					_target setDamage ((_damage) + 0.1);
					playSound3D ["a3\sounds_f\weapons\hits\body_8.wss", _target, false, getPosASL _target, 3, 0.5]; 
					_target setBleedingRemaining 30;
					sleep 1.5;
					_zombie setVariable ["initAttack", false, true];
				};
			};
		} forEach _nearMen;
	};

	zombieHeavyNoises = {
		params ["_zombie"];

		_zombie setVariable ["initHeavyZombieNoises", true, true];

		_hitSounds = [
			'a3\animals_f_beta\sheep\data\sound\sheep5.wss',
			'a3\sounds_f_orange\missionsfx\pastambiences\idaphospitaltent\orange_idaphospitaltent_cough_03.wss'
		];
		_randomSound = selectRandom _hitSounds;
		_rNumber = random 20;
		playSound3D [_randomSound, _zombie, false, getPosASL _zombie, 4, 0.2];
		sleep _rNumber;
		_zombie setVariable ["initHeavyZombieNoises", false, true];
	};
	zombieFNoises = {
		params ["_zombie"];

		_zombie setVariable ["initFireNoises", true, true];

		_hitSounds = [
			"a3\missions_f_exp\data\sounds\exp_m05_dramatic.wss",
			"a3\sounds_f\ambient\animals\dog1.wss",
			"a3\sounds_f\ambient\animals\dog2.wss",
			"a3\sounds_f\ambient\animals\dog3.wss",
			"a3\sounds_f\ambient\animals\dog4.wss",
			"a3\sounds_f\weapons\hits\body_2.wss",
			"a3\sounds_f\weapons\hits\body_3.wss",
			"a3\sounds_f\weapons\hits\body_4.wss",
			"a3\sounds_f\weapons\hits\body_5.wss",
			"a3\sounds_f\weapons\hits\body_6.wss",
			"a3\sounds_f\weapons\hits\body_7.wss",
			"a3\sounds_f\weapons\hits\body_8.wss"
		];
		_randomSound = selectRandom _hitSounds;
		_rNumber = random 15;
		playSound3D [_randomSound, _zombie, false, getPosASL _zombie, 3, 0.5];
		sleep _rNumber;
		_zombie setVariable ["initFireNoises", false, true];
	};

	zombieCreepNoises = {
		params ["_zombie"];

		_zombie setVariable ["initCreepNoises", true, true];

		_hitSounds = [
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_04.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_05.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_06.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_07.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_08.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_09.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_10.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_11.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_04.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_05.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_06.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_08.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird03_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird03_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird03_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird04_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird04_02.wss'
		];
		_randomSound = selectRandom _hitSounds;
		_rNumber = random 15;
		playSound3D [_randomSound, _zombie, false, getPosASL _zombie, 3, 0.5];
		sleep _rNumber;
		_zombie setVariable ["initCreepNoises", false, true];
	};

	zombieWenNoises = {
		params ["_zombie"];

		_zombie setVariable ["initWenNoises", true, true];

		_hitSounds = [
			'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_2.wss',
			'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_3.wss',
			'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_4.wss',
			'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_5.wss',
			'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_6.wss',
			'a3\data_f_curator\sound\cfgsounds\moduleseagulls.wss',
			'a3\data_f_curator\sound\cfgsounds\wind1.wss',
			'a3\data_f_curator\sound\cfgsounds\wind2.wss',
			'a3\data_f_curator\sound\cfgsounds\wind3.wss',
			'a3\data_f_curator\sound\cfgsounds\wind4.wss',
			'a3\data_f_curator\sound\cfgsounds\wind5.wss',
			'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_1.wss',
			'a3\sounds_f\environment\ambient\night_insects_birds_nowinds1.wss',
			'a3\sounds_f\environment\ambient\night_insects_birds_nowinds2.wss',
			'a3\sounds_f\environment\animals\birds\owl1.wss',
			'a3\sounds_f\environment\animals\birds\owl2.wss',
			'a3\sounds_f\environment\animals\birds\owl3.wss',
			'a3\sounds_f\environment\animals\birds\owl1.wss',
			'a3\sounds_f\environment\animals\birds\owl2.wss',
			'a3\sounds_f\environment\animals\birds\owl3.wss',			
			'a3\sounds_f\environment\animals\chickens\chicken_01.wss',
			'a3\sounds_f\environment\animals\scared_animal1.wss',
			'a3\sounds_f\environment\animals\scared_animal2.wss',
			'a3\sounds_f\environment\animals\scared_animal3.wss',
			'a3\sounds_f\environment\animals\scared_animal4.wss',
			'a3\sounds_f\environment\animals\scared_animal5.wss',
			'a3\sounds_f\environment\animals\scared_animal6.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_04.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_05.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\wolves_06.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird01_08.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird03_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird03_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird03_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird04_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\distant\night\bird04_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird01_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird01_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird01_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird01_08.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird03_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird03_02.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird03_03.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird04_01.wss',
			'a3\sounds_f_enoch\assets\environment\spotfx\fauna\birds\forest\mid\night\bird04_02.wss'

		];
		_randomSound = selectRandom _hitSounds;
		_rNumber = random 15;
		playSound3D [_randomSound, _zombie, false, getPosASL _zombie, 3, 0.5];
		sleep _rNumber;
		_zombie setVariable ["initWenNoises", false, true];
	};

	zombieWenAttacklogic = {
		params ["_zombie"];
		private _nearMen = nearestobjects [vehicle _zombie, ["Man"], 600];
		private _target = allPlayers select 0;
		{
			if (isPlayer _x && alive _x) exitWith {
				_target = _x;

				if ((_zombie distance _target) <= 2.5) then {
					_zombie setDir ([_zombie, _target] call BIS_fnc_dirTo);

					_zombie setVariable ["initWenAttack", true, true];
					_hitSounds = [
						'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_2.wss',
						'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_3.wss',
						'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_4.wss',
						'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_5.wss',
						'a3\data_f_curator\sound\cfgnonaivehicles\eagle_f_6.wss',
						'a3\sounds_f\environment\ambient\night_insects_birds_winds4.wss',
						'a3\sounds_f\environment\ambient\night_insects_birds_winds5.wss',
						'a3\sounds_f\environment\animals\birds\owl1.wss',
						'a3\sounds_f\environment\animals\birds\owl2.wss',
						'a3\sounds_f\environment\animals\birds\owl3.wss',
						'a3\sounds_f\environment\animals\scared_animal3.wss',
						'a3\sounds_f\environment\animals\scared_animal4.wss',
						'a3\sounds_f\environment\animals\scared_animal5.wss',
						'a3\sounds_f\environment\animals\scared_animal6.wss'
					];
					_randomSound = selectRandom _hitSounds;
					playSound3D [_randomSound, _zombie, false, getPosASL _zombie, 2, 0.2];
					sleep 1;
					[_zombie, "AwopPercMstpSgthWnonDnon_start"] remoteExec ["switchMove"];
					sleep 1;
					playSound3D ["a3\sounds_f\weapons\hits\body_1.wss", _zombie, false, getPosASL _zombie, 2, 0.7];
					shaketargetscreen = {
						enableCamShake true;
						addCamShake [5, 5, 25];
					};
					remoteExec ["shaketargetscreen", _target];
					_damage = damage _target;
					_target setDamage ((_damage) + 0.3);
					playSound3D ["a3\sounds_f\weapons\hits\body_8.wss", _target, false, getPosASL _target, 3, 0.5]; 
					_target setBleedingRemaining 60;
					private _meat_pieces = createVehicle ["#particlesource",getPosATL _target,[],0,"CAN_COLLIDE"]; 
					[_meat_pieces,[1,[0, 0, 0]]] remoteExec ["setParticleCircle"];
					[_meat_pieces,[0.2,[0.5,0.5,0.2],[0,0,0],0,0.5,[0,0,0,0.1],1,0]] remoteExec ["setParticleRandom"];
					[_meat_pieces,[["\A3\data_f\ParticleEffects\Universal\Meat_ca.p3d",1,0,1],"","SpaceObject",1,15,[0,0,0.1],[0,0,0],0,19,7.9, 0.1,[4,4],[[1,0.1,0.1,1],[0,0,0,1]],[1],1,0, "", "", _target,0,true,1,[[0,0,0,0]]]] remoteExec ["setParticleParams"];
					[_meat_pieces,0.03] remoteExec ["setDropInterval"];
					[_meat_pieces] spawn {_meat_pieces = _this select 0; sleep 1; deleteVehicle _meat_pieces};
					sleep 3;
					_zombie setVariable ["initWenAttack", false, true];
				
				};
			};
		} forEach _nearMen;
	};
	zombieFAttacklogic = {
		params ["_zombie"];
		private _nearMen = nearestobjects [vehicle _zombie, ["Man"], 200];
		private _target = allPlayers select 0;
		{
			if (isPlayer _x && alive _x) exitWith {
				_target = _x;

				if ((_zombie distance _target) <= 2) then {
					_zombie setDir ([_zombie, _target] call BIS_fnc_dirTo);

					_zombie setVariable ["initFAttack", true, true];
					playSound3D ["a3\sounds_f\weapons\hits\body_1.wss", _zombie, false, getPosASL _zombie, 1, 0.7];
					playSound3D ["a3\missions_f_exp\data\sounds\exp_m04_flare.wss", _zombie, false, getPosASL _zombie, 1, 0.5];
					[_zombie, "AwopPercMstpSgthWnonDnon_end"] remoteExec ["switchMove"];
					private _pos = getPos _target; 
					private _smokeNfire = createVehicle ["test_EmptyObjectForFireBig",_pos,[],0,"CAN_COLLIDE"]; 
					private _light = createVehicle ["#lightpoint",_pos,[],0,"CAN_COLLIDE"]; 
					[_light,1.5] remoteExec ["setLightBrightness",0,_light]; 
					[_light,[0.75, 0.25, 0.1]] remoteExec ["setLightAmbient",0,_light]; 
					[_light,[0.75, 0.25, 0.1]] remoteExec ["setLightColor",0,_light]; 
					_light attachTo [_smokeNfire,[0,0,0]];  
					_smokeNfire attachTo [_target,[0,0,0]];
					sleep 1;
					detach _smokeNfire;
					detach _light;
					deleteVehicle _smokeNfire;
					deleteVehicle _light;
					sleep 1;
					_zombie setVariable ["initFAttack", false, true];
				};
			};
		} forEach _nearMen;
	};
	zombieHeavyAttacklogic = {
		params ["_zombie"];
		private _nearMen = nearestobjects [vehicle _zombie, ["Man"], 600];
		private _target = allPlayers select 0;
		{
			if (isPlayer _x && alive _x) exitWith {
				_target = _x;

				if ((_zombie distance _target) <= 2) then {
					_zombie setDir ([_zombie, _target] call BIS_fnc_dirTo);

					_zombie setVariable ["initHeavyAttack", true, true];
					_zombie addItem "HandGrenade";
					sleep 0.1;
					_zombie forceWeaponFire ["HandGrenadeMuzzle", "HandGrenadeMuzzle"];

					_hitSounds = [
						'a3\animals_f_beta\sheep\data\sound\sheep5.wss',
						'a3\sounds_f_orange\missionsfx\pastambiences\idaphospitaltent\orange_idaphospitaltent_cough_03.wss'
					];
					_randomSound = selectRandom _hitSounds;
					playSound3D [_randomSound, _zombie, false, getPosASL _zombie, 2, 0.2];
					sleep 1;
					[_zombie, "AwopPercMstpSgthWnonDnon_end"] remoteExec ["switchMove"];
					playSound3D ["a3\sounds_f\weapons\hits\body_1.wss", _zombie, false, getPosASL _zombie, 2, 0.7];
					shaketargetscreen = {
						enableCamShake true;
						addCamShake [5, 5, 25];
					};
					remoteExec ["shaketargetscreen", _target];
					_damage = damage _target;
					_target setDamage ((_damage) + 0.3);
					playSound3D ["a3\sounds_f\weapons\hits\body_8.wss", _target, false, getPosASL _target, 3, 0.5]; 
					_target setBleedingRemaining 60;
					sleep 0.7;
					_zombie setVariable ["initHeavyAttack", false, true];
				};
			};
		} forEach _nearMen;
	};

	zombieCreepAttacklogic = {
		params ["_zombie"];
		private _nearMen = nearestobjects [vehicle _zombie, ["Man"], 200];
		private _target = allPlayers select 0;
		{
			if (isPlayer _x && alive _x) exitWith {
				_target = _x;
				if ((_zombie distance _target) <= 200) then {
				_zombie setVariable ["initCreepAttack", true, true];
				rNumber3 = Random 4;
				if (30 <= (_zombie distance _target) && (_zombie distance _target) <= 80 && 1 >= rNumber3) then {
				[_zombie,_target] spawn {
					_zombie = _this select 0;
					_target = _this select 1;
					_zombiePos = getPos _zombie;
					private _helipad = createVehicle ["Land_HelipadEmpty_F", _zombiePos, [], 0, "NONE"];
					private _blast_blurp = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
					[_blast_blurp, [5, [-3, -3, 0]]] remoteExec ["setParticleCircle", 0, false];
					[_blast_blurp, [2, [6, 6, 0], [-7, -7, 0], 5, 1, [0, 0, 0, 1], 1, 1]] remoteExec ["setParticleRandom", 0, false];
					[_blast_blurp, [
					["\A3\data_f\ParticleEffects\Hit_Leaves\Leaves_Green.p3d", 1, 0, 1], "", "SpaceObject", 1, 1, [0, 0, 0], [2, 2, 2], 0, 12, 7.9, 0.075,
					[2, 2, 2], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _helipad
					]] remoteExec ["setParticleParams", 0, false];
					[_blast_blurp, 0.005] remoteExec ["setDropInterval", 0, false];

					private _blast_dust = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
					[_blast_dust, [3, [-3, -3, 0]]] remoteExec ["setParticleCircle", 0, false];
					[_blast_dust, [2, [2, 2, 0], [-7, -7, 0], 5, 1, [0, 0, 0, 1], 1, 1]] remoteExec ["setParticleRandom", 0, false];
					[_blast_dust, [
					["\A3\data_f\cl_basic", 1, 0, 1], "", "Billboard", 1, 2, [0, 0, 0], [0, 0, 0.1], 0, 10, 7.9, 0.075,
					[1, 3, 5], [[0.3, 0.27, 0.15, 0.1], [0.3, 0.27, 0.15, 0.01], [0.3, 0.27, 0.15, 0]], [0.08], 1, 0, "", "", _helipad
					]] remoteExec ["setParticleParams", 0, false];
					[_blast_dust, 0.01] remoteExec ["setDropInterval", 0, false];

					private _effect_sp_dist = createVehicle ["#particlesource", getPosATL _helipad, [], 0, "CAN_COLLIDE"];
					[_effect_sp_dist, [0, [0, 0, 0]]] remoteExec ["setParticleCircle", 0, false];
					[_effect_sp_dist, [0, [0,0, 0], [0,0, 0], 0, 0, [0, 0, 0, 0], 0, 0]] remoteExec ["setParticleRandom", 0, false];
					[_effect_sp_dist, [
					["\A3\data_f\ParticleEffects\Universal\Refract.p3d", 1, 0, 1], "", "Billboard", 1, 1.5, [0, 0, 0], [0, 0, 0], 7, 10, 7.9, 0.007,
					[2, 2, 30, 1], [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 0], [1, 1, 1, 1]], [0.08], 1, 0, "", "", _helipad
					]] remoteExec ["setParticleParams", 0, false];
					[_effect_sp_dist, 0.4] remoteExec ["setDropInterval", 0, false];
					_zombie setPosATL [(getPosATL _target select 0) + (random 50) - (random 50), (getPosATL _target select 1) + (random 50) - (random 50), getPosATL _target select 2];
					_zombie setDir (random 360);
					playSound3D ["a3\sounds_f_enoch\assets\environment\spotfx\fauna\animals\deer_call_01.wss", _zombie];
					sleep 3;
					deleteVehicle _helipad;
					deleteVehicle _blast_blurp;
					deleteVehicle _blast_dust;
					deleteVehicle _effect_sp_dist;
				};
				};
				if ((_zombie distance _target) <= 30) then {
					[_target] spawn {
						_target = _this select 0;
						_target setDamage (getDammage _target + 0.15);
						playSound3D ["a3\sounds_f\weapons\hits\body_8.wss", _target, false, getPosASL _target, 3, 0.5]; 
						_target setBleedingRemaining 60;
						sleep 0.7;
						["Combat_Deafness"] remoteExec ["playSound", _target, false];
						["scuba_breath"] remoteExec ["playSound", _target, false];
						["OMPhoneRingVehicle"] remoteExec ["playSound", _target, false];
							private _varName = "PPEffectSys";

							private _value = (str {
							["ChromAberration", 200, [0.05, 0.05, true]] spawn {
							params ["_name", "_priority", "_effect", "_handle"];
							while {
								_handle = ppEffectCreate [_name, _priority];
								_handle < 0
							} do {
								_priority = _priority + 1;
							};
							_handle ppEffectEnable true;
							_handle ppEffectAdjust _effect;
							_handle ppEffectCommit 5;
							waitUntil { ppEffectCommitted _handle };
							uiSleep 3;
							_handle ppEffectEnable false;
							ppEffectDestroy _handle;
							};

							["WetDistortion", 300, [1, 0, 1, 4.10, 3.70, 2.50, 1.85, 0.0054, 0.0041, 0.05, 0.0070, 1, 1, 1, 1]] spawn
							{
							params ["_name", "_priority", "_effect", "_handle"];
							while {
								_handle = ppEffectCreate [_name, _priority];
								_handle < 0
							} do {
								_priority = _priority + 1;
							};
							_handle ppEffectEnable true;
							_handle ppEffectAdjust _effect;
							_handle ppEffectCommit 5;
							waitUntil { ppEffectCommitted _handle };
							uiSleep 3;
							_handle ppEffectEnable false;
							ppEffectDestroy _handle;
							};

							}) splitString "";

							_value deleteAt (count _value - 1);
							_value deleteAt 0;

							_value = _value joinString "";
							_value = _value + "removeMissionEventhandler ['EachFrame', _thisEventHandler];
							";
							_value = _value splitString "";

							missionNamespace setVariable [_varName, _value, true];

							[[_varName], {
								params ["_ding"];
								private _data = missionNamespace getVariable [_ding, []];
								_data = _data joinString "";
								addMissionEventhandler ["EachFrame", _data];
							}] remoteExec ['spawn', _target, false];
					};
				};
				rNumber1 = Random 6;
				if (1 >= rNumber1) then {
				[_zombie] spawn CreepTeleportFnc;
				};
				sleep 3;
				_zombie setVariable ["initCreepAttack", false, true];

			};
			};
		} forEach _nearMen;
	};

	zombiePathlogic = {
		params ["_zombie"];
		{
			params ["_zombie"];
			_zombie reveal _x;
			_x reveal _zombie;
			_zombie reveal vehicle _x;
			vehicle _x reveal _zombie;
		} forEach allPlayers;

		private _nearMen = nearestobjects [vehicle _zombie, ["MAN"], 500];
		private _target = nearestobjects [vehicle _zombie, ["Man"], 500];
		private _removeagent = [];
		{
			if (!isPlayer _x || !alive _x) then {
				_removeagent pushBack _x;
			};
		} forEach _nearMen;

		_nearmen = _nearmen - _removeagent;
		_nearMen = _nearMen apply {
			[_x distance _zombie, _x]
		};
		_nearMen sort true;
		_target = _nearMen select 0 select 1;
		if (!isNull _target) then {
			_targetVeh = vehicle _target;

			_targetVehPos = getPos _targetVeh;

			_newUnitVeh = vehicle _zombie;
			_zombie forgetTarget _target;
			_target forgetTarget _zombie;

			_zombie moveTo _targetVehPos;
		};
	};

	while {true} do {
		_penieZombies = missionnamespace getVariable "isZombie";
		private _deleteZombies = [];
		{
			_zombie = _x;
			if (! alive _zombie) then {
				_deleteZombies pushBack _zombie;
				continue;
			};
			if (_zombie getVariable "initZombieNoises" == false) then {
				[_zombie] spawn zombieNoises;
			};
			if (_zombie getVariable "initAttack" == false) then {
				[_zombie] spawn zombieAttacklogic;
			};
			if (_zombie getVariable "initFAttack" == false) then {
				[_zombie] spawn zombieFAttacklogic;
					
			if (_zombie getVariable "initFireNoises" == false) then {
				[_zombie] spawn zombieFNoises;
			};
			};
			if (_zombie getVariable "isHeavy" == true) then {
				if (_zombie getVariable "initHeavyZombieNoises" == false) then {
					[_zombie] spawn zombieHeavyNoises;
				};
				if (_zombie getVariable "initHeavyAttack" == false) then {
					[_zombie] spawn zombieHeavyAttacklogic;
				};
			};
			if (_zombie getVariable "teleportCreep" == true) then {
				if (_zombie getVariable "initCreepNoises" == false) then {
					[_zombie] spawn zombieCreepNoises;
				};
				if (_zombie getVariable "initCreepAttack" == false) then {
					[_zombie] spawn zombieCreepAttacklogic;	
				};
			};
			if (_zombie getVariable "isWen" == true) then {
				if (_zombie getVariable "initWenNoises" == false) then {
					[_zombie] spawn zombieWenNoises;
				};
				if (_zombie getVariable "initWenAttack" == false) then {
					[_zombie] spawn zombieWenAttacklogic;
				};
			};
		if (_zombie getVariable "movingZombie" == true) then {
			[_zombie] call zombiePathlogic;
		};
		} forEach _penieZombies;

		_penieZombies = _penieZombies - _deleteZombies;
		missionnamespace setVariable ["isZombie", _penieZombies, true];
		sleep 0.1;
	};
};

MAZ_EZM_ZOM_fnc_addToInterface = {
	with uiNamespace do {
		comment "ZOM";

		MAZ_ZomTree = [
			MAZ_UnitsTree_CIVILIAN,
			"SCPs and Zombies",
			"a3\ui_f_curator\data\cfgmarkers\kia_ca.paa",
			[1, 1, 1],
			"Different types of Zombies."
		] call MAZ_EZM_fnc_zeusAddCategory;

		comment "Normal Zombies";

		MAZ_ZOMMenTree = [
			MAZ_UnitsTree_CIVILIAN,
			MAZ_ZOMTree,
			"Normal Zombies",
			""
		] call MAZ_EZM_fnc_zeusAddSubCategory;

		[
			MAZ_UnitsTree_CIVILIAN,
			MAZ_ZOMTree,
			MAZ_ZOMMenTree,
			"Normal Zombie",
			"Creates a normal Zombie.",
			"PNI_fnc_createnormZombie",
			"a3\ui_f_curator\data\cfgmarkers\kia_ca.paa"
		] call MAZ_EZM_fnc_zeusAddModule_CIVILIAN;		
		
		[
			MAZ_UnitsTree_CIVILIAN,
			MAZ_ZOMTree,
			MAZ_ZOMMenTree,
			"Heavy Zombie",
			"Creates a Heavy Zombie.",
			"PNI_fnc_createHeavyZombie",
			"a3\ui_f_curator\data\cfgmarkers\kia_ca.paa"
		] call MAZ_EZM_fnc_zeusAddModule_CIVILIAN;

		MAZ_SCPTree = [
			MAZ_UnitsTree_CIVILIAN,
			MAZ_ZOMTree,
			"SCPs",
			""
		] call MAZ_EZM_fnc_zeusAddSubCategory;

		[
			MAZ_UnitsTree_CIVILIAN,
			MAZ_ZOMTree,
			MAZ_SCPTree,
			"Wendigo",
			"Creates a Wendigo.",
			"MAS_fnc_createWen",
			"a3\ui_f_curator\data\cfgmarkers\kia_ca.paa"
		] call MAZ_EZM_fnc_zeusAddModule_CIVILIAN;

		[
			MAZ_UnitsTree_CIVILIAN,
			MAZ_ZOMTree,
			MAZ_SCPTree,
			"Fire Man",
			"Creates a fire man wich lights people up.",
			"MAS_fnc_createFireZombie",
			"a3\ui_f_curator\data\cfgmarkers\kia_ca.paa"
		] call MAZ_EZM_fnc_zeusAddModule_CIVILIAN;

		[
			MAZ_UnitsTree_CIVILIAN,
			MAZ_ZOMTree,
			MAZ_SCPTree,
			"Creep Man",
			"Creates a crrep man wich makes people go insane.",
			"MAS_fnc_createCreepZombie",
			"a3\ui_f_curator\data\cfgmarkers\kia_ca.paa"
		] call MAZ_EZM_fnc_zeusAddModule_CIVILIAN;

	};
};

["MAZ_EZM_ZOM_fnc_addToInterface"] call MAZ_EZM_fnc_addNewFactionToDynamicFactions;
systemChat "• Zombies and SCPs added!";
