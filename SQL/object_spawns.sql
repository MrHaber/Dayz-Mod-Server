-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: hivemind
-- ------------------------------------------------------
-- Server version	5.5.62-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `object_spawns`
--

DROP TABLE IF EXISTS `object_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_spawns` (
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` longtext,
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  `MapID` varchar(255) NOT NULL DEFAULT '',
  `Last_changed` int(10) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`,`MapID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_spawns`
--

LOCK TABLES `object_spawns` WRITE;
/*!40000 ALTER TABLE `object_spawns` DISABLE KEYS */;
INSERT INTO `object_spawns` VALUES (30728533,'UAZ_Unarmed_TK_EP1','[0,[12140.168, 12622.802,0]]','[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]','[]','',NULL),(26883451,'UAZ_Unarmed_TK_CIV_EP1','[0,[6279.4966, 7810.3691,0]]','[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]','[]','',NULL),(42231659,'UAZ_Unarmed_UN_EP1','[45,[6865.2432,2481.6943,0]]','[[[], []], [[\"30Rnd_556x45_StanagSD\"], [5]], [[], []]]','[]','',NULL),(30507947,'UAZ_RU','[157,[3693.0386, 5969.1489,0]]','[[[], []], [[\"HandGrenade_west\"], [2]], [[], []]]','[]','',NULL),(25844760,'UAZ_Unarmed_TK_CIV_EP1','[20,[13264.081,12167.432,0]]','[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]','[]','',NULL),(37699964,'UAZ_Unarmed_TK_CIV_EP1','[223,[4817.6572, 2556.5034,0]]','[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]','[]','',NULL),(10965544,'UAZ_Unarmed_TK_EP1','[337,[8120.3057,9305.4912,0]]','[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]','[]','',NULL),(41727833,'ATV_US_EP1','[337,[3312.2793,11270.755,0]]','[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]','[]','',NULL),(75742533,'ATV_US_EP1','[50,[3684.0366, 5999.0117,0]]','[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]','[]','',NULL),(53529173,'ATV_CZ_EP1','[202,[11464.035, 11381.071,0]]','[[[], []], [[\"Skin_Camo1_DZ\", \"ItemCompass\"], [1, 1]], [[], []]]','[]','',NULL),(40418266,'ATV_US_EP1','[253,[11459.299,11386.546,0]]','[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]','[]','',NULL),(41503818,'ATV_CZ_EP1','[335,[8856.8359,2893.7903,0]]','[[[], []], [[\"Skin_Camo1_DZ\", \"ItemCompass\"], [1, 1]], [[], []]]','[]','',NULL),(86264294,'SkodaBlue','[353,[12869.565,4450.4077,0]]','[[[], []], [[\"ItemWatch\", \"ItemKnife\"], [1, 1]], [[], []]]','[]','',NULL),(6810018,'Skoda','[223,[6288.416, 7834.3521,0]]','[[[\"Binocular\"], [1]], [[], []], [[\"CZ_VestPouch_EP1\"], [1]]]','[]','',NULL),(75257214,'SkodaGreen','[306,[8125.7075,3166.3708,0]]','[[[], []], [[\"Item5Matchbox\", \"ItemMap\"], [1, 1]], [[], []]]','[]','',NULL),(55856021,'ATV_US_EP1','[284,[8854.9082,2891.5762,0]]','[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]','[]','',NULL),(53508464,'TT650_Ins','[291,[11945.78,9099.3633,0]]','[[[], []], [[\"ItemJerrycan\"], [1]], [[], []]]','[[\"motor\",1]]','',NULL),(99974261,'TT650_TK_EP1','[151,[6592.686,2906.8245,0]]','[[[], []], [[\"PartGeneric\"], [1]], [[], []]]','[[\"motor\",1]]','',NULL),(39345918,'TT650_TK_CIV_EP1','[372,[8762.8516, 11727.877,0]]','[[[], []], [[\"PartWheel\"], [1]], [[], []]]','[[\"motor\",1]]','',NULL),(96806808,'TT650_TK_CIV_EP1','[52,[8713.4893, 7103.0518,0]]','[[[], []], [[\"PartWheel\"], [1]], [[], []]]','[[\"motor\",1]]','',NULL),(65996290,'Old_bike_TK_CIV_EP1','[50,[8040.6777, 7086.5356,0]]','[]','[]','',NULL),(39561031,'Old_bike_TK_CIV_EP1','[316,[7943.5068,6988.1763,0]]','[]','[]','',NULL),(99816288,'Old_bike_TK_INS_EP1','[201,[8070.6958, 3358.7793,0]]','[]','[]','',NULL),(80398351,'Old_bike_TK_INS_EP1','[179,[3474.3989, 2562.4915,0]]','[]','[]','',NULL),(2542893,'Old_bike_TK_INS_EP1','[236,[1773.9318,2351.6221,0]]','[]','[]','',NULL),(71519415,'Old_bike_TK_CIV_EP1','[236,[3699.9189,2474.2119,0]]','[]','[]','',NULL),(49968400,'Old_bike_TK_CIV_EP1','[73,[8350.0947, 2480.542,0]]','[]','[]','',NULL),(35283758,'Old_bike_TK_INS_EP1','[35,[8345.7227, 2482.6855,0]]','[]','[]','',NULL),(26513596,'Old_bike_TK_CIV_EP1','[23,[3203.0916, 3988.6379,0]]','[]','[]','',NULL),(26716708,'Old_bike_TK_INS_EP1','[191,[2782.7134,5285.5342,0]]','[]','[]','',NULL),(54042757,'Old_bike_TK_INS_EP1','[155,[8680.75,2445.5315,0]]','[]','[]','',NULL),(90063662,'Old_bike_TK_CIV_EP1','[155,[12158.999,3468.7563,0]]','[]','[]','',NULL),(88190045,'Old_bike_TK_INS_EP1','[250,[11984.01,3835.9231,0]]','[]','[]','',NULL),(70759242,'Old_bike_TK_CIV_EP1','[255,[10153.068,2219.3547,0]]','[]','[]','',NULL),(89226080,'UH1H_2_DZ','[60,[11279.154,4296.0205,0]]','[[[], []], [[\"ItemSodaMtngreen\",\"ItemSodaMtngreenEmpty\"], [1, 2]], [[], []]]','[]','',NULL),(33852678,'UH1H_DZ','[133,[4211.8789,10735.168,0]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(1585150,'UH1H_DZ','[52,[6874.0503,11432.864,0]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(6367723,'UH1H_DZ','[58,[10571.7,2220.3101,0.0015564]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(27083167,'UH1H_DZ','[359,[6377.8799,2757.8899,-0.048767101]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(16312671,'hilux1_civil_3_open','[344,[2045.3989,7267.4165,0]]','[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]','[]','',NULL),(313856,'hilux1_civil_3_open','[133,[8310.9902, 3348.3579,0]]','[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]','[]','',NULL),(52631272,'hilux1_civil_3_open','[124,[11309.963, 6646.3989,0]]','[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]','[]','',NULL),(62214795,'hilux1_civil_3_open','[6,[11240.744, 5370.6128,0]]','[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]','[]','',NULL),(53180164,'Ikarus_TK_CIV_EP1','[230,[3762.5764,8736.1709,0]]','[[[], []], [[\"ItemWatch\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]','[]','',NULL),(79256439,'Ikarus','[279,[10628.433,8037.8188,0]]','[[[], []], [[\"PartWheel\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]','[]','',NULL),(36741707,'Ikarus','[245,[4580.3203,4515.9282,0]]','[[[], []], [[\"PartWheel\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]','[]','',NULL),(45939219,'Ikarus_TK_CIV_EP1','[333,[6040.0923,7806.5439,0]]','[[[], []], [[\"ItemWatch\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]','[]','',NULL),(19470979,'Ikarus','[76,[10314.745, 2147.5374,0]]','[[[], []], [[\"PartWheel\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]','[]','',NULL),(59537240,'Ikarus_TK_CIV_EP1','[59,[6705.8887, 2991.9358,0]]','[[[], []], [[\"ItemWatch\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]','[]','',NULL),(39273268,'Tractor','[195,[9681.8213,8947.2354,0]]','[[[], []], [[\"ItemWire\", \"ItemJerrycan\"], [1, 1]], [[], []]]','[]','',NULL),(17754622,'Tractor','[262,[3825.1318,8941.4873,0]]','[[[], []], [[\"ItemWire\", \"ItemJerrycan\"], [1, 1]], [[], []]]','[]','',NULL),(70953310,'Tractor','[19,[11246.52, 7534.7954,0]]','[[[], []], [[\"ItemWire\", \"ItemJerrycan\"], [1, 1]], [[], []]]','[]','',NULL),(1502689,'S1203_TK_CIV_EP1','[19,[11066.828,7915.2275,0]]','[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]','[]','',NULL),(94653519,'S1203_TK_CIV_EP1','[352,[12058.555,3577.8667,0]]','[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]','[]','',NULL),(68759530,'S1203_TK_CIV_EP1','[218,[11940.854, 8872.8389,0]]','[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]','[]','',NULL),(59837095,'S1203_TK_CIV_EP1','[346,[13386.471,6604.0098,0]]','[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]','[]','',NULL),(92906892,'V3S_Civ','[178,[13276.482, 6098.4463,0]]','[[[\"MR43\"], [1]], [[\"PartEngine\"], [1]], [[], []]]','[]','',NULL),(85023176,'UralCivil','[338,[1890.9952,12417.333,0]]','[[[], []], [[\"PartWheel\", \"ItemToolbox\", \"ItemTankTrap\"], [1, 1, 1]], [[], []]]','[]','',NULL),(46395206,'car_hatchback','[226,[1975.1283, 9150.0195,0]]','[[[\"LeeEnfield\"], [1]], [[\"5x_22_LR_17_HMR\"], [3]], [[], []]]','[]','',NULL),(76906508,'car_hatchback','[315,[7429.4849,5157.8682,0]]','[[[\"LeeEnfield\"], [1]], [[\"5x_22_LR_17_HMR\"], [3]], [[], []]]','[]','',NULL),(45346927,'Fishing_Boat','[315,[8317.2676,2348.6055,0]]','[]','[[\"motor\",1]]','',NULL),(96015113,'Fishing_Boat','[315,[13222.181,10015.431,0]]','[]','[[\"motor\",1]]','',NULL),(44034787,'PBX','[55,[13454.882, 13731.796,0]]','[[[], []], [[\"ItemFlashlightRed\"], [1]], [[\"DZ_Backpack_EP1\"], [1]]]','[[\"motor\",1]]','',NULL),(32128600,'Smallboat_1','[245,[14417.589,12886.104,0]]','[]','[[\"motor\",1]]','',NULL),(28538641,'Smallboat_1','[268,[13098.13, 8250.8828,0]]','[]','[[\"motor\",1]]','',NULL),(46307410,'Volha_2_TK_CIV_EP1','[205,[9731.1514,8937.7998,0]]','[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]','[]','',NULL),(45921132,'Volha_1_TK_CIV_EP1','[337,[9715.0352,6522.8286,0]]','[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanBakedBeans\"], [3, 3]], [[], []]]','[]','',NULL),(90683431,'Volha_1_TK_CIV_EP1','[241,[2614.0862,5079.6357,0]]','[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanBakedBeans\"], [3, 3]], [[], []]]','[]','',NULL),(15653764,'Volha_2_TK_CIV_EP1','[18,[10827.634, 2701.5688,0]]','[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]','[]','',NULL),(6218531,'Volha_1_TK_CIV_EP1','[222,[5165.7231,2375.7642,0]]','[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanBakedBeans\"], [3, 3]], [[], []]]','[]','',NULL),(84131366,'Volha_2_TK_CIV_EP1','[207,[1740.8503,3622.6938,0]]','[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]','[]','',NULL),(2001240,'SUV_DZ','[266,[9157.8408, 11019.819,0]]','[[[], []], [[\"Pipebomb\"], [1]], [[], []]]','[]','',NULL),(57612106,'car_sedan','[222,[12360.468, 10817.882,0]]','[[[], []], [[\"ItemFlashlight\", \"ItemMap\"], [1, 1]], [[\"DZ_ALICE_Pack_EP1\"], [1]]]','[]','',NULL),(82056815,'UH1H_DZ','[310,[6365.7402,7795.3501,-0.048767101]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(37447759,'UH1H_DZ','[14,[13308.511,3227.0215,0]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(41068355,'UH1H_DZ','[265,[7695.0356,3991.2056,0]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(92998502,'UH1H_DZ','[22,[12009.904,12636.732,0]]','[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]','[]','',NULL),(41787450,'AH6X_DZ','[2,[12010.7,12637.2,0]]','[[[\"Binocular\"],[1]],[[\"TrashJackDaniels\",\"FoodCanFrankBeans\"],[1,1]],[[],[]]]','[]','',NULL),(29941745,'AH6X_DZ','[113,[6880.2007,11454.291,0]]','[[[\"Binocular\"],[1]],[[\"TrashJackDaniels\",\"FoodCanFrankBeans\"],[1,1]],[[],[]]]','[]','',NULL),(24346379,'Mi17_DZ','[156,[7660.271,3982.0063,0]]','[[[],[]],[[\"ItemSodaMtngreen\"],[2]],[[],[]]]','[]','',NULL),(31906663,'Mi17_DZ','[-188,[7220.6538,9116.3428,0]]','[[[],[]],[[\"ItemSodaMtngreen\"],[2]],[[],[]]]','[]','',NULL),(86494184,'Mi17_DZ','[4,[13584.044,3199.9648,0]]','[[[],[]],[[\"ItemSodaMtngreen\"],[2]],[[],[]]]','[]','',NULL),(36750931,'AN2_DZ','[252,[4530.52,10785.1,0]]','[]','[]','',NULL),(24272110,'BAF_Offroad_D','[162,[3702.04,6044.3101,0]]','[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]','[]','',NULL),(11107760,'BAF_Offroad_D','[141,[11953.279,9107.3896,0]]','[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]','[]','',NULL),(82722474,'BAF_Offroad_W','[71,[3708.5,5999.4199,0]]','[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]','[]','',NULL),(80289092,'BAF_Offroad_W','[322,[7201.5181,3034.3232,0]]','[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]','[]','',NULL),(53278043,'MH6J_DZ','[122,[10137.868,12049.376,-6.1035156e-005]]','[[[],[]],[[\"1Rnd_Smoke_M203\", \"7Rnd_45ACP_1911\", \"30Rnd_556x45_StanagSD\", \"200Rnd_556x45_M249\", \"FoodCanPasta\", \"15Rnd_W1866_Slug\", \"5x_22_LR_17_HMR\", \"15Rnd_9x19_M9SD\", \"17Rnd_9x19_glock17\", \"100Rnd_762x51_M240\", \"6Rnd_45ACP\", \"8Rnd_9x18_Makarov\"],[2,1,1,1,1,1,1,1,1,1,1,1]],[[\"DZ_Backpack_EP1\"],[1]]]','[]','',NULL),(25522943,'HMMWV_DZ','[0,[13441.056,12003.912,4.5776367e-005]]','[[[\"AK_47_M\"],[1]],[[\"PartWoodPile\", \"ItemBandage\", \"HandGrenade_west\", \"6Rnd_45ACP\", \"ItemEpinephrine\", \"8Rnd_B_Beneli_74Slug\", \"HandChemBlue\", \"8Rnd_B_Beneli_Pellets\", \"PartEngine\", \"17Rnd_9x19_glock17\", \"ItemTent\"],[1,2,1,1,1,1,1,1,1,1,1]],[[\"DZ_CivilBackpack_EP1\"],[1]]]','[]','',NULL),(32124125,'AN2_DZ','[32,[12492,12515,0]]','[]','[]','',NULL),(12466104,'Pickup_PK_INS','[12,[4662.13,10436,-3]]','[[[],[]],[[\"HandGrenade_West\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\"],[5,1,6]],[[],[]]]','[]','',NULL),(12700771,'Pickup_PK_INS','[-24,[7006.14,7717.57,-6]]','[[[],[]],[[\"HandGrenade_West\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\"],[5,1,6]],[[],[]]]','[]','',NULL),(36533865,'Offroad_DSHKM_INS','[363,[5337.62,8656.55,0]]','[[[],[]],[[],[]],[[],[]]]','[]','',NULL),(16462967,'Offroad_DSHKM_INS','[-169,[4625.61,9675.62,0]]','[[[],[]],[[],[]],[[],[]]]','[]','',NULL);
/*!40000 ALTER TABLE `object_spawns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 19:41:19
