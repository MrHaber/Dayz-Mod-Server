private ["_loginGroup","_loginVar"];

_loginVar = if (isClass(configFile >> "CfgWeapons" >> "Chainsaw")) then {"PVDZE_plr_LoginRecord"} else {"PVDZ_plr_LoginRecord"};
waitUntil {uiSleep .25;(!isNil _loginVar)};
if (count units group player > 1) then {[player] join grpNull;};

_savedGroup = profileNamespace getVariable["savedGroup",[]];
player setVariable ["savedGroup",_savedGroup,true];
player setVariable ["purgeGroup",0,true];
if (count _savedGroup > 1) then {
	{
		if (((getPlayerUID _x) in _savedGroup) && {(getPlayerUID player) in (_x getVariable["savedGroup",[]])} && {_x != player}) exitWith {
			_loginGroup = group player;
			[player] join (group _x);
			if (count units _loginGroup < 1) then {deleteGroup _loginGroup;};
		};
	} count playableUnits;
};

#include "\ca\editor\Data\Scripts\dikCodes.h"
keyboard_keys set [DIK_LWIN,{if (tagName) then {tagName = false;titleText ["\n\nТэг группы выключен","PLAIN DOWN"];titleFadeOut 4;} else {tagName = true;titleText ["\n\nТэг группы включён","PLAIN DOWN"];titleFadeOut 4;};_handled = true;}];
keyboard_keys set [(actionKeys "TacticalView") select 0,{_handled = true;}];
keyboard_keys set [DIK_RWIN,{if (dialog) then {closeDialog 0;groupManagementActive = false;} else {execVM "dzgm\loadGroupManagement.sqf";};_handled = true;}];

acceptGroupInvite = compile preprocessFileLineNumbers "dzgm\acceptGroupInvite.sqf";
declineGroupInvite = compile preprocessFileLineNumbers "dzgm\declineGroupInvite.sqf";
disbandGroup = compile preprocessFileLineNumbers "dzgm\disbandGroup.sqf";
dzgmSlowLoop = compile preprocessFileLineNumbers "dzgm\slowLoop.sqf";
inviteToGroup = compile preprocessFileLineNumbers "dzgm\inviteToGroup.sqf";
kickFromGroup = compile preprocessFileLineNumbers "dzgm\kickFromGroup.sqf";
leaveGroup = compile preprocessFileLineNumbers "dzgm\leaveGroup.sqf";
playerSelectChange = compile preprocessFileLineNumbers "dzgm\playerSelectChange.sqf";
tagName = true;
updatePlayerList = compile preprocessFileLineNumbers "dzgm\updatePlayerList.sqf";
	
if (isNil "dzgmInit") then {call compile preprocessFileLineNumbers "dzgm\icons.sqf";};
uiSleep 1;
[] spawn dzgmInit;
[] spawn dzgmSlowLoop;
enableRadio false;
systemChat "Нажмите правой кнопкой мыши по рации у вас в кармане.";