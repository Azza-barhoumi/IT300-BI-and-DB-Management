-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: omnifoods_dwh
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `staging_stores`
--

DROP TABLE IF EXISTS `staging_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_stores` (
  `Store_ID` bigint DEFAULT NULL,
  `Store_Name` text,
  `Location` text,
  `Store_Size` text,
  `Average_Weekly_Traffic` bigint DEFAULT NULL,
  `Competitor_Presence` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_stores`
--

LOCK TABLES `staging_stores` WRITE;
/*!40000 ALTER TABLE `staging_stores` DISABLE KEYS */;
INSERT INTO `staging_stores` VALUES (1,'Store_1','RURAL','Medium',875,'Yes'),(2,'Store_2','URBAN','Small',2366,'No'),(3,'Store_3','URBAN','Small',2870,'No'),(4,'Store_4','RURAL','Large',1153,'No'),(5,'Store_5','SUBURBAN','Medium',2407,'Yes'),(6,'Store_6','URBAN','Medium',1327,'No'),(7,'Store_7','URBAN','Medium',3613,'Yes'),(8,'Store_8','URBAN','Small',2777,'Yes'),(9,'Store_9','RURAL','Small',4214,'No'),(10,'Store_10','URBAN','Medium',3488,'No'),(11,'Store_11','RURAL','Small',1832,'No'),(12,'Store_12','RURAL','Small',3532,'No'),(13,'Store_13','RURAL','Medium',3410,'Yes'),(14,'Store_14','URBAN','Small',2216,'Yes'),(15,'Store_15','RURAL','Medium',2687,'No'),(16,'Store_16','SUBURBAN','Medium',1084,'Yes'),(17,'Store_17','URBAN','Large',1901,'Yes'),(18,'Store_18','URBAN','Medium',4875,'Yes'),(19,'Store_19','URBAN','Small',2505,'Yes'),(20,'Store_20','URBAN','Large',1838,'Yes'),(21,'Store_21','URBAN','Medium',4286,'No'),(22,'Store_22','RURAL','Large',3608,'Yes'),(23,'Store_23','RURAL','Small',2711,'No'),(24,'Store_24','URBAN','Medium',2299,'No'),(25,'Store_25','RURAL','Small',3156,'No'),(26,'Store_26','URBAN','Large',958,'No'),(27,'Store_27','RURAL','Medium',2376,'Yes'),(28,'Store_28','RURAL','Large',762,'Yes'),(29,'Store_29','RURAL','Large',3084,'No'),(30,'Store_30','RURAL','Medium',3786,'No'),(31,'Store_31','SUBURBAN','Large',2693,'Yes'),(32,'Store_32','URBAN','Small',1042,'No'),(33,'Store_33','SUBURBAN','Large',2228,'No'),(34,'Store_34','RURAL','Small',3077,'Yes');
/*!40000 ALTER TABLE `staging_stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-27  4:24:14
