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
-- Temporary view structure for view `petscomdono`
--

DROP TABLE IF EXISTS `petscomdono`;
/*!50001 DROP VIEW IF EXISTS `petscomdono`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `petscomdono` AS SELECT 
 1 AS `nome_Pets`,
 1 AS `nome_dono`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `especieanimalmaisvelho`
--

DROP TABLE IF EXISTS `especieanimalmaisvelho`;
/*!50001 DROP VIEW IF EXISTS `especieanimalmaisvelho`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `especieanimalmaisvelho` AS SELECT 
 1 AS `nome`,
 1 AS `Max(pets.idade)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `donoquantidadeanimaldiferenteespecie`
--

DROP TABLE IF EXISTS `donoquantidadeanimaldiferenteespecie`;
/*!50001 DROP VIEW IF EXISTS `donoquantidadeanimaldiferenteespecie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donoquantidadeanimaldiferenteespecie` AS SELECT 
 1 AS `nome`,
 1 AS `COUNT(Distinct Pets.especie_id)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `especiequantidadeanimal`
--

DROP TABLE IF EXISTS `especiequantidadeanimal`;
/*!50001 DROP VIEW IF EXISTS `especiequantidadeanimal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `especiequantidadeanimal` AS SELECT 
 1 AS `nome`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `animalcomespecie`
--

DROP TABLE IF EXISTS `animalcomespecie`;
/*!50001 DROP VIEW IF EXISTS `animalcomespecie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `animalcomespecie` AS SELECT 
 1 AS `nome_especie`,
 1 AS `nome_Pets`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `especieanimalpesomedio`
--

DROP TABLE IF EXISTS `especieanimalpesomedio`;
/*!50001 DROP VIEW IF EXISTS `especieanimalpesomedio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `especieanimalpesomedio` AS SELECT 
 1 AS `nome`,
 1 AS `AVG(pets.peso)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `donoanimalmaisvelhoidade`
--

DROP TABLE IF EXISTS `donoanimalmaisvelhoidade`;
/*!50001 DROP VIEW IF EXISTS `donoanimalmaisvelhoidade`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donoanimalmaisvelhoidade` AS SELECT 
 1 AS `nome`,
 1 AS `MAX(Distinct Pets.idade)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nomeanimalcomamigos`
--

DROP TABLE IF EXISTS `nomeanimalcomamigos`;
/*!50001 DROP VIEW IF EXISTS `nomeanimalcomamigos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nomeanimalcomamigos` AS SELECT 
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `petsmaiorque5kg`
--

DROP TABLE IF EXISTS `petsmaiorque5kg`;
/*!50001 DROP VIEW IF EXISTS `petsmaiorque5kg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `petsmaiorque5kg` AS SELECT 
 1 AS `animal_id`,
 1 AS `nome`,
 1 AS `especie_id`,
 1 AS `raca`,
 1 AS `peso`,
 1 AS `idade`,
 1 AS `dono_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `todosnomes`
--

DROP TABLE IF EXISTS `todosnomes`;
/*!50001 DROP VIEW IF EXISTS `todosnomes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `todosnomes` AS SELECT 
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `petscompeso`
--

DROP TABLE IF EXISTS `petscompeso`;
/*!50001 DROP VIEW IF EXISTS `petscompeso`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `petscompeso` AS SELECT 
 1 AS `nome_Pets`,
 1 AS `peso_pets`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `donoquantidadeanimal`
--

DROP TABLE IF EXISTS `donoquantidadeanimal`;
/*!50001 DROP VIEW IF EXISTS `donoquantidadeanimal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donoquantidadeanimal` AS SELECT 
 1 AS `nome`,
 1 AS `COUNT(Distinct Pets.raca)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `especiecommaisde10animais`
--

DROP TABLE IF EXISTS `especiecommaisde10animais`;
/*!50001 DROP VIEW IF EXISTS `especiecommaisde10animais`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `especiecommaisde10animais` AS SELECT 
 1 AS `nome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `donomediaidadeanimal`
--

DROP TABLE IF EXISTS `donomediaidadeanimal`;
/*!50001 DROP VIEW IF EXISTS `donomediaidadeanimal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donomediaidadeanimal` AS SELECT 
 1 AS `nome`,
 1 AS `AVG(Distinct Pets.Idade)`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `petscomdono`
--

/*!50001 DROP VIEW IF EXISTS `petscomdono`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `petscomdono` AS select `pets`.`nome` AS `nome_Pets`,`dono`.`nome` AS `nome_dono` from (`pets` join `dono` on((`pets`.`dono_id` = `dono`.`dono_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `especieanimalmaisvelho`
--

/*!50001 DROP VIEW IF EXISTS `especieanimalmaisvelho`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `especieanimalmaisvelho` AS select `especie`.`nome` AS `nome`,max(`pets`.`idade`) AS `Max(pets.idade)` from (`pets` join `especie`) where (`especie`.`especie_id` = `pets`.`especie_id`) group by `especie`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donoquantidadeanimaldiferenteespecie`
--

/*!50001 DROP VIEW IF EXISTS `donoquantidadeanimaldiferenteespecie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donoquantidadeanimaldiferenteespecie` AS select `dono`.`nome` AS `nome`,count(distinct `pets`.`especie_id`) AS `COUNT(Distinct Pets.especie_id)` from ((`pets` join `dono`) join `especie`) where ((`pets`.`dono_id` = `dono`.`dono_id`) and (`especie`.`especie_id` = `pets`.`especie_id`)) group by `dono`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `especiequantidadeanimal`
--

/*!50001 DROP VIEW IF EXISTS `especiequantidadeanimal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `especiequantidadeanimal` AS select `especie`.`nome` AS `nome`,count(0) AS `COUNT(*)` from (`pets` join `especie`) where (`especie`.`especie_id` = `pets`.`especie_id`) group by `especie`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `animalcomespecie`
--

/*!50001 DROP VIEW IF EXISTS `animalcomespecie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `animalcomespecie` AS select `especie`.`nome` AS `nome_especie`,`pets`.`nome` AS `nome_Pets` from (`pets` join `especie`) where (`especie`.`especie_id` = `pets`.`especie_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `especieanimalpesomedio`
--

/*!50001 DROP VIEW IF EXISTS `especieanimalpesomedio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `especieanimalpesomedio` AS select `especie`.`nome` AS `nome`,avg(`pets`.`peso`) AS `AVG(pets.peso)` from (`pets` join `especie`) where (`especie`.`especie_id` = `pets`.`especie_id`) group by `especie`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donoanimalmaisvelhoidade`
--

/*!50001 DROP VIEW IF EXISTS `donoanimalmaisvelhoidade`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donoanimalmaisvelhoidade` AS select `dono`.`nome` AS `nome`,max(`pets`.`idade`) AS `MAX(Distinct Pets.idade)` from ((`pets` join `dono`) join `especie`) where ((`pets`.`dono_id` = `dono`.`dono_id`) and (`especie`.`especie_id` = `pets`.`especie_id`)) group by `dono`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nomeanimalcomamigos`
--

/*!50001 DROP VIEW IF EXISTS `nomeanimalcomamigos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nomeanimalcomamigos` AS select `pets`.`nome` AS `nome` from (`friends` join `pets`) where (`friends`.`animal_id1` = `pets`.`animal_id`) union select `pets`.`nome` AS `nome` from (`friends` join `pets`) where (`friends`.`animal_id2` = `pets`.`animal_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `petsmaiorque5kg`
--

/*!50001 DROP VIEW IF EXISTS `petsmaiorque5kg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `petsmaiorque5kg` AS select `pets`.`animal_id` AS `animal_id`,`pets`.`nome` AS `nome`,`pets`.`especie_id` AS `especie_id`,`pets`.`raca` AS `raca`,`pets`.`peso` AS `peso`,`pets`.`idade` AS `idade`,`pets`.`dono_id` AS `dono_id` from `pets` where (`pets`.`peso` > 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `todosnomes`
--

/*!50001 DROP VIEW IF EXISTS `todosnomes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `todosnomes` AS select `pets`.`nome` AS `nome` from `pets` union all select `especie`.`nome` AS `nome` from `especie` union all select `dono`.`nome` AS `nome` from `dono` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `petscompeso`
--

/*!50001 DROP VIEW IF EXISTS `petscompeso`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `petscompeso` AS select `pets`.`nome` AS `nome_Pets`,`pets`.`peso` AS `peso_pets` from `pets` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donoquantidadeanimal`
--

/*!50001 DROP VIEW IF EXISTS `donoquantidadeanimal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donoquantidadeanimal` AS select `dono`.`nome` AS `nome`,count(distinct `pets`.`raca`) AS `COUNT(Distinct Pets.raca)` from ((`pets` join `dono`) join `especie`) where ((`pets`.`dono_id` = `dono`.`dono_id`) and (`especie`.`especie_id` = `pets`.`especie_id`)) group by `dono`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `especiecommaisde10animais`
--

/*!50001 DROP VIEW IF EXISTS `especiecommaisde10animais`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `especiecommaisde10animais` AS select distinct `especie`.`nome` AS `nome` from ((`pets` join `especie` on((`especie`.`especie_id` = `pets`.`especie_id`))) join (select `pets`.`especie_id` AS `especie_id`,count(0) AS `num_animais` from `pets` group by `pets`.`especie_id` having (count(0) > 10)) `c1` on((`pets`.`especie_id` = `c1`.`especie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donomediaidadeanimal`
--

/*!50001 DROP VIEW IF EXISTS `donomediaidadeanimal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donomediaidadeanimal` AS select `dono`.`nome` AS `nome`,avg(distinct `pets`.`idade`) AS `AVG(Distinct Pets.Idade)` from (`pets` join `dono`) where (`dono`.`dono_id` = `pets`.`dono_id`) group by `dono`.`nome` */;
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

-- Dump completed on 2024-06-17 21:19:14
