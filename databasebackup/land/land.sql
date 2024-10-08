CREATE DATABASE  IF NOT EXISTS `land` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `land`;
-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: land
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
-- Table structure for table `land1`
--

DROP TABLE IF EXISTS `land1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land1` (
  `land_name` varchar(20) NOT NULL,
  `land_id` int DEFAULT NULL,
  `main_country1` varchar(20) NOT NULL,
  `main_country2` varchar(20) NOT NULL,
  PRIMARY KEY (`land_name`),
  UNIQUE KEY `land_id` (`land_id`),
  CONSTRAINT `fk` FOREIGN KEY (`land_id`) REFERENCES `land_info` (`land_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land1`
--

LOCK TABLES `land1` WRITE;
/*!40000 ALTER TABLE `land1` DISABLE KEYS */;
INSERT INTO `land1` VALUES ('Asia',1,'China','India');
/*!40000 ALTER TABLE `land1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land2`
--

DROP TABLE IF EXISTS `land2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land2` (
  `land_name` varchar(20) NOT NULL,
  `land_id` int DEFAULT NULL,
  `main_country1` varchar(20) NOT NULL,
  `main_country2` varchar(20) NOT NULL,
  PRIMARY KEY (`land_name`),
  UNIQUE KEY `land_id` (`land_id`),
  CONSTRAINT `land2_ibfk_1` FOREIGN KEY (`land_id`) REFERENCES `land_info` (`land_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land2`
--

LOCK TABLES `land2` WRITE;
/*!40000 ALTER TABLE `land2` DISABLE KEYS */;
INSERT INTO `land2` VALUES ('Africa',2,'Egypt','South_Africa');
/*!40000 ALTER TABLE `land2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_info`
--

DROP TABLE IF EXISTS `land_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_info` (
  `land_id` int NOT NULL,
  `land_name` varchar(20) DEFAULT NULL,
  `population` bigint DEFAULT NULL,
  PRIMARY KEY (`land_id`),
  UNIQUE KEY `continent_id` (`land_id`),
  UNIQUE KEY `continent_name` (`land_name`),
  CONSTRAINT `check_population` CHECK ((`population` between 0 and 7000000000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_info`
--

LOCK TABLES `land_info` WRITE;
/*!40000 ALTER TABLE `land_info` DISABLE KEYS */;
INSERT INTO `land_info` VALUES (1,'Asia',4600000000),(2,'Afica',1410000000),(3,'Europe',750000000),(4,'North_America',600000000),(5,'South_America',430000000),(6,'Oceania',43000000);
/*!40000 ALTER TABLE `land_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'land'
--

--
-- Dumping routines for database 'land'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 22:24:39
