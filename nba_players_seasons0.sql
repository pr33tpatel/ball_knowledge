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
  `season_id` int NOT NULL,
  `champion` varchar(45) DEFAULT NULL,
  `awards` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1996,'CHI','Michael Jordan'),(1997,'CHI','Michael Jordan'),(1998,'SAS','Tim Duncan'),(1999,'LAL','Shaquille O\'Neal'),(2000,'LAL','Shaquille O\'Neal'),(2001,'LAL','Shaquille O\'Neal'),(2002,'SAS','Tim Duncan'),(2003,'DET','Chauncey Billups'),(2004,'SAS','Tim Duncan'),(2005,'MIA','Dwyane Wade'),(2006,'SAS','Tony Parker'),(2007,'BOS','Paul Pierce'),(2008,'LAL','Kobe Bryant'),(2009,'LAL','Kobe Bryant'),(2010,'DAL','Dirk Nowitzki'),(2011,'MIA','LeBron James'),(2012,'MIA','LeBron James'),(2013,'SAS','Kawhi Leonard'),(2014,'GSW','Andre Iguodala'),(2015,'CLE','LeBron James'),(2016,'GSW','Kevin Durant'),(2017,'GSW','Kevin Durant'),(2018,'TOR','Kawhi Leonard'),(2019,'LAL','LeBron James'),(2020,'MIL','Giannis Antetokounmpo'),(2021,'GSW','Stephen Curry'),(2022,'DEN','Nikola Jokic');
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

-- Dump completed on 2024-11-20 21:32:38
