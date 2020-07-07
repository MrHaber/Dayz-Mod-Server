	adminESPicons =
	{
		if !(('ItemGPS' in items player) || {'ItemMap' in items player}) then
		{
			_config = ["ItemGPS"];
			_isOK = [player,_config] call BIS_fnc_invAdd;
		};
		setGroupIconsVisible [true, true];
		_color_list = [0,1,0,1];
		_color_orange = [1,0.35,0.15,1];
		_color_bluefor_plr = [0.047,0.502,1,1];
		_color_opfor_plr = [1,0.17,0.17,1];
		_color_resistance_plr = [0,0.65,0,1];
		_color_civilian_plr = [1,1,1,1];
		_name = "";
		_show = "";
		_clr = _color_bluefor_plr;
		if(isNil "fnc_adminESPicons") then {fnc_adminESPicons = 0;};
		if(fnc_adminESPicons == 0) then 
		{
			fnc_adminESPicons = 1;
			hint "GroupIcons ON";
			cutText ["\nGroupIcons ON", "PLAIN DOWN"];
			
			_sl = format["%1 GroupIcons Activated",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		} 
		else 
		{
			fnc_adminESPicons = 0;
			hint "GroupIcons OFF";
			cutText ["\nGroupIcons OFF", "PLAIN DOWN"];
			
			_sl = format["%1 GroupIcons Disabled",name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};
		
		while {fnc_adminESPicons == 1} do
		{
			{
				_pid = getPlayerUID _x;
				if(_pid != "") then
				{
					_plist = units group _x;
					_unitCount = count _plist;
					if(_unitCount == 1) then {
						_name = name _x;
						_veh = vehicle _x;
						_type = typeOf _veh;
						
						if(_name == "") then {_name = _type;};
						_pos = (positionCameraToWorld [0,0,0]);
						_posU = getPos _veh;
						_dist = round(_pos distance _posU);
						
						if(_x == _veh) then
						{
							_show = format["%1 (%2m)",_name,_dist];
							_clr = _color_bluefor_plr;
						}
						else
						{
							_crewnames = [];
							{
								_crewnames = _crewnames + [name _x];
							} forEach crew _veh;
							
							_show = format["%1 (%2m) - %3",_crewnames,_dist,_type];
							_clr = _color_orange;
						};
						
						_puid = getPlayerUID player;
						if(_pid in (PV_LowLevel_List+PV_NormalLevel_List+PV_SuperLevel_List)) then {_clr = _color_list};
						if(!(_pid in PV_SuperLevel_List) || ((_pid in PV_SuperLevel_List) && (_puid in PV_SuperLevel_List)) || (_pid == _puid)) then
						{
							_grp = group _x;
							clearGroupIcons _grp;
							_grp addGroupIcon ["x_art"];
							_grp setGroupIconParams [_clr, _show, 1, true];
						};
					} else {
						_grp = group _x;
						_leader = leader _grp;
						_name = name _leader;
						_veh = vehicle _leader;
						_type = typeOf _veh;
						
						if(_name == "") then {_name = _type;};
						_pos = (positionCameraToWorld [0,0,0]);
						_posU = getPos _veh;
						_dist = round(_pos distance _posU);
						
						_memberNames = [];
						{_memberNames set [count _memberNames,(name _x)];} count _plist;
						_memberNames = _memberNames - [_name];
						
						if(_leader == _veh) then
						{
							_show = format ["%1 (%2m) Leader of group: %3",_name,_dist,_memberNames];
							_clr = _color_bluefor_plr;
						}
						else
						{							
							_show = format ["%1 (%2m) Leader of group: %3 - %4",_name,_dist,_memberNames,_type];
							_clr = _color_orange;
						};			
									   
						clearGroupIcons _grp;
						_grp addGroupIcon ["x_art"];
						_grp setGroupIconParams [_clr, _show, 1, true];
					};
				};
			} forEach playableUnits;
			uiSleep 1;
		};
		{clearGroupIcons group _x;} forEach playableUnits;
	};