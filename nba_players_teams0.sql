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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL,
  `team_abbreviation` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `championships_won` int DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (0,'ATL','Atlanta',1),(1,'BOS','Boston',17),(2,'BKN','Brooklyn',0),(3,'CHA','Charlotte',0),(4,'CHI','Chicago',6),(5,'CLE','Cleveland',1),(6,'DAL','Dallas',1),(7,'DEN','Denver',1),(8,'DET','Detroit',3),(9,'GSW','San Francisco',7),(10,'HOU','Houston',2),(11,'IND','Indianapolis',0),(12,'LAC','Los Angeles',0),(13,'LAL','Los Angeles',17),(14,'MEM','Memphis',0),(15,'MIA','Miami',3),(16,'MIL','Milwaukee',2),(17,'MIN','Minneapolis',0),(18,'NOP','New Orleans',0),(19,'NYK','New York City',2),(20,'OKC','Oklahoma City',0),(21,'ORL','Orlando',0),(22,'PHI','Philadelphia',3),(23,'PHX','Phoenix',0),(24,'POR','Portland',1),(25,'SAC','Sacramento',1),(26,'SAS','San Antonio',5),(27,'TOR','Toronto',1),(28,'UTA','Salt Lake City',0),(29,'WAS','Washington D.C.',1),(30,'SEA','Seattle',1),(31,'VAN','Vancouver',0);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-20 21:32:39
