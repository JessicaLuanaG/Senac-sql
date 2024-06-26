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
-- Table structure for table `dono`
--

DROP TABLE IF EXISTS `dono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dono` (
  `dono_id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idade` int DEFAULT NULL,
  `profissao` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dono_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dono`
--

LOCK TABLES `dono` WRITE;
/*!40000 ALTER TABLE `dono` DISABLE KEYS */;
INSERT INTO `dono` VALUES (1,'John Doe',35,'Instrutor do Senac','AV. Tupi 385'),(2,'Jane Smith',28,'Instrutor do Senac','AV. Tupi 385'),(3,'Michael Johnson',42,'Instrutor do Senac','AV. Tupi 385'),(4,'Emily Brown',50,'Instrutor do Senac','AV. Tupi 385'),(5,'David Wilson',30,'Instrutor do Senac','AV. Tupi 385'),(6,'Ana Maria',45,'Instrutor do Senac','AV. Tupi 385'),(7,'James Martinez',39,'Instrutor do Senac','AV. Tupi 385'),(8,'Olivia Jones',60,'Instrutor do Senac','AV. Tupi 385'),(9,'William Anderson',55,'Instrutor do Senac','AV. Tupi 385'),(10,'Sophia White',33,'Instrutor do Senac','AV. Tupi 385'),(11,'Felipe BUT',12,'Instrutor do Senac','AV. Tupi 385'),(12,'BRUNA FIGUEIREDO',23,'Instrutor do Senac','AV. Tupi 385'),(13,'Mariana',30,'Instrutor do Senac','AV. Tupi 385'),(14,'Alice',25,'Instrutor do Senac','AV.Tupi 385'),(15,'matheus',19,'Enfermeiro','Avenida Brasil');
/*!40000 ALTER TABLE `dono` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `novo_demais` BEFORE INSERT ON `dono` FOR EACH ROW begin if new.idade < 10 then signal sqlstate '45000' set message_text = 'dono novo demais'; end if; end */;;
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

-- Dump completed on 2024-06-17 21:19:14
