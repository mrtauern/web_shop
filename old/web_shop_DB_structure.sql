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
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_category` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Countries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(3) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Items` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantiry` int(10) NOT NULL,
  `OrdersID` int(11) DEFAULT NULL,
  `ProductsID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKItems960778` (`OrdersID`),
  KEY `FKItems618410` (`ProductsID`),
  CONSTRAINT `FKItems618410` FOREIGN KEY (`ProductsID`) REFERENCES `Products` (`ID`),
  CONSTRAINT `FKItems960778` FOREIGN KEY (`OrdersID`) REFERENCES `Orders` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Order_status`
--

DROP TABLE IF EXISTS `Order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_number` int(10) DEFAULT NULL,
  `order_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_streetname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_streetnumber` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `order_town` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `order_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_phone` int(20) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `UsersID` int(11) DEFAULT NULL,
  `Order_statusID` int(11) DEFAULT NULL,
  `CountriesID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKOrders336634` (`UsersID`),
  KEY `FKOrders424793` (`Order_statusID`),
  KEY `FKOrders848582` (`CountriesID`),
  CONSTRAINT `FKOrders336634` FOREIGN KEY (`UsersID`) REFERENCES `Users` (`ID`),
  CONSTRAINT `FKOrders424793` FOREIGN KEY (`Order_statusID`) REFERENCES `Order_status` (`ID`),
  CONSTRAINT `FKOrders848582` FOREIGN KEY (`CountriesID`) REFERENCES `Countries` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Product_options`
--

DROP TABLE IF EXISTS `Product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_options` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Product_options_product_options_choice`
--

DROP TABLE IF EXISTS `Product_options_product_options_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product_options_product_options_choice` (
  `Product_optionsID` int(11) NOT NULL,
  `product_options_choiceID` int(11) NOT NULL,
  PRIMARY KEY (`Product_optionsID`,`product_options_choiceID`),
  KEY `FKProduct_op16303` (`product_options_choiceID`),
  CONSTRAINT `FKProduct_op16303` FOREIGN KEY (`product_options_choiceID`) REFERENCES `product_options_choice` (`ID`),
  CONSTRAINT `FKProduct_op17173` FOREIGN KEY (`Product_optionsID`) REFERENCES `Product_options` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  PRIMARY KEY (`ID`),
  KEY `idx_stock` (`stock`),
  KEY `stock` (`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Products_Categories`
--

DROP TABLE IF EXISTS `Products_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products_Categories` (
  `ProductsID` int(11) NOT NULL,
  `CategoriesID` int(11) NOT NULL,
  PRIMARY KEY (`ProductsID`,`CategoriesID`),
  KEY `FKProducts_C184963` (`CategoriesID`),
  CONSTRAINT `FKProducts_C184963` FOREIGN KEY (`CategoriesID`) REFERENCES `Categories` (`ID`),
  CONSTRAINT `FKProducts_C86870` FOREIGN KEY (`ProductsID`) REFERENCES `Products` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Products_Product_options`
--

DROP TABLE IF EXISTS `Products_Product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products_Product_options` (
  `ProductsID` int(11) NOT NULL,
  `Product_optionsID` int(11) NOT NULL,
  PRIMARY KEY (`ProductsID`,`Product_optionsID`),
  KEY `FKProducts_P38473` (`Product_optionsID`),
  CONSTRAINT `FKProducts_P38473` FOREIGN KEY (`Product_optionsID`) REFERENCES `Product_options` (`ID`),
  CONSTRAINT `FKProducts_P464248` FOREIGN KEY (`ProductsID`) REFERENCES `Products` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reviews` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `rating` int(2) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ProductsID` int(11) DEFAULT NULL,
  `UsersID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKReviews206086` (`UsersID`),
  KEY `FKReviews17398` (`ProductsID`),
  CONSTRAINT `FKReviews17398` FOREIGN KEY (`ProductsID`) REFERENCES `Products` (`ID`),
  CONSTRAINT `FKReviews206086` FOREIGN KEY (`UsersID`) REFERENCES `Users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `street_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `userType` int(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `CountriesID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKUsers638239` (`CountriesID`),
  CONSTRAINT `FKUsers638239` FOREIGN KEY (`CountriesID`) REFERENCES `Countries` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_options_choice`
--

DROP TABLE IF EXISTS `product_options_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options_choice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-01 10:10:19
