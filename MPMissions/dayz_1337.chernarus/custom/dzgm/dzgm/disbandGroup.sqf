private "_myGroup";

_myGroup = group player;
{
	_saveGroup = _x getVariable["savedGroup",[]];
	_x setVariable ["purgeGroup",_saveGroup,true];
	[_x] join grpNull;
} count units _myGroup;
deleteGroup _myGroup;

systemChat "Группа была расформирована";