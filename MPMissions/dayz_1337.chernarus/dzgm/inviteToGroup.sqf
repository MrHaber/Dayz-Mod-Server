if (player != leader group player) exitWith {systemChat "You are not the leader and can not invite people.";};

disableSerialization;

private ["_dialog","_playerListBox","_pTarget","_index","_playerData","_check","_hasInvite"];

_dialog = findDisplay 55510;
_playerListBox = _dialog displayCtrl 55511;
_index = lbCurSel _playerListBox;
_playerData = _playerListBox lbData _index;
_hasInvite = false;
_check = 0;
{
	if ((!isNull _x) && {isPlayer _x} && {str(_x) == _playerData}) exitWith {_pTarget = _x;_check = 1;};
} count playableUnits;

if (_check == 0) exitWith {systemChat "Вы должны выбрать кого-то, чтобы пригласить в первую очередь";};
if (_pTarget == player) exitWith {systemChat "Вы не можете пригласить самого себя.";};
if (count units group _pTarget > 1) exitWith {systemChat "Этот игрок уже в группе.";};

{if (_x select 1 == getPlayerUID _pTarget) then {_hasInvite = true;};} forEach currentInvites;
if (_hasInvite) exitWith {systemChat "У этого игрока уже имеется приглашение.";};
currentInvites set [count currentInvites,[getPlayerUID player,getPlayerUID _pTarget]];
publicVariableServer "currentInvites";

[nil,_pTarget,"loc", rTITLETEXT, format["Вы получили групповое приглашение. Щелкните правой кнопкой мыши на радио для просмотра."], "PLAIN", 0] call RE;

systemChat format["Вы были приглашены %1 в группу.",name _pTarget];
systemChat "Нажмите кнопку LWindows, чтобы переключить теги имен групп";