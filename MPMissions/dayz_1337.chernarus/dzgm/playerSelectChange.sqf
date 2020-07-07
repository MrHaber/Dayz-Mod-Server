disableSerialization;

private ["_dialog","_playerListBox","_groupInvite","_pTarget","_index","_playerData","_check","_unitCount"];

_dialog = findDisplay 55510;
_playerListBox = _dialog displayCtrl 55511;
_groupInvite = _dialog displayCtrl 55514;
_index = lbCurSel _playerListBox;
_playerData = _playerListBox lbData _index;
_check = 0;
{
	if ((!isNull _x) && {isPlayer _x} && {str(_x) == _playerData}) exitWith {_pTarget = _x;_check = 1;};
} count playableUnits;

if (_check == 1) then {
	_unitCount = count units group _pTarget;

	if (_unitCount == 1) then {
		if (player == leader group player) then {
			_groupInvite ctrlShow true;
		} else {
			_groupInvite ctrlShow false;
			systemChat "You must be the group leader to invite people!";
		};	    
	} else {
		_groupInvite ctrlShow false;	   
		systemChat "Sorry, the selected player is already in a group";
	};
};