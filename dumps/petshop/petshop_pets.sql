-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: petshop
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
  `animal_id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `especie_id` int DEFAULT NULL,
  `raca` varchar(50) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `dono_id` int DEFAULT NULL,
  PRIMARY KEY (`animal_id`),
  KEY `especie_id` (`especie_id`),
  KEY `dono_id` (`dono_id`),
  CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`especie_id`) REFERENCES `especie` (`especie_id`),
  CONSTRAINT `pets_ibfk_2` FOREIGN KEY (`dono_id`) REFERENCES `dono` (`dono_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Buddy',1,'Pastor Alemão',30.00,3,1),(2,'Max',1,'Pastor Alemão',30.00,5,2),(3,'Bella',2,'SRD',8.70,2,3),(4,'Luna',2,'SRD',8.70,5,4),(5,'Charlie',1,'Pastor Alemão',30.00,4,5),(6,'Lucy',2,'SRD',8.70,5,6),(7,'Cooper',1,'Poodle',20.10,2,7),(8,'Milo',2,'SRD',8.70,3,8),(9,'Bailey',1,'Pastor Alemão',18.70,1,9),(10,'Lily',2,'SRD',8.70,6,10),(11,'Rocky',1,'Pastor Alemão',30.00,4,1),(12,'Chloe',2,'SRD',8.70,3,2),(13,'Daisy',1,'Pastor Alemão',15.30,5,3),(14,'Sadie',2,'SRD',8.70,5,4),(15,'Toby',1,'Pastor Alemão',22.50,6,5),(16,'Mia',2,'SRD',8.70,4,6),(17,'Bailey',1,'Pastor Alemão',30.00,3,7),(18,'Simba',2,'SRD',8.70,1,8),(19,'Sophie',1,'Pastor Alemão',21.80,2,9),(20,'Oscar',2,'SRD',8.70,5,10),(21,'NAGA',4,'MILHO',3.00,1,12),(22,'FELIPE',3,'ARLEQUINA',0.90,4,11),(23,'GROGUE RED',3,'Calopsita',0.40,1,3),(24,'Simba',2,'SRD',8.70,2,13),(25,'Bolinha',2,'SRD',8.70,4,11),(26,'Rex',3,'SRD',15.50,5,4);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17 21:19:14
