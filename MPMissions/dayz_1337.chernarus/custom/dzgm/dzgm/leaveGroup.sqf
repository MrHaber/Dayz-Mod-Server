{
	if (_x != player) then {
		_x setVariable ["purgeGroup",[(getPlayerUID player)],true];
	};
} count units group player;

_saveGroup = player getVariable["savedGroup",[]];
player setVariable["purgeGroup",_saveGroup,true];

[player] join grpNull;
systemChat "Вы покинули группу";