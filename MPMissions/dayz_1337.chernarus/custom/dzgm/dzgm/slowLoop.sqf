private ["_mrkr","_name","_pPos","_puid"];

while {true} do {
	#include "mapMarkers.sqf"
	
	_updateGroup = false;
	_groupUIDs = [];
	{_puid = getPlayerUID _x;if (_puid != "") then {_groupUIDs set [count _groupUIDs,_puid];};} count units group player;
	_savedGroup = profileNamespace getVariable["savedGroup",[]];
	{if !(_x in _savedGroup) then {_savedGroup set [count _savedGroup,_x];_updateGroup = true;};} count _groupUIDs;
	
	if (_updateGroup) then {
		profileNamespace setVariable["savedGroup",_savedGroup];saveProfileNamespace;
		player setVariable ["savedGroup",_savedGroup,true];
	};
	
	_purgeGroup = player getVariable["purgeGroup",0];
	if (isNil "_purgeGroup") then {_purgeGroup = 0;};
	if (typeName _purgeGroup == "ARRAY") then {
		_savedGroup = _savedGroup - _purgeGroup;
		profileNamespace setVariable["savedGroup",_savedGroup];saveProfileNamespace;
		player setVariable ["savedGroup",_savedGroup,true];
		player setVariable ["purgeGroup",0,true];
	};
	uiSleep 2;
};