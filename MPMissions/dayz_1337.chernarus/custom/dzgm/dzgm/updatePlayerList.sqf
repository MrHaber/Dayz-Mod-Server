disableSerialization;
				
private ["_dialog","_playerListBox","_namestr","_index"];
	
_dialog = findDisplay 55510;
_playerListBox = _dialog displayCtrl 55511;
lbClear _playerListBox;
{
	if ((!isNull _x) && {isPlayer _x}) then {
		_namestr = name _x;
		_index = _playerListBox lbAdd _namestr;
		_playerListBox lbSetData [_index,str(_x)];
		_playerListBox lbSetPicture [_index,"\ca\ui\data\objective_complete_ca.paa"];
		if (count units group _x > 1) then {_playerListBox lbSetPicture [_index,"\ca\ui\data\objective_incomplete_ca.paa"];};
	};
} count playableUnits;