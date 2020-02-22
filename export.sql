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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES (1,'Crisco All-Vegetable Shortening',0.00,1),(2,'Domino Premium Pure Cane Granulated Sugar',0.00,5),(3,'Domino Brownulated Light Brown Sugar',0.00,6),(4,'Arm & Hammer Pure Baking Soda',0.00,7),(5,'Morton Kosher Salt Coarse',0.00,8),(6,'Gold Medal All-purpose Flour',0.00,4),(7,'Mccormick Pure Vanilla Extract',0.00,12),(8,'Dutch Farms Grade A Large Eggs',0.00,9),(9,'America\'s Choice Large Eggs',0.00,9);
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
  PRIMARY KEY (`BRANDID`,`UPCCODE`),
  CONSTRAINT `Codes_ibfk_1` FOREIGN KEY (`BRANDID`) REFERENCES `Brand` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Codes`
--

LOCK TABLES `Codes` WRITE;
/*!40000 ALTER TABLE `Codes` DISABLE KEYS */;
INSERT INTO `Codes` VALUES (1,'0051500239131'),(1,'051500239131'),(1,'051500242346'),(2,'049200045503'),(3,'049200058688'),(4,'033200011101'),(4,'033200011705'),(4,'033200016700'),(5,'024600017008'),(5,'024600017077'),(6,'016000106109'),(6,'016000107106'),(6,'016000196100'),(7,'052100070865'),(7,'052100071039'),(7,'052100071060'),(8,'077236000302'),(8,'077236000357'),(8,'077236333363'),(9,'754807010051');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Generic`
--

LOCK TABLES `Generic` WRITE;
/*!40000 ALTER TABLE `Generic` DISABLE KEYS */;
INSERT INTO `Generic` VALUES (1,'Shortening',0.00),(2,'2% Milk',0.00),(3,'Chocolate Chips',0.00),(4,'All-Purpose Flour',0.00),(5,'Granulated Sugar',0.00),(6,'Light Brown Sugar',0.00),(7,'Baking Soda',0.00),(8,'Salt',0.00),(9,'Eggs',0.00),(10,'Vegetable Oil Spread',0.00),(11,'Baking Powder',0.00),(12,'Vanilla Extract',0.00);
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
  `GENERICID` int(11) NOT NULL,
  `SUBTRACTAMT` decimal(65,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RECIPEID` (`RECIPEID`),
  KEY `GENERICID` (`GENERICID`),
  CONSTRAINT `Ingredient_ibfk_1` FOREIGN KEY (`RECIPEID`) REFERENCES `Recipe` (`ID`),
  CONSTRAINT `Ingredient_ibfk_2` FOREIGN KEY (`GENERICID`) REFERENCES `Generic` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (1,1,'1','cup',1,8.00),(2,1,'3/4','cup',5,6.00),(3,1,'3/4','cup',6,6.00),(4,1,'2','',9,4.25),(5,1,'1','heaping tsp',12,0.17),(6,1,'2 1/2','cups',4,20.00),(7,1,'1','tsp',8,0.17),(8,1,'1','tsp',7,0.17),(9,1,'1','cup',12,8.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instruction`
--

LOCK TABLES `Instruction` WRITE;
/*!40000 ALTER TABLE `Instruction` DISABLE KEYS */;
INSERT INTO `Instruction` VALUES (1,1,1,'Preheat over to 375*. In large mixing bowl, cream granulate and brown sugar into Crisco. Combine until one solid color.'),(2,1,2,'Add vanilla and eggs to mixing bowl. Stir until combined. Whisk until fluffy.'),(3,1,3,'Pour flour, salt, and baking soda over top. Stir until well combined.'),(4,1,4,'Add chocolate chips and knead until incorporated.'),(5,1,5,'Roll cookies into 1.5 inch balls and keep round on baking sheet. Bake for about 8 mins or until brown on bottom, light brown on top, but still soft.'),(6,1,6,'Allow to cool on cooling rack and eat hot or seal in container once cooled.');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipe`
--

LOCK TABLES `Recipe` WRITE;
/*!40000 ALTER TABLE `Recipe` DISABLE KEYS */;
INSERT INTO `Recipe` VALUES (1,5,'Nestle Chocolate Chip Cookies');
/*!40000 ALTER TABLE `Recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22  8:21:17
