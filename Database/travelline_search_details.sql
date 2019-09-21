-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: travelline
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `search_details`
--

DROP TABLE IF EXISTS `search_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_details` (
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_details`
--

LOCK TABLES `search_details` WRITE;
/*!40000 ALTER TABLE `search_details` DISABLE KEYS */;
INSERT INTO `search_details` VALUES ('vijayawada','hyderabad','09/13/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/14/2019'),('vijayawada','hyderabad','09/14/2019'),('vijayawada','hyderabad','09/14/2019'),('vijayawada','hyderabad','09/25/2019'),('vijayawada','hyderabad','09/25/2019'),('vijayawada','hyderabad','09/28/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/17/2019'),('vijayawada','hyderabad','09/16/2019'),('vijayawada','hyderabad','09/26/2019'),('vijayawada','hyderabad','09/26/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/26/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/24/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('warangal','hyderabad','09/20/2019'),('warangal','hyderabad','09/20/2019'),('hyderabad','khammam','09/21/2019'),('warangal','hyderabad','09/20/2019'),('warangal','khammam','09/20/2019'),('warangal','khammam','09/20/2019'),('warangal','khammam','09/20/2019'),('vijayawada','hyderabad','09/20/2019'),('vijayawada','hyderabad','09/27/2019'),('warangal','hyderabad','09/27/2019'),('hyderabad','visakhapatnam','09/27/2019'),('vijayawada','visakhapatnam','09/27/2019'),('vijayawada','visakhapatnam','09/27/2019'),('vijayawada','visakhapatnam','09/27/2019'),('vijayawada','visakhapatnam','09/27/2019'),('vijayawada','hyderabad','09/27/2019'),('vijayawada','hyderabad','09/28/2019'),('hyderabad','metpally','09/28/2019'),('warangal','khammam','09/28/2019'),('warangal','hyderabad','09/28/2019'),('hyderabad','banglore','09/19/2019'),('hyderabad','bangalore','09/27/2019');
/*!40000 ALTER TABLE `search_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-18 20:52:59
