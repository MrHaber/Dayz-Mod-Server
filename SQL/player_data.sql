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
-- Table structure for table `player_data`
--

DROP TABLE IF EXISTS `player_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_data` (
  `playerID` int(11) NOT NULL DEFAULT '0',
  `playerUID` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `playerName` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  KEY `playerID` (`playerID`),
  KEY `playerUID` (`playerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_data`
--

LOCK TABLES `player_data` WRITE;
/*!40000 ALTER TABLE `player_data` DISABLE KEYS */;
INSERT INTO `player_data` VALUES (0,'76561198963192604','AlexBug',0,0),(0,'76561198029099790','Tokar',0,0),(0,'76561198208773688','ALE',0,0),(0,'76561198137030955','sks177',0,0),(0,'76561198037111513','Yankee',0,0),(0,'76561199010696984','4myrka',0,0),(0,'76561198190083963','79088',0,0),(0,'76561198111690014','Rock',0,0),(0,'76561198071348156','Artem',0,0),(0,'76561198050589792','PODvodnik',0,0),(0,'76561198041666269','Sibirico',0,0),(0,'76561198309484935','Oldman',0,0),(0,'76561198220710424','Kilgar',0,0),(0,'76561198137938103','PLAYER 1',0,0),(0,'76561198141006172','ayash',0,0),(0,'76561198041543930','woron',0,0),(0,'76561198051686780','BawdyRamirezi',0,0),(0,'76561198210799197','CMEX',0,0),(0,'76561198187502027','ASEACK',0,0),(0,'76561198254579676','Z1oy_Bear',0,0),(0,'76561198123106139','Bagdasar',0,0),(0,'76561198217578685','killed',0,0),(0,'76561198135725890','Odeswin',0,0),(0,'76561198058990914','clife',0,0),(0,'76561198043577173','slek',0,0),(0,'76561199010320874','yangel',0,0),(0,'76561199033016597','Daniel',0,0),(0,'76561198114648715','Chicco',0,0),(0,'76561198273419200','karas.pl',0,0),(0,'76561198158745900','Denis',0,0),(0,'76561198827477132','jekakingolc',0,0),(0,'76561198019548994','Owl',0,0),(0,'76561198003451812','ZoorG',0,0),(0,'76561198885467802','NIDZHE',0,0),(0,'76561198121297489','Sh@z@M',0,0),(0,'76561199025910716','giyck',0,0),(0,'76561198016093624','User',0,0),(0,'76561198348318225','AC_MILAN',0,0),(0,'76561198055056077','Spiderman',0,0),(0,'76561198839995470','Bob Lee Swagger',0,0),(0,'76561198424372989','Ice',0,0),(0,'76561198036882708','brave',0,0),(0,'76561198253014850','ZeleHbIu',0,0),(0,'76561198993358880','Denisuella',0,0),(0,'76561198441480388','Vano',0,0),(0,'76561198356986003','888',0,0),(0,'76561198292579295','corne',0,0),(0,'76561198111441393','PegasStrain',0,0),(0,'76561198253089181','DOGEsin',0,0),(0,'76561199049362844','Bullet',0,0),(0,'76561197998776516','HOPDuKC',0,0),(0,'76561198182309262','Wrx_STI',0,0),(0,'76561198036145228','Admin',0,0),(0,'76561198359688843','Celebrity',0,0),(0,'76561198179958409','Muravey',0,0),(0,'76561198078624394','KLblK',0,0),(0,'76561198327239382','Jane Eyre',0,0),(0,'76561198318512808','NiKiT0$',0,0),(0,'76561198261577687','Police of mod',0,0),(0,'76561198058859785','Ivan',0,0),(0,'76561198126406305','213',0,0),(0,'76561199036812420','Old Nomad',0,0),(0,'76561198120412758','THE Sivis',0,0),(0,'76561198287305280','Sochka',0,0),(0,'76561198970701627','Svarog',0,0),(0,'76561198274112267','tipo4ek',0,0),(0,'76561198052409156','KING',0,0),(0,'76561198342026364','AXEL',0,0),(0,'76561198324797515','Zhentoss',0,0),(0,'76561198056568586','GROOVEX',0,0),(0,'76561198143001846','drabi',0,0),(0,'76561198152876862','Niyaz',0,0),(0,'76561198992657680','jan',0,0),(0,'76561198116630123','Riley Freeman',0,0),(0,'76561198081964668','k',0,0),(0,'76561198074585457','nexor',0,0),(0,'76561198187757231','Dante',0,0),(0,'76561198071554884','belia',0,0),(0,'76561198016287077','Den',0,0),(0,'76561198254247808','ilja7',0,0),(0,'76561198085678683','kostya',0,0),(0,'76561198293079456','Lapeno',0,0),(0,'76561198930002957','Gizzi',0,0),(0,'76561198060100765','coolh',0,0),(0,'76561197996764132','LeeSun',0,0),(0,'76561198377055448','Bullet',0,0),(0,'76561198051704741','ZerGich',0,0),(0,'76561199012841571','Tolisas',0,0),(0,'76561198118957710','666',0,0),(0,'76561198148154331','it\'s me',0,0),(0,'76561198297214218','2pac',0,0),(0,'76561198086839022','Jacket',0,0),(0,'76561198133091855','va1lty',0,0),(0,'76561198155179953','Mihail',0,0),(0,'76561198861138393','Alexandr',0,0),(0,'76561198316502233','kiril',0,0),(0,'76561198138910663','PBVIMKO',0,0),(0,'76561198160496270','Maximer2020',0,0),(0,'76561198106470461','kiril',0,0),(0,'76561198850244849','Azon00012',0,0),(0,'76561198062503468','viatcheslav',0,0),(0,'76561198144720832','Eeemsky',0,0),(0,'76561199053549196','Rybik126',0,0),(0,'76561198161654161','CN',0,0),(0,'76561198352270115','Master_fas',0,0),(0,'76561199012577942','lexx',0,0),(0,'76561198073345979','serja',0,0),(0,'76561198078756796','HP',0,0),(0,'76561198439397738','adolf2014',0,0),(0,'76561198155876925','MaTiSS',0,0),(0,'76561198128688713','WellDone',0,0),(0,'76561198202068813','NoZ',0,0),(0,'76561198399100431','Dreamwordsstar',0,0),(0,'76561198084901847','SapoG_v_KotaX',0,0),(0,'76561198118489995','Barada',0,0),(0,'76561198864878869','User',0,0),(0,'76561198069477138','ander',0,0),(0,'76561198202814424','Reptiloyd',0,0),(0,'76561198283707338','VanYa',0,0),(0,'76561198163113886','Fox',0,0),(0,'76561198058298369','Gian-Luca',0,0),(0,'76561198027066741','Veloni',0,0),(0,'76561198988753552','ANC',0,0),(0,'76561198236561868','Gai',0,0),(0,'76561198074520983','Rado',0,0),(0,'76561198002144048','Dron',0,0),(0,'76561198277605759','Maxym',0,0),(0,'76561198092553384','ADM',0,0),(0,'76561198014645784','nobbyznutz',0,0),(0,'76561198080104154','JV',0,0),(0,'76561198314574000','User',0,0),(0,'76561198025798905','MEDVED3',0,0),(0,'76561198312340683','azeno',0,0),(0,'76561198165070807','kindn',0,0),(0,'76561198080549820','NILL',0,0),(0,'76561197961205520','kes',0,0),(0,'76561198034761475','MoHaX',0,0),(0,'76561198160581545','Morgan',0,0),(0,'76561198072259252','User',0,0),(0,'76561198091549619','Hotri',0,0),(0,'76561198134977501','Forest',0,0),(0,'76561199055642070','Ded100LeT',0,0),(0,'76561198118222962','Pinjee',0,0),(0,'76561198039168517','AzFox',0,0),(0,'76561198862471572','Danam',0,0),(0,'76561198862208756','denis',0,0),(0,'76561198123395994','Gorgeous',0,0),(0,'76561199046423697','garry',0,0),(0,'76561198189090455','Jared',0,0),(0,'76561198057575253','BIGLONGDICK',0,0),(0,'76561198059046108','SlayzZ',0,0),(0,'76561198044270202','SAMATIK',0,0),(0,'76561198206766480','StalkerNik',0,0),(0,'76561198077428017','PUNISHER',0,0),(0,'76561198338255614','Filip',0,0),(0,'76561198815936906','TROMBABOMBA',0,0),(0,'76561198082021331','Zinet',0,0),(0,'76561198306807827','AspeD_1',0,0),(0,'76561199046356250','PLAYER 1',0,0),(0,'76561198134354886','arnis',0,0),(0,'76561198329204897','HomePC',0,0),(0,'76561198077221781','Neolani',0,0),(0,'76561198142493459','Seb',0,0),(0,'76561198087683233','Creepy Clown',0,0),(0,'76561198127109923','dima4',0,0),(0,'76561198047511549','Fraser',0,0),(0,'76561198333449434','Capral N',0,0),(0,'76561198057564899','adamm',0,0),(0,'76561198132872367','Uncle Joe ',0,0),(0,'76561198987445405','SKIDROW',0,0),(0,'76561198107195186','BlackShedl',0,0),(0,'76561198108439280','User',0,0),(0,'76561198089054922','WAITE POWER',0,0),(0,'76561198177131207','jason',0,0),(0,'76561198130119885','Baris',0,0),(0,'76561198214151052','Borz',0,0),(0,'76561198152395432','Nova',0,0),(0,'76561198276075227','Theodor Ystred',0,0),(0,'76561198017962217','D0ubleDay',0,0),(0,'76561198374620288','Broken Owl',0,0),(0,'76561198054719974','user',0,0),(0,'76561198046237694','User',0,0),(0,'76561198098851824','Acer',0,0),(0,'76561198865833301','Asus',0,0),(0,'76561198092070932','artem',0,0),(0,'76561198308906686','river',0,0),(0,'76561198139588251','Archandel',0,0),(0,'76561198117399883','Kravalis',0,0),(0,'76561198259627384','ALEXY',0,0),(0,'76561198885272221','Toby Radriges',0,0),(0,'76561198058317203','Dzhoni',0,0),(0,'76561198814590307','Moty',0,0),(0,'76561198148635302','Carner ',0,0),(0,'76561198047611517','barto',0,0),(0,'76561198360223639','Denis',0,0),(0,'76561198052127388','Scoch',0,0),(0,'76561198072231812','Kankan',0,0),(0,'76561198889171288','volux',0,0),(0,'76561198869186558','GizY',0,0),(0,'76561198131120334','zhenuariy',0,0),(0,'76561198075509762','edgar',0,0),(0,'76561198091137242','Nemo',0,0),(0,'76561198171823839','dimam',0,0),(0,'76561198211951261','fragm',0,0),(0,'76561198985640287','Maksimka',0,0),(0,'76561198824250966','beowolf',0,0),(0,'76561198086542257','KoxuSvettel',0,0),(0,'76561198135084554','Mariya',0,0),(0,'76561198935937981','spenc',0,0),(0,'76561198242463578','PLAYER 1',0,0),(0,'76561198106394768','Mihael',0,0),(0,'76561198083755185','Kolanist123',0,0),(0,'76561198154995404','Marat',0,0),(0,'76561199002874258','User',0,0),(0,'76561198183585283','vadimon',0,0),(0,'76561198133854141','Priest',0,0),(0,'76561198075737064','Kricks',0,0),(0,'76561198156062817','Hiltozzz',0,0),(0,'76561198868527270','Admin',0,0),(0,'76561198350320854','Rare',0,0),(0,'76561198422892404','WLOP',0,0),(0,'76561198393784721','dankr',0,0),(0,'76561198057855264','Jackie',0,0),(0,'76561198809675674','42077',0,0),(0,'76561198035645966','TraX',0,0),(0,'76561198140178257','dok19',0,0),(0,'76561198856203953','ALEX',0,0),(0,'76561198301307430','Shatos',0,0),(0,'76561198350602108','Nick',0,0),(0,'76561198120787991','ShadowNova666',0,0),(0,'76561198298196799','User',0,0),(0,'76561198176121801','LADAN',0,0),(0,'76561198976182836','andry',0,0),(0,'76561198256953637','Mikos',0,0),(0,'76561198085740583','OldPilot',0,0),(0,'76561198042951102','nice',0,0),(0,'76561198392177020','CripaCrip',0,0),(0,'76561198994582762','Progressive',0,0),(0,'76561198340048269','RedX',0,0),(0,'76561198082586142','admin (2)',0,0),(0,'76561198856456280','FiJIOSOF',0,0),(0,'76561198282426151','Desire©',0,0),(0,'76561198962439071','carrefour',0,0),(0,'76561198065703970','Sleep',0,0),(0,'76561198871808695','Faraon',0,0),(0,'76561198083484072','stiflervk',0,0),(0,'76561198093770543','mamayafrizmag',0,0),(0,'76561198136901469','Orfimorf',0,0),(0,'76561198132344050','Zahar',0,0),(0,'76561198123596161','Sans',0,0),(0,'76561199055987151','Deykyn',0,0),(0,'76561198033787709','4eRtiJLo',0,0),(0,'76561198142121192','SirCravendale',0,0),(0,'76561198016232278','Kayot',0,0),(0,'76561198347523036','franklin',0,0),(0,'76561198198646750','Spooky',0,0),(0,'76561198120906713','WelcomeReality',0,0),(0,'76561198158779067','Danila',0,0),(0,'76561198051540767','BooBs',0,0),(0,'76561198125797136','GOGI',0,0),(0,'76561198161578681','n0way',0,0),(0,'76561199014524189','Torlo',0,0),(0,'76561198050413970','Eakapong Sri',0,0),(0,'76561197986638743','AUTOZAPCHASTI',0,0),(0,'76561198161244542','Friedhelm',0,0),(0,'76561198299845689','Sora',0,0),(0,'76561198287110749','user',0,0),(0,'76561198060434915','Madruga',0,0),(0,'76561198162489409','DeD_KroT',0,0),(0,'76561198197198707','ger666',0,0),(0,'76561198083107424','Baykalko',0,0),(0,'76561198857840757','Foxi',0,0),(0,'76561198124523329','MAKSIM',0,0),(0,'76561198120928381','Reezy',0,0),(0,'76561198416966499','IvanIvanov',0,0),(0,'76561198129339022','bradice',0,0),(0,'76561198042650928','LadyRed',0,0),(0,'76561198984677525','Tanatos',0,0),(0,'76561198122034010','Van',0,0),(0,'76561198371306633','Just_Survive',0,0),(0,'76561198208619533','EXTREMUM',0,0),(0,'76561198348823588','Modest',0,0),(0,'76561199035396215','MJkiller-_-1234',0,0),(0,'76561198256871084','ksavie',0,0),(0,'76561198401812349','Mik',0,0),(0,'76561198081220102','Manuel',0,0),(0,'76561198126831600','Thomas',0,0),(0,'76561198260027995','morrec',0,0),(0,'76561198123853697','benit',0,0),(0,'76561199017360649','PLAYER 1',0,0),(0,'76561198023523877','MoiZio',0,0),(0,'76561198134796890','Mikey',0,0),(0,'76561198199753321','GAZ',0,0),(0,'76561198258896062','Siamak',0,0),(0,'76561198309034593','Purple',0,0),(0,'76561198066149984','hatemepls',0,0),(0,'76561199064122278','HunterPro40',0,0),(0,'76561198220358041','Karpych',0,0),(0,'76561198919910766','tAMIRLAN',0,0),(0,'76561198113529606','Inung',0,0),(0,'76561198176302651','fill1994',0,0),(0,'76561198309022944','FanFan_TyLPaN',0,0),(0,'76561198112138873','cybra',0,0),(0,'76561198236906602','BadCommi',0,0),(0,'76561198414204713','HONOR32',0,0),(0,'76561198170668238','Grievous',0,0),(0,'76561198393268097','RaspyRaptor',0,0),(0,'76561198126293635','frost',0,0),(0,'76561198276891415','SGT LOPEZ',0,0),(0,'76561198121393393','Kokos',0,0),(0,'76561198075350563','Oopsarka',0,0),(0,'76561198036733552','Stone_Ebalay',0,0),(0,'76561198075432070','Wersit',0,0),(0,'76561198107600762','mutsis',0,0),(0,'76561198141340117','DIMA',0,0),(0,'76561198116823656','(S)olid',0,0),(0,'76561199062703734','Smitty',0,0),(0,'76561198068852657','renan',0,0),(0,'76561198044786838','BarrelFanatic6',0,0),(0,'76561198818297196','YaroslavP71',0,0),(0,'76561198333820704','babaika999',0,0),(0,'76561198027394356','Koruya',0,0),(0,'76561198173024541','wwe-w',0,0),(0,'76561197997516487','nooki',0,0),(0,'76561198081541463','Major',0,0),(0,'76561198209939292','Home',0,0),(0,'76561198825472287','seppe',0,0),(0,'76561198125204533','QuerlyLV',0,0),(0,'76561198231128116','martyn[RSA]',0,0),(0,'76561198081701242','REMBA',0,0),(0,'76561198068204065','Eemeli',0,0),(0,'76561198191517513','malah',0,0),(0,'76561198363096102','DamnShit',0,0),(0,'76561198906031749','4ekucT_}|{onuH',0,0),(0,'76561198968338696','SlayzeR',0,0),(0,'76561198021001494','Aleks999',0,0),(0,'76561197997942265','annek',0,0),(0,'76561198034136391','usuario',0,0),(0,'76561199054518819','Home',0,0),(0,'76561198041342996','d1e_mf',0,0),(0,'76561198064044423','zombieman',0,0),(0,'76561198123159476','Ivolando',0,0),(0,'76561198171276038','Lukraftt',0,0),(0,'76561198840029154','Wasanya111',0,0),(0,'76561198172831615','FET',0,0),(0,'76561198402980151','PC-2',0,0),(0,'76561198911717785','Leonid',0,0),(0,'76561198067983195','User',0,0),(0,'76561198136822248','FragMatrix [nb]',0,0),(0,'76561198131341449','Trivily',0,0),(0,'76561198118873383','Corban Dallas Multipass',0,0),(0,'76561198801321194','TM',0,0),(0,'76561198374133405','CYRAX',0,0),(0,'76561198116828684','Insane',0,0),(0,'76561198367372983','Ryzen',0,0),(0,'76561198061717821','Shiftace',0,0),(0,'76561199041136330','GazCamper',0,0),(0,'76561198049932599','Julius',0,0),(0,'76561198007767126','NasToy',0,0),(0,'76561198117824278','Bekas',0,0),(0,'76561198396171769','ZoXxii',0,0),(0,'76561198152359723','The Legend 127',0,0),(0,'76561199014203411','edmil',0,0),(0,'76561198268778772','joshua',0,0),(0,'76561198118528778','79126',0,0),(0,'76561198031482777','Rwdyp',0,0),(0,'76561198052390152','decro',0,0),(0,'76561198052442724','Barmaley',0,0),(0,'76561198111020736','pavel',0,0),(0,'76561199025096667','yoann CATG',0,0),(0,'76561198453645975','Xim',0,0),(0,'76561198023840990','xXHaseXx',0,0),(0,'76561198359792558','(OPG) SLAVYAN',0,0),(0,'76561198072484493','dsfdv',0,0),(0,'76561198143142025','Makc',0,0),(0,'76561198350921186','NAVAL',0,0),(0,'76561198202015768','BAD WOLF',0,0),(0,'76561198084474783','Hellboy',0,0),(0,'76561198202042376','Admin',0,0),(0,'76561198011801905','GDL',0,0),(0,'76561198126872797','Ventura',0,0),(0,'76561198119333357','difernon',0,0),(0,'76561199019186509','nikolai38rus',0,0),(0,'76561198069888304','Siewar8wirwaren8',0,0),(0,'76561198134076144','111',0,0),(0,'76561198225433560','Interbox',0,0),(0,'76561197973571716','Manuela',0,0),(0,'76561198366629671','Nemec',0,0),(0,'76561198106196065','Rick',0,0),(0,'76561198278977366','Ayur',0,0),(0,'76561198370468477','Vezelev',0,0),(0,'76561198124446814','Furby',0,0),(0,'76561198044478315','Erik',0,0),(0,'76561198166695481','NERV',0,0),(0,'76561198129188733','emperor',0,0);
/*!40000 ALTER TABLE `player_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 19:41:23
