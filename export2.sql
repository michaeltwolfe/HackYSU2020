-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: HackYSU2020.mysql.pythonanywhere-services.com    Database: HackYSU2020$Recipes
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brand` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(1000) NOT NULL,
  `AMOUNT` decimal(65,2) DEFAULT '0.00',
  `GENERICID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `GENERICID` (`GENERICID`),
  CONSTRAINT `Brand_ibfk_1` FOREIGN KEY (`GENERICID`) REFERENCES `Generic` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES (1,'Crisco All-Vegetable Shortening',64.00,1),(2,'Domino Premium Pure Cane Granulated Sugar',46.00,5),(3,'Domino Brownulated Light Brown Sugar',52.00,6),(4,'Arm & Hammer Pure Baking Soda',12.00,7),(5,'Morton Kosher Salt Coarse',15.00,8),(6,'Gold Medal All-purpose Flour',126.00,4),(7,'Mccormick Pure Vanilla Extract',8.00,12),(8,'Dutch Farms Grade A Large Eggs',0.00,9),(9,'America\'s Choice Large Eggs',12.50,9),(10,'Amish Valley Sweet Cream Butter Unsalted',0.35,13),(11,'Gefen Baking Powder',0.00,11),(12,'Royal Baking Powder',4.95,11),(13,'Rumford Baking Powder Gluten Free',0.00,11),(14,'Featherweight Baking Powder',0.75,11),(15,'Mishpacha Baking Powder',0.00,11),(16,'Dr Oetker Baking Powder',0.00,11),(17,'Bob\'s Red Mill Baking Powder',0.00,11),(18,'Ahold Double Acting Baking Powder',0.00,11),(19,'Davis Double Acting Baking Powder',0.00,11),(20,'Kraft Calumet Double Acting Baking Powder',0.00,11),(21,'Argo Double Acting Baking Powder',0.00,11),(22,'Clabber Girl Baking Powder',3.00,11),(23,'Rumford Baking Powder',0.00,11),(24,'Granny Smith Apples',2.75,14),(25,'Fuji Apples',0.00,14),(26,'Water',1.00,15),(27,'McCormick Ground Cinnamon',6.00,16),(28,'Ahold Ground Cinnamon',0.00,16),(29,'Libby\'s 100% Pure Pumpkin',15.00,17),(30,'Ahold 100% Pure Pumpkin',0.00,17),(31,'Polar All Natural Pumpkin',0.00,17),(32,'Pacific Organic Pumpkin Puree',0.00,17),(33,'Farmers Market Pumpkin Organic',0.00,17),(34,'Fannie May Pumpkin',0.00,17),(35,'Frontier Pumpkin Pie Spice',0.00,18),(36,'McCormick Pumpkin Pie Spice',2.00,18),(37,'Spice Island Pumpkin Pie Spice',0.00,18),(38,'Spice Supreme Pumpkin Pie Spice',0.00,18),(39,'Guaranteed Value Evaporated Milk',0.00,19),(40,'Nestle Carnation Evaporated Milk',12.00,19),(41,'Ahold Evaporated Milk',0.00,19),(42,'Pet Evaporated Milk',0.00,19),(43,'Guaranteed Value Garlic Powder',0.00,20),(44,'Simply Organic Garlic Powder',0.00,20),(45,'Spice Islands Garlic Powder',0.00,20),(46,'McCormick Garlic Powder',1.75,20),(47,'Ahold Garlic Powder',0.00,20),(48,'Badia Garlic Powder',0.00,20),(49,'Lawry\'s Garlic Powder',0.00,20),(50,'Natural Organic Garlic Powder',0.00,20),(51,'Sylvia\'s Garlic Powder Pure',0.00,20),(52,'Pereg Gourmet Garlic Powder',0.00,20),(53,'Iberia Garlic Powder',0.00,20),(54,'Tones Garlic Powder',0.00,20),(55,'Spice Supreme Garlic Powder',0.00,20),(56,'Rokeach Garlic Powder',0.00,20),(57,'Simply Organic Garlic Powder',0.00,20),(58,'Simply Organic Ground Black Pepper',0.00,22),(59,'McCormick Ground Black Pepper',3.00,22),(60,'Ahold Ground Black Pepper',0.00,22),(61,'Guaranteed Value Ground Black Pepper',0.00,22),(62,'Sylvia\'s Black Pepper',0.00,22),(63,'Rokeach Black Pepper',0.00,22),(64,'McCormick Onion Powder',1.75,21),(65,'Simply Organic Onion Powder',0.00,21),(66,'Guaranteed Value Onion Powder',0.00,21),(67,'Ahold Onion Powder',0.00,21),(68,'Nautral Earth Onion Powder',0.00,21),(69,'Fiesta Onion Powder',0.00,21),(70,'Spice Island Onion Powder',0.00,21),(71,'Badia Onion Powder',0.00,21),(72,'Spice Supreme Onion Powder',0.00,21),(73,'Tones Onion Powder',0.00,21),(74,'McCormick Gourmet Collection Paprika',6.00,23),(75,'Spiced Islands Paprika',0.00,23),(76,'Simply Organic Seasonings Paprika',0.00,23),(77,'Frontier Paprika',0.00,23),(78,'Ahold Paprika',0.00,23),(79,'Guaranteed Value Paprika',0.00,23),(80,'Pride Of Szeged Paprika',0.00,23),(81,'Natural Earth Paprika',0.00,23),(82,'Appel Herring Paprika',0.00,23),(83,'Pereg Gourmet Paprika',0.00,23),(84,'Gefen Paprika',0.00,23),(85,'Atlas Spices Paprika',0.00,23),(86,'Badia Paprika',0.00,23),(87,'Kalosca Paprika',0.00,23),(88,'Liebers Crouton Soup Paprika',0.00,23),(89,'Profi Pate Paprika',0.00,23),(90,'El Guapo Paprika',0.00,23),(91,'Spice Hunter Paprika',0.00,23),(92,'Rokeach Paprika',0.00,23),(93,'Tones Paprika',0.00,23),(94,'Osem Paprika',0.00,23),(95,'Alstertor Herring Paprika',0.00,23),(96,'Bascoms Paprika',0.00,23),(97,'Morton & Bassett Paprika',0.00,23);
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Codes`
--

DROP TABLE IF EXISTS `Codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Codes` (
  `BRANDID` int(11) NOT NULL,
  `UPCCODE` varchar(100) NOT NULL,
  `ITEMSIZE` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`BRANDID`,`UPCCODE`),
  CONSTRAINT `Codes_ibfk_1` FOREIGN KEY (`BRANDID`) REFERENCES `Brand` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Codes`
--

LOCK TABLES `Codes` WRITE;
/*!40000 ALTER TABLE `Codes` DISABLE KEYS */;
INSERT INTO `Codes` VALUES (1,'051500239131',16.00),(1,'051500242346',48.00),(2,'049200045503',64.00),(3,'049200058688',14.00),(4,'033200011101',16.00),(4,'033200011705',64.00),(4,'033200016700',12.00),(5,'024600017008',48.00),(5,'024600017077',16.00),(6,'016000106109',80.00),(6,'016000107106',32.00),(6,'016000196100',80.00),(7,'052100070865',1.00),(7,'052100071039',2.00),(7,'052100071060',4.00),(8,'077236000302',25.50),(8,'077236000357',38.25),(8,'077236333363',12.75),(9,'754807010051',25.50),(10,'634319200716',16.00),(11,'710069134300',8.00),(12,'041617007181',10.00),(13,'041617002209',4.00),(14,'041679022337',8.00),(15,'075017022345',6.00),(16,'058336000058',3.00),(17,'039978003928',16.00),(18,'688267075001',10.00),(19,'019900338021',10.00),(20,'043000289303',7.00),(21,'761720988183',12.00),(22,'019900003202',10.00),(23,'041617002216',4.00),(23,'041617002254',8.10),(24,'688267025662',48.00),(25,'715831300006',32.00),(27,'052100002323',1.00),(27,'052100004389',2.37),(27,'052100010687',18.00),(27,'052100071091',4.12),(27,'052100090054',8.75),(28,'688267071089',2.37),(29,'039000045049',15.00),(29,'039000045124',29.00),(32,'052603064347',16.00),(33,'638882002005',15.00),(35,'089836183941',1.92),(36,'052100002644',1.12),(37,'040100002818',2.00),(38,'076114380284',2.50),(39,'688267069178',128.00),(40,'011080010516',12.00),(40,'050000010110',12.00),(40,'050000010516',5.00),(40,'050000159918',12.00),(40,'050000160112',12.00),(41,'688267070402',5.00),(41,'688267070419',12.00),(41,'688267073366',12.00),(42,'051500011249',12.00),(43,'688267068751',2.50),(44,'089836185167',3.64),(45,'040100003853',2.25),(46,'052100003627',2.25),(46,'052100006260',3.12),(46,'052100010830',21.00),(46,'052100071183',5.37),(46,'052100090016',12.25),(46,'052100827902',2.25),(47,'688267071102',3.12),(48,'033844000011',7.00),(48,'033844000059',3.00),(48,'033844003739',3.00),(49,'021500000369',2.90),(51,'608623000546',8.13),(52,'813568000128',4.20),(53,'075669108435',9.10),(54,'041351517731',0.90),(54,'041351534448',2.80),(55,'076114303405',2.50),(57,'089836500304',0.92),(58,'089836185235',2.31),(58,'089836194954',4.00),(59,'052100006789',2.12),(59,'052100010809',18.00),(59,'052100020525',3.75),(59,'052100050201',2.00),(59,'052100050300',4.00),(59,'052100071268',4.00),(59,'052100090009',8.75),(59,'052100568287',2.00),(59,'052100585611',2.00),(60,'688267070372',2.00),(60,'688267070389',4.00),(60,'688267081248',8.00),(61,'688267068737',2.00),(62,'608623000553',8.13),(64,'052100003658',2.00),(64,'052100006475',2.62),(64,'052100071220',4.50),(65,'089836186089',3.00),(67,'688267133909',2.62),(69,'071758201223',4.50),(70,'040100002627',2.20),(71,'033844000035',9.50),(71,'033844000066',2.00),(72,'076114305508',3.00),(73,'041351518127',0.75),(74,'052100002576',1.00),(74,'052100003078',1.62),(74,'052100004488',2.12),(74,'052100006253',0.90),(74,'052100022918',1.62),(74,'052100443393',1.62),(75,'040100002672',2.10),(75,'040100002962',2.10),(76,'089836187659',2.96),(77,'089836183781',1.69),(78,'688267071072',2.12),(79,'688267068690',2.75),(80,'078006000102',5.00),(80,'078006000119',5.00),(82,'713944562700',7.00),(83,'813568000401',5.30),(84,'710069128507',3.00),(86,'033844000110',2.00),(86,'033844000271',1.00),(86,'033844002138',2.00),(87,'070670005230',5.00),(88,'043427191012',3.00),(88,'043427195980',2.70),(89,'074854357085',4.60),(90,'044989000903',2.00),(91,'081057016503',1.90),(91,'081057016534',1.40),(93,'041351518240',0.70),(94,'077544195035',5.25),(95,'088468562704',7.00),(96,'070147002021',5.00),(97,'016291441354',2.00),(97,'016291441842',0.50),(97,'016291442351',2.00);
/*!40000 ALTER TABLE `Codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Generic`
--

DROP TABLE IF EXISTS `Generic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Generic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(1000) NOT NULL,
  `TOTALAMT` decimal(65,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Generic`
--

LOCK TABLES `Generic` WRITE;
/*!40000 ALTER TABLE `Generic` DISABLE KEYS */;
INSERT INTO `Generic` VALUES (1,'Shortening',64.00),(2,'2% Milk',0.00),(3,'Chocolate Chips',0.00),(4,'All-Purpose Flour',126.00),(5,'Granulated Sugar',46.00),(6,'Light Brown Sugar',52.00),(7,'Baking Soda',12.00),(8,'Salt',15.00),(9,'Eggs',12.50),(10,'Vegetable Oil Spread',0.00),(11,'Baking Powder',8.70),(12,'Vanilla Extract',8.00),(13,'Unsalted Butter',0.35),(14,'Apples',2.75),(15,'Water',1.00),(16,'Ground Cinnamon',6.00),(17,'Pumpkin Puree',15.00),(18,'Pumpkin Pie Spice',2.00),(19,'Evaporated Milk',12.00),(20,'Garlic Powder',1.75),(21,'Onion Powder',1.75),(22,'Black Pepper',3.00),(23,'Paprika',6.00);
/*!40000 ALTER TABLE `Generic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingredient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECIPEID` int(11) NOT NULL,
  `MEASUREMENTAMT` varchar(100) NOT NULL,
  `MEASUREMENTUNIT` varchar(50) NOT NULL,
  `GENERICID` int(11) DEFAULT NULL,
  `SUBTRACTAMT` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RECIPEID` (`RECIPEID`),
  KEY `GENERICID` (`GENERICID`),
  CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`RECIPEID`) REFERENCES `Recipe` (`ID`),
  CONSTRAINT `Ingredient_ibfk_2` FOREIGN KEY (`GENERICID`) REFERENCES `Generic` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (1,1,'1','cup',1,8.00),(2,1,'3/4','cup',5,6.00),(3,1,'3/4','cup',6,6.00),(4,1,'2','',9,4.25),(5,1,'1','heaping tsp',12,0.17),(6,1,'2 1/2','cups',4,20.00),(7,1,'1','tsp',8,0.17),(8,1,'1','tsp',7,0.17),(9,1,'1','cup',12,8.00),(10,2,'1','cup',4,8.00),(11,2,'1','tbsp',5,0.50),(12,2,'2','tsp',11,0.33),(13,2,'1/2','tsp',8,0.08),(14,2,'1','',9,2.13),(15,2,'3/4','cup',2,6.00),(16,2,'1/4','cup, melted',13,2.00),(17,3,'4','cored, chopped',14,16.00),(18,3,'3/4','cup',15,0.00),(19,3,'1/4','cup',5,2.00),(20,3,'1/2','tbsp',16,0.25),(21,4,'1','cup',4,8.00),(22,4,'1/2','tsp',8,0.08),(23,4,'1/3','cup plus 1 tbsp',1,3.14),(24,4,'2 to 3','tbsp cold',15,0.00),(25,5,'2','',9,4.25),(26,5,'1/2','cup',5,4.00),(27,5,'1/2','tsp',8,0.08),(28,5,'1','can',17,15.00),(29,5,'1','can',19,12.00),(30,5,'1','tbsp',18,0.50),(31,5,'1 1/2','tbsp',16,0.75),(32,6,'1lb','pork ribs',NULL,NULL),(33,6,'1','cup',6,8.00),(34,6,'4','tsp',8,0.66),(35,6,'2','tbsp',20,1.00),(36,6,'2','tbsp',21,1.00),(37,6,'1','tsp',22,0.16),(38,6,'1','tbsp',23,0.50),(39,7,'1','stick, cut into cubes',13,4.00),(40,7,'1 1/2','cups',4,12.00),(41,7,'2','tsp',11,0.33),(42,7,'1','tsp',8,0.17),(43,7,'3/4','cup',2,6.00);
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instruction`
--

DROP TABLE IF EXISTS `Instruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instruction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECIPEID` int(11) NOT NULL,
  `STEPNUM` int(11) NOT NULL,
  `DESCRIPTION` mediumtext NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RECIPEID` (`RECIPEID`),
  CONSTRAINT `Instruction_ibfk_1` FOREIGN KEY (`RECIPEID`) REFERENCES `Recipe` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instruction`
--

LOCK TABLES `Instruction` WRITE;
/*!40000 ALTER TABLE `Instruction` DISABLE KEYS */;
INSERT INTO `Instruction` VALUES (1,1,1,'Preheat over to 375*. In large mixing bowl, cream granulate and brown sugar into Crisco. Combine until one solid color.'),(2,1,2,'Add vanilla and eggs to mixing bowl. Stir until combined. Whisk until fluffy.'),(3,1,3,'Pour flour, salt, and baking soda over top. Stir until well combined.'),(4,1,4,'Add chocolate chips and knead until incorporated.'),(5,1,5,'Roll cookies into 1.5 inch balls and keep round on baking sheet. Bake for about 8 mins or until brown on bottom, light brown on top, but still soft.'),(6,1,6,'Allow to cool on cooling rack and eat hot or seal in container once cooled.'),(7,2,1,'Combine flour, sugar, baking powder, and salt.'),(8,2,2,'Melt butter in measuring cup and let cool. Add milk until the combined are a cup.'),(9,2,3,'Whisk egg in butter/milk mixture until yolk is combined.'),(10,2,4,'Stir wet mixture into dry ingredients until just incorporated. Heat griddle to medium.'),(11,2,5,'Pour batter a quarter cup at a time. Heat first side until just bubbling then flip. Cook remaining side until golden brown.'),(12,3,1,'Core apples and cube into maximum inch thick pieces, the smaller the better.'),(13,3,2,'Combine apples, water, sugar, and cinnamon into saucepan and bring to boil. Once boiling, bring to medium heat and cover.'),(14,3,3,'Cook for about 15 to 20 minutes (doubling recipe will require 10 minutes extra) and stir occasionally. Apples should be soft.'),(15,3,4,'Turn heat to low and mash apples with fork. Ground as many as possible. Take off of heat and enjoy hot or cool immediately in the fridge.'),(16,4,1,'Cut shortening into flour and salt using a pastry cutter or fork. Allow the clumps to become fine, but still the size of a bead.'),(17,4,2,'Add cold water a mix until combined. Knead pastry dough for two minutes, or until soft.'),(18,4,3,'Flour surface of cutting board and rolling pin. Lightly flour dough. Roll until desired size and thickness.'),(19,4,4,'OPTIONAL: if pre-baking, place in oven at 375* for about 15-20 minutes, or until golden and flaky.'),(20,5,1,'Prepare a pie crust using any pie crust recipe, for 1 crust. Place uncooked crust in pan to be used for pumpkin pie filling.'),(21,5,2,'Preheat oven to 425*. In medium bowl, whisk eggs. Beat in sugar, salt, pumpkin puree, and evaporated milk. Add pumpkin pie spice then stir. Sprinkle top of batter with cinnamon and whisk until well blended. Taste test; if needed add more spice.'),(22,5,3,'Pour batter into pie crust and line edge of crust with aluminum foil. Bake for 15 minutes.'),(23,5,4,'Reduce oven temperature to 350*. Bake for 30 minute.'),(24,5,5,'Remove aluminum foil from pie crust. Bake for another 15-20 minutes, or until knife inserted in center comes out clean. Allow 30 minutes to cool, then refrigerate until chilled (around 4 hours).'),(25,6,1,'Preheat oven to 300*. Line a baking sheet with aluminum foil and place the individual pork ribs on the sheet.'),(26,6,2,'In a small bowl, mix together the brown sugar, salt, garlic powder, onion powder, pepper, and paprika. When well mixed, generously massage rub onto ribs, and sprinkle leftover rub on top.'),(27,6,3,'Cover with aluminum foil and allow to cook for 2 hours, which produces perfectly tender ribs.'),(28,7,1,'Preheat oven to 400* and line baking sheet with parchment paper.'),(29,7,2,'Whisk together flour, baking powder, and salt.'),(30,7,3,'Toss butter cubes into dry ingredients and blend with a fork or pastry cutter. Flour should resemble coarse meal, and do not allow to become too fine or the biscuits will not keep composure.'),(31,7,4,'And milk and stir until it is just coming together as a shaggy dough. DO NOT OVERMIX.'),(32,7,5,'Use table spoon to scoup biscuits onto sheet. Bake for 15 minutes, or until points start to brown.');
/*!40000 ALTER TABLE `Instruction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MealType`
--

DROP TABLE IF EXISTS `MealType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MealType` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEALNAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MealType`
--

LOCK TABLES `MealType` WRITE;
/*!40000 ALTER TABLE `MealType` DISABLE KEYS */;
INSERT INTO `MealType` VALUES (1,'Breakfast'),(2,'Appetizer'),(3,'Entree'),(4,'Side Dish'),(5,'Dessert');
/*!40000 ALTER TABLE `MealType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pantry`
--

DROP TABLE IF EXISTS `Pantry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pantry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(1000) NOT NULL,
  `TOTALAMT` decimal(65,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pantry`
--

LOCK TABLES `Pantry` WRITE;
/*!40000 ALTER TABLE `Pantry` DISABLE KEYS */;
INSERT INTO `Pantry` VALUES (1,'Crisco All-Vegetable Shortening',0.00),(2,'Imperial 70% Vegetable Oil Spread',0.00),(3,'Giant Eagel 2% Reduced Fat Milk',0.00),(4,'Nestle Toll House Milk Chocolate Morsels',0.00),(5,'Gold Medal All-purpose Flour',0.00),(6,'Mccormick Pure Vanilla Extract',0.00),(7,'Morton Kosher Salt Coarse',0.00),(8,'Domino Premium Pure Cane Granulated Sugar',0.00),(9,'Domino Brownulated Light Brown Sugar',0.00),(10,'Arm & Hammer Pure Baking Soda',0.00),(11,'Large Eggs',0.00);
/*!40000 ALTER TABLE `Pantry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipe`
--

DROP TABLE IF EXISTS `Recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recipe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MEALTYPEID` int(11) NOT NULL,
  `TITLE` varchar(600) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `MEALTYPEID` (`MEALTYPEID`),
  CONSTRAINT `Recipe_ibfk_1` FOREIGN KEY (`MEALTYPEID`) REFERENCES `MealType` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipe`
--

LOCK TABLES `Recipe` WRITE;
/*!40000 ALTER TABLE `Recipe` DISABLE KEYS */;
INSERT INTO `Recipe` VALUES (1,5,'Nestle Chocolate Chip Cookies'),(2,1,'Fluffy Pancakes'),(3,2,'Best Applesauce'),(4,5,'Betty Crocker Pie Crust'),(5,5,'Betty Crocker style Pumpkin Pie'),(6,3,'Oven-Baked Ribs'),(7,4,'Drop Biscuits');
/*!40000 ALTER TABLE `Recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UPCSTAGING`
--

DROP TABLE IF EXISTS `UPCSTAGING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UPCSTAGING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UPCCODE` varchar(100) NOT NULL,
  `TITLE` varchar(600) NOT NULL,
  `ITEMSIZE` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UPCSTAGING`
--

LOCK TABLES `UPCSTAGING` WRITE;
/*!40000 ALTER TABLE `UPCSTAGING` DISABLE KEYS */;
/*!40000 ALTER TABLE `UPCSTAGING` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 23:16:18
