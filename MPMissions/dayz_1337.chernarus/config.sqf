//Server settings
dayZ_instance = 1337; //Instance ID of this server
dayZ_serverName = "AlexMoD"; //Shown to all players in the bottom left of the screen (country code + server number)

//Game settings
dayz_antihack = 0; // DayZ Antihack / 1 = enabled // 0 = disabled
dayz_antiWallHack = 0; //DayZ AntiWallhack / 1 = enabled // 0 = disabled, Adds items to the map to plug holes.
dayz_REsec = 0; // DayZ RE Security / 1 = enabled // 0 = disabled
dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
dayz_quickSwitch = true; //Turns on forced animation for weapon switch. (hotkeys 1,2,3) False = enable animations, True = disable animations
dayz_POIs = true;
dayz_infectiousWaterholes = true;
dayz_ForcefullmoonNights = true; // Forces night time to be full moon.
dayz_randomMaxFuelAmount = 750; //Puts a random amount of fuel in all fuel stations.

//DayZMod presets
dayz_presets = "Vanilla"; //"Custom","Classic","Vanilla","Elite"

//Only need to edit if you are running a custom server.
if (dayz_presets == "Custom") then {
	dayz_enableGhosting = true; //Enable disable the ghosting system.
	dayz_ghostTimer = 30; //Sets how long in seconds a player must be disconnected before being able to login again.
	dayz_spawnselection = 1; //Turn on spawn selection 0 = random only spawns, 1 = spawn choice based on limits
	dayz_spawncarepkgs_clutterCutter = 2; //0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnCrashSite_clutterCutter = 2;	// heli crash options 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnInfectedSite_clutterCutter = 2; // infected base spawn 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass 
	dayz_bleedingeffect = 3; //1 = blood on the ground, 2 = partical effect, 3 = both
	dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked
	dayz_nutritionValuesSystem = false; //true, Enables nutrition system, false, disables nutrition system.
	dayz_classicBloodBagSystem = false; // removes all blood type bloodbags (not implmented yet)
	dayz_enableFlies = true; // Enable flies on dead bodies (negatively impacts FPS).
};

//Temp settings
dayz_DamageMultiplier = 1; //1 - 0 = Disabled, anything over 1 will multiply damage. Damage Multiplier for Zombies.
dayz_maxGlobalZeds = 30; //Limit the total zeds server wide.
dayz_temperature_override = false; // Set to true to disable all temperature changes.

dayz_ServerMessages = [
	["DayZMod", "Добро пожаловать "+(name player)],
	["Локация", worldName],
	["Часовой пояс", "День"],
	["Вебсайт", "в разработке"],
	["Правила", "Дюп, читы, багоюз<br />нарушение игрового процесса<br />бан на месяц"],
	["Коммуникация", "Голосовой чат работает!<br />будьте вежливы"],
	["Прочее", "Использовать софт нельзя!<br />Уважайте других"],
	["Администратор", "AlexBug онлайн c 16:30 по мск <br /> по всем вопросам пишите на почту<br />mrhaberbean@gmail.com"],
	["Мы в социальных сетях", "vk.com/alexmod.evolution"],
	["Бета тест", "Сервер находится в режиме бета тестирования <br /> все отчёты оставляйте в группе"],
	["", "Приятной игры!"]
];