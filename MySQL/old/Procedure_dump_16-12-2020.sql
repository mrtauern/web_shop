-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: web_shop
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `price` double NOT NULL,
  `stock` int(100) NOT NULL,
  `weight` double NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Cykel','Spicy jalapeno bacon ipsum dolor amet meatball andouille jowl, pork kevin venison drumstick tail burgdoggen short loin sirloin t-bone. Pork hamburger frankfurter, venison shankle short loin drumstick sausage fatback. Pig ground round beef ribs boudin t-bone tail. Beef drumstick tri-tip, rump beef ribs fatback doner ham ham hock ribeye porchetta pork belly chuck. Spare ribs cupim burgdoggen swine meatball rump shank meatloaf pork loin venison.',1999.95,6,12,NULL,NULL,'2020-09-21 12:22:42'),(2,'Kost','Spicy jalapeno bacon ipsum dolor amet meatball andouille jowl, pork kevin venison drumstick tail burgdoggen short loin sirloin t-bone. Pork hamburger frankfurter, venison shankle short loin drumstick sausage fatback. Pig ground round beef ribs boudin t-bone tail. Beef drumstick tri-tip, rump beef ribs fatback doner ham ham hock ribeye porchetta pork belly chuck. Spare ribs cupim burgdoggen swine meatball rump shank meatloaf pork loin venison.',49.95,22,3,NULL,NULL,'2020-09-21 12:22:42'),(3,'Cykelholder','Spicy jalapeno bacon ipsum dolor amet meatball andouille jowl, pork kevin venison drumstick tail burgdoggen short loin sirloin t-bone. Pork hamburger frankfurter, venison shankle short loin drumstick sausage fatback. Pig ground round beef ribs boudin t-bone tail. Beef drumstick tri-tip, rump beef ribs fatback doner ham ham hock ribeye porchetta pork belly chuck. Spare ribs cupim burgdoggen swine meatball rump shank meatloaf pork loin venison.',399.95,9,7,NULL,NULL,'2020-09-21 12:22:42'),(4,'Pepsi','Spicy jalapeno bacon ipsum dolor amet meatball andouille jowl, pork kevin venison drumstick tail burgdoggen short loin sirloin t-bone. Pork hamburger frankfurter, venison shankle short loin drumstick sausage fatback. Pig ground round beef ribs boudin t-bone tail. Beef drumstick tri-tip, rump beef ribs fatback doner ham ham hock ribeye porchetta pork belly chuck. Spare ribs cupim burgdoggen swine meatball rump shank meatloaf pork loin venison.',13,45,0.05,NULL,NULL,'2020-09-21 12:22:42'),(5,'Lygte','Spicy jalapeno bacon ipsum dolor amet meatball andouille jowl, pork kevin venison drumstick tail burgdoggen short loin sirloin t-bone. Pork hamburger frankfurter, venison shankle short loin drumstick sausage fatback. Pig ground round beef ribs boudin t-bone tail. Beef drumstick tri-tip, rump beef ribs fatback doner ham ham hock ribeye porchetta pork belly chuck. Spare ribs cupim burgdoggen swine meatball rump shank meatloaf pork loin venison.',19.5,32,0.1,NULL,NULL,'2020-09-21 12:22:42');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-21 14:26:05
