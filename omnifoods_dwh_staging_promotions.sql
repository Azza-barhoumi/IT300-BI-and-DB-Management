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
-- Table structure for table `staging_promotions`
--

DROP TABLE IF EXISTS `staging_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staging_promotions` (
  `Promotion_ID` bigint DEFAULT NULL,
  `Promotion_Type` text,
  `Start_Date` text,
  `End_Date` text,
  `Description` text,
  `Promotion_Cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staging_promotions`
--

LOCK TABLES `staging_promotions` WRITE;
/*!40000 ALTER TABLE `staging_promotions` DISABLE KEYS */;
INSERT INTO `staging_promotions` VALUES (1,'Buy-One-Get-One','2025-01-08','2025-01-22','Promotion_1',292.37),(2,'Buy-One-Get-One','2025-01-01','2025-01-17','Promotion_2',441.08),(3,'Buy-One-Get-One','2025-01-05','2025-01-22','Promotion_3',356.72),(4,'Buy-One-Get-One','2025-01-03','2025-01-18','Promotion_4',367.04),(5,'Discount','2025-01-10','2025-01-23','Promotion_5',154.86),(6,'Buy-One-Get-One','2025-01-01','2025-01-15','Promotion_6',625.76),(7,'Discount','2025-01-01','2025-01-23','Promotion_7',172.1),(8,'Discount','2025-01-02','2025-01-24','Promotion_8',161.16),(9,'Discount','2025-01-07','2025-01-16','Promotion_9',947.44),(10,'Discount','2025-01-10','2025-01-24','Promotion_10',135.77);
/*!40000 ALTER TABLE `staging_promotions` ENABLE KEYS */;
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
