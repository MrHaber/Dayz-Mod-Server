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
-- Table structure for table `vehicle_spawns`
--

DROP TABLE IF EXISTS `vehicle_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_spawns` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Classname` varchar(255) NOT NULL,
  `Chance` double NOT NULL,
  `MaxNum` int(11) NOT NULL DEFAULT '1',
  `Location` int(11) NOT NULL,
  `Inventory` int(11) DEFAULT NULL,
  `Hitpoints` int(11) DEFAULT NULL,
  `MinDamage` double NOT NULL,
  `MaxDamage` double NOT NULL,
  `MinFuel` double NOT NULL,
  `MaxFuel` double NOT NULL,
  `MaxWeapons` int(11) NOT NULL,
  `MaxMagazines` int(11) NOT NULL,
  `MaxBackpacks` int(11) NOT NULL,
  `CleanupTime` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Classname` (`Classname`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_spawns`
--

LOCK TABLES `vehicle_spawns` WRITE;
/*!40000 ALTER TABLE `vehicle_spawns` DISABLE KEYS */;
INSERT INTO `vehicle_spawns` VALUES (1,'UAZ_Unarmed_TK_EP1',0.7,2,7,NULL,1,0.1,0.6,0.2,0.8,1,3,0,300),(2,'UAZ_Unarmed_UN_EP1',0.59,2,10,NULL,1,0.1,0.6,0.2,0.8,1,0,0,300),(3,'UAZ_RU',0.59,1,7,NULL,1,0.1,0.6,0.2,0.8,1,2,0,300),(4,'UAZ_Unarmed_TK_CIV_EP1',0.59,3,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(5,'SkodaBlue',0.68,2,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(6,'Skoda',0.68,2,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(7,'SkodaGreen',0.68,2,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(8,'ATV_US_EP1',0.7,6,0,NULL,1,0.1,0.6,0.2,0.8,0,0,0,120),(9,'TT650_Ins',0.72,1,1,NULL,2,0.1,0.6,0.2,0.8,0,0,0,120),(10,'TT650_TK_CIV_EP1',0.72,3,1,NULL,2,0.1,0.6,0.2,0.8,0,0,0,120),(11,'Old_bike_TK_CIV_EP1',0.64,8,6,NULL,NULL,0.1,0.6,0,0,0,0,0,60),(12,'hilux1_civil_3_open',0.59,3,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(13,'Ikarus',0.59,2,11,NULL,1,0.1,0.6,0.2,0.8,0,0,0,180),(14,'Ikarus_TK_CIV_EP1',0.59,2,11,NULL,1,0.1,0.6,0.2,0.8,0,0,0,180),(15,'Tractor',0.7,3,12,NULL,1,0.1,0.6,0.2,0.8,0,0,0,60),(16,'S1203_TK_CIV_EP1',0.69,2,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(17,'V3S_Civ',0.66,2,13,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(18,'UralCivil',0.59,2,13,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(19,'car_hatchback',0.73,2,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(20,'Fishing_Boat',0.61,1,14,NULL,2,0.1,0.6,0.2,0.8,0,0,0,300),(21,'PBX',0.59,1,14,NULL,2,0.1,0.6,0.2,0.8,0,0,0,300),(22,'Smallboat_1',0.59,2,14,NULL,2,0.1,0.6,0.2,0.8,0,0,0,300),(23,'Volha_1_TK_CIV_EP1',0.71,3,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(24,'Volha_2_TK_CIV_EP1',0.71,3,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(25,'SUV_DZ',0.59,1,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(26,'car_sedan',0.59,2,10,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(27,'UH1H_DZ',0.59,2,2,NULL,3,0.1,0.6,0.2,0.8,0,0,0,900),(28,'AH6X_DZ',0.48,3,3,NULL,4,0.1,0.6,0.2,0.8,0,0,0,900),(29,'Mi17_DZ',0.49,1,4,NULL,4,0.1,0.6,0.2,0.8,0,0,0,900),(30,'AN2_DZ',0.6,1,5,NULL,NULL,0,0,0.2,0.4,0,0,0,900),(31,'BAF_Offroad_D',0.54,2,7,NULL,5,0.1,0.6,0.2,0.8,0,0,0,300),(32,'BAF_Offroad_W',0.54,2,7,NULL,5,0.1,0.6,0.2,0.8,0,0,0,300),(33,'MH6J_DZ',0.48,2,3,NULL,3,0.1,0.6,0.2,0.8,0,0,0,900),(34,'HMMWV_DZ',0.21,2,7,NULL,1,0.1,0.6,0.2,0.8,0,0,0,300),(35,'Pickup_PK_INS',0.1,2,7,NULL,6,0.1,0.6,0.2,0.8,0,0,0,300),(36,'Offroad_DSHKM_INS',0.07,1,7,NULL,6,0.1,0.6,0.2,0.8,0,0,0,300),(37,'AN2_2_DZ',1,1,5,NULL,NULL,0,0,0.2,0.6,0,0,0,900),(38,'UH1H_2_DZ',0.3,1,2,NULL,3,0.1,0.6,0.2,0.8,0,0,0,900);
/*!40000 ALTER TABLE `vehicle_spawns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 19:41:22
