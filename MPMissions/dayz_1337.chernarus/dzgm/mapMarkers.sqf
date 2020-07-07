if (visibleMap || (!isNull (findDisplay 88890))) then {
	{
		if ((!isNull _x) && {isPlayer _x} && {(driver (vehicle _x)) == _x}) then {
			_name = name _x;
			if (group _x == group player) then {
				_pPos = getPosATL _x;
				if (surfaceIsWater _pPos) then {_pPos = getPosASL _x;};
				if (_name == name player) then {_name = "Это вы";};
				deleteMarkerLocal _name;
				_mrkr = createMarkerLocal [_name,_pPos];
				_mrkr setMarkerTypeLocal "DestroyedVehicle";
				_mrkr setMarkerTextLocal format ["%1",_name];
			} else {
				deleteMarkerLocal _name;
			};
		};
	} count playableUnits;
	
	{
		if (!isNull _x) then {
			_name = _x getVariable["bodyName","unknown"];
			if (_name == name player) then {_name = "Моё тело";};
			
			_pPos = getPosATL _x;
			_nameID = _name + str(_pPos);
			if (_name == "Моё тело") then {
				deleteMarkerLocal _nameID;
				_mrkr = createMarkerLocal [_nameID,_pPos];
				_mrkr setMarkerTypeLocal "DestroyedVehicle";
				_mrkr setMarkerTextLocal format ["%1",_name];
				_mrkr setMarkerColorLocal "ColorRed";
			} else {
				deleteMarkerLocal _nameID;
			};
		};
	} count allDead;
};