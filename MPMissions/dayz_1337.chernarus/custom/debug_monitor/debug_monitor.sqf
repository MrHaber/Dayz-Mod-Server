private["_serverTitle","_serverSubtitle","_teamspeak","_time","_hours","_minutes","_restartTime"];

/************************* CONFIG *************************/

	_serverTitle = "SERVER NAME HERE";
	_serverSubtitle = "WEBSITE/MESSAGE HERE"; // DELETE line 40 if you don't want this to show
	_teamspeak = "Teamspeak: TEAMSPEAK IP HERE"; // DELETE line 50 if you don't want this to show
	_restartTime = 180; //total time before server restart (3hrs = 180 minutes)
	
/************************* CONFIG *************************/

while {debugMonitor} do {

	_time = (round(_restartTime-(serverTime)/60)); 	//Want it to count up instead of down? use _time = (round serverTime)/60;
	_hours = (floor(_time/60));
	_minutes = (_time - (_hours * 60));
	
	switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
	};
	
	// Want to change the colors? http://www.w3schools.com/colors/colors_picker.asp
	// Use the #xxxxxx color code you get on that website and place it with any of the
	//<t size..... lines below format: color='#xxxxxx'
	
	// You can delete any of the <t size..... lines that you do not want
	// THE LAST LINE MUST HAVE A ",

hintSilent parseText format ["
    <t size='1.25' font='Bitstream' align='center' color='#FACC2E'>AlexMoD</t><br/>

    <t size='0.95' font='Bitstream' align='center' color='#5882FA'>Онлайн : %7</t><br/><br/>

    <t size='0.95' font='Bitstream' align='left' color='#FACC2E'>Убито заражённых: </t>
    <t size='0.95' font='Bitstream' align='right'>%1</t><br/>

    <t size='0.95' font='Bitstream' align='left' color='#FACC2E'>Бандиты: </t>
    <t size='0.95' font='Bitstream' align='right'>%3</t><br/>

    <t size='0.95' font='Bitstream' align='left' color='#FACC2E'>Убитые бандиты: </t>
    <t size='0.95' font='Bitstream' align='right'>%4</t><br/><br/>

    <t size='0.95' font='Bitstream' align='left' color='#FACC2E'>Карма: </t>
    <t size='0.95' font='Bitstream' align='right'>%5</t><br/>

    <t size='0.95' font='Bitstream' align='left' color='#FACC2E'>Здоровье: </t>
    <t size='0.95' font='Bitstream' align='right'>%8</t><br/><br/>


    <t size='0.95' font='Bitstream' align='left' color='#FACC2E'>FPS: </t>
	<t size='0.95' font='Bitstream' align='right'>%9</t><br/>
	<t size='1.15' font='Bitstream' align='center' color='#5882FA'>Наша группа:</t>
    <t size='1.15' font='Bitstream' align='center' color='#5882FA'>vk.com/alexmod.evolution</t>",
    (player getVariable['zombieKills', 0]),
    (player getVariable['headShots', 0]),
    (player getVariable['humanKills', 0]),
    (player getVariable['banditKills', 0]),
    (player getVariable['humanity', 0]),
    (dayz_Survived),
    (count playableUnits),
    r_player_blood,
    (round diag_fps),
    (round(120-(serverTime) / 60))
];
	
	//Don't modify this part
	sleep 0.5;
};