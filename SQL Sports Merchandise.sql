-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: final database
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '45afd394-0dc6-11f1-9bf6-eb632ebd2a9b:1-866';

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `AddressID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `StreetAddress` varchar(100) NOT NULL,
  `ApartmentSuite` varchar(20) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `ZipCode` varchar(10) NOT NULL,
  `Country` varchar(50) NOT NULL,
  PRIMARY KEY (`AddressID`),
  KEY `fk_addresses_customer` (`CustomerID`),
  CONSTRAINT `fk_addresses_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'123 Main St','Apt 1A','Newark','NJ','07102','USA'),(2,2,'456 Oak Ave',NULL,'Jersey City','NJ','07302','USA'),(3,3,'789 Pine Rd','Suite 5','Hoboken','NJ','07030','USA'),(4,4,'101 Maple Dr',NULL,'Paterson','NJ','07501','USA'),(5,5,'202 Cedar Ln','Apt 2B','Elizabeth','NJ','07201','USA'),(6,6,'303 Birch St',NULL,'Union City','NJ','07087','USA'),(7,7,'404 Walnut Ave','Unit 3C','Clifton','NJ','07011','USA'),(8,8,'505 Spruce Blvd',NULL,'Bayonne','NJ','07002','USA'),(9,9,'606 Chestnut St',NULL,'Passaic','NJ','07055','USA'),(10,10,'707 Willow Way','Apt 4D','Weehawken','NJ','07086','USA'),(11,11,'34 Elmwood Dr',NULL,'Austin','TX','78701','USA'),(12,12,'88 Birchwood Ave','Apt 2A','Chicago','IL','60614','USA'),(13,13,'210 Greenfield Rd',NULL,'Phoenix','AZ','85004','USA'),(14,14,'55 Sunrise Blvd',NULL,'Atlanta','GA','30301','USA'),(15,15,'17 Willow Ln',NULL,'Denver','CO','80203','USA'),(16,16,'402 Brookside Ct','Apt 1B','Seattle','WA','98101','USA'),(17,17,'73 Hillside Ave',NULL,'Nashville','TN','37201','USA'),(18,18,'519 Meadow St',NULL,'Houston','TX','77002','USA'),(19,19,'6 Cedar Grove Rd',NULL,'Columbus','OH','43004','USA'),(20,20,'130 Prospect Ave','Apt 9C','Boston','MA','02101','USA'),(21,21,'88 Lakeview Dr',NULL,'Minneapolis','MN','55401','USA'),(22,22,'305 Magnolia Blvd',NULL,'Charlotte','NC','28201','USA'),(23,23,'47 Cactus Rd',NULL,'Las Vegas','NV','89101','USA'),(24,24,'921 Peach Tree Ln','Unit 3','Orlando','FL','32801','USA'),(25,25,'14 Riverbend Way',NULL,'Portland','OR','97201','USA'),(26,26,'760 Sunset Strip','Apt 5D','Los Angeles','CA','90028','USA'),(27,27,'33 Frontier Blvd',NULL,'Oklahoma City','OK','73101','USA'),(28,28,'501 Royal St',NULL,'New Orleans','LA','70112','USA'),(29,29,'19 Copper Mine Rd',NULL,'Tucson','AZ','85701','USA'),(30,30,'278 Harbor View Dr',NULL,'San Diego','CA','92101','USA'),(31,31,'64 Bourbon St',NULL,'Louisville','KY','40201','USA'),(32,32,'112 Blue Ridge Rd',NULL,'Richmond','VA','23218','USA'),(33,33,'390 Mesa Verde Ave',NULL,'Albuquerque','NM','87101','USA'),(34,34,'57 Pecan Grove Ct',NULL,'San Antonio','TX','78201','USA'),(35,35,'800 Steel City Blvd',NULL,'Pittsburgh','PA','15201','USA'),(36,36,'23 Palmetto Way','Apt 6F','Miami','FL','33101','USA'),(37,37,'145 Prairie Wind Ln',NULL,'Kansas City','MO','64101','USA'),(38,38,'67 Bayou Bend Dr',NULL,'Baton Rouge','LA','70801','USA'),(39,39,'332 Cascade Ave',NULL,'Salt Lake City','UT','84101','USA'),(40,40,'88 Lakewood Ct',NULL,'Indianapolis','IN','46201','USA'),(41,41,'210 Granite Peak Rd',NULL,'Billings','MT','59101','USA'),(42,42,'15 Magnolia Sq','Unit 8','Memphis','TN','38101','USA'),(43,43,'540 Foxhound Trl',NULL,'Raleigh','NC','27601','USA'),(44,44,'99 Great Lakes Dr',NULL,'Detroit','MI','48201','USA'),(45,45,'3 Chesapeake Way',NULL,'Baltimore','MD','21201','USA'),(46,46,'776 Peachtree Rd',NULL,'Birmingham','AL','35201','USA'),(47,47,'428 Lone Star Ave',NULL,'Dallas','TX','75201','USA'),(48,48,'81 Glacier Rd',NULL,'Anchorage','AK','99501','USA'),(49,49,'200 Pineapple Ave',NULL,'Honolulu','HI','96801','USA'),(50,50,'365 Cardinal Blvd',NULL,'Louisville','KY','40202','USA'),(51,51,'12 Oak St',NULL,'Newark','NJ','07102','USA'),(52,52,'45 Pine Ave','Apt 2B','Jersey City','NJ','07302','USA'),(53,53,'78 Maple Rd',NULL,'Philadelphia','PA','19103','USA'),(54,54,'99 Sunset Blvd',NULL,'Los Angeles','CA','90001','USA'),(55,55,'22 Lakeview Dr',NULL,'Chicago','IL','60601','USA'),(56,56,'11 Hill St',NULL,'Houston','TX','77001','USA'),(57,57,'67 River Rd',NULL,'Miami','FL','33101','USA'),(58,58,'88 Cedar Ln',NULL,'Seattle','WA','98101','USA'),(59,59,'101 Birch St',NULL,'Boston','MA','02108','USA'),(60,60,'202 Walnut St',NULL,'Denver','CO','80201','USA'),(61,61,'303 Cherry St',NULL,'Phoenix','AZ','85001','USA'),(62,62,'404 Spruce St',NULL,'Dallas','TX','75201','USA'),(63,63,'505 Elm St',NULL,'San Diego','CA','92101','USA'),(64,64,'606 Palm St',NULL,'Orlando','FL','32801','USA'),(65,65,'707 Vine St',NULL,'Columbus','OH','43004','USA'),(66,66,'808 Ash St',NULL,'Detroit','MI','48201','USA'),(67,67,'909 Poplar St',NULL,'Atlanta','GA','30301','USA'),(68,68,'111 Cypress St',NULL,'Charlotte','NC','28202','USA'),(69,69,'222 Redwood St',NULL,'San Jose','CA','95101','USA'),(70,70,'333 Magnolia St',NULL,'Memphis','TN','37501','USA'),(71,71,'444 Hickory St',NULL,'Austin','TX','73301','USA'),(72,72,'555 Dogwood St',NULL,'Nashville','TN','37201','USA'),(73,73,'666 Willow St',NULL,'Portland','OR','97035','USA'),(74,74,'777 Aspen St',NULL,'Salt Lake City','UT','84101','USA'),(75,75,'888 Fir St',NULL,'Las Vegas','NV','88901','USA'),(76,76,'999 Palm Dr',NULL,'San Antonio','TX','78201','USA'),(77,77,'123 Lake Dr',NULL,'Indianapolis','IN','46201','USA'),(78,78,'234 Forest Dr',NULL,'Cleveland','OH','44101','USA'),(79,79,'345 Meadow Dr',NULL,'Pittsburgh','PA','15201','USA'),(80,80,'456 Valley Dr',NULL,'Buffalo','NY','14201','USA'),(81,81,'567 Ridge Dr',NULL,'Albany','NY','12201','USA'),(82,82,'678 Creek Dr',NULL,'Richmond','VA','23219','USA'),(83,83,'789 Canyon Dr',NULL,'Boise','ID','83701','USA'),(84,84,'890 Desert Dr',NULL,'Tucson','AZ','85701','USA'),(85,85,'901 Ocean Dr',NULL,'San Francisco','CA','94101','USA'),(86,86,'101 Bay St',NULL,'Tampa','FL','33601','USA'),(87,87,'202 Gulf St',NULL,'Mobile','AL','36601','USA'),(88,88,'303 Coast St',NULL,'Savannah','GA','31401','USA'),(89,89,'404 Harbor St',NULL,'Baltimore','MD','21201','USA'),(90,90,'505 Dock St',NULL,'Norfolk','VA','23501','USA'),(91,91,'606 Pier St',NULL,'Charleston','SC','29401','USA'),(92,92,'707 Shore St',NULL,'Wilmington','NC','28401','USA'),(93,93,'808 Beach St',NULL,'Jacksonville','FL','32099','USA'),(94,94,'909 Island St',NULL,'Honolulu','HI','96801','USA'),(95,95,'111 Reef St',NULL,'Anchorage','AK','99501','USA'),(96,96,'222 Glacier St',NULL,'Fairbanks','AK','99701','USA'),(97,97,'333 Summit St',NULL,'Cheyenne','WY','82001','USA'),(98,98,'444 Prairie St',NULL,'Omaha','NE','68101','USA'),(99,99,'555 Field St',NULL,'Des Moines','IA','50301','USA'),(100,100,'666 Plains St',NULL,'Topeka','KS','66601','USA');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryID` int NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'NBA','Basketball merchandise'),(2,'NFL','Football merchandise'),(3,'MLB','Baseball merchandise'),(4,'NHL','Hockey merchandise'),(5,'Soccer','Soccer merchandise'),(6,'College','College sports merchandise'),(7,'Accessories','Sports accessories'),(8,'Jerseys','Team jerseys'),(9,'Equipment','Sports equipment and gear'),(10,'Caps','Team hats and caps');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Smith','john.smith@email.com','201-555-1001'),(2,'Emma','Johnson','emma.johnson@email.com','201-555-1002'),(3,'Michael','Brown','michael.brown@email.com','201-555-1003'),(4,'Sophia','Davis','sophia.davis@email.com','201-555-1004'),(5,'Daniel','Wilson','daniel.wilson@email.com','201-555-1005'),(6,'Olivia','Martinez','olivia.martinez@email.com','201-555-1006'),(7,'James','Anderson','james.anderson@email.com','201-555-1007'),(8,'Ava','Thomas','ava.thomas@email.com','201-555-1008'),(9,'William','Taylor','william.taylor@email.com','201-555-1009'),(10,'Mia','Moore','mia.moore@email.com','201-555-1010'),(11,'James','Carter','james.carter@email.com','732-555-0101'),(12,'Maria','Gonzalez','maria.gonzalez@email.com','908-555-0182'),(13,'Devon','Patel','devon.patel@email.com','201-555-0247'),(14,'Ashley','Kim','ashley.kim@email.com','973-555-0319'),(15,'Marcus','Williams','marcus.w@email.com','551-555-0443'),(16,'Sophia','Nguyen','sophia.nguyen@email.com','609-555-0512'),(17,'Tyler','Robinson','tyler.robinson@email.com','732-555-0634'),(18,'Aisha','Thompson','aisha.thompson@email.com','908-555-0711'),(19,'Ethan','Brooks','ethan.brooks@email.com','201-555-0829'),(20,'Chloe','Martinez','chloe.martinez@email.com','973-555-0906'),(21,'Jordan','Lee','jordan.lee@email.com','551-555-1023'),(22,'Priya','Singh','priya.singh@email.com','609-555-1147'),(23,'Ryan','Davis','ryan.davis@email.com','732-555-1258'),(24,'Brianna','Harris','brianna.harris@email.com','908-555-1374'),(25,'Noah','Jackson','noah.jackson@email.com','201-555-1492'),(26,'Elena','White','elena.white@email.com','973-555-1501'),(27,'Andre','Wilson','andre.wilson@email.com','551-555-1618'),(28,'Fatima','Brown','fatima.brown@email.com','609-555-1732'),(29,'Logan','Taylor','logan.taylor@email.com','732-555-1845'),(30,'Zoe','Anderson','zoe.anderson@email.com','908-555-1963'),(31,'Isaiah','Thomas','isaiah.thomas@email.com','201-555-2071'),(32,'Camille','Moore','camille.moore@email.com','973-555-2189'),(33,'Diego','Garcia','diego.garcia@email.com','551-555-2204'),(34,'Naomi','Clark','naomi.clark@email.com','609-555-2317'),(35,'Caleb','Lewis','caleb.lewis@email.com','732-555-2436'),(36,'Yasmine','Walker','yasmine.walker@email.com','908-555-2541'),(37,'Trevor','Hall','trevor.hall@email.com','201-555-2659'),(38,'Simone','Allen','simone.allen@email.com','973-555-2782'),(39,'Miles','Young','miles.young@email.com','551-555-2893'),(40,'Aaliyah','Hernandez','aaliyah.h@email.com','609-555-2914'),(41,'Connor','King','connor.king@email.com','732-555-3025'),(42,'Jasmine','Wright','jasmine.wright@email.com','908-555-3137'),(43,'Malik','Lopez','malik.lopez@email.com','201-555-3248'),(44,'Grace','Hill','grace.hill@email.com','973-555-3362'),(45,'Elijah','Scott','elijah.scott@email.com','551-555-3471'),(46,'Tiana','Green','tiana.green@email.com','609-555-3589'),(47,'Brendan','Adams','brendan.adams@email.com','732-555-3603'),(48,'Layla','Baker','layla.baker@email.com','908-555-3714'),(49,'Xavier','Nelson','xavier.nelson@email.com','201-555-3826'),(50,'Destiny','Carter','destiny.carter@email.com','973-555-3941'),(51,'Ali','Hassan','ali51@email.com','2015550051'),(52,'Sara','Khan','sara52@email.com','2015550052'),(53,'Omar','Farah','omar53@email.com','2015550053'),(54,'Layla','Nasser','layla54@email.com','2015550054'),(55,'Yusuf','Rahman','yusuf55@email.com','2015550055'),(56,'Noah','Smith','noah56@email.com','2015550056'),(57,'Emma','Johnson','emma57@email.com','2015550057'),(58,'Liam','Brown','liam58@email.com','2015550058'),(59,'Olivia','Davis','olivia59@email.com','2015550059'),(60,'Ava','Miller','ava60@email.com','2015550060'),(61,'Ethan','Wilson','ethan61@email.com','2015550061'),(62,'Mia','Moore','mia62@email.com','2015550062'),(63,'Lucas','Taylor','lucas63@email.com','2015550063'),(64,'Amir','Abbas','amir64@email.com','2015550064'),(65,'Zain','Ali','zain65@email.com','2015550065'),(66,'Huda','Karim','huda66@email.com','2015550066'),(67,'Fatima','Saleh','fatima67@email.com','2015550067'),(68,'Bilal','Ahmed','bilal68@email.com','2015550068'),(69,'Adam','White','adam69@email.com','2015550069'),(70,'Sophia','Clark','sophia70@email.com','2015550070'),(71,'Daniel','Lewis','daniel71@email.com','2015550071'),(72,'Chloe','Walker','chloe72@email.com','2015550072'),(73,'Aiden','Hall','aiden73@email.com','2015550073'),(74,'Ella','Allen','ella74@email.com','2015550074'),(75,'Mason','Young','mason75@email.com','2015550075'),(76,'Hassan','Khalid','hassan76@email.com','2015550076'),(77,'Ibrahim','Qureshi','ibrahim77@email.com','2015550077'),(78,'Zara','Malik','zara78@email.com','2015550078'),(79,'Leila','Farouk','leila79@email.com','2015550079'),(80,'Omar','Said','omar80@email.com','2015550080'),(81,'Henry','King','henry81@email.com','2015550081'),(82,'Grace','Scott','grace82@email.com','2015550082'),(83,'Jack','Green','jack83@email.com','2015550083'),(84,'Lily','Adams','lily84@email.com','2015550084'),(85,'Ryan','Baker','ryan85@email.com','2015550085'),(86,'Nora','Nelson','nora86@email.com','2015550086'),(87,'Owen','Carter','owen87@email.com','2015550087'),(88,'Hannah','Mitchell','hannah88@email.com','2015550088'),(89,'Leo','Perez','leo89@email.com','2015550089'),(90,'Maya','Roberts','maya90@email.com','2015550090'),(91,'Ismail','Rahim','ismail91@email.com','2015550091'),(92,'Yara','Saad','yara92@email.com','2015550092'),(93,'Kareem','Nabil','kareem93@email.com','2015550093'),(94,'Salma','Hadi','salma94@email.com','2015550094'),(95,'Tariq','Aziz','tariq95@email.com','2015550095'),(96,'Chris','Evans','chris96@email.com','2015550096'),(97,'Natalie','Porter','natalie97@email.com','2015550097'),(98,'Kevin','Reed','kevin98@email.com','2015550098'),(99,'Sophie','Bell','sophie99@email.com','2015550099'),(100,'Eli','Ward','eli100@email.com','2015550100');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int NOT NULL,
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `fk_orderdetails_order` (`OrderID`),
  KEY `fk_orderdetails_product` (`ProductID`),
  CONSTRAINT `fk_orderdetails_order` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `fk_orderdetails_product` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,1,1,29.99),(2,2,2,1,54.99),(3,3,3,1,24.99),(4,4,4,1,79.99),(5,5,5,1,19.99),(6,6,6,1,44.99),(7,7,7,1,14.99),(8,8,8,1,84.99),(9,9,9,1,49.99),(10,10,10,1,22.99),(11,11,57,2,55.98),(12,12,12,1,99.99),(13,13,83,3,44.97),(14,14,4,1,79.99),(15,14,29,1,109.99),(16,15,71,2,79.98),(17,15,46,1,64.99),(18,16,2,1,54.99),(19,17,90,2,59.98),(20,17,35,1,59.99),(21,18,14,1,94.99),(22,19,68,2,53.98),(23,20,23,1,99.99),(24,20,51,2,53.98),(25,21,7,3,44.97),(26,22,39,1,69.99),(27,23,61,2,47.98),(28,23,18,1,94.99),(29,24,76,2,35.98),(30,25,9,1,49.99),(31,25,55,2,51.98),(32,26,1,2,59.98),(33,27,80,2,37.98),(34,28,27,1,79.99),(35,28,63,2,53.98),(36,28,16,1,84.99),(37,29,44,1,64.99),(38,30,72,2,59.98),(39,30,5,2,39.98),(40,31,88,2,43.98),(41,32,21,1,74.99),(42,33,66,2,51.98),(43,34,30,1,99.99),(44,35,78,2,31.98),(45,36,11,1,109.99),(46,37,49,1,54.99),(47,37,84,2,55.98),(48,38,6,1,44.99),(49,38,37,1,64.99),(50,39,74,2,49.98),(51,40,25,1,84.99),(52,41,60,2,55.98),(53,42,13,1,89.99),(54,42,70,2,55.98),(55,42,33,1,64.99),(56,43,81,3,41.97),(57,44,20,1,92.99),(58,45,64,2,55.98),(59,46,41,1,64.99),(60,47,87,2,69.98),(61,47,10,1,79.99),(62,48,52,1,94.99),(63,49,28,1,34.99),(64,50,75,1,54.99),(65,50,17,3,74.99),(66,51,69,1,79.99),(67,52,3,1,49.99),(68,53,47,1,54.99),(69,54,85,1,79.99),(70,54,22,1,94.99),(71,55,59,1,64.99),(72,56,8,1,109.99),(73,57,77,1,29.99),(74,58,32,1,84.99),(75,59,67,1,69.99),(76,59,24,1,69.99),(77,60,58,1,59.99),(78,61,15,1,94.99),(79,62,73,1,44.99),(80,63,31,1,79.99),(81,63,79,1,79.99),(82,63,19,1,44.99),(83,64,65,1,69.99),(84,65,26,1,49.99),(85,65,82,1,49.99),(86,66,36,1,54.99),(87,67,54,1,34.99),(88,68,42,1,79.99),(89,68,89,1,84.99),(90,69,34,1,84.99),(91,70,62,1,29.99),(92,71,45,1,109.99),(93,72,86,3,74.99),(94,73,40,1,49.99),(95,74,53,1,79.99),(96,74,48,1,109.99),(97,75,56,1,64.99),(98,76,43,1,94.99),(99,77,50,1,39.99),(100,78,38,1,79.99),(101,101,1,2,59.98),(102,102,2,1,54.99),(103,103,3,2,49.98),(104,104,4,1,79.99),(105,105,5,3,59.97),(106,106,6,1,44.99),(107,107,7,3,44.97),(108,108,8,1,84.99),(109,109,9,1,49.99),(110,110,10,2,45.98),(111,111,11,1,109.99),(112,112,12,1,99.99),(113,113,13,1,89.99),(114,114,14,1,94.99),(115,115,15,2,159.98),(116,116,16,1,84.99),(117,117,17,1,109.99),(118,118,18,1,94.99),(119,119,19,2,169.98),(120,120,20,1,92.99),(121,121,21,2,149.98),(122,122,22,1,79.99),(123,123,23,1,99.99),(124,124,24,1,99.99),(125,125,25,2,169.98),(126,126,26,1,94.99),(127,127,27,2,159.98),(128,128,28,1,84.99),(129,129,29,1,109.99),(130,130,30,1,99.99),(131,131,31,1,64.99),(132,132,32,1,59.99),(133,133,33,1,64.99),(134,134,34,1,69.99),(135,135,35,1,59.99),(136,136,36,1,54.99),(137,137,37,1,64.99),(138,138,38,1,69.99),(139,139,39,1,69.99),(140,140,40,1,59.99),(141,141,41,1,64.99),(142,142,42,1,54.99),(143,143,43,1,54.99),(144,144,44,1,64.99),(145,145,45,1,59.99),(146,146,46,1,64.99),(147,147,47,1,59.99),(148,148,48,1,54.99),(149,149,49,1,54.99),(150,150,50,1,64.99),(151,151,101,1,29.99),(152,152,102,1,24.99),(153,153,103,1,12.99),(154,154,104,1,34.99),(155,155,105,1,22.99),(156,156,106,1,49.99),(157,157,107,1,59.99),(158,158,108,1,89.99),(159,159,109,1,149.99),(160,160,110,1,44.99),(161,161,111,1,19.99),(162,162,112,1,54.99),(163,163,113,1,9.99),(164,164,114,1,79.99),(165,165,115,1,29.99),(166,166,116,1,27.99),(167,167,117,1,49.99),(168,168,118,1,14.99),(169,169,119,1,19.99),(170,170,120,1,39.99);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `AddressID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_orders_customer` (`CustomerID`),
  KEY `fk_orders_address` (`AddressID`),
  CONSTRAINT `fk_orders_address` FOREIGN KEY (`AddressID`) REFERENCES `addresses` (`AddressID`),
  CONSTRAINT `fk_orders_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,'2026-01-05',29.99),(2,2,2,'2026-04-09',54.99),(3,3,3,'2026-03-16',24.99),(4,4,4,'2026-03-24',79.99),(5,5,5,'2026-01-12',19.99),(6,6,6,'2026-03-21',44.99),(7,7,7,'2026-04-02',14.99),(8,8,8,'2026-01-21',84.99),(9,9,9,'2026-03-15',49.99),(10,10,10,'2026-01-27',22.99),(11,14,14,'2026-04-01',109.99),(12,22,22,'2026-03-26',54.99),(13,37,37,'2026-02-01',29.99),(14,5,5,'2026-04-11',189.98),(15,31,31,'2026-04-15',64.99),(16,18,18,'2026-01-01',44.99),(17,43,43,'2026-02-14',99.99),(18,2,2,'2026-02-07',79.99),(19,29,29,'2026-03-17',34.99),(20,50,50,'2026-03-07',154.98),(21,11,11,'2026-02-07',69.99),(22,38,38,'2026-01-20',24.99),(23,7,7,'2026-01-07',94.99),(24,25,25,'2026-01-08',49.99),(25,46,46,'2026-01-12',129.98),(26,13,13,'2026-03-13',84.99),(27,33,33,'2026-04-11',39.99),(28,1,1,'2026-01-27',219.97),(29,48,48,'2026-01-26',59.99),(30,20,20,'2026-03-02',174.98),(31,6,6,'2026-03-19',27.99),(32,41,41,'2026-04-12',109.99),(33,17,17,'2026-02-14',54.99),(34,35,35,'2026-02-27',89.99),(35,28,28,'2026-04-18',44.99),(36,42,42,'2026-01-17',64.99),(37,16,16,'2026-03-08',99.99),(38,3,3,'2026-03-29',144.98),(39,27,27,'2026-04-12',29.99),(40,49,49,'2026-04-19',84.99),(41,12,12,'2026-01-24',54.99),(42,36,36,'2026-02-06',194.97),(43,23,23,'2026-03-29',39.99),(44,8,8,'2026-04-11',109.99),(45,44,44,'2026-02-18',69.99),(46,19,19,'2026-03-03',24.99),(47,32,32,'2026-03-11',159.98),(48,4,4,'2026-01-19',94.99),(49,47,47,'2026-01-03',34.99),(50,15,15,'2026-03-13',129.98),(51,26,26,'2026-02-16',79.99),(52,39,39,'2026-02-19',49.99),(53,10,10,'2026-03-09',54.99),(54,21,21,'2026-04-11',174.98),(55,45,45,'2026-02-26',64.99),(56,30,30,'2026-03-21',109.99),(57,13,13,'2026-02-09',29.99),(58,34,34,'2026-01-02',84.99),(59,2,2,'2026-04-02',139.98),(60,40,40,'2026-04-05',59.99),(61,24,24,'2026-01-25',94.99),(62,50,50,'2026-01-10',44.99),(63,17,17,'2026-04-04',204.97),(64,43,43,'2026-01-06',69.99),(65,11,11,'2026-04-04',99.99),(66,28,28,'2026-01-30',54.99),(67,36,36,'2026-01-09',34.99),(68,5,5,'2026-03-07',164.98),(69,19,19,'2026-04-06',84.99),(70,46,46,'2026-03-17',29.99),(71,33,33,'2026-02-27',109.99),(72,7,7,'2026-02-04',74.99),(73,22,22,'2026-02-18',49.99),(74,48,48,'2026-03-16',189.98),(75,15,15,'2026-04-14',64.99),(76,39,39,'2026-01-13',94.99),(77,1,1,'2026-03-05',39.99),(78,44,44,'2026-03-10',154.98),(79,26,26,'2026-03-28',59.99),(80,31,31,'2026-02-14',84.99),(81,12,12,'2026-01-27',44.99),(82,20,20,'2026-03-26',129.98),(83,3,3,'2026-03-12',69.99),(84,41,41,'2026-04-11',99.99),(85,16,16,'2026-03-07',54.99),(86,35,35,'2026-02-10',174.98),(87,23,23,'2026-01-05',89.99),(88,47,47,'2026-04-06',34.99),(89,8,8,'2026-03-22',144.98),(90,29,29,'2026-03-02',64.99),(91,4,4,'2026-04-10',109.99),(92,38,38,'2026-04-10',49.99),(93,14,14,'2026-03-24',79.99),(94,27,27,'2026-02-03',199.97),(95,45,45,'2026-03-22',59.99),(96,6,6,'2026-04-18',94.99),(97,32,32,'2026-03-19',39.99),(98,18,18,'2026-04-14',124.98),(99,49,49,'2026-01-02',69.99),(100,25,25,'2026-03-25',84.99),(101,51,51,'2026-01-28',59.98),(102,52,52,'2026-04-08',54.99),(103,53,53,'2026-02-20',49.98),(104,54,54,'2026-04-04',79.99),(105,55,55,'2026-03-09',59.97),(106,56,56,'2026-01-26',44.99),(107,57,57,'2026-01-14',44.97),(108,58,58,'2026-02-15',84.99),(109,59,59,'2026-03-07',49.99),(110,60,60,'2026-03-07',45.98),(111,61,61,'2026-03-23',109.99),(112,62,62,'2026-03-09',99.99),(113,63,63,'2026-03-22',89.99),(114,64,64,'2026-03-21',94.99),(115,65,65,'2026-01-18',159.98),(116,66,66,'2026-04-20',84.99),(117,67,67,'2026-03-07',109.99),(118,68,68,'2026-02-14',94.99),(119,69,69,'2026-03-30',169.98),(120,70,70,'2026-04-06',92.99),(121,71,71,'2026-02-04',149.98),(122,72,72,'2026-02-05',79.99),(123,73,73,'2026-04-03',99.99),(124,74,74,'2026-04-19',99.99),(125,75,75,'2026-02-21',169.98),(126,76,76,'2026-02-09',94.99),(127,77,77,'2026-03-25',159.98),(128,78,78,'2026-04-11',84.99),(129,79,79,'2026-01-06',109.99),(130,80,80,'2026-01-01',99.99),(131,81,81,'2026-02-17',64.99),(132,82,82,'2026-02-24',59.99),(133,83,83,'2026-01-15',64.99),(134,84,84,'2026-01-01',69.99),(135,85,85,'2026-03-18',59.99),(136,86,86,'2026-01-31',54.99),(137,87,87,'2026-02-06',64.99),(138,88,88,'2026-04-03',69.99),(139,89,89,'2026-02-10',69.99),(140,90,90,'2026-02-03',59.99),(141,91,91,'2026-02-17',64.99),(142,92,92,'2026-03-07',54.99),(143,93,93,'2026-01-09',54.99),(144,94,94,'2026-01-10',64.99),(145,95,95,'2026-01-04',59.99),(146,96,96,'2026-04-17',64.99),(147,97,97,'2026-01-04',59.99),(148,98,98,'2026-03-05',54.99),(149,99,99,'2026-02-20',54.99),(150,100,100,'2026-03-23',64.99),(151,3,3,'2026-02-10',29.99),(152,7,7,'2026-02-12',24.99),(153,14,14,'2026-02-14',12.99),(154,20,20,'2026-02-16',34.99),(155,25,25,'2026-02-18',22.99),(156,31,31,'2026-02-20',49.99),(157,38,38,'2026-02-22',59.99),(158,42,42,'2026-02-24',89.99),(159,47,47,'2026-02-26',149.99),(160,5,5,'2026-03-01',44.99),(161,11,11,'2026-03-03',19.99),(162,18,18,'2026-03-05',54.99),(163,23,23,'2026-03-07',9.99),(164,29,29,'2026-03-09',79.99),(165,35,35,'2026-03-11',29.99),(166,43,43,'2026-03-13',27.99),(167,50,50,'2026-03-15',49.99),(168,8,8,'2026-03-17',14.99),(169,16,16,'2026-03-19',19.99),(170,22,22,'2026-03-21',39.99);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` int NOT NULL,
  `OrderID` int NOT NULL,
  `PaymentDate` date NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL,
  `AmountPaid` decimal(10,2) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `fk_payments_order` (`OrderID`),
  CONSTRAINT `fk_payments_order` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2026-03-01','Credit Card',29.99),(2,2,'2026-03-02','Debit Card',54.99),(3,3,'2026-03-03','PayPal',24.99),(4,4,'2026-03-04','Credit Card',79.99),(5,5,'2026-03-05','Apple Pay',19.99),(6,6,'2026-03-06','Debit Card',44.99),(7,7,'2026-03-07','Credit Card',14.99),(8,8,'2026-03-08','PayPal',84.99),(9,9,'2026-03-09','Credit Card',49.99),(10,10,'2026-03-10','Apple Pay',22.99),(11,11,'2026-01-04','Debit Card',109.99),(12,12,'2026-01-06','Credit Card',54.99),(13,13,'2026-01-08','PayPal',29.99),(14,14,'2026-01-08','Credit Card',189.98),(15,15,'2026-01-09','Apple Pay',64.99),(16,16,'2026-01-11','Debit Card',44.99),(17,17,'2026-01-11','Credit Card',99.99),(18,18,'2026-01-12','PayPal',79.99),(19,19,'2026-01-14','Credit Card',34.99),(20,20,'2026-01-15','Apple Pay',154.98),(21,21,'2026-01-16','Debit Card',69.99),(22,22,'2026-01-17','Credit Card',24.99),(23,23,'2026-01-19','PayPal',94.99),(24,24,'2026-01-21','Credit Card',49.99),(25,25,'2026-01-21','Apple Pay',129.98),(26,26,'2026-01-22','Debit Card',84.99),(27,27,'2026-01-23','Credit Card',39.99),(28,28,'2026-01-24','PayPal',219.97),(29,29,'2026-01-25','Credit Card',59.99),(30,30,'2026-01-27','Apple Pay',174.98),(31,31,'2026-01-28','Debit Card',27.99),(32,32,'2026-01-29','Credit Card',109.99),(33,33,'2026-01-30','PayPal',54.99),(34,34,'2026-01-31','Credit Card',89.99),(35,35,'2026-02-02','Apple Pay',44.99),(36,36,'2026-02-03','Debit Card',64.99),(37,37,'2026-02-04','Credit Card',99.99),(38,38,'2026-02-05','PayPal',144.98),(39,39,'2026-02-06','Credit Card',29.99),(40,40,'2026-02-07','Apple Pay',84.99),(41,41,'2026-02-08','Debit Card',54.99),(42,42,'2026-02-09','Credit Card',194.97),(43,43,'2026-02-11','PayPal',39.99),(44,44,'2026-02-12','Credit Card',109.99),(45,45,'2026-02-13','Apple Pay',69.99),(46,46,'2026-02-14','Debit Card',24.99),(47,47,'2026-02-15','Credit Card',159.98),(48,48,'2026-02-17','PayPal',94.99),(49,49,'2026-02-18','Credit Card',34.99),(50,50,'2026-02-19','Apple Pay',129.98),(51,51,'2026-02-20','Debit Card',79.99),(52,52,'2026-02-21','Credit Card',49.99),(53,53,'2026-02-22','PayPal',54.99),(54,54,'2026-02-24','Credit Card',174.98),(55,55,'2026-02-25','Apple Pay',64.99),(56,56,'2026-02-26','Debit Card',109.99),(57,57,'2026-02-27','Credit Card',29.99),(58,58,'2026-02-28','PayPal',84.99),(59,59,'2026-03-01','Credit Card',139.98),(60,60,'2026-03-03','Apple Pay',59.99),(61,61,'2026-03-05','Debit Card',94.99),(62,62,'2026-03-06','Credit Card',44.99),(63,63,'2026-03-08','PayPal',204.97),(64,64,'2026-03-09','Credit Card',69.99),(65,65,'2026-03-10','Apple Pay',99.99),(66,66,'2026-03-12','Debit Card',54.99),(67,67,'2026-03-13','Credit Card',34.99),(68,68,'2026-03-14','PayPal',164.98),(69,69,'2026-03-15','Credit Card',84.99),(70,70,'2026-03-17','Apple Pay',29.99),(71,71,'2026-03-18','Debit Card',109.99),(72,72,'2026-03-19','Credit Card',74.99),(73,73,'2026-03-20','PayPal',49.99),(74,74,'2026-03-21','Credit Card',189.98),(75,75,'2026-03-22','Apple Pay',64.99),(76,76,'2026-03-24','Debit Card',94.99),(77,77,'2026-03-25','Credit Card',39.99),(78,78,'2026-03-26','PayPal',154.98),(79,79,'2026-03-27','Credit Card',59.99),(80,80,'2026-03-28','Apple Pay',84.99),(81,81,'2026-03-29','Debit Card',44.99),(82,82,'2026-03-30','Credit Card',129.98),(83,83,'2026-03-31','PayPal',69.99),(84,84,'2026-04-01','Credit Card',99.99),(85,85,'2026-04-02','Apple Pay',54.99),(86,86,'2026-04-03','Debit Card',174.98),(87,87,'2026-04-04','Credit Card',89.99),(88,88,'2026-04-06','PayPal',34.99),(89,89,'2026-04-08','Credit Card',144.98),(90,90,'2026-04-09','Apple Pay',64.99),(91,91,'2026-04-10','Debit Card',109.99),(92,92,'2026-04-11','Credit Card',49.99),(93,93,'2026-04-13','PayPal',79.99),(94,94,'2026-04-15','Credit Card',199.97),(95,95,'2026-04-16','Apple Pay',59.99),(96,96,'2026-04-18','Debit Card',94.99),(97,97,'2026-04-20','Credit Card',39.99),(98,98,'2026-04-22','PayPal',124.98),(99,99,'2026-04-24','Credit Card',69.99),(100,100,'2026-04-26','Apple Pay',84.99),(101,101,'2026-01-01','Credit Card',59.98),(102,102,'2026-01-03','Debit Card',54.99),(103,103,'2026-01-05','PayPal',49.98),(104,104,'2026-01-08','Credit Card',79.99),(105,105,'2026-01-10','Debit Card',59.97),(106,106,'2026-01-12','Credit Card',44.99),(107,107,'2026-01-15','PayPal',44.97),(108,108,'2026-01-17','Credit Card',84.99),(109,109,'2026-01-19','Debit Card',49.99),(110,110,'2026-01-22','Credit Card',45.98),(111,111,'2026-01-24','PayPal',109.99),(112,112,'2026-01-26','Credit Card',99.99),(113,113,'2026-01-29','Debit Card',89.99),(114,114,'2026-01-31','Credit Card',94.99),(115,115,'2026-02-02','PayPal',159.98),(116,116,'2026-02-05','Credit Card',84.99),(117,117,'2026-02-07','Debit Card',109.99),(118,118,'2026-02-09','Credit Card',94.99),(119,119,'2026-02-12','PayPal',169.98),(120,120,'2026-02-14','Credit Card',92.99),(121,121,'2026-02-16','Debit Card',149.98),(122,122,'2026-02-19','Credit Card',79.99),(123,123,'2026-02-21','PayPal',99.99),(124,124,'2026-02-23','Credit Card',99.99),(125,125,'2026-02-26','Debit Card',169.98),(126,126,'2026-02-28','Credit Card',94.99),(127,127,'2026-03-02','PayPal',159.98),(128,128,'2026-03-05','Credit Card',84.99),(129,129,'2026-03-07','Debit Card',109.99),(130,130,'2026-03-09','Credit Card',99.99),(131,131,'2026-03-12','PayPal',64.99),(132,132,'2026-03-14','Credit Card',59.99),(133,133,'2026-03-16','Debit Card',64.99),(134,134,'2026-03-19','Credit Card',69.99),(135,135,'2026-03-21','PayPal',59.99),(136,136,'2026-03-23','Credit Card',54.99),(137,137,'2026-03-26','Debit Card',64.99),(138,138,'2026-03-28','Credit Card',69.99),(139,139,'2026-03-30','PayPal',69.99),(140,140,'2026-04-02','Credit Card',59.99),(141,141,'2026-04-04','Debit Card',64.99),(142,142,'2026-04-06','Credit Card',54.99),(143,143,'2026-04-09','PayPal',54.99),(144,144,'2026-04-11','Credit Card',64.99),(145,145,'2026-04-13','Debit Card',59.99),(146,146,'2026-04-16','Credit Card',64.99),(147,147,'2026-04-18','PayPal',59.99),(148,148,'2026-04-20','Credit Card',54.99),(149,149,'2026-04-23','Debit Card',54.99),(150,150,'2026-04-26','Credit Card',64.99),(151,151,'2026-02-10','Credit Card',29.99),(152,152,'2026-02-12','Apple Pay',24.99),(153,153,'2026-02-14','Debit Card',12.99),(154,154,'2026-02-16','Credit Card',34.99),(155,155,'2026-02-18','PayPal',22.99),(156,156,'2026-02-20','Credit Card',49.99),(157,157,'2026-02-22','Apple Pay',59.99),(158,158,'2026-02-24','Debit Card',89.99),(159,159,'2026-02-26','Credit Card',149.99),(160,160,'2026-03-01','PayPal',44.99),(161,161,'2026-03-03','Debit Card',19.99),(162,162,'2026-03-05','Credit Card',54.99),(163,163,'2026-03-07','Apple Pay',9.99),(164,164,'2026-03-09','Credit Card',79.99),(165,165,'2026-03-11','PayPal',29.99),(166,166,'2026-03-13','Debit Card',27.99),(167,167,'2026-03-15','Credit Card',49.99),(168,168,'2026-03-17','Apple Pay',14.99),(169,169,'2026-03-19','Credit Card',19.99),(170,170,'2026-03-21','Debit Card',39.99);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `CategoryID` int NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Stock` int NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `fk_products_category` (`CategoryID`),
  CONSTRAINT `fk_products_category` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Lakers T-Shirt',29.99,50),(2,2,'Giants Hoodie',54.99,30),(3,3,'Yankees Cap',24.99,40),(4,4,'Rangers Jersey',79.99,20),(5,5,'Barcelona Scarf',19.99,60),(6,6,'NJIT Hoodie',44.99,25),(7,7,'Sports Water Bottle',14.99,100),(8,8,'Warriors Jersey',84.99,15),(9,2,'Jets Hoodie',49.99,35),(10,10,'Mets Cap',22.99,45),(11,8,'Celtics Authentic Jersey',109.99,20),(12,8,'Cowboys Home Jersey',99.99,25),(13,8,'Red Sox Replica Jersey',89.99,22),(14,8,'Penguins Home Jersey',94.99,18),(15,8,'LA Galaxy Home Jersey',79.99,28),(16,8,'Michigan Wolverines Jersey',84.99,20),(17,8,'Bulls Retro Swingman Jersey',109.99,15),(18,8,'Seahawks Away Jersey',94.99,18),(19,8,'Cubs Authentic Jersey',84.99,22),(20,8,'Maple Leafs Away Jersey',92.99,17),(21,8,'Chicago Fire Home Jersey',74.99,28),(22,8,'Alabama Crimson Tide Jersey',79.99,20),(23,8,'76ers Statement Jersey',99.99,20),(24,8,'Steelers Gold Rush Jersey',99.99,25),(25,8,'Braves Authentic Jersey',84.99,19),(26,8,'Bruins Winter Classic Jersey',94.99,14),(27,8,'Seattle Sounders Home Jersey',79.99,24),(28,8,'Ohio State Buckeyes Jersey',84.99,22),(29,8,'Bucks Giannis Jersey',109.99,20),(30,8,'49ers Replica Jersey',99.99,21),(31,1,'Celtics Championship Hoodie',64.99,40),(32,2,'Cowboys Pullover Hoodie',59.99,45),(33,3,'Red Sox Full-Zip Hoodie',64.99,35),(34,4,'Blackhawks Winter Hoodie',69.99,30),(35,5,'Portland Timbers Hoodie',59.99,32),(36,6,'Duke Blue Devils Hoodie',54.99,38),(37,2,'Ravens Sideline Hoodie',64.99,35),(38,1,'Nuggets City Edition Hoodie',69.99,27),(39,2,'Patriots Sideline Hoodie',69.99,38),(40,3,'Astros World Series Hoodie',59.99,30),(41,4,'Capitals Stanley Cup Hoodie',64.99,28),(42,5,'Atlanta United Hoodie',54.99,30),(43,6,'Penn State Nittany Lions Hoodie',54.99,42),(44,2,'Broncos Orange Crush Hoodie',64.99,33),(45,1,'Thunder OKC Hoodie',59.99,31),(46,2,'Eagles Midnight Green Hoodie',64.99,36),(47,3,'Mariners Full-Zip Hoodie',59.99,29),(48,5,'Orlando City SC Hoodie',54.99,29),(49,6,'Notre Dame Fighting Irish Hoodie',54.99,35),(50,2,'Vikings Purple Reign Hoodie',64.99,28),(51,10,'Dodgers Snapback Hat',26.99,50),(52,10,'Packers Camo Cap',29.99,45),(53,10,'Cardinals Fitted Cap',27.99,55),(54,10,'Blackhawks Snapback',28.99,40),(55,10,'LAFC Black and Gold Cap',25.99,60),(56,10,'Michigan Wolverines Cap',24.99,70),(57,10,'Bulls Fitted Cap',27.99,48),(58,10,'Raiders Silver and Black Cap',28.99,53),(59,10,'Twins Snapback Cap',25.99,50),(60,10,'Canucks Fitted Cap',27.99,42),(61,10,'Portland Timbers Cap',23.99,58),(62,10,'Kentucky Wildcats Cap',23.99,65),(63,10,'Suns Snapback Hat',26.99,47),(64,10,'Saints Fleur-de-Lis Cap',27.99,55),(65,10,'Padres City Connect Cap',31.99,52),(66,10,'Lightning Snapback',25.99,44),(67,10,'Inter Miami CF Cap',26.99,50),(68,10,'Texas Longhorns Snapback',26.99,60),(69,10,'Grizzlies Fitted Cap',27.99,43),(70,10,'White Sox Southside Cap',27.99,42),(71,7,'Pro Grip Gym Bag',39.99,80),(72,7,'Compression Training Shorts',29.99,90),(73,7,'Adjustable Resistance Bands Set',19.99,120),(74,7,'Foam Roller Recovery Kit',24.99,75),(75,7,'Sports Insulated Tumbler 32oz',34.99,85),(76,7,'Athletic Knee Sleeve Pair',17.99,110),(77,7,'Jump Rope Speed Cable',12.99,130),(78,7,'Weightlifting Wrist Wraps',15.99,95),(79,7,'Adjustable Dumbbell 25lb',49.99,40),(80,7,'Sport Towel Microfiber Pack',18.99,100),(81,7,'Shaker Bottle 28oz',13.99,115),(82,7,'Athletic Headband 3-Pack',11.99,140),(83,7,'Compression Arm Sleeves',14.99,105),(84,7,'Agility Ladder Training Set',27.99,60),(85,7,'Sports Fanny Pack',22.99,75),(86,5,'Barcelona Home Scarf',21.99,65),(87,5,'Manchester United Away Tee',34.99,55),(88,5,'Columbus Crew Scarf',21.99,58),(89,5,'Inter Miami CF Scarf',22.99,60),(90,5,'LAFC Pullover Tee',29.99,48),(91,6,'Alabama Crimson Tide Tee',27.99,80),(92,6,'Ohio State Buckeyes Tee',26.99,75),(93,6,'Penn State Nittany Lions Cap',24.99,60),(94,6,'Notre Dame Fighting Irish Tee',27.99,65),(95,6,'Syracuse Orange Hoodie',54.99,38),(96,1,'Hornets Buzz City Tee',29.99,50),(97,1,'Pistons Classic Blue Tee',29.99,55),(98,2,'Chiefs Super Bowl Tee',34.99,100),(99,3,'Royals Powder Blue Throwback Tee',29.99,47),(100,4,'Flyers Orange Crush Tee',29.99,45),(101,9,'Nike Basketball',29.99,50),(102,9,'Adidas Soccer Ball',24.99,60),(103,9,'Rawlings Baseball',12.99,100),(104,9,'Wilson Football',34.99,45),(105,9,'Spalding Volleyball',22.99,40),(106,9,'Wilson Tennis Racket',49.99,30),(107,9,'Rawlings Baseball Glove',59.99,25),(108,9,'Under Armour Football Helmet',89.99,20),(109,9,'Spalding Basketball Hoop',149.99,15),(110,9,'Wilson Baseball Bat',44.99,35),(111,9,'Franklin Baseball Batting Gloves',19.99,70),(112,9,'Adidas Hockey Stick',54.99,25),(113,9,'Bauer Hockey Puck',9.99,120),(114,9,'Nike Football Shoulder Pads',79.99,20),(115,9,'Wilson Badminton Racket',29.99,40),(116,9,'Spalding Rugby Ball',27.99,35),(117,9,'Rawlings Catcher\'s Mask',49.99,22),(118,9,'Adidas Training Cones Set',14.99,80),(119,9,'Nike Speed Agility Ladder',19.99,65),(120,9,'Wilson Pickleball Paddle',39.99,45);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-29 11:10:35
