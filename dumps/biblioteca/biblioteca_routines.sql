-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
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
-- Temporary view structure for view `livros_com_autores`
--

DROP TABLE IF EXISTS `livros_com_autores`;
/*!50001 DROP VIEW IF EXISTS `livros_com_autores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `livros_com_autores` AS SELECT 
 1 AS `autor_id`,
 1 AS `nome`,
 1 AS `livro_id`,
 1 AS `titulo`,
 1 AS `ano_publicacao`,
 1 AS `genero`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `emprestimos_atuais`
--

DROP TABLE IF EXISTS `emprestimos_atuais`;
/*!50001 DROP VIEW IF EXISTS `emprestimos_atuais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `emprestimos_atuais` AS SELECT 
 1 AS `livro_id`,
 1 AS `titulo`,
 1 AS `ano_publicacao`,
 1 AS `genero`,
 1 AS `usuario_id`,
 1 AS `nome`,
 1 AS `email`,
 1 AS `emprestimos_id`,
 1 AS `data_emprestimo`,
 1 AS `data_devolucao`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `livros_com_autores`
--

/*!50001 DROP VIEW IF EXISTS `livros_com_autores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `livros_com_autores` AS select `autores`.`autor_id` AS `autor_id`,`autores`.`Nome` AS `nome`,`livro`.`livro_id` AS `livro_id`,`livro`.`Titulo` AS `titulo`,`livro`.`Ano_publicacao` AS `ano_publicacao`,`livro`.`Genero` AS `genero` from ((`livro` left join `livros_autores` on((`livro`.`livro_id` = `livros_autores`.`Livro_id`))) left join `autores` on((`autores`.`autor_id` = `livros_autores`.`Autor_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `emprestimos_atuais`
--

/*!50001 DROP VIEW IF EXISTS `emprestimos_atuais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emprestimos_atuais` AS select `livro`.`livro_id` AS `livro_id`,`livro`.`Titulo` AS `titulo`,`livro`.`Ano_publicacao` AS `ano_publicacao`,`livro`.`Genero` AS `genero`,`usuarios`.`usuario_id` AS `usuario_id`,`usuarios`.`Nome` AS `nome`,`usuarios`.`Email` AS `email`,`emprestimos`.`Emprestimos_id` AS `emprestimos_id`,`emprestimos`.`data_emprestimo` AS `data_emprestimo`,`emprestimos`.`data_devolucao` AS `data_devolucao` from ((`livro` join `usuarios`) join `emprestimos`) where ((`emprestimos`.`usuario_id` = `usuarios`.`usuario_id`) and (`emprestimos`.`livro_id` = `livro`.`livro_id`) and (`emprestimos`.`data_devolucao` is null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17 21:19:37
