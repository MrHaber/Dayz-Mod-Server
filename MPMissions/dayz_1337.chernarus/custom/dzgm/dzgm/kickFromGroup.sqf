disableSerialization;

private ["_dialog","_pTarget","_index","_playerData","_check"];

_dialog = findDisplay 55510;
_groupListBox = _dialog displayCtrl 55512;
_index = lbCurSel _groupListBox;
_playerData = _groupListBox lbData _index;
_check = 0;
{
	if ((!isNull _x) && {isPlayer _x} && {str(_x) == _playerData}) exitWith {_pTarget = _x;_check = 1;};
} count playableUnits;

if (_pTarget == player) exitWith {systemChat "Вы не можете выгнать самого себя";};
if (_check == 0) exitWith {systemChat "Вы должны выбрать того кого хотите выгнать";};

_saveGroup = _pTarget getVariable["savedGroup",[]];
_pTarget setVariable ["purgeGroup",_saveGroup,true];
[_pTarget] join grpNull;
{_x setVariable ["purgeGroup",[(getPlayerUID _pTarget)],true];} count units group player;

systemChat format["Вы были кикнуты из %1 группы",name _pTarget];