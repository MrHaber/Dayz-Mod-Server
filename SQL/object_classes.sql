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
-- Table structure for table `object_classes`
--

DROP TABLE IF EXISTS `object_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Type` text NOT NULL,
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_classes`
--

LOCK TABLES `object_classes` WRITE;
/*!40000 ALTER TABLE `object_classes` DISABLE KEYS */;
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1','0.70',6,'0.05000','atv'),('car_hatchback','0.73',3,'0.05000','car'),('datsun1_civil_3_open','0.75',3,'0.05000','car'),('Fishing_Boat','0.61',1,'0.05000','largeboat'),('S1203_TK_CIV_EP1','0.69',1,'0.05000','bus'),('tractor','0.7',1,'0.05000','farmvehicle'),('BAF_Offroad_D','0.54',1,'0.05000','car'),('UAZ_Unarmed_TK_EP1','0.7',2,'0.05000','car'),('UH1H_DZ','0.59',1,'0.05000','helicopter'),('UralCivil2','0.67',1,'0.05000','truck'),('V3S_Civ','0.66',1,'0.05000','truck'),('Volha_2_TK_CIV_EP1','0.71',2,'0.05000','car'),('Ikarus','0.59',1,'0.05000','bus'),('ATV_US_EP1','0.70',5,'0.05000','atv'),('BAF_Offroad_W','0.54',1,'0.05000','car'),('car_sedan','0.59',1,'0.05000','car'),('hilux1_civil_1_open','0.59',1,'0.05000','car'),('hilux1_civil_2_covered','0.59',1,'0.05000','car'),('hilux1_civil_3_open','0.59',1,'0.05000','car'),('Ikarus_TK_CIV_EP1','0.59',1,'0.05000','bus'),('LandRover_TK_CIV_EP1','0.59',1,'0.05000','car'),('MH6J_EP1','0.32',1,'0.05000','helicopter'),('Old_bike_TK_CIV_EP1','0.64',4,'0.05000','bike'),('Old_bike_TK_INS_EP1','0.64',4,'0.05000','bike'),('PBX','0.59',1,'0.05000','smallboat'),('Skoda','0.68',4,'0.05000','car'),('SkodaBlue','0.68',2,'0.05000','car'),('SkodaGreen','0.68',1,'0.05000','car'),('Smallboat_1','0.59',2,'0.05000','mediumboat'),('Smallboat_2','0.59',2,'0.05000','mediumboat'),('SUV_DZ','0.59',1,'0.05000','car'),('TentStorage','0.59',0,'0.05000','tent'),('TT650_Ins','0.72',2,'0.05000','motorcycle'),('TT650_TK_CIV_EP1','0.72',1,'0.05000','motorcycle'),('TT650_TK_EP1','0.72',1,'0.05000','motorcycle'),('UAZ_INS','0.59',2,'0.05000','car'),('UAZ_RU','0.59',1,'0.05000','car'),('UAZ_Unarmed_TK_CIV_EP1','0.59',3,'0.05000','car'),('UAZ_Unarmed_UN_EP1','0.59',1,'0.05000','car'),('UralCivil','0.59',1,'0.05000','truck'),('Mi17_DZ','0.49',1,'0.05000','helicopter'),('AN2_DZ','1',2,'0.05000','plane'),('Hedgehog_DZ','0',0,'0','Hedgehog'),('Wire_cat1','0',0,'0','wire'),('Sandbag1_DZ','0',0,'0','Sandbag'),('AH6X_DZ','0.48',1,'0.05000','helicopter'),('datsun1_civil_1_open','0.59',2,'0.05000','car'),('Lada1_TK_CIV_EP1','0.59',3,'0.05000','car'),('M1030','0.58',2,'0.05000','motorcycle'),('SUV_TK_EP1','0.39',1,'0.05000','car'),('VolhaLimo_TK_CIV_EP1','0.49',1,'0.05000','car'),('Lada2','0.59',2,'0','car'),('hilux1_civil_3_open_EP1','0.59',3,'0','car'),('LandRover_CZ_EP1','0.59',3,'0','car'),('HMMWV_DZ','0.21',2,'0','car'),('MH6J_DZ','0.48',1,'0.05000','helicopter'),('StashSmall','0',0,'0','StashSmall'),('StashMedium','0',0,'0','StashMedium'),('Pickup_PK_INS','0.10',1,'0.42500','car');
/*!40000 ALTER TABLE `object_classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 19:41:15
