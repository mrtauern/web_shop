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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `price` double(9,2) NOT NULL,
  `quantity` int(10) NOT NULL,
  `OrdersID` int(11) DEFAULT NULL,
  `ProductsID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKItems960778` (`OrdersID`),
  KEY `FKItems618410` (`ProductsID`),
  CONSTRAINT `FKItems618410` FOREIGN KEY (`ProductsID`) REFERENCES `Products` (`ID`),
  CONSTRAINT `FKItems960778` FOREIGN KEY (`OrdersID`) REFERENCES `Orders` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger update_stock_on_product_after_order
    after insert
    on Items
    for each row
begin
 update Products
 set stock = stock - NEW.quantity
 where ID = NEW.ProductsID ;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` longtext COLLATE utf8_unicode_ci,
  `UsersID` int(11) DEFAULT NULL,
  `Order_statusID` int(11) DEFAULT NULL,
  `CountriesID` int(11) NOT NULL,
  `credit_cardsID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKOrders336634` (`UsersID`),
  KEY `FKOrders424793` (`Order_statusID`),
  KEY `FKOrders848582` (`CountriesID`),
  KEY `credit_cards2_fk` (`credit_cardsID`),
  CONSTRAINT `FKOrders336634` FOREIGN KEY (`UsersID`) REFERENCES `Users` (`ID`),
  CONSTRAINT `FKOrders424793` FOREIGN KEY (`Order_statusID`) REFERENCES `Order_status` (`ID`),
  CONSTRAINT `FKOrders848582` FOREIGN KEY (`CountriesID`) REFERENCES `Countries` (`ID`),
  CONSTRAINT `credit_cards2_fk` FOREIGN KEY (`credit_cardsID`) REFERENCES `credit_cards` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `price` double(9,2) NOT NULL,
  `stock` int(100) NOT NULL,
  `weight` double NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `idx_stock` (`stock`),
  KEY `stock` (`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER Products_insert_audit_trigger
AFTER INSERT ON Products FOR EACH ROW
BEGIN
    INSERT INTO audit_log (
        table_affected,
        rowID,
        old_row_data,
        new_row_data,
        action_type,
        done_by
    )
    VALUES(
        'Products',
        NEW.ID,
        null,
        JSON_OBJECT(
            "name", NEW.name,
            "description", NEW.description,
            "price", NEW.price,
            "stock", NEW.stock,
            "weight", NEW.weight,
            "picture", NEW.picture,
            "thumbnail", NEW.thumbnail,
            "create_date", NEW.create_date
        ),
        'INSERT',
        user()
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER Products_update_audit_trigger
AFTER UPDATE ON Products FOR EACH ROW
BEGIN
    INSERT INTO audit_log (
        table_affected,
        rowID,
        old_row_data,
        new_row_data,
        action_type,
        done_by
    )
    VALUES(
        'Products',
        NEW.ID,
        JSON_OBJECT(
            "name", OLD.name,
            "description", OLD.description,
            "price", OLD.price,
            "stock", OLD.stock,
            "weight", OLD.weight,
            "picture", OLD.picture,
            "thumbnail", OLD.thumbnail,
            "create_date", OLD.create_date
        ),
        JSON_OBJECT(
            "name", NEW.name,
            "description", NEW.description,
            "price", NEW.price,
            "stock", NEW.stock,
            "weight", NEW.weight,
            "picture", NEW.picture,
            "thumbnail", NEW.thumbnail,
            "create_date", NEW.create_date
        ),
        'UPDATE',
        user()
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER Products_delete_audit_trigger
AFTER DELETE ON Products FOR EACH ROW
BEGIN
    INSERT INTO audit_log (
        table_affected,
        rowID,
        old_row_data,
        new_row_data,
        action_type,
        done_by
    )
    VALUES(
        'Products',
        OLD.ID,
        JSON_OBJECT(
            "name", OLD.name,
            "description", OLD.description,
            "price", OLD.price,
            "stock", OLD.stock,
            "weight", OLD.weight,
            "picture", OLD.picture,
            "thumbnail", OLD.thumbnail,
            "create_date", OLD.create_date
        ),
        null,
        'DELETE',
        user()
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `user_type` int(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `CountriesID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKUsers638239` (`CountriesID`),
  CONSTRAINT `FKUsers638239` FOREIGN KEY (`CountriesID`) REFERENCES `Countries` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `table_affected` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rowID` int(11) NOT NULL,
  `old_row_data` json DEFAULT NULL,
  `new_row_data` json DEFAULT NULL,
  `action_type` enum('INSERT','UPDATE','DELETE') COLLATE utf8_unicode_ci NOT NULL,
  `action_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `done_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_cards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cardholder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cardnumber` bigint(20) NOT NULL,
  `exp_year` int(2) NOT NULL,
  `exp_month` int(2) DEFAULT NULL,
  `CVV` int(3) NOT NULL,
  `usersID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `credit_cards_fk` (`usersID`),
  CONSTRAINT `credit_cards_fk` FOREIGN KEY (`usersID`) REFERENCES `Users` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 12:21:16
