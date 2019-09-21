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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_no` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  `seats_capacity` int(11) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  PRIMARY KEY (`service_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (3185,'vijayawada','hyderabad','Non-Ac','11:15 PM','5:10 Am',21,370),(3186,'hyderabad','bangalore','AC','9:00 AM','8:10 PM',34,1120),(3187,'hyderabad','bangalore','AC','6:00 AM','4:20 PM',38,762),(3188,'hyderabad','guntur','Non-Ac','7:00 AM','1:00 PM',33,324),(3189,'hyderabad','guntur','Non-Ac','12:00 PM','5:00 PM',33,324),(3190,'hyderabad','bangalore','Non-Ac','10:15 AM','9:40 PM',31,647),(3191,'hyderabad','guntur','Ac','11:30 PM','5:30 AM',31,374),(3192,'hyderabad','bangalore','Ac','11:15 PM','8:30 AM',34,762),(3193,'hyderabad','guntur','Non-Ac','2:00 PM','8:00 PM',33,324),(3194,'hyderabad','guntur','Ac','10:00 PM','4:00 PM',26,450),(3195,'hyderabad','bangalore','Ac','8:00 PM','5:00 AM',40,762),(3196,'hyderabad','bangalore','Ac','5:30 PM','4:00 AM',38,762),(3197,'hyderabad','chennai','AC','7:00 PM','6:45 AM',39,1161),(3198,'hyderabad','chennai','AC','8:00 PM','7:45 AM',40,1161);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-18 20:52:58
