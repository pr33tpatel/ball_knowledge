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
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasons` (
  `season_id` varchar(45) NOT NULL,
  `champion` varchar(45) DEFAULT NULL,
  `finals_mvp` varchar(45) DEFAULT NULL,
  `mvp` int DEFAULT NULL,
  `roty` int DEFAULT NULL,
  `dpoy` int DEFAULT NULL,
  `6moy` int DEFAULT NULL,
  PRIMARY KEY (`season_id`),
  KEY `mvp_idx` (`mvp`),
  KEY `roty_idx` (`roty`),
  KEY `dpoy_idx` (`dpoy`),
  KEY `6moy_idx` (`6moy`),
  CONSTRAINT `6moy` FOREIGN KEY (`6moy`) REFERENCES `achievements` (`achievement_id`),
  CONSTRAINT `dpoy` FOREIGN KEY (`dpoy`) REFERENCES `achievements` (`achievement_id`),
  CONSTRAINT `mvp` FOREIGN KEY (`mvp`) REFERENCES `achievements` (`achievement_id`),
  CONSTRAINT `roty` FOREIGN KEY (`roty`) REFERENCES `achievements` (`achievement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES ('1996-97','CHI','Michael Jordan',0,1,2,3),('1997-98','CHI','Michael Jordan',4,5,6,7),('1998-99','SAS','Tim Duncan',8,9,10,11),('1999-00','LAL','Shaquille O\'Neal',12,13,14,15),('2000-01','LAL','Shaquille O\'Neal',16,17,18,19),('2001-02','LAL','Shaquille O\'Neal',20,21,22,23),('2002-03','SAS','Tim Duncan',24,25,26,27),('2003-04','DET','Chauncey Billups',28,29,30,31),('2004-05','SAS','Tim Duncan',32,33,34,35),('2005-06','MIA','Dwyane Wade',36,37,38,39),('2006-07','SAS','Tony Parker',40,41,42,43),('2007-08','BOS','Paul Pierce',44,45,46,47),('2008-09','LAL','Kobe Bryant',48,49,50,51),('2009-10','LAL','Kobe Bryant',52,53,54,55),('2010-11','DAL','Dirk Nowitzki',56,57,58,59),('2011-12','MIA','LeBron James',60,61,62,63),('2012-13','MIA','LeBron James',64,65,66,67),('2013-14','SAS','Kawhi Leonard',68,69,70,71),('2014-15','GSW','Andre Iguodala',72,73,74,75),('2015-16','CLE','LeBron James',76,77,78,79),('2016-17','GSW','Kevin Durant',80,81,82,83),('2017-18','GSW','Kevin Durant',84,85,86,87),('2018-19','TOR','Kawhi Leonard',88,89,90,91),('2019-20','LAL','LeBron James',92,93,94,95),('2020-21','MIL','Giannis Antetokounmpo',96,97,98,99),('2021-22','GSW','Stephen Curry',100,101,102,103),('2022-23','DEN','Nikola Jokic',104,105,106,107);
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 18:16:23
