dayz_spaceInterrupt =			compile preprocessFileLineNumbers "custom\debug_monitor\dayz_spaceInterrupt.sqf";
if (!isDedicated) then {
   player_switchModel = compile preprocessFileLineNumbers "custom\player_switchModel.sqf";
   player_selectSlot = compile preprocessFileLineNumbers "custom\ui_selectSlot.sqf";
};