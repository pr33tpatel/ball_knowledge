-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: nba_players
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `achievement_id` int NOT NULL,
  `player_id` int DEFAULT NULL,
  `season_id` int DEFAULT NULL,
  `achievement` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`achievement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (0,367,1996,'MVP'),(1,428,1996,'ROTY'),(2,150,1996,'DPOY'),(3,NULL,1996,'6MOY'),(4,453,1997,'MVP'),(5,558,1997,'ROTY'),(6,837,1997,'DPOY'),(7,678,1997,'6MOY'),(8,1211,1998,'MVP'),(9,1167,1998,'ROTY'),(10,1016,1998,'DPOY'),(11,NULL,1998,'6MOY'),(12,1523,1999,'MVP'),(13,1707,1999,'ROTY'),(14,1614,1999,'DPOY'),(15,1521,1999,'6MOY'),(16,1961,2000,'MVP'),(17,1871,2000,'ROTY'),(18,2005,2000,'DPOY'),(19,1969,2000,'6MOY'),(20,2342,2001,'MVP'),(21,2234,2001,'ROTY'),(22,NULL,2001,'DPOY'),(23,2584,2001,'6MOY'),(24,2836,2002,'MVP'),(25,2916,2002,'ROTY'),(26,NULL,2002,'DPOY'),(27,2944,2002,'6MOY'),(28,3434,2003,'MVP'),(29,3448,2003,'ROTY'),(30,3485,2003,'DPOY'),(31,3173,2003,'6MOY'),(32,3647,2004,'MVP'),(33,3945,2004,'ROTY'),(34,NULL,2004,'DPOY'),(35,3844,2004,'6MOY'),(36,3997,2005,'MVP'),(37,4365,2005,'ROTY'),(38,NULL,2005,'DPOY'),(39,4246,2005,'6MOY'),(40,4767,2006,'MVP'),(41,4519,2006,'ROTY'),(42,4828,2006,'DPOY'),(43,4806,2006,'6MOY'),(44,5201,2007,'MVP'),(45,5208,2007,'ROTY'),(46,5207,2007,'DPOY'),(47,5142,2007,'6MOY'),(48,5387,2008,'MVP'),(49,5430,2008,'ROTY'),(50,5445,2008,'DPOY'),(51,5372,2008,'6MOY'),(52,6099,2009,'MVP'),(53,5948,2009,'ROTY'),(54,5971,2009,'DPOY'),(55,5990,2009,'6MOY'),(56,6438,2010,'MVP'),(57,6520,2010,'ROTY'),(58,6392,2010,'DPOY'),(59,6581,2010,'6MOY'),(60,6746,2011,'MVP'),(61,6734,2011,'ROTY'),(62,6965,2011,'DPOY'),(63,6838,2011,'6MOY'),(64,7585,2012,'MVP'),(65,7367,2012,'ROTY'),(66,7512,2012,'DPOY'),(67,7471,2012,'6MOY'),(68,8013,2013,'MVP'),(69,8070,2013,'ROTY'),(70,7686,2013,'DPOY'),(71,7709,2013,'6MOY'),(72,8303,2014,'MVP'),(73,8284,2014,'ROTY'),(74,8533,2014,'DPOY'),(75,8185,2014,'6MOY'),(76,8930,2015,'MVP'),(77,9003,2015,'ROTY'),(78,9004,2015,'DPOY'),(79,8696,2015,'6MOY'),(80,9309,2016,'MVP'),(81,9167,2016,'ROTY'),(82,9519,2016,'DPOY'),(83,9508,2016,'6MOY'),(84,9996,2017,'MVP'),(85,9955,2017,'ROTY'),(86,9822,2017,'DPOY'),(87,9667,2017,'6MOY'),(88,10115,2018,'MVP'),(89,10605,2018,'ROTY'),(90,10368,2018,'DPOY'),(91,10601,2018,'6MOY'),(92,10674,2019,'MVP'),(93,10669,2019,'ROTY'),(94,10674,2019,'DPOY'),(95,11111,2019,'6MOY'),(96,11660,2020,'MVP'),(97,11589,2020,'ROTY'),(98,11557,2020,'DPOY'),(99,11429,2020,'6MOY'),(100,12034,2021,'MVP'),(101,12264,2021,'ROTY'),(102,12154,2021,'DPOY'),(103,11713,2021,'6MOY'),(104,12839,2022,'MVP'),(105,12326,2022,'ROTY'),(106,12765,2022,'DPOY'),(107,12727,2022,'6MOY');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 17:10:34
