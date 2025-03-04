B52_Makebomber = {
B52Aircraft = true;
publicVariable "B52Aircraft";
params ["_targetPos",["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer498 = (_allWhitelisted || {"engines" in _layerWhiteList}) && {!("engines" in _layerBlackList)};
private _layer486 = (_allWhitelisted || {"turrets" in _layerWhiteList}) && {!("turrets" in _layerBlackList)};
private _layer384 = (_allWhitelisted || {"main wings" in _layerWhiteList}) && {!("main wings" in _layerBlackList)};
private _layer229 = (_allWhitelisted || {"fuselage" in _layerWhiteList}) && {!("fuselage" in _layerBlackList)};
private _layer385 = (_allWhitelisted || {"b-52 stratofortress" in _layerWhiteList}) && {!("b-52 stratofortress" in _layerBlackList)};

private _objects = [];
private _objectIDs = [];

private _item134 = objNull;
if (_layer229 && _layer385) then {
	_item134 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.550287,-64.1504,14.1538]];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [-0.550287,-64.1504,15.4822];
	_this setVectorDirAndUp [[0.996195,0.0871557,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item135 = objNull;
if (_layer229 && _layer385) then {
	_item135 = createSimpleObject ["Land_Cargo40_military_green_F",[0.449712,-64.1504,14.1538]];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [0.449712,-64.1504,15.4822];
	_this setVectorDirAndUp [[0.996195,-0.0871558,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item140 = objNull;
if (_layer229 && _layer385) then {
	_item140 = createSimpleObject ["Land_Cargo40_military_green_F",[0.449712,-64.1504,11.5188]];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [0.449712,-64.1504,12.8472];
	_this setVectorDirAndUp [[0.996195,-0.0871558,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item141 = objNull;
if (_layer229 && _layer385) then {
	_item141 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.550287,-64.1504,11.5188]];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [-0.550287,-64.1504,12.8472];
	_this setVectorDirAndUp [[0.996195,0.0871557,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item142 = objNull;
if (_layer229 && _layer385) then {
	_item142 = createSimpleObject ["Land_Cargo10_military_green_F",[-0.0502882,-71.6504,11.5188]];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [-0.0502882,-71.6504,12.8717];
	_this setVectorDirAndUp [[-1,4.88762e-007,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item143 = objNull;
if (_layer229 && _layer385) then {
	_item143 = createSimpleObject ["Land_Cargo40_military_green_F",[6.32471,-66.2754,13.1438]];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [6.32471,-66.2754,14.4722];
	_this setVectorDirAndUp [[0.0871559,-0.996195,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item144 = objNull;
if (_layer229 && _layer385) then {
	_item144 = createSimpleObject ["Land_Cargo40_military_green_F",[-6.55029,-60.9004,13.1438]];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [-6.55029,-60.9004,14.4722];
	_this setVectorDirAndUp [[0.5,-0.866026,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item145 = objNull;
if (_layer229 && _layer385) then {
	_item145 = createSimpleObject ["Land_Cargo40_military_green_F",[6.44971,-63.5254,13.1438]];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [6.44971,-63.5254,14.4722];
	_this setVectorDirAndUp [[-0.0871598,-0.996194,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item146 = objNull;
if (_layer229 && _layer385) then {
	_item146 = createSimpleObject ["Land_Cargo40_military_green_F",[6.44971,-62.2754,13.1438]];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [6.44971,-62.2754,14.4722];
	_this setVectorDirAndUp [[-0.342025,-0.939691,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item147 = objNull;
if (_layer229 && _layer385) then {
	_item147 = createSimpleObject ["Land_Cargo40_military_green_F",[6.44971,-64.6504,13.1438]];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [6.44971,-64.6504,14.4722];
	_this setVectorDirAndUp [[-0.0871598,-0.996194,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item148 = objNull;
if (_layer229 && _layer385) then {
	_item148 = createSimpleObject ["Land_Cargo40_military_green_F",[6.69971,-60.9004,13.1438]];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [6.69971,-60.9004,14.4722];
	_this setVectorDirAndUp [[-0.500002,-0.866024,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item149 = objNull;
if (_layer229 && _layer385) then {
	_item149 = createSimpleObject ["Land_Cargo40_military_green_F",[-6.05029,-62.2754,13.1438]];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [-6.05029,-62.2754,14.4722];
	_this setVectorDirAndUp [[0.34202,-0.939693,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item150 = objNull;
if (_layer229 && _layer385) then {
	_item150 = createSimpleObject ["Land_Cargo40_military_green_F",[-6.17529,-63.5254,13.1438]];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [-6.17529,-63.5254,14.4722];
	_this setVectorDirAndUp [[0.0871556,-0.996195,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item151 = objNull;
if (_layer229 && _layer385) then {
	_item151 = createSimpleObject ["Land_Cargo40_military_green_F",[-6.17529,-64.7754,13.1438]];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [-6.17529,-64.7754,14.4722];
	_this setVectorDirAndUp [[0.0871556,-0.996195,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item152 = objNull;
if (_layer229 && _layer385) then {
	_item152 = createSimpleObject ["Land_Cargo40_military_green_F",[-6.05029,-66.2754,13.1438]];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [-6.05029,-66.2754,14.4722];
	_this setVectorDirAndUp [[-0.087156,-0.996195,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item156 = objNull;
if (_layer229 && _layer385) then {
	_item156 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-58.5254,20.4722]];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [-0.0502882,-58.5254,20.4722];
	_this setVectorDirAndUp [[5.96244e-009,-0.866026,-0.5],[1,0,1.19249e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item157 = objNull;
if (_layer229 && _layer385) then {
	_item157 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-59.9004,19.9722]];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [-0.0502882,-59.9004,19.9722];
	_this setVectorDirAndUp [[-1.49502e-008,0.939692,0.342021],[-1,0,-4.37114e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item158 = objNull;
if (_layer229 && _layer385) then {
	_item158 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-61.1504,20.0972]];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [-0.0502882,-61.1504,20.0972];
	_this setVectorDirAndUp [[1.03932e-009,-0.996195,-0.0871556],[1,0,1.19249e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item159 = objNull;
if (_layer229 && _layer385) then {
	_item159 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-62.4004,20.0972]];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [-0.0502882,-62.4004,20.0972];
	_this setVectorDirAndUp [[1.03932e-009,-0.996195,-0.0871556],[1,0,1.19249e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item160 = objNull;
if (_layer229 && _layer385) then {
	_item160 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-63.9004,19.9722]];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [-0.0502882,-63.9004,19.9722];
	_this setVectorDirAndUp [[-1.03938e-009,-0.996194,0.0871603],[1,0,1.19249e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item161 = objNull;
if (_layer229 && _layer385) then {
	_item161 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-58.5254,20.4722]];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [-0.0502882,-58.5254,20.4722];
	_this setVectorDirAndUp [[2.18557e-008,-0.866025,-0.5],[-1,0,-4.37114e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item162 = objNull;
if (_layer229 && _layer385) then {
	_item162 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-59.9004,19.9722]];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [-0.0502882,-59.9004,19.9722];
	_this setVectorDirAndUp [[4.07855e-009,-0.939693,-0.34202],[1,0,1.19249e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item163 = objNull;
if (_layer229 && _layer385) then {
	_item163 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-61.1504,20.0972]];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [-0.0502882,-61.1504,20.0972];
	_this setVectorDirAndUp [[-3.80972e-009,0.996195,0.0871562],[-1,0,-4.37114e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item164 = objNull;
if (_layer229 && _layer385) then {
	_item164 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-62.4004,20.0972]];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [-0.0502882,-62.4004,20.0972];
	_this setVectorDirAndUp [[3.80963e-009,0.996195,-0.0871541],[-1,0,-4.37114e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item165 = objNull;
if (_layer229 && _layer385) then {
	_item165 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-62.4004,20.0972]];
	_this = _item165;
	_objects pushback _this;
	_objectIDs pushback 165;
	_this setPosWorld [-0.0502882,-62.4004,20.0972];
	_this setVectorDirAndUp [[-3.80972e-009,0.996195,0.0871562],[-1,0,-4.37114e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item166 = objNull;
if (_layer229 && _layer385) then {
	_item166 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0502882,-63.9004,19.9722]];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [-0.0502882,-63.9004,19.9722];
	_this setVectorDirAndUp [[3.80969e-009,0.996195,-0.0871556],[-1,0,-4.37114e-008]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item175 = objNull;
if (_layer229 && _layer385) then {
	_item175 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-3.9538,11.2749]];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [-0.0279799,-3.9538,12.6032];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item176 = objNull;
if (_layer229 && _layer385) then {
	_item176 = createSimpleObject ["Land_Cargo40_military_green_F",[1.78803,-3.9538,13.1232]];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [1.78803,-3.9538,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item177 = objNull;
if (_layer229 && _layer385) then {
	_item177 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-3.9538,14.9621]];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [-0.0279799,-3.9538,16.2904];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item178 = objNull;
if (_layer229 && _layer385) then {
	_item178 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33712,-3.9538,14.7622]];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [-1.33712,-3.9538,15.7015];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item179 = objNull;
if (_layer229 && _layer385) then {
	_item179 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33337,-3.9538,12.1372]];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [-1.33337,-3.9538,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item180 = objNull;
if (_layer229 && _layer385) then {
	_item180 = createSimpleObject ["Land_Cargo40_military_green_F",[1.22202,-3.9538,12.1372]];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [1.22202,-3.9538,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,-0.707107],[0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item181 = objNull;
if (_layer229 && _layer385) then {
	_item181 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.90298,-3.9538,13.1232]];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [-1.90298,-3.9538,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item183 = objNull;
if (_layer229 && _layer385) then {
	_item183 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.18078,-3.9538,14.8751]];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [-1.18078,-3.9538,15.8144];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item184 = objNull;
if (_layer229 && _layer385) then {
	_item184 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,8.12074,11.2749]];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [-0.0279799,8.12074,12.6032];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item187 = objNull;
if (_layer229 && _layer385) then {
	_item187 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33712,8.12074,14.7622]];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [-1.33712,8.12074,15.7015];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item188 = objNull;
if (_layer229 && _layer385) then {
	_item188 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33337,8.12074,12.1372]];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [-1.33337,8.12074,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item189 = objNull;
if (_layer229 && _layer385) then {
	_item189 = createSimpleObject ["Land_Cargo40_military_green_F",[1.22202,8.12074,12.1372]];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [1.22202,8.12074,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,-0.707107],[0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item191 = objNull;
if (_layer229 && _layer385) then {
	_item191 = createSimpleObject ["Land_Cargo40_military_green_F",[1.21741,8.12074,14.8778]];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [1.21741,8.12074,15.8171];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item192 = objNull;
if (_layer229 && _layer385) then {
	_item192 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.18078,8.12074,14.8751]];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [-1.18078,8.12074,15.8144];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item186 = objNull;
if (_layer229 && _layer385) then {
	_item186 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,8.12074,14.9621]];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [-0.0279799,8.12074,16.2904];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item190 = objNull;
if (_layer229 && _layer385) then {
	_item190 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.90298,8.12074,13.1232]];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [-1.90298,8.12074,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item185 = objNull;
if (_layer229 && _layer385) then {
	_item185 = createSimpleObject ["Land_Cargo40_military_green_F",[1.78803,8.12074,13.1232]];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [1.78803,8.12074,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item182 = objNull;
if (_layer229 && _layer385) then {
	_item182 = createSimpleObject ["Land_Cargo40_military_green_F",[1.21741,-3.9538,14.8778]];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [1.21741,-3.9538,15.8171];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item193 = objNull;
if (_layer229 && _layer385) then {
	_item193 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-28.0395,11.2749]];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [-0.0279799,-28.0395,12.6032];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item194 = objNull;
if (_layer229 && _layer385) then {
	_item194 = createSimpleObject ["Land_Cargo40_military_green_F",[1.78803,-28.0395,13.1232]];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [1.78803,-28.0395,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item195 = objNull;
if (_layer229 && _layer385) then {
	_item195 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-28.0395,14.9621]];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [-0.0279799,-28.0395,16.2904];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item196 = objNull;
if (_layer229 && _layer385) then {
	_item196 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33712,-28.0395,14.7622]];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [-1.33712,-28.0395,15.7015];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item197 = objNull;
if (_layer229 && _layer385) then {
	_item197 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33337,-28.0395,12.1372]];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [-1.33337,-28.0395,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item198 = objNull;
if (_layer229 && _layer385) then {
	_item198 = createSimpleObject ["Land_Cargo40_military_green_F",[1.22202,-28.0395,12.1372]];
	_this = _item198;
	_objects pushback _this;
	_objectIDs pushback 198;
	_this setPosWorld [1.22202,-28.0395,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,-0.707107],[0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item199 = objNull;
if (_layer229 && _layer385) then {
	_item199 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.90298,-28.0395,13.1232]];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [-1.90298,-28.0395,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item200 = objNull;
if (_layer229 && _layer385) then {
	_item200 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.18078,-28.0395,14.8751]];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [-1.18078,-28.0395,15.8144];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item201 = objNull;
if (_layer229 && _layer385) then {
	_item201 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-15.965,11.2749]];
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [-0.0279799,-15.965,12.6032];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item202 = objNull;
if (_layer229 && _layer385) then {
	_item202 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33712,-15.965,14.7622]];
	_this = _item202;
	_objects pushback _this;
	_objectIDs pushback 202;
	_this setPosWorld [-1.33712,-15.965,15.7015];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item203 = objNull;
if (_layer229 && _layer385) then {
	_item203 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33337,-15.965,12.1372]];
	_this = _item203;
	_objects pushback _this;
	_objectIDs pushback 203;
	_this setPosWorld [-1.33337,-15.965,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item204 = objNull;
if (_layer229 && _layer385) then {
	_item204 = createSimpleObject ["Land_Cargo40_military_green_F",[1.22202,-15.965,12.1372]];
	_this = _item204;
	_objects pushback _this;
	_objectIDs pushback 204;
	_this setPosWorld [1.22202,-15.965,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,-0.707107],[0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item205 = objNull;
if (_layer229 && _layer385) then {
	_item205 = createSimpleObject ["Land_Cargo40_military_green_F",[1.21741,-15.965,14.8778]];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [1.21741,-15.965,15.8171];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item206 = objNull;
if (_layer229 && _layer385) then {
	_item206 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.18078,-15.965,14.8751]];
	_this = _item206;
	_objects pushback _this;
	_objectIDs pushback 206;
	_this setPosWorld [-1.18078,-15.965,15.8144];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item207 = objNull;
if (_layer229 && _layer385) then {
	_item207 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-15.965,14.9621]];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [-0.0279799,-15.965,16.2904];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item208 = objNull;
if (_layer229 && _layer385) then {
	_item208 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.90298,-15.965,13.1232]];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [-1.90298,-15.965,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item209 = objNull;
if (_layer229 && _layer385) then {
	_item209 = createSimpleObject ["Land_Cargo40_military_green_F",[1.78803,-15.965,13.1232]];
	_this = _item209;
	_objects pushback _this;
	_objectIDs pushback 209;
	_this setPosWorld [1.78803,-15.965,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item210 = objNull;
if (_layer229 && _layer385) then {
	_item210 = createSimpleObject ["Land_Cargo40_military_green_F",[1.21741,-28.0395,14.8778]];
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [1.21741,-28.0395,15.8171];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item211 = objNull;
if (_layer229 && _layer385) then {
	_item211 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.18078,-52.2475,14.8751]];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [-1.18078,-52.2475,15.8144];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item212 = objNull;
if (_layer229 && _layer385) then {
	_item212 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-40.173,11.2749]];
	_this = _item212;
	_objects pushback _this;
	_objectIDs pushback 212;
	_this setPosWorld [-0.0279799,-40.173,12.6032];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item213 = objNull;
if (_layer229 && _layer385) then {
	_item213 = createSimpleObject ["Land_Cargo40_military_green_F",[1.78803,-40.173,13.1232]];
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [1.78803,-40.173,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item214 = objNull;
if (_layer229 && _layer385) then {
	_item214 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-40.173,14.9621]];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [-0.0279799,-40.173,16.2904];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item215 = objNull;
if (_layer229 && _layer385) then {
	_item215 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33712,-40.173,14.7622]];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [-1.33712,-40.173,15.7015];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item216 = objNull;
if (_layer229 && _layer385) then {
	_item216 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33337,-40.173,12.1372]];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [-1.33337,-40.173,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item217 = objNull;
if (_layer229 && _layer385) then {
	_item217 = createSimpleObject ["Land_Cargo40_military_green_F",[1.22202,-40.173,12.1372]];
	_this = _item217;
	_objects pushback _this;
	_objectIDs pushback 217;
	_this setPosWorld [1.22202,-40.173,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,-0.707107],[0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item218 = objNull;
if (_layer229 && _layer385) then {
	_item218 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.90298,-40.173,13.1232]];
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [-1.90298,-40.173,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item219 = objNull;
if (_layer229 && _layer385) then {
	_item219 = createSimpleObject ["Land_Cargo40_military_green_F",[1.21741,-40.173,14.8778]];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [1.21741,-40.173,15.8171];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item220 = objNull;
if (_layer229 && _layer385) then {
	_item220 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.18078,-40.173,14.8751]];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [-1.18078,-40.173,15.8144];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item221 = objNull;
if (_layer229 && _layer385) then {
	_item221 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-52.2475,11.2749]];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [-0.0279799,-52.2475,12.6032];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item222 = objNull;
if (_layer229 && _layer385) then {
	_item222 = createSimpleObject ["Land_Cargo40_military_green_F",[1.78803,-52.2475,13.1232]];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [1.78803,-52.2475,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item223 = objNull;
if (_layer229 && _layer385) then {
	_item223 = createSimpleObject ["Land_Cargo40_military_green_F",[-0.0279799,-52.2475,14.9621]];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [-0.0279799,-52.2475,16.2904];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item224 = objNull;
if (_layer229 && _layer385) then {
	_item224 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33712,-52.2475,14.7622]];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [-1.33712,-52.2475,15.7015];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item225 = objNull;
if (_layer229 && _layer385) then {
	_item225 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.33337,-52.2475,12.1372]];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [-1.33337,-52.2475,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item226 = objNull;
if (_layer229 && _layer385) then {
	_item226 = createSimpleObject ["Land_Cargo40_military_green_F",[1.22202,-52.2475,12.1372]];
	_this = _item226;
	_objects pushback _this;
	_objectIDs pushback 226;
	_this setPosWorld [1.22202,-52.2475,13.0765];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,-0.707107],[0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item227 = objNull;
if (_layer229 && _layer385) then {
	_item227 = createSimpleObject ["Land_Cargo40_military_green_F",[-1.90298,-52.2475,13.1232]];
	_this = _item227;
	_objects pushback _this;
	_objectIDs pushback 227;
	_this setPosWorld [-1.90298,-52.2475,14.4515];
	_this setVectorDirAndUp [[1,-4.37114e-008,0],[0,0,1]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item228 = objNull;
if (_layer229 && _layer385) then {
	_item228 = createSimpleObject ["Land_Cargo40_military_green_F",[1.21741,-52.2475,14.8778]];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [1.21741,-52.2475,15.8171];
	_this setVectorDirAndUp [[0.707107,-4.37114e-008,0.707107],[-0.707107,0,0.707107]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item420 = objNull;
if (_layer229 && _layer385) then {
	_item420 = createSimpleObject ["Land_Cargo20_military_green_F",[-0.0652184,16.836,14.4966]];
	_this = _item420;
	_objects pushback _this;
	_objectIDs pushback 420;
	_this setPosWorld [-0.0652184,16.836,15.8008];
	_this setVectorDirAndUp [[-1,2.79625e-006,-6.86343e-007],[-1.90353e-007,0.173648,0.984808]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item440 = objNull;
if (_layer229 && _layer385) then {
	_item440 = createSimpleObject ["Land_Cargo20_military_green_F",[-0.981068,16.836,14.4479]];
	_this = _item440;
	_objects pushback _this;
	_objectIDs pushback 440;
	_this setPosWorld [-0.981068,16.836,15.3701];
	_this setVectorDirAndUp [[-0.707105,6.70552e-006,-0.707108],[-0.696365,0.173648,0.696364]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item441 = objNull;
if (_layer229 && _layer385) then {
	_item441 = createSimpleObject ["Land_Cargo20_military_green_F",[0.854052,16.836,14.4479]];
	_this = _item441;
	_objects pushback _this;
	_objectIDs pushback 441;
	_this setPosWorld [0.854052,16.836,15.3701];
	_this setVectorDirAndUp [[-0.683013,-0.183006,-0.707108],[-0.71758,-0.0125007,0.696364]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item442 = objNull;
if (_layer229 && _layer385) then {
	_item442 = createSimpleObject ["Land_Cargo20_military_green_F",[-0.0652184,16.836,14.4651]];
	_this = _item442;
	_objects pushback _this;
	_objectIDs pushback 442;
	_this setPosWorld [-0.0652184,16.836,13.1609];
	_this setVectorDirAndUp [[1,5.97791e-006,1.36073e-006],[3.01992e-007,0.17365,-0.984807]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item443 = objNull;
if (_layer229 && _layer385) then {
	_item443 = createSimpleObject ["Land_Cargo20_military_green_F",[0.850632,16.836,14.5138]];
	_this = _item443;
	_objects pushback _this;
	_objectIDs pushback 443;
	_this setPosWorld [0.850632,16.836,13.5916];
	_this setVectorDirAndUp [[0.707104,9.32813e-006,0.707109],[0.696365,0.17365,-0.696363]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item444 = objNull;
if (_layer229 && _layer385) then {
	_item444 = createSimpleObject ["Land_Cargo20_military_green_F",[-0.98449,16.836,14.5138]];
	_this = _item444;
	_objects pushback _this;
	_objectIDs pushback 444;
	_this setPosWorld [-0.98449,16.836,13.5916];
	_this setVectorDirAndUp [[0.683015,-0.182998,0.707108],[0.71758,-0.0124959,-0.696364]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item445 = objNull;
if (_layer229 && _layer385) then {
	_item445 = createSimpleObject ["Land_Cargo20_military_green_F",[-0.0652185,16.836,14.4966]];
	_this = _item445;
	_objects pushback _this;
	_objectIDs pushback 445;
	_this setPosWorld [-0.0652185,16.836,15.8008];
	_this setVectorDirAndUp [[-1,2.79625e-006,-6.86343e-007],[-1.90353e-007,0.173648,0.984808]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item448 = objNull;
if (_layer229 && _layer385) then {
	_item448 = createSimpleObject ["Land_Cargo20_military_green_F",[-1.38758,16.9639,13.1533]];
	_this = _item448;
	_objects pushback _this;
	_objectIDs pushback 448;
	_this setPosWorld [-1.38758,16.9639,14.4776];
	_this setVectorDirAndUp [[-0.984807,0.17365,0],[0,0,1]];
	_this enableSimulation false;
};

private _item472 = objNull;
if (_layer229 && _layer385) then {
	_item472 = createSimpleObject ["Land_Pod_Heli_Transport_04_box_F",[-0.0370889,20.5154,12.4442]];
	_this = _item472;
	_objects pushback _this;
	_objectIDs pushback 472;
	_this setPosWorld [-0.0370889,20.5154,13.6324];
	_this setVectorDirAndUp [[-5.57105e-006,-0.984808,-0.173648],[-1.13994e-006,-0.173648,0.984808]];
	_this enableSimulation false;
};

private _item473 = objNull;
if (_layer229 && _layer385) then {
	_item473 = createSimpleObject ["Land_Pod_Heli_Transport_04_box_F",[0.843013,20.5154,14.55]];
	_this = _item473;
	_objects pushback _this;
	_objectIDs pushback 473;
	_this setPosWorld [0.843013,20.5154,14.55];
	_this setVectorDirAndUp [[0.173648,-0.984808,-1.46248e-006],[-0.984808,-0.173648,2.07073e-009]];
	_this enableSimulation false;
};

private _item474 = objNull;
if (_layer229 && _layer385) then {
	_item474 = createSimpleObject ["Land_Pod_Heli_Transport_04_box_F",[-0.850164,20.5154,14.55]];
	_this = _item474;
	_objects pushback _this;
	_objectIDs pushback 474;
	_this setPosWorld [-0.850164,20.5154,14.55];
	_this setVectorDirAndUp [[-0.173648,-0.984808,1.05068e-005],[0.984808,-0.173648,8.48726e-008]];
	_this enableSimulation false;
};

private _item471 = objNull;
if (_layer229 && _layer385) then {
	_item471 = createSimpleObject ["Land_Pod_Heli_Transport_04_box_F",[-0.0370889,20.5154,16.5138]];
	_this = _item471;
	_objects pushback _this;
	_objectIDs pushback 471;
	_this setPosWorld [-0.0370889,20.5154,15.3256];
	_this setVectorDirAndUp [[0,-0.984808,0.173648],[0,-0.173648,-0.984808]];
	_this enableSimulation false;
};

private _item447 = objNull;
if (_layer229 && _layer385) then {
	_item447 = createSimpleObject ["Land_Cargo20_military_green_F",[1.27385,16.9639,13.1533]];
	_this = _item447;
	_objects pushback _this;
	_objectIDs pushback 447;
	_this setPosWorld [1.27385,16.9639,14.4776];
	_this setVectorDirAndUp [[-0.984808,-0.173648,0],[0,0,1]];
	_this enableSimulation false;
};

private _item349 = objNull;
if (_layer384 && _layer385) then {
	_item349 = createSimpleObject ["Land_Cargo40_military_green_F",[-17.4735,-7,12.6554]];
	_this = _item349;
	_objects pushback _this;
	_objectIDs pushback 349;
	_this setPosWorld [-17.4735,-7,13.9829];
	_this setVectorDirAndUp [[0.499695,-0.866026,0.0174497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item350 = objNull;
if (_layer384 && _layer385) then {
	_item350 = createSimpleObject ["Land_Cargo40_military_green_F",[-38.2119,-19,11.9312]];
	_this = _item350;
	_objects pushback _this;
	_objectIDs pushback 350;
	_this setPosWorld [-38.2119,-19,13.2587];
	_this setVectorDirAndUp [[0.499695,-0.866026,0.0174497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item351 = objNull;
if (_layer384 && _layer385) then {
	_item351 = createSimpleObject ["Land_Cargo40_military_green_F",[-27.7683,-12.975,12.2959]];
	_this = _item351;
	_objects pushback _this;
	_objectIDs pushback 351;
	_this setPosWorld [-27.7683,-12.975,13.6234];
	_this setVectorDirAndUp [[0.499695,-0.866026,0.0174497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item352 = objNull;
if (_layer384 && _layer385) then {
	_item352 = createSimpleObject ["Land_Cargo40_military_green_F",[-48.5806,-25,11.5692]];
	_this = _item352;
	_objects pushback _this;
	_objectIDs pushback 352;
	_this setPosWorld [-48.5806,-25,12.8967];
	_this setVectorDirAndUp [[0.499695,-0.866026,0.0174497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item354 = objNull;
if (_layer384 && _layer385) then {
	_item354 = createSimpleObject ["Land_Cargo40_military_green_F",[-14.5753,-18.2,12.7567]];
	_this = _item354;
	_objects pushback _this;
	_objectIDs pushback 354;
	_this setPosWorld [-14.5753,-18.2,14.0842];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item355 = objNull;
if (_layer384 && _layer385) then {
	_item355 = createSimpleObject ["Land_Cargo40_military_green_F",[-37.0796,-26.414,11.9708]];
	_this = _item355;
	_objects pushback _this;
	_objectIDs pushback 355;
	_this setPosWorld [-37.0796,-26.414,13.2983];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item356 = objNull;
if (_layer384 && _layer385) then {
	_item356 = createSimpleObject ["Land_Cargo40_military_green_F",[-25.7495,-22.295,12.3664]];
	_this = _item356;
	_objects pushback _this;
	_objectIDs pushback 356;
	_this setPosWorld [-25.7495,-22.295,13.6939];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item357 = objNull;
if (_layer384 && _layer385) then {
	_item357 = createSimpleObject ["Land_Cargo40_military_green_F",[-48.4557,-30.5,11.5735]];
	_this = _item357;
	_objects pushback _this;
	_objectIDs pushback 357;
	_this setPosWorld [-48.4557,-30.5,12.901];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item359 = objNull;
if (_layer384 && _layer385) then {
	_item359 = createSimpleObject ["Land_Cargo40_military_green_F",[-14.5753,-15.704,12.7567]];
	_this = _item359;
	_objects pushback _this;
	_objectIDs pushback 359;
	_this setPosWorld [-14.5753,-15.704,14.0842];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item360 = objNull;
if (_layer384 && _layer385) then {
	_item360 = createSimpleObject ["Land_Cargo40_military_green_F",[-37.0796,-23.919,11.9708]];
	_this = _item360;
	_objects pushback _this;
	_objectIDs pushback 360;
	_this setPosWorld [-37.0796,-23.919,13.2983];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item361 = objNull;
if (_layer384 && _layer385) then {
	_item361 = createSimpleObject ["Land_Cargo40_military_green_F",[-25.7495,-19.799,12.3664]];
	_this = _item361;
	_objects pushback _this;
	_objectIDs pushback 361;
	_this setPosWorld [-25.7495,-19.799,13.6939];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item362 = objNull;
if (_layer384 && _layer385) then {
	_item362 = createSimpleObject ["Land_Cargo40_military_green_F",[-48.4557,-28.004,11.5735]];
	_this = _item362;
	_objects pushback _this;
	_objectIDs pushback 362;
	_this setPosWorld [-48.4557,-28.004,12.901];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item364 = objNull;
if (_layer384 && _layer385) then {
	_item364 = createSimpleObject ["Land_Cargo40_military_green_F",[-15.5147,-11.573,12.7238]];
	_this = _item364;
	_objects pushback _this;
	_objectIDs pushback 364;
	_this setPosWorld [-15.5147,-11.573,14.0513];
	_this setVectorDirAndUp [[0.406489,-0.913546,0.0141949],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item365 = objNull;
if (_layer384 && _layer385) then {
	_item365 = createSimpleObject ["Land_Cargo40_military_green_F",[-37.3924,-21.338,11.9599]];
	_this = _item365;
	_objects pushback _this;
	_objectIDs pushback 365;
	_this setPosWorld [-37.3924,-21.338,13.2874];
	_this setVectorDirAndUp [[0.406489,-0.913546,0.0141949],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item366 = objNull;
if (_layer384 && _layer385) then {
	_item366 = createSimpleObject ["Land_Cargo40_military_green_F",[-26.3761,-16.438,12.3446]];
	_this = _item366;
	_objects pushback _this;
	_objectIDs pushback 366;
	_this setPosWorld [-26.3761,-16.438,13.6721];
	_this setVectorDirAndUp [[0.406489,-0.913546,0.0141949],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item367 = objNull;
if (_layer384 && _layer385) then {
	_item367 = createSimpleObject ["Land_Cargo40_military_green_F",[-48.4557,-26.208,11.5735]];
	_this = _item367;
	_objects pushback _this;
	_objectIDs pushback 367;
	_this setPosWorld [-48.4557,-26.208,12.901];
	_this setVectorDirAndUp [[0.406489,-0.913546,0.0141949],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item369 = objNull;
if (_layer384 && _layer385) then {
	_item369 = createSimpleObject ["Land_Cargo40_military_green_F",[-15.4298,-9.601,12.7268]];
	_this = _item369;
	_objects pushback _this;
	_objectIDs pushback 369;
	_this setPosWorld [-15.4298,-9.601,14.0543];
	_this setVectorDirAndUp [[0.422377,-0.9063,0.0147497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item370 = objNull;
if (_layer384 && _layer385) then {
	_item370 = createSimpleObject ["Land_Cargo40_military_green_F",[-37.1336,-19.747,11.9689]];
	_this = _item370;
	_objects pushback _this;
	_objectIDs pushback 370;
	_this setPosWorld [-37.1336,-19.747,13.2964];
	_this setVectorDirAndUp [[0.422377,-0.9063,0.0147497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item371 = objNull;
if (_layer384 && _layer385) then {
	_item371 = createSimpleObject ["Land_Cargo40_military_green_F",[-26.2052,-14.656,12.3505]];
	_this = _item371;
	_objects pushback _this;
	_objectIDs pushback 371;
	_this setPosWorld [-26.2052,-14.656,13.678];
	_this setVectorDirAndUp [[0.422377,-0.9063,0.0147497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item373 = objNull;
if (_layer384 && _layer385) then {
	_item373 = createSimpleObject ["Land_Cargo40_military_green_F",[-15.6756,-13.99,12.7182]];
	_this = _item373;
	_objects pushback _this;
	_objectIDs pushback 373;
	_this setPosWorld [-15.6756,-13.99,14.0457];
	_this setVectorDirAndUp [[0.374394,-0.927177,0.0130741],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item374 = objNull;
if (_layer384 && _layer385) then {
	_item374 = createSimpleObject ["Land_Cargo40_military_green_F",[-37.8801,-22.985,11.9428]];
	_this = _item374;
	_objects pushback _this;
	_objectIDs pushback 374;
	_this setPosWorld [-37.8801,-22.985,13.2703];
	_this setVectorDirAndUp [[0.374394,-0.927177,0.0130741],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item375 = objNull;
if (_layer384 && _layer385) then {
	_item375 = createSimpleObject ["Land_Cargo40_military_green_F",[-26.6999,-18.473,12.3333]];
	_this = _item375;
	_objects pushback _this;
	_objectIDs pushback 375;
	_this setPosWorld [-26.6999,-18.473,13.6608];
	_this setVectorDirAndUp [[0.374394,-0.927177,0.0130741],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item378 = objNull;
if (_layer384 && _layer385) then {
	_item378 = createSimpleObject ["Land_Cargo40_military_green_F",[-15.155,-7.708,12.7364]];
	_this = _item378;
	_objects pushback _this;
	_objectIDs pushback 378;
	_this setPosWorld [-15.155,-7.708,14.0639];
	_this setVectorDirAndUp [[0.469201,-0.882939,0.0163849],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item379 = objNull;
if (_layer384 && _layer385) then {
	_item379 = createSimpleObject ["Land_Cargo40_military_green_F",[-25.6516,-13.32,12.3699]];
	_this = _item379;
	_objects pushback _this;
	_objectIDs pushback 379;
	_this setPosWorld [-25.6516,-13.32,13.6974];
	_this setVectorDirAndUp [[0.469201,-0.882939,0.0163849],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item380 = objNull;
if (_layer384 && _layer385) then {
	_item380 = createSimpleObject ["Land_Cargo20_military_green_F",[-53.3481,-29.5099,14.0497]];
	_this = _item380;
	_objects pushback _this;
	_objectIDs pushback 380;
	_this setPosWorld [-53.3481,-29.5099,12.7262];
	_this setVectorDirAndUp [[-0.999391,-1.95299e-006,-0.0348953],[0.0348953,-1.4622e-005,-0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item381 = objNull;
if (_layer384 && _layer385) then {
	_item381 = createSimpleObject ["Land_Cargo20_military_green_F",[-53.3272,-30.3543,14.0504]];
	_this = _item381;
	_objects pushback _this;
	_objectIDs pushback 381;
	_this setPosWorld [-53.3272,-30.3543,12.7269];
	_this setVectorDirAndUp [[-0.999391,-1.95299e-006,-0.0348953],[0.0348953,-1.4622e-005,-0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item382 = objNull;
if (_layer384 && _layer385) then {
	_item382 = createSimpleObject ["Land_Cargo20_military_green_F",[-53.3272,-31.9417,12.7731]];
	_this = _item382;
	_objects pushback _this;
	_objectIDs pushback 382;
	_this setPosWorld [-53.3272,-31.9417,12.7269];
	_this setVectorDirAndUp [[-0.0348991,-1.59363e-006,0.999391],[-0.999391,-1.13716e-008,-0.0348991]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item383 = objNull;
if (_layer384 && _layer385) then {
	_item383 = createSimpleObject ["Land_Cargo20_military_green_F",[-53.3272,-26.4774,12.7731]];
	_this = _item383;
	_objects pushback _this;
	_objectIDs pushback 383;
	_this setPosWorld [-53.3272,-26.4774,12.7269];
	_this setVectorDirAndUp [[-0.0348991,-1.59363e-006,0.999391],[-0.999391,-1.13716e-008,-0.0348991]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item348 = objNull;
if (_layer384 && _layer385) then {
	_item348 = createSimpleObject ["Land_Cargo40_military_green_F",[-7.35471,-1.125,13.0088]];
	_this = _item348;
	_objects pushback _this;
	_objectIDs pushback 348;
	_this setPosWorld [-7.35471,-1.125,14.3363];
	_this setVectorDirAndUp [[0.499695,-0.866026,0.0174497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item353 = objNull;
if (_layer384 && _layer385) then {
	_item353 = createSimpleObject ["Land_Cargo40_military_green_F",[-3.59,-14.172,13.1403]];
	_this = _item353;
	_objects pushback _this;
	_objectIDs pushback 353;
	_this setPosWorld [-3.59,-14.172,14.4678];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item358 = objNull;
if (_layer384 && _layer385) then {
	_item358 = createSimpleObject ["Land_Cargo40_military_green_F",[-3.59,-11.677,13.1403]];
	_this = _item358;
	_objects pushback _this;
	_objectIDs pushback 358;
	_this setPosWorld [-3.59,-11.677,14.4678];
	_this setVectorDirAndUp [[0.341812,-0.939693,0.0119363],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item363 = objNull;
if (_layer384 && _layer385) then {
	_item363 = createSimpleObject ["Land_Cargo40_military_green_F",[-4.83724,-6.788,13.0967]];
	_this = _item363;
	_objects pushback _this;
	_objectIDs pushback 363;
	_this setPosWorld [-4.83724,-6.788,14.4242];
	_this setVectorDirAndUp [[0.406489,-0.913546,0.0141949],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item368 = objNull;
if (_layer384 && _layer385) then {
	_item368 = createSimpleObject ["Land_Cargo40_military_green_F",[-4.83724,-4.631,13.0967]];
	_this = _item368;
	_objects pushback _this;
	_objectIDs pushback 368;
	_this setPosWorld [-4.83724,-4.631,14.4242];
	_this setVectorDirAndUp [[0.422377,-0.9063,0.0147497],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item372 = objNull;
if (_layer384 && _layer385) then {
	_item372 = createSimpleObject ["Land_Cargo40_military_green_F",[-4.83724,-9.581,13.0967]];
	_this = _item372;
	_objects pushback _this;
	_objectIDs pushback 372;
	_this setPosWorld [-4.83724,-9.581,14.4242];
	_this setVectorDirAndUp [[0.374394,-0.927177,0.0130741],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item376 = objNull;
if (_layer384 && _layer385) then {
	_item376 = createSimpleObject ["Land_Cargo40_military_green_F",[-4.83724,-8.021,13.0967]];
	_this = _item376;
	_objects pushback _this;
	_objectIDs pushback 376;
	_this setPosWorld [-4.83724,-8.021,14.4242];
	_this setVectorDirAndUp [[0.406489,-0.913546,0.0141949],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item377 = objNull;
if (_layer384 && _layer385) then {
	_item377 = createSimpleObject ["Land_Cargo40_military_green_F",[-4.83724,-2.19,13.0967]];
	_this = _item377;
	_objects pushback _this;
	_objectIDs pushback 377;
	_this setPosWorld [-4.83724,-2.19,14.4242];
	_this setVectorDirAndUp [[0.469201,-0.882939,0.0163849],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item167 = objNull;
if (_layer384 && _layer385) then {
	_item167 = createSimpleObject ["Land_Cargo40_military_green_F",[6.74771,-1.125,13.0088]];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [6.74771,-1.125,14.3363];
	_this setVectorDirAndUp [[0.499695,0.866025,-0.0174496],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item169 = objNull;
if (_layer384 && _layer385) then {
	_item169 = createSimpleObject ["Land_Cargo40_military_green_F",[16.8665,-7,12.6554]];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [16.8665,-7,13.9829];
	_this setVectorDirAndUp [[0.499695,0.866025,-0.0174496],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item230 = objNull;
if (_layer384 && _layer385) then {
	_item230 = createSimpleObject ["Land_Cargo40_military_green_F",[27.1606,-12.9746,12.296]];
	_this = _item230;
	_objects pushback _this;
	_objectIDs pushback 230;
	_this setPosWorld [27.1606,-12.9746,13.6235];
	_this setVectorDirAndUp [[0.499695,0.866025,-0.0174496],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item238 = objNull;
if (_layer384 && _layer385) then {
	_item238 = createSimpleObject ["Land_Cargo40_military_green_F",[13.9674,-18.2,12.7567]];
	_this = _item238;
	_objects pushback _this;
	_objectIDs pushback 238;
	_this setPosWorld [13.9674,-18.2,14.0842];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item240 = objNull;
if (_layer384 && _layer385) then {
	_item240 = createSimpleObject ["Land_Cargo40_military_green_F",[25.1419,-22.2952,12.3665]];
	_this = _item240;
	_objects pushback _this;
	_objectIDs pushback 240;
	_this setPosWorld [25.1419,-22.2952,13.694];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item244 = objNull;
if (_layer384 && _layer385) then {
	_item244 = createSimpleObject ["Land_Cargo40_military_green_F",[13.9674,-15.7041,12.7567]];
	_this = _item244;
	_objects pushback _this;
	_objectIDs pushback 244;
	_this setPosWorld [13.9674,-15.7041,14.0842];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item246 = objNull;
if (_layer384 && _layer385) then {
	_item246 = createSimpleObject ["Land_Cargo40_military_green_F",[25.1419,-19.7993,12.3665]];
	_this = _item246;
	_objects pushback _this;
	_objectIDs pushback 246;
	_this setPosWorld [25.1419,-19.7993,13.694];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item248 = objNull;
if (_layer384 && _layer385) then {
	_item248 = createSimpleObject ["Land_Cargo40_military_green_F",[4.23025,-6.78817,13.0967]];
	_this = _item248;
	_objects pushback _this;
	_objectIDs pushback 248;
	_this setPosWorld [4.23025,-6.78817,14.4242];
	_this setVectorDirAndUp [[0.406489,0.913545,-0.0141948],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item249 = objNull;
if (_layer384 && _layer385) then {
	_item249 = createSimpleObject ["Land_Cargo40_military_green_F",[14.9074,-11.5726,12.7239]];
	_this = _item249;
	_objects pushback _this;
	_objectIDs pushback 249;
	_this setPosWorld [14.9074,-11.5726,14.0514];
	_this setVectorDirAndUp [[0.406489,0.913545,-0.0141948],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item251 = objNull;
if (_layer384 && _layer385) then {
	_item251 = createSimpleObject ["Land_Cargo40_military_green_F",[25.7691,-16.4379,12.3445]];
	_this = _item251;
	_objects pushback _this;
	_objectIDs pushback 251;
	_this setPosWorld [25.7691,-16.4379,13.672];
	_this setVectorDirAndUp [[0.406489,0.913545,-0.0141948],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item256 = objNull;
if (_layer384 && _layer385) then {
	_item256 = createSimpleObject ["Land_Cargo40_military_green_F",[14.8223,-9.6014,12.7268]];
	_this = _item256;
	_objects pushback _this;
	_objectIDs pushback 256;
	_this setPosWorld [14.8223,-9.6014,14.0543];
	_this setVectorDirAndUp [[0.422373,0.906302,-0.0147494],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item258 = objNull;
if (_layer384 && _layer385) then {
	_item258 = createSimpleObject ["Land_Cargo40_military_green_F",[25.5976,-14.6556,12.3505]];
	_this = _item258;
	_objects pushback _this;
	_objectIDs pushback 258;
	_this setPosWorld [25.5976,-14.6556,13.678];
	_this setVectorDirAndUp [[0.422373,0.906302,-0.0147494],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item259 = objNull;
if (_layer384 && _layer385) then {
	_item259 = createSimpleObject ["Land_Cargo40_military_green_F",[4.23017,-9.58088,13.0967]];
	_this = _item259;
	_objects pushback _this;
	_objectIDs pushback 259;
	_this setPosWorld [4.23017,-9.58088,14.4242];
	_this setVectorDirAndUp [[0.374394,0.927178,-0.013074],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item260 = objNull;
if (_layer384 && _layer385) then {
	_item260 = createSimpleObject ["Land_Cargo40_military_green_F",[15.0677,-13.9896,12.7183]];
	_this = _item260;
	_objects pushback _this;
	_objectIDs pushback 260;
	_this setPosWorld [15.0677,-13.9896,14.0458];
	_this setVectorDirAndUp [[0.374394,0.927178,-0.013074],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item262 = objNull;
if (_layer384 && _layer385) then {
	_item262 = createSimpleObject ["Land_Cargo40_military_green_F",[26.0926,-18.4726,12.3333]];
	_this = _item262;
	_objects pushback _this;
	_objectIDs pushback 262;
	_this setPosWorld [26.0926,-18.4726,13.6608];
	_this setVectorDirAndUp [[0.374394,0.927178,-0.013074],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item264 = objNull;
if (_layer384 && _layer385) then {
	_item264 = createSimpleObject ["Land_Cargo40_military_green_F",[4.23025,-8.02103,13.0967]];
	_this = _item264;
	_objects pushback _this;
	_objectIDs pushback 264;
	_this setPosWorld [4.23025,-8.02103,14.4242];
	_this setVectorDirAndUp [[0.406489,0.913545,-0.0141948],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item266 = objNull;
if (_layer384 && _layer385) then {
	_item266 = createSimpleObject ["Land_Cargo40_military_green_F",[14.5478,-7.70799,12.7364]];
	_this = _item266;
	_objects pushback _this;
	_objectIDs pushback 266;
	_this setPosWorld [14.5478,-7.70799,14.0639];
	_this setVectorDirAndUp [[0.469197,0.882941,-0.0163846],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item267 = objNull;
if (_layer384 && _layer385) then {
	_item267 = createSimpleObject ["Land_Cargo40_military_green_F",[25.044,-13.3195,12.3699]];
	_this = _item267;
	_objects pushback _this;
	_objectIDs pushback 267;
	_this setPosWorld [25.044,-13.3195,13.6974];
	_this setVectorDirAndUp [[0.469197,0.882941,-0.0163846],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item170 = objNull;
if (_layer384 && _layer385) then {
	_item170 = createSimpleObject ["Land_Cargo40_military_green_F",[37.6039,-19,11.9313]];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [37.6039,-19,13.2588];
	_this setVectorDirAndUp [[0.499695,0.866025,-0.0174496],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item236 = objNull;
if (_layer384 && _layer385) then {
	_item236 = createSimpleObject ["Land_Cargo40_military_green_F",[47.9726,-25,11.5692]];
	_this = _item236;
	_objects pushback _this;
	_objectIDs pushback 236;
	_this setPosWorld [47.9726,-25,12.8967];
	_this setVectorDirAndUp [[0.499695,0.866025,-0.0174496],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item239 = objNull;
if (_layer384 && _layer385) then {
	_item239 = createSimpleObject ["Land_Cargo40_military_green_F",[36.4722,-26.4145,11.9708]];
	_this = _item239;
	_objects pushback _this;
	_objectIDs pushback 239;
	_this setPosWorld [36.4722,-26.4145,13.2983];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item241 = objNull;
if (_layer384 && _layer385) then {
	_item241 = createSimpleObject ["Land_Cargo40_military_green_F",[47.8477,-30.5,11.5735]];
	_this = _item241;
	_objects pushback _this;
	_objectIDs pushback 241;
	_this setPosWorld [47.8477,-30.5,12.9011];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item245 = objNull;
if (_layer384 && _layer385) then {
	_item245 = createSimpleObject ["Land_Cargo40_military_green_F",[36.4722,-23.9186,11.9708]];
	_this = _item245;
	_objects pushback _this;
	_objectIDs pushback 245;
	_this setPosWorld [36.4722,-23.9186,13.2983];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item247 = objNull;
if (_layer384 && _layer385) then {
	_item247 = createSimpleObject ["Land_Cargo40_military_green_F",[47.8477,-28.0041,11.5735]];
	_this = _item247;
	_objects pushback _this;
	_objectIDs pushback 247;
	_this setPosWorld [47.8477,-28.0041,12.9011];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item250 = objNull;
if (_layer384 && _layer385) then {
	_item250 = createSimpleObject ["Land_Cargo40_military_green_F",[36.7847,-21.3379,11.9599]];
	_this = _item250;
	_objects pushback _this;
	_objectIDs pushback 250;
	_this setPosWorld [36.7847,-21.3379,13.2874];
	_this setVectorDirAndUp [[0.406489,0.913545,-0.0141948],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item252 = objNull;
if (_layer384 && _layer385) then {
	_item252 = createSimpleObject ["Land_Cargo40_military_green_F",[47.8477,-26.2075,11.5735]];
	_this = _item252;
	_objects pushback _this;
	_objectIDs pushback 252;
	_this setPosWorld [47.8477,-26.2075,12.9011];
	_this setVectorDirAndUp [[0.406489,0.913545,-0.0141948],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item257 = objNull;
if (_layer384 && _layer385) then {
	_item257 = createSimpleObject ["Land_Cargo40_military_green_F",[36.5261,-19.7473,11.9689]];
	_this = _item257;
	_objects pushback _this;
	_objectIDs pushback 257;
	_this setPosWorld [36.5261,-19.7473,13.2964];
	_this setVectorDirAndUp [[0.422373,0.906302,-0.0147494],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item261 = objNull;
if (_layer384 && _layer385) then {
	_item261 = createSimpleObject ["Land_Cargo40_military_green_F",[37.2725,-22.985,11.9428]];
	_this = _item261;
	_objects pushback _this;
	_objectIDs pushback 261;
	_this setPosWorld [37.2725,-22.985,13.2703];
	_this setVectorDirAndUp [[0.374394,0.927178,-0.013074],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item242 = objNull;
if (_layer384 && _layer385) then {
	_item242 = createSimpleObject ["Land_Cargo20_military_green_F",[52.7406,-29.5099,11.4027]];
	_this = _item242;
	_objects pushback _this;
	_objectIDs pushback 242;
	_this setPosWorld [52.7406,-29.5099,12.7262];
	_this setVectorDirAndUp [[0.999391,7.54979e-008,-0.0348991],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item272 = objNull;
if (_layer384 && _layer385) then {
	_item272 = createSimpleObject ["Land_Cargo20_military_green_F",[52.7197,-30.3543,11.4034]];
	_this = _item272;
	_objects pushback _this;
	_objectIDs pushback 272;
	_this setPosWorld [52.7197,-30.3543,12.7269];
	_this setVectorDirAndUp [[0.999391,7.54979e-008,-0.0348991],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item274 = objNull;
if (_layer384 && _layer385) then {
	_item274 = createSimpleObject ["Land_Cargo20_military_green_F",[52.7197,-31.9417,11.4034]];
	_this = _item274;
	_objects pushback _this;
	_objectIDs pushback 274;
	_this setPosWorld [52.7197,-31.9417,12.7269];
	_this setVectorDirAndUp [[0.999391,7.54979e-008,-0.0348991],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item275 = objNull;
if (_layer384 && _layer385) then {
	_item275 = createSimpleObject ["Land_Cargo20_military_green_F",[52.7197,-26.4774,11.4034]];
	_this = _item275;
	_objects pushback _this;
	_objectIDs pushback 275;
	_this setPosWorld [52.7197,-26.4774,12.7269];
	_this setVectorDirAndUp [[0.999391,7.54979e-008,-0.0348991],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item243 = objNull;
if (_layer384 && _layer385) then {
	_item243 = createSimpleObject ["Land_Cargo40_military_green_F",[2.98272,-11.6765,13.1403]];
	_this = _item243;
	_objects pushback _this;
	_objectIDs pushback 243;
	_this setPosWorld [2.98272,-11.6765,14.4678];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item237 = objNull;
if (_layer384 && _layer385) then {
	_item237 = createSimpleObject ["Land_Cargo40_military_green_F",[2.98272,-14.1724,13.1403]];
	_this = _item237;
	_objects pushback _this;
	_objectIDs pushback 237;
	_this setPosWorld [2.98272,-14.1724,14.4678];
	_this setVectorDirAndUp [[0.341812,0.939693,-0.0119362],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item255 = objNull;
if (_layer384 && _layer385) then {
	_item255 = createSimpleObject ["Land_Cargo40_military_green_F",[4.23025,-4.6312,13.0967]];
	_this = _item255;
	_objects pushback _this;
	_objectIDs pushback 255;
	_this setPosWorld [4.23025,-4.6312,14.4242];
	_this setVectorDirAndUp [[0.422373,0.906302,-0.0147494],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item265 = objNull;
if (_layer384 && _layer385) then {
	_item265 = createSimpleObject ["Land_Cargo40_military_green_F",[4.23025,-2.18992,13.0967]];
	_this = _item265;
	_objects pushback _this;
	_objectIDs pushback 265;
	_this setPosWorld [4.23025,-2.18992,14.4242];
	_this setVectorDirAndUp [[0.469197,0.882941,-0.0163846],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[5,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item487 = objNull;
if (_layer498 && _layer385) then {
	_item487 = createSimpleObject ["Land_Cargo20_military_green_F",[37.6596,-20.1344,10.104]];
	_this = _item487;
	_objects pushback _this;
	_objectIDs pushback 487;
	_this setPosWorld [37.6596,-20.1344,11.3035];
	_this setVectorDirAndUp [[-0.999391,6.69621e-007,0.0348988],[0.0316294,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item488 = objNull;
if (_layer498 && _layer385) then {
	_item488 = createSimpleObject ["B_Slingload_01_Fuel_F",[38.6207,-21.7032,8.02468]];
	_this = _item488;
	_objects pushback _this;
	_objectIDs pushback 488;
	_this setPosWorld [38.6207,-21.7032,9.3863];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item489 = objNull;
if (_layer498 && _layer385) then {
	_item489 = createSimpleObject ["B_Slingload_01_Fuel_F",[38.6207,-16.5518,8.02468]];
	_this = _item489;
	_objects pushback _this;
	_objectIDs pushback 489;
	_this setPosWorld [38.6207,-16.5518,9.3863];
	_this setVectorDirAndUp [[3.89177e-007,-1,-1.35902e-008],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item490 = objNull;
if (_layer498 && _layer385) then {
	_item490 = createSimpleObject ["Land_ConcretePipe_F",[38.621,-12.5454,8.02463]];
	_this = _item490;
	_objects pushback _this;
	_objectIDs pushback 490;
	_this setPosWorld [38.621,-12.5454,9.33006];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item491 = objNull;
if (_layer498 && _layer385) then {
	_item491 = createSimpleObject ["B_Slingload_01_Fuel_F",[36.1438,-21.7032,8.11118]];
	_this = _item491;
	_objects pushback _this;
	_objectIDs pushback 491;
	_this setPosWorld [36.1438,-21.7032,9.4728];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item492 = objNull;
if (_layer498 && _layer385) then {
	_item492 = createSimpleObject ["B_Slingload_01_Fuel_F",[36.1438,-16.5518,8.11118]];
	_this = _item492;
	_objects pushback _this;
	_objectIDs pushback 492;
	_this setPosWorld [36.1438,-16.5518,9.4728];
	_this setVectorDirAndUp [[3.89177e-007,-1,-1.35902e-008],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item493 = objNull;
if (_layer498 && _layer385) then {
	_item493 = createSimpleObject ["Land_ConcretePipe_F",[36.1441,-12.5454,8.11113]];
	_this = _item493;
	_objects pushback _this;
	_objectIDs pushback 493;
	_this setPosWorld [36.1441,-12.5454,9.41656];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item494 = objNull;
if (_layer498 && _layer385) then {
	_item494 = createSimpleObject ["Land_Cargo20_military_green_F",[37.6797,-18.6859,9.42453]];
	_this = _item494;
	_objects pushback _this;
	_objectIDs pushback 494;
	_this setPosWorld [37.6797,-18.6859,10.624];
	_this setVectorDirAndUp [[-0.999391,6.69621e-007,0.0348988],[0.0316294,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item495 = objNull;
if (_layer498 && _layer385) then {
	_item495 = createSimpleObject ["Land_Cargo20_military_green_F",[37.6379,-23.4794,10.6821]];
	_this = _item495;
	_objects pushback _this;
	_objectIDs pushback 495;
	_this setPosWorld [37.6379,-23.4794,10.6821];
	_this setVectorDirAndUp [[-0.999391,1.99895e-007,0.0349003],[-1.49645e-007,-1,1.44244e-006]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item499 = objNull;
if (_layer498 && _layer385) then {
	_item499 = createSimpleObject ["Land_Cargo20_military_green_F",[17.7574,-8.425,10.799]];
	_this = _item499;
	_objects pushback _this;
	_objectIDs pushback 499;
	_this setPosWorld [17.7574,-8.425,11.9985];
	_this setVectorDirAndUp [[-0.999391,6.69621e-007,0.0348988],[0.0316294,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item500 = objNull;
if (_layer498 && _layer385) then {
	_item500 = createSimpleObject ["B_Slingload_01_Fuel_F",[18.7185,-9.9938,8.71968]];
	_this = _item500;
	_objects pushback _this;
	_objectIDs pushback 500;
	_this setPosWorld [18.7185,-9.9938,10.0813];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item501 = objNull;
if (_layer498 && _layer385) then {
	_item501 = createSimpleObject ["B_Slingload_01_Fuel_F",[18.7185,-4.84239,8.71968]];
	_this = _item501;
	_objects pushback _this;
	_objectIDs pushback 501;
	_this setPosWorld [18.7185,-4.84239,10.0813];
	_this setVectorDirAndUp [[3.89177e-007,-1,-1.35902e-008],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item502 = objNull;
if (_layer498 && _layer385) then {
	_item502 = createSimpleObject ["Land_ConcretePipe_F",[18.7188,-0.836012,8.71963]];
	_this = _item502;
	_objects pushback _this;
	_objectIDs pushback 502;
	_this setPosWorld [18.7188,-0.836012,10.0251];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item503 = objNull;
if (_layer498 && _layer385) then {
	_item503 = createSimpleObject ["B_Slingload_01_Fuel_F",[16.2415,-9.9938,8.80617]];
	_this = _item503;
	_objects pushback _this;
	_objectIDs pushback 503;
	_this setPosWorld [16.2415,-9.9938,10.1678];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item504 = objNull;
if (_layer498 && _layer385) then {
	_item504 = createSimpleObject ["B_Slingload_01_Fuel_F",[16.2415,-4.84239,8.80617]];
	_this = _item504;
	_objects pushback _this;
	_objectIDs pushback 504;
	_this setPosWorld [16.2415,-4.84239,10.1678];
	_this setVectorDirAndUp [[3.89177e-007,-1,-1.35902e-008],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item505 = objNull;
if (_layer498 && _layer385) then {
	_item505 = createSimpleObject ["Land_ConcretePipe_F",[16.2418,-0.836012,8.80613]];
	_this = _item505;
	_objects pushback _this;
	_objectIDs pushback 505;
	_this setPosWorld [16.2418,-0.836012,10.1116];
	_this setVectorDirAndUp [[0,1,0],[0.0348991,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item506 = objNull;
if (_layer498 && _layer385) then {
	_item506 = createSimpleObject ["Land_Cargo20_military_green_F",[17.7774,-6.97646,10.1195]];
	_this = _item506;
	_objects pushback _this;
	_objectIDs pushback 506;
	_this setPosWorld [17.7774,-6.97646,11.319];
	_this setVectorDirAndUp [[-0.999391,6.69621e-007,0.0348988],[0.0316294,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item507 = objNull;
if (_layer498 && _layer385) then {
	_item507 = createSimpleObject ["Land_Cargo20_military_green_F",[17.7357,-11.77,11.3771]];
	_this = _item507;
	_objects pushback _this;
	_objectIDs pushback 507;
	_this setPosWorld [17.7357,-11.77,11.3771];
	_this setVectorDirAndUp [[-0.999391,1.99895e-007,0.0349003],[-1.49645e-007,-1,1.44244e-006]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item510 = objNull;
if (_layer498 && _layer385) then {
	_item510 = createSimpleObject ["Land_Cargo20_military_green_F",[-17.4049,-8.425,10.8325]];
	_this = _item510;
	_objects pushback _this;
	_objectIDs pushback 510;
	_this setPosWorld [-17.4049,-8.425,12.032];
	_this setVectorDirAndUp [[-0.999391,9.42498e-007,-0.0348999],[-0.0316297,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item511 = objNull;
if (_layer498 && _layer385) then {
	_item511 = createSimpleObject ["B_Slingload_01_Fuel_F",[-16.3098,-9.9938,8.825]];
	_this = _item511;
	_objects pushback _this;
	_objectIDs pushback 511;
	_this setPosWorld [-16.3098,-9.9938,10.1866];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item512 = objNull;
if (_layer498 && _layer385) then {
	_item512 = createSimpleObject ["B_Slingload_01_Fuel_F",[-16.3098,-4.84239,8.825]];
	_this = _item512;
	_objects pushback _this;
	_objectIDs pushback 512;
	_this setPosWorld [-16.3098,-4.84239,10.1866];
	_this setVectorDirAndUp [[3.89177e-007,-1,1.35904e-008],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item513 = objNull;
if (_layer498 && _layer385) then {
	_item513 = createSimpleObject ["Land_ConcretePipe_F",[-16.3094,-0.836012,8.82498]];
	_this = _item513;
	_objects pushback _this;
	_objectIDs pushback 513;
	_this setPosWorld [-16.3094,-0.836012,10.1304];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item514 = objNull;
if (_layer498 && _layer385) then {
	_item514 = createSimpleObject ["B_Slingload_01_Fuel_F",[-18.7867,-9.9938,8.7385]];
	_this = _item514;
	_objects pushback _this;
	_objectIDs pushback 514;
	_this setPosWorld [-18.7867,-9.9938,10.1001];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item515 = objNull;
if (_layer498 && _layer385) then {
	_item515 = createSimpleObject ["B_Slingload_01_Fuel_F",[-18.7867,-4.84239,8.7385]];
	_this = _item515;
	_objects pushback _this;
	_objectIDs pushback 515;
	_this setPosWorld [-18.7867,-4.84239,10.1001];
	_this setVectorDirAndUp [[3.89177e-007,-1,1.35904e-008],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item516 = objNull;
if (_layer498 && _layer385) then {
	_item516 = createSimpleObject ["Land_ConcretePipe_F",[-18.7864,-0.836012,8.73848]];
	_this = _item516;
	_objects pushback _this;
	_objectIDs pushback 516;
	_this setPosWorld [-18.7864,-0.836012,10.0439];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item517 = objNull;
if (_layer498 && _layer385) then {
	_item517 = createSimpleObject ["Land_Cargo20_military_green_F",[-17.3462,-6.97646,10.1558]];
	_this = _item517;
	_objects pushback _this;
	_objectIDs pushback 517;
	_this setPosWorld [-17.3462,-6.97646,11.3553];
	_this setVectorDirAndUp [[-0.999391,9.42498e-007,-0.0348999],[-0.0316297,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item518 = objNull;
if (_layer498 && _layer385) then {
	_item518 = createSimpleObject ["Land_Cargo20_military_green_F",[-17.3832,-11.77,11.4106]];
	_this = _item518;
	_objects pushback _this;
	_objectIDs pushback 518;
	_this setPosWorld [-17.3832,-11.77,11.4106];
	_this setVectorDirAndUp [[-0.999391,-2.58424e-011,-0.0348988],[-5.03441e-008,-1,1.44244e-006]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item521 = objNull;
if (_layer498 && _layer385) then {
	_item521 = createSimpleObject ["Land_Cargo20_military_green_F",[-37.946,-20.1344,10.1152]];
	_this = _item521;
	_objects pushback _this;
	_objectIDs pushback 521;
	_this setPosWorld [-37.946,-20.1344,11.3147];
	_this setVectorDirAndUp [[-0.999391,9.42498e-007,-0.0348999],[-0.0316297,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item522 = objNull;
if (_layer498 && _layer385) then {
	_item522 = createSimpleObject ["B_Slingload_01_Fuel_F",[-36.8509,-21.7032,8.10769]];
	_this = _item522;
	_objects pushback _this;
	_objectIDs pushback 522;
	_this setPosWorld [-36.8509,-21.7032,9.46931];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item523 = objNull;
if (_layer498 && _layer385) then {
	_item523 = createSimpleObject ["B_Slingload_01_Fuel_F",[-36.8509,-16.5518,8.10769]];
	_this = _item523;
	_objects pushback _this;
	_objectIDs pushback 523;
	_this setPosWorld [-36.8509,-16.5518,9.46931];
	_this setVectorDirAndUp [[3.89177e-007,-1,1.35904e-008],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item524 = objNull;
if (_layer498 && _layer385) then {
	_item524 = createSimpleObject ["Land_ConcretePipe_F",[-36.8506,-12.5454,8.10767]];
	_this = _item524;
	_objects pushback _this;
	_objectIDs pushback 524;
	_this setPosWorld [-36.8506,-12.5454,9.4131];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item525 = objNull;
if (_layer498 && _layer385) then {
	_item525 = createSimpleObject ["B_Slingload_01_Fuel_F",[-39.3278,-21.7032,8.02119]];
	_this = _item525;
	_objects pushback _this;
	_objectIDs pushback 525;
	_this setPosWorld [-39.3278,-21.7032,9.38281];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item526 = objNull;
if (_layer498 && _layer385) then {
	_item526 = createSimpleObject ["B_Slingload_01_Fuel_F",[-39.3278,-16.5518,8.02119]];
	_this = _item526;
	_objects pushback _this;
	_objectIDs pushback 526;
	_this setPosWorld [-39.3278,-16.5518,9.38281];
	_this setVectorDirAndUp [[3.89177e-007,-1,1.35904e-008],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item527 = objNull;
if (_layer498 && _layer385) then {
	_item527 = createSimpleObject ["Land_ConcretePipe_F",[-39.3275,-12.5454,8.02117]];
	_this = _item527;
	_objects pushback _this;
	_objectIDs pushback 527;
	_this setPosWorld [-39.3275,-12.5454,9.3266];
	_this setVectorDirAndUp [[0,1,0],[-0.0348995,0,0.999391]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item528 = objNull;
if (_layer498 && _layer385) then {
	_item528 = createSimpleObject ["Land_Cargo20_military_green_F",[-37.8873,-18.6859,9.43848]];
	_this = _item528;
	_objects pushback _this;
	_objectIDs pushback 528;
	_this setPosWorld [-37.8873,-18.6859,10.638];
	_this setVectorDirAndUp [[-0.999391,9.42498e-007,-0.0348999],[-0.0316297,0.422618,0.905756]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item529 = objNull;
if (_layer498 && _layer385) then {
	_item529 = createSimpleObject ["Land_Cargo20_military_green_F",[-37.9243,-23.4794,10.6933]];
	_this = _item529;
	_objects pushback _this;
	_objectIDs pushback 529;
	_this setPosWorld [-37.9243,-23.4794,10.6933];
	_this setVectorDirAndUp [[-0.999391,-2.58424e-011,-0.0348988],[-5.03441e-008,-1,1.44244e-006]];
	_this enableSimulation false;
	['init',_this,[21,0,0]] call bis_fnc_3DENAttributeDoorStates;;
};

private _item532 = objNull;
if (_layerRoot) then {
	_item532 = createVehicle ["PortableHelipadLight_01_white_F",[0,-6.407,6.62102],[],0,"CAN_COLLIDE"];
	_this = _item532;
	_objects pushback _this;
	_objectIDs pushback 532;
	_this setPosWorld [0,-6.32645,14.6009];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

isNil {
	if !(isnull _item472) then {
		this = _item472;
		this setObjectTextureGlobal [0,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];
this setObjectTextureGlobal [1,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];;
	};
	if !(isnull _item473) then {
		this = _item473;
		this setObjectTextureGlobal [0,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];
this setObjectTextureGlobal [1,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];;
	};
	if !(isnull _item474) then {
		this = _item474;
		this setObjectTextureGlobal [0,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];
this setObjectTextureGlobal [1,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];;
	};
	if !(isnull _item471) then {
		this = _item471;
		this setObjectTextureGlobal [0,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];
this setObjectTextureGlobal [1,"#(rgb,8,8,3)color(0.17,0.1935,0.165,0.525)"];;
	};
};

{
	_object = _x;  
	_FX_smoke_source = "#particlesource" createVehicle (getpos _object);
	[_FX_smoke_source,"MissileEffects1"] remoteExec ["setParticleClass",0];
	_FX_smoke_source attachto [_object,[0,0,0]];
	_objects pushBack _FX_smoke_source;
} foreach [_item487,_item506,_item528,_item517];

B52Aircraft = _item532;

_spawnPos = _targetPos getPos [3000,random 360];
_wpPos = (((vectorNormalized(_targetPos vectorAdd (_spawnPos vectorMultiply -1)))vectorMultiply 3000)vectorAdd _targetPos);
_spawnPos set [2,500];
_wpPos set [2,500];
B52Aircraft setVariable ["B52Target",_wpPos];
B52Aircraft setVariable ["B52Objects",_objects];

B52Aircraft enableSimulation false;
B52Aircraft allowDamage false;
_objects pushBack B52Aircraft;

if(isNil "AllB52Objects") then {AllB52Objects = [];};
AllB52Objects append _objects;
B52Objects = _objects;

{
	[_x,B52Aircraft] call BIS_fnc_attachToRelative;
} foreach _objects;

sleep 45;

B52Aircraft enableSimulation true;
B52Aircraft setPosATL _spawnPos;
B52Aircraft setDir ((B52Aircraft getRelDir _wpPos)+(getDir B52Aircraft));

[_targetPos,1750,B52Aircraft,B52Objects] spawn B52_fnc_attackSequence;

[] call B52_fnc_flightSequence;
};

B52_fnc_flightSequence = {
	_index = addMissionEventHandler ["EachFrame",
	{
		_dest = (B52Aircraft getVariable "B52Target");
		if(getPosATL B52Aircraft inArea [_dest, 10,10, 0, false]) then 
		{
			removeMissionEventHandler ["EachFrame",(B52Aircraft getVariable "B52MoveIndexEvent")];
			B52Aircraft = nil;
			
		}
		else 
		{
			B52Aircraft setVelocity (((getPosATL B52Aircraft) vectorFromTo _dest) vectorMultiply 100);
		};
	}];
	B52Aircraft setVariable ["B52MoveIndexEvent",_index];
};

B52_fnc_attackSequence = {
	params["_targetPos","_dropDistance","_bomber","_B52Objects"];

	
	waitUntil {(_bomber distance2D _targetPos) <= _dropDistance};
	hint "BOMBS AWAY!";

	[_bomber] spawn 
	{
		params["_bomber"];
		for "_i" from 0 to 60 do 
		{
			sleep 0.15;
			_bombName = "Bo_mk82";
			_pos = getPosATL _bomber;
			_pos set [2,(_pos select 2)-15];
			_bomb = createVehicle [_bombName,_pos,[],30,"CAN_COLLIDE"];
			_bomb setDir getDir _bomber;
			_bomb setVelocity velocity _bomber;
		};
	};

	waitUntil {(_bomber distance2D _targetPos) <= 1000};
	_pos = getPos _bomber;
	_pos set [2,0];
	_soundPos = (((vectorNormalized(_targetPos vectorAdd (_pos vectorMultiply -1)))vectorMultiply 1100)vectorAdd _pos);
	playSound3D ["A3\Sounds_F\ambient\battlefield\battlefield_jet1.wss", _bomber, false, _soundPos, 5,0.25, 1e10];
	playSound3D ["A3\Sounds_F\ambient\battlefield\battlefield_jet1.wss", _bomber, false, _soundPos, 5,0.25, 1e10];
	playSound3D ["A3\Sounds_F\ambient\battlefield\battlefield_jet1.wss", _bomber, false, _soundPos, 5,0.25, 1e10];

	sleep 45;
	{deleteVehicle _x;} forEach _B52Objects;
	removeMissionEventHandler ["EachFrame",(_bomber getVariable "B52MoveIndexEvent")];
	B52Aircraft = nil;
	
};



onMapSingleClick {

	if !(isNil "B52Aircraft") exitWith {
	systemChat "Bombing already in progress!";
	playSound "addItemFailed";
	};

	[_pos] remoteExec ["B52_Makebomber",0];
	player additem 'B_UavTerminal';
	player assignItem 'B_UavTerminal';
	{	
		if(getObjectViewDistance select 0 < 1250) then {setObjectViewDistance 1250};
		if(ViewDistance < 1500) then {setViewDistance 1500};
	} remoteExec ["BIS_fnc_call",0];
	playSound "hint";

	[] spawn {
		sleep 30;
		_radioSounds = [
			"A3\dubbing_f_heli\mp_groundsupport\70_TacticalStrikeInbound\mp_groundsupport_70_tacticalstrikeinbound_BHQ_0.ogg",
			"A3\dubbing_f_heli\mp_groundsupport\70_TacticalStrikeInbound\mp_groundsupport_70_tacticalstrikeinbound_BHQ_1.ogg",
			"A3\dubbing_f_heli\mp_groundsupport\70_TacticalStrikeInbound\mp_groundsupport_70_tacticalstrikeinbound_BHQ_2.ogg",
			"A3\dubbing_f_heli\mp_groundsupport\70_TacticalStrikeInbound\mp_groundsupport_70_tacticalstrikeinbound_BHQ_3.ogg",
			"A3\dubbing_f_heli\mp_groundsupport\70_TacticalStrikeInbound\mp_groundsupport_70_tacticalstrikeinbound_BHQ_4.ogg"
		];
		playSound3D [selectRandom _radioSounds,player,false,getPosATL player,5,1,1e10];
	};
};

comment "
	{deleteVehicle _x} foreach AllB52Objects;
"; 
