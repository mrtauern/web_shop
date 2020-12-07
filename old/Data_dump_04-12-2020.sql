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
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Mac','Apple Computer is very popular  ',NULL,NULL),(2,'Ipad','It is used for many different porposes',NULL,NULL),(3,'Iphone','It is a device for calling other people with',NULL,NULL),(4,'Watch','Many different size watch for both gender',NULL,NULL),(5,'Tv','Tv are getting popular',NULL,NULL),(9,'Furniture','For more comfort at home',NULL,NULL),(10,'Software','Making live easier',NULL,NULL),(12,'fruit','healthy',NULL,NULL),(13,'mus','for my cat',NULL,NULL),(14,'animal','for my home',NULL,NULL);
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
INSERT INTO `Countries` VALUES (1,'Afghanistan',93),(2,'Albania',355),(3,'Algeria',213),(4,'American Samoa',1684),(5,'Andorra',376),(6,'Angola',244),(7,'Anguilla',1264),(8,'Antarctica',0),(9,'Antigua and Barbuda',1268),(10,'Argentina',54),(11,'Armenia',374),(12,'Aruba',297),(13,'Australia',61),(14,'Austria',43),(15,'Azerbaijan',994),(16,'Bahamas',1242),(17,'Bahrain',973),(18,'Bangladesh',880),(19,'Barbados',1246),(20,'Belarus',375),(21,'Belgium',32),(22,'Belize',501),(23,'Benin',229),(24,'Bermuda',1441),(25,'Bhutan',975),(26,'Bolivia',591),(27,'Bosnia and Herzegovina',387),(28,'Botswana',267),(29,'Bouvet Island',0),(30,'Brazil',55),(31,'British Indian Ocean Territory',246),(32,'Brunei Darussalam',673),(33,'Bulgaria',359),(34,'Burkina Faso',226),(35,'Burundi',257),(36,'Cambodia',855),(37,'Cameroon',237),(38,'Canada',1),(39,'Cape Verde',238),(40,'Cayman Islands',1345),(41,'Central African Republic',236),(42,'Chad',235),(43,'Chile',56),(44,'China',86),(45,'Christmas Island',61),(46,'Cocos (Keeling) Islands',672),(47,'Colombia',57),(48,'Comoros',269),(49,'Congo',242),(50,'Congo, the Democratic Republic of the',242),(51,'Cook Islands',682),(52,'Costa Rica',506),(53,'Cote D\'Ivoire',225),(54,'Croatia',385),(55,'Cuba',53),(56,'Cyprus',357),(57,'Czech Republic',420),(58,'Denmark',45),(59,'Djibouti',253),(60,'Dominica',1767),(61,'Dominican Republic',1809),(62,'Ecuador',593),(63,'Egypt',20),(64,'El Salvador',503),(65,'Equatorial Guinea',240),(66,'Eritrea',291),(67,'Estonia',372),(68,'Ethiopia',251),(69,'Falkland Islands (Malvinas)',500),(70,'Faroe Islands',298),(71,'Fiji',679),(72,'Finland',358),(73,'France',33),(74,'French Guiana',594),(75,'French Polynesia',689),(76,'French Southern Territories',0),(77,'Gabon',241),(78,'Gambia',220),(79,'Georgia',995),(80,'Germany',49),(81,'Ghana',233),(82,'Gibraltar',350),(83,'Greece',30),(84,'Greenland',299),(85,'Grenada',1473),(86,'Guadeloupe',590),(87,'Guam',1671),(88,'Guatemala',502),(89,'Guinea',224),(90,'Guinea-Bissau',245),(91,'Guyana',592),(92,'Haiti',509),(93,'Heard Island and Mcdonald Islands',0),(94,'Holy See (Vatican City State)',39),(95,'Honduras',504),(96,'Hong Kong',852),(97,'Hungary',36),(98,'Iceland',354),(99,'India',91),(100,'Indonesia',62),(101,'Iran, Islamic Republic of',98),(102,'Iraq',964),(103,'Ireland',353),(104,'Israel',972),(105,'Italy',39),(106,'Jamaica',1876),(107,'Japan',81),(108,'Jordan',962),(109,'Kazakhstan',7),(110,'Kenya',254),(111,'Kiribati',686),(112,'Korea, Democratic People\'s Republic of',850),(113,'Korea, Republic of',82),(114,'Kuwait',965),(115,'Kyrgyzstan',996),(116,'Lao People\'s Democratic Republic',856),(117,'Latvia',371),(118,'Lebanon',961),(119,'Lesotho',266),(120,'Liberia',231),(121,'Libyan Arab Jamahiriya',218),(122,'Liechtenstein',423),(123,'Lithuania',370),(124,'Luxembourg',352),(125,'Macao',853),(126,'Macedonia, the Former Yugoslav Republic of',389),(127,'Madagascar',261),(128,'Malawi',265),(129,'Malaysia',60),(130,'Maldives',960),(131,'Mali',223),(132,'Malta',356),(133,'Marshall Islands',692),(134,'Martinique',596),(135,'Mauritania',222),(136,'Mauritius',230),(137,'Mayotte',269),(138,'Mexico',52),(139,'Micronesia, Federated States of',691),(140,'Moldova, Republic of',373),(141,'Monaco',377),(142,'Mongolia',976),(143,'Montserrat',1664),(144,'Morocco',212),(145,'Mozambique',258),(146,'Myanmar',95),(147,'Namibia',264),(148,'Nauru',674),(149,'Nepal',977),(150,'Netherlands',31),(151,'Netherlands Antilles',599),(152,'New Caledonia',687),(153,'New Zealand',64),(154,'Nicaragua',505),(155,'Niger',227),(156,'Nigeria',234),(157,'Niue',683),(158,'Norfolk Island',672),(159,'Northern Mariana Islands',1670),(160,'Norway',47),(161,'Oman',968),(162,'Pakistan',92),(163,'Palau',680),(164,'Palestinian Territory',970),(165,'Panama',507),(166,'Papua New Guinea',675),(167,'Paraguay',595),(168,'Peru',51),(169,'Philippines',63),(170,'Pitcairn',0),(171,'Poland',48),(172,'Portugal',351),(173,'Puerto Rico',1787),(174,'Qatar',974),(175,'Reunion',262),(176,'Romania',40),(177,'Russian Federation',70),(178,'Rwanda',250),(179,'Saint Helena',290),(180,'Saint Kitts and Nevis',1869),(181,'Saint Lucia',1758),(182,'Saint Pierre and Miquelon',508),(183,'Saint Vincent and the Grenadines',1784),(184,'Samoa',684),(185,'San Marino',378),(186,'Sao Tome and Principe',239),(187,'Saudi Arabia',966),(188,'Senegal',221),(189,'Serbia and Montenegro',381),(190,'Seychelles',248),(191,'Sierra Leone',232),(192,'Singapore',65),(193,'Slovakia',421),(194,'Slovenia',386),(195,'Solomon Islands',677),(196,'Somalia',252),(197,'South Africa',27),(198,'South Georgia and the South Sandwich Islands',0),(199,'Spain',34),(200,'Sri Lanka',94),(201,'Sudan',249),(202,'Suriname',597),(203,'Svalbard and Jan Mayen',47),(204,'Swaziland',268),(205,'Sweden',46),(206,'Switzerland',41),(207,'Syrian Arab Republic',963),(208,'Taiwan, Province of China',886),(209,'Tajikistan',992),(210,'Tanzania, United Republic of',255),(211,'Thailand',66),(212,'Timor-Leste',670),(213,'Togo',228),(214,'Tokelau',690),(215,'Tonga',676),(216,'Trinidad and Tobago',1868),(217,'Tunisia',216),(218,'Turkey',90),(219,'Turkmenistan',7370),(220,'Turks and Caicos Islands',1649),(221,'Tuvalu',688),(222,'Uganda',256),(223,'Ukraine',380),(224,'United Arab Emirates',971),(225,'United Kingdom',44),(226,'United States',1),(227,'United States Minor Outlying Islands',1),(228,'Uruguay',598),(229,'Uzbekistan',998),(230,'Vanuatu',678),(231,'Venezuela',58),(232,'Viet Nam',84),(233,'Virgin Islands',1284),(234,'Virgin Islands',1340),(235,'Wallis and Futuna',681),(236,'Western Sahara',212),(237,'Yemen',967),(238,'Zambia',260),(239,'Zimbabwe',263);
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Order_status`
--

LOCK TABLES `Order_status` WRITE;
/*!40000 ALTER TABLE `Order_status` DISABLE KEYS */;
INSERT INTO `Order_status` VALUES (1,'in cart'),(2,'recived'),(3,'sent'),(4,'cancelled');
/*!40000 ALTER TABLE `Order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,665675787,'Hans','Hansen','Hansvej','34','Hansby','4321','hans@gmail.com',87654321,'2020-09-28 08:15:54',NULL,2,2,1,NULL),(2,6656757,'Jon','Huggins','Skånestræde','22','Skåne','4321','Jon_Hugimig@gmail.com',87654321,'2020-09-28 08:21:58',NULL,5,2,1,NULL);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Product_options`
--

LOCK TABLES `Product_options` WRITE;
/*!40000 ALTER TABLE `Product_options` DISABLE KEYS */;
INSERT INTO `Product_options` VALUES (1,'Color'),(2,'size');
/*!40000 ALTER TABLE `Product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Product_options_product_options_choice`
--

LOCK TABLES `Product_options_product_options_choice` WRITE;
/*!40000 ALTER TABLE `Product_options_product_options_choice` DISABLE KEYS */;
INSERT INTO `Product_options_product_options_choice` VALUES (1,1),(1,2),(2,3),(2,4);
/*!40000 ALTER TABLE `Product_options_product_options_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Macbook pro 13\"','Apple Computer is very popular  ',8600.00,23,1,NULL,NULL,'2020-12-03 12:50:27'),(2,'Macbook pro 15\"','It is used for many different porposes',10299.00,22,2,NULL,NULL,'2020-12-03 12:50:27'),(3,'MAcbook pro Air 13\"','For student',12000.00,12,1,NULL,NULL,'2020-12-03 12:50:27'),(4,'Ipad Pro 12\"','For Pros',5050.00,3,1,NULL,NULL,'2020-12-03 12:50:27'),(5,'Ipad Pro 10 lite','For the rich guys',12000.00,12,1,NULL,NULL,'2020-12-03 12:50:27'),(6,'Apple Watch 4','Is nice looked ',3500.00,14,1,NULL,NULL,'2020-12-03 12:50:27'),(7,'Apple Watch 3','Is a 4k high res. ',1200.00,6,1,NULL,NULL,'2020-12-03 12:50:27'),(8,'Samsung TV QLED 45\" ','Good quality product at samsung',12900.00,44,23,NULL,NULL,'2020-12-03 12:50:28'),(9,'Samsung TV QLED 8K 49\"','Good Motion and live color mode',23900.00,77,29,NULL,NULL,'2020-12-03 12:50:28'),(10,'Ipad mini','is not very popular, not worjing so good',1900.00,9999,1,NULL,NULL,'2020-12-03 12:50:28'),(11,'Ipad mini pro','is a good product for those who wants to play game',3900.00,799,1,NULL,NULL,'2020-12-03 12:50:28'),(12,'LG TV OLED 75\"','nothing to say about this product, out of word',3800.00,44,39,NULL,NULL,'2020-12-03 12:50:28'),(13,'LG TV OLED Nija Model 89\"','Making you crazy with a so good picture',99000.00,890,49,NULL,NULL,'2020-12-03 12:50:28'),(14,'Iphone 12','Is a good quality and expenssive model',98000.00,988,2,NULL,NULL,'2020-12-03 12:50:28'),(15,'Iphone 11','Good model, and more youser friendly than any else',7800.00,66,2,NULL,NULL,'2020-12-03 12:50:28'),(16,'Iphone X','This product is min blowing',7880.00,88,2,NULL,NULL,'2020-12-03 12:50:28'),(17,'Lampe','Is giving your home a goood light',200.00,12,1,NULL,NULL,'2020-12-03 12:50:28'),(18,'Chair','Nice and relaibeal for daily use',2900.00,23,1,NULL,NULL,'2020-12-03 12:50:28'),(19,'Table','Good looking and good comfort',2000.00,2,1,NULL,NULL,'2020-12-03 12:50:28'),(20,'WorkBench','Is a tool for managing your database',199.00,13,1,NULL,NULL,'2020-12-03 12:50:28'),(21,'IntelliJ ','Is an IDE for coding and realy popular',399.00,33,1,NULL,NULL,'2020-12-03 12:50:28'),(22,'Anti Virus','is keeping you safe',200.00,190,1,NULL,NULL,'2020-12-03 12:50:28');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Products_Categories`
--

LOCK TABLES `Products_Categories` WRITE;
/*!40000 ALTER TABLE `Products_Categories` DISABLE KEYS */;
INSERT INTO `Products_Categories` VALUES (1,1),(2,1),(3,1),(4,2),(5,2),(10,2),(11,2),(14,3),(15,3),(16,3),(6,4),(7,4),(8,5),(9,5),(12,5),(13,5),(17,9),(18,9),(19,9),(20,10),(21,10),(22,10);
/*!40000 ALTER TABLE `Products_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Products_Product_options`
--

LOCK TABLES `Products_Product_options` WRITE;
/*!40000 ALTER TABLE `Products_Product_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `Products_Product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin@shop.dk','1234','Peter','Poulsen',12345678,'shopstreet','12','shoptown','1234',1,'2020-09-30 20:18:16',NULL,1),(2,'hans@gmail.com','1234','Hans','Hansen',87654321,'Hansvej','34','Hansby','4321',2,'2020-09-30 20:18:16',NULL,1),(3,'Peter@gmail.com','1234','Peter','Hansen',87654321,'Petervej','34','København NV','2400',2,'2020-09-30 20:18:16',NULL,1),(4,'a_frederiksen@gmail.com','1234','Anders','Frederiksen',87654321,'Rundelen','34','Søborg','2860',2,'2020-09-30 20:18:16',NULL,1),(5,'Jon_Hugimig@gmail.com','1234','Jon','Huggins',87654321,'Skånestræde','22','Skåne','4321',2,'2020-09-30 20:18:16',NULL,1),(6,'Gurlev@gmail.com','1234','Gurlev','Synddig',87654321,'Roskildevej','19','Roskilde','4000',2,'2020-09-30 20:18:16',NULL,1),(7,'Anders571@gmail.com','ItsaPassword','Anders','Petersen',2147483647,'Valbygade','21','Valby','3200',1,'2020-12-04 00:12:24',NULL,1),(8,'Frederik_hansen@gmail.com','HererJeg','Frederik','Hansen',2147483647,'Kommunevej','56A','København','2400',1,'2020-12-04 00:12:24',NULL,1),(9,'PeterMadsen86@gmail.com','KingSlayer86','Peter','Madsen',2147483647,'Håbstræde','3','Odense','5260',1,'2020-12-04 00:12:24',NULL,1),(10,'HenrikA@gmail.com','Heinrich222','Henrik','Advent',2147483647,'Godhåbsvej','17','Frederiksberg','2000',1,'2020-12-04 00:12:24',NULL,1),(11,'Maria_9881@gmail.com','JegErGud','Maria','Højby',2147483647,'Flemsvej','7','Bindslev','9881',1,'2020-12-04 00:17:27',NULL,1),(12,'PeterPetersen@gmail.com','PeterHer','Peter','Petersen',2147483647,'Rentemestervej','11','København','2400',1,'2020-12-04 00:17:11',NULL,1),(13,'Florince@gmail.com','Flarino292','Florince','Flarino',2147483647,'Pyntevej','49','Tårs','9830',1,'2020-12-04 00:17:11',NULL,1),(14,'Junke@gmail.com','JegerPåVej','Jens','Unkemand',2147483647,'Gådevej','36','Ølsted','3310',1,'2020-12-04 00:17:11',NULL,1),(15,'RikkenRikker@gmail.com','JegerRikke','Rikke','Hovsted',2147483647,'Stedgade','22','Liseleje','3360',1,'2020-12-04 00:17:11',NULL,1);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_options_choice`
--

LOCK TABLES `product_options_choice` WRITE;
/*!40000 ALTER TABLE `product_options_choice` DISABLE KEYS */;
INSERT INTO `product_options_choice` VALUES (1,'Red'),(2,'White'),(3,'Small'),(4,'Large');
/*!40000 ALTER TABLE `product_options_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'web_shop'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_items_for_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_items_for_order`(order_id INT)
BEGIN
        SELECT * FROM items i
        WHERE i.OrdersID = order_id;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_low_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_low_stock`()
BEGIN
        SELECT * FROM Products
        ORDER BY stock ASC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_order_history_for_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_order_history_for_user`(user_id INT)
BEGIN
        SELECT * FROM orders o
        WHERE o.UsersID = user_id;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_list`(amount INT, page_no INT)
BEGIN
        DECLARE results INT DEFAULT 0;
        SET results = amount * page_no - amount;
        SELECT * FROM Products
        LIMIT amount offset results;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_order_total_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_user_order_total_price`(IN UserId long)
BEGIN
DECLARE num_rows INT;
DECLARE totalValue double;

 SELECT orders.ID, orders.userID, SUM(Totel), items.name, items.price
FROM Orders
INNER JOIN items ON orders.ID = items.OrdersID
WHERE Orders.userID = UserId
group by Orders.userID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 10:59:35
