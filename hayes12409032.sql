-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hayes12409032
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `candidate_id` int NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` int NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (101,'Will','Smith','1 Belhair Drive, CA, USA',871234567),(102,'Jackie','Chan','5 Ave. NYC, USA',879876543),(103,'Brad','Bitt','277 Hollowhood Lane, CA, USA',891111123),(104,'Harrison ','Ford','88 Millennium Drive, Claire, Ireland',839174556),(105,'Liam','Neeson','22 Collins Road, Cork, Ireland',896667281),(106,'Jim ','Carrey','99 Ace drive, Limkrick, Ireland',897364519),(107,'Cameron ','Diaz','833 Huntstown, Kerry, Ireland',856738152),(108,'Sandra ','Bullock','11 Oceans drive, Kildare, Ireland',897361500),(109,'Winona','Ryder','6 Hawkins, IN, USA ',983638819),(110,'Samuel','Jackson','729 Oakwood Drive, Wicklow, Ireland',897625101),(111,'Morgan','Freeman','728 Shawwood oaks, Laois, Ireland',893627199),(112,'Denzel','Washington','333 King Street, VA, USA',876637281),(113,'Leo','DuCaprio','32 Rosepine road, Waterford, Ireland',853628119),(114,'Macaulay','Culkin','922 Shepardstown, Kilkenny, Ireland',863518192),(115,'Mara ','Willson','87 Oldtown, Dublin, Ireland ',862893817),(116,'James ','Gandolfini','77 Bington, Newwark, NJ, USA',873536271),(117,'Hank ','Azaria','62 Brockville, Springfield, Dublin, Ireland',865340192),(118,'Yeardley','Smith','742 UCD Campus, Dublin Ireland',864739201),(119,'Jon','Hamm','73 Drapper Grove, NY, USA',875272919),(120,'Brian ','Cranston','98 Halwood Lawns, Dublin, Ireland',867382910),(121,'Snoop ','Dogg','88 Compton, Roscommon, Ireland',839372721),(122,'Bruce ','Dickison','928 Maidans Way, Dublin, Ireland',898263781),(123,'Brian ','Cox','92 Manchester walk, Dublin, Ireland',863892761),(124,'Leslie','Nielsen','92 Drebin Drive, Dublin, Ireland ',876543889),(125,'Courtney','Cox','98 South Gardens, Mayo, Ireland',873681911);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_skills`
--

DROP TABLE IF EXISTS `candidate_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_skills` (
  `candidate_id` int NOT NULL,
  `skills_id` int NOT NULL,
  PRIMARY KEY (`candidate_id`,`skills_id`),
  KEY `fk_cand_skill_idx` (`skills_id`),
  CONSTRAINT `fk_cand_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`),
  CONSTRAINT `fk_cand_skill` FOREIGN KEY (`skills_id`) REFERENCES `skill` (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_skills`
--

LOCK TABLES `candidate_skills` WRITE;
/*!40000 ALTER TABLE `candidate_skills` DISABLE KEYS */;
INSERT INTO `candidate_skills` VALUES (102,301),(103,301),(104,301),(106,301),(108,301),(111,301),(114,301),(115,301),(116,301),(118,301),(121,301),(125,301),(101,302),(103,302),(106,302),(107,302),(114,302),(116,302),(121,302),(125,302),(103,303),(105,303),(109,303),(112,303),(117,303),(119,303),(122,303),(101,304),(104,304),(105,304),(107,304),(115,304),(119,304),(121,304),(123,304),(103,305),(104,305),(105,305),(109,305),(110,305),(111,305),(112,305),(113,305),(115,305),(118,305),(119,305),(123,305),(102,306),(105,306),(107,306),(109,306),(111,306),(114,306),(115,306),(116,306),(118,306),(120,306),(122,306),(123,306),(124,306),(101,307),(109,307),(111,307),(113,307),(114,307),(116,307),(118,307),(120,307),(122,307),(124,307),(125,307),(101,308),(107,308),(110,308),(111,308),(112,308),(115,308),(117,308),(119,308),(120,308),(121,308),(102,309),(103,309),(104,309),(106,309),(113,309),(116,309),(118,309),(120,309),(122,309),(124,309),(125,309),(103,310),(106,310),(108,310),(110,310),(112,310),(117,310),(123,310),(106,311),(108,311),(110,311),(112,311),(119,311),(121,311),(122,311),(124,311),(125,311),(102,312),(105,312),(107,312),(108,312),(110,312),(113,312),(117,312),(119,312),(124,312),(125,312),(102,313),(104,313),(106,313),(109,313),(110,313),(113,313),(115,313),(116,313),(117,313),(120,313),(123,313),(101,314),(102,314);
/*!40000 ALTER TABLE `candidate_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hired`
--

DROP TABLE IF EXISTS `hired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hired` (
  `employee_id` int NOT NULL,
  `interview_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `interview_id_UNIQUE` (`interview_id`),
  CONSTRAINT `fk_inerview_num` FOREIGN KEY (`interview_id`) REFERENCES `interviews` (`interview_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hired`
--

LOCK TABLES `hired` WRITE;
/*!40000 ALTER TABLE `hired` DISABLE KEYS */;
INSERT INTO `hired` VALUES (510,40007),(509,40010),(508,40012),(507,40016),(506,40019),(505,40020),(504,40024),(503,40031),(502,40033),(501,40035);
/*!40000 ALTER TABLE `hired` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `hospital_id` int NOT NULL,
  `hospital_name` varchar(45) NOT NULL,
  `hospital_address` varchar(100) NOT NULL,
  `hospital_phone` int NOT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'St. Ronan Keatings','123 Fakestreest, Dublin, Ireland',877767788),(2,'St. Lamars ','234 Grove Street, Dublin, Ireland',871234567),(3,'St. Odels','5th Ave, Dublin 3, Ireland',861234567),(4,'St. Simones','374 Evergreen Semi D, Cork, Ireland',851234567),(5,'St. Levons','999 Beside Supermacs, Galway, Ireland',837654321),(6,'St. Jamels ','726 The only building in Louth, Louth, Ireland',891256896),(7,'St. Venessas','369 Hillcrest Ave, Letterkeny, Ireland',856789123),(8,'St. Venus','743 Long drive, Misen Head, Cork, Ireland',899876543),(9,'St. Rafas','189 In the mountains, Kerry, Ireland',861238762),(10,'St. Santonios','234 Beside the old river, Meath, Ireland',890986543),(11,'St. Zekes','839 In the small field, Mayo, Ireland ',875263748),(12,'St. Terrells','627 In the big field, Mayo, Ireland',832734993),(13,'St. Ziggys','109 Accorn Drive, Offaly, Ireland',896273510);
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `interview_id` int NOT NULL,
  `date_of_interview` date NOT NULL,
  `candidate_id` int NOT NULL,
  `hospital_id` int NOT NULL,
  `job_offer` varchar(3) DEFAULT NULL,
  `position_advertised` int NOT NULL,
  PRIMARY KEY (`interview_id`),
  KEY `fk_hospital_id_idx` (`hospital_id`),
  KEY `fk_cand_id_idx` (`candidate_id`),
  KEY `fk_pos_ad_idx` (`position_advertised`),
  CONSTRAINT `fk_canndidi` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_hos_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`hospital_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pos_avail` FOREIGN KEY (`position_advertised`) REFERENCES `positions_available` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES (40001,'2020-01-01',101,1,'No',201),(40002,'2020-01-12',102,2,'No',208),(40003,'2020-01-15',103,5,'No',206),(40004,'2020-01-02',104,1,'No',203),(40005,'2020-01-03',105,7,'No',201),(40006,'2020-01-02',106,5,'Yes',208),(40007,'2020-01-06',107,3,'Yes',207),(40008,'2020-01-10',108,10,'No',207),(40009,'2020-01-20',109,13,'No',210),(40010,'2020-01-04',110,11,'Yes',201),(40011,'2020-01-02',111,4,'Yes',202),(40012,'2020-01-01',112,9,'Yes',203),(40013,'2020-01-06',113,8,'No',205),(40014,'2020-01-07',114,10,'No',207),(40015,'2020-01-06',115,12,'Yes',208),(40016,'2020-01-03',116,3,'Yes',209),(40017,'2020-01-08',117,7,'No',201),(40018,'2020-01-09',118,2,'No',201),(40019,'2020-01-13',119,5,'Yes',206),(40020,'2020-01-13',120,6,'Yes',209),(40021,'2020-01-14',121,8,'No',208),(40022,'2020-01-11',122,13,'No',203),(40023,'2020-01-10',123,6,'No',202),(40024,'2020-01-09',124,3,'Yes',201),(40025,'2020-01-07',125,9,'No',209),(40026,'2020-01-14',101,1,'No',201),(40027,'2020-01-18',102,2,'No',208),(40028,'2020-01-29',103,5,'No',206),(40029,'2020-01-09',104,7,'Yes',204),(40030,'2020-01-04',105,4,'No',207),(40031,'2020-01-10',106,2,'Yes',210),(40032,'2020-01-11',107,8,'No',210),(40033,'2020-01-13',103,5,'Yes',206),(40034,'2020-01-17',101,1,'Yes',201),(40035,'2020-01-18',102,2,'Yes',208);
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `job_id` int NOT NULL,
  `position_type` varchar(45) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (201,'Doctor'),(202,'Nurse'),(203,'Jr. Doctor'),(204,'Admin'),(205,'Maintaince '),(206,'Office Executive'),(207,'Theripist '),(208,'Reseptionist'),(209,'Nurtitionist'),(210,'Jr. Nurse');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions_available`
--

DROP TABLE IF EXISTS `positions_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions_available` (
  `position_id` int NOT NULL,
  `hospital_id` int NOT NULL,
  `number_of_available_positions` int DEFAULT '0',
  PRIMARY KEY (`position_id`,`hospital_id`),
  KEY `fk_hospital_idx` (`hospital_id`),
  CONSTRAINT `fk_hos2` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`hospital_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pok` FOREIGN KEY (`position_id`) REFERENCES `position` (`job_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions_available`
--

LOCK TABLES `positions_available` WRITE;
/*!40000 ALTER TABLE `positions_available` DISABLE KEYS */;
INSERT INTO `positions_available` VALUES (201,1,2),(201,2,1),(201,3,3),(201,7,1),(201,11,1),(202,4,1),(202,6,2),(203,1,2),(203,9,1),(203,13,1),(204,7,3),(205,8,1),(206,5,1),(207,3,2),(207,4,2),(207,10,1),(208,2,1),(208,5,3),(208,8,2),(208,12,2),(209,3,4),(209,6,3),(209,9,1),(210,2,4),(210,8,2);
/*!40000 ALTER TABLE `positions_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions_skills`
--

DROP TABLE IF EXISTS `positions_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions_skills` (
  `position_id` int NOT NULL,
  `position_skills` int NOT NULL,
  PRIMARY KEY (`position_id`,`position_skills`),
  KEY `fk_skillid_idx` (`position_skills`),
  CONSTRAINT `fk_pos_skills` FOREIGN KEY (`position_id`) REFERENCES `position` (`job_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_skillid` FOREIGN KEY (`position_skills`) REFERENCES `skill` (`skill_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions_skills`
--

LOCK TABLES `positions_skills` WRITE;
/*!40000 ALTER TABLE `positions_skills` DISABLE KEYS */;
INSERT INTO `positions_skills` VALUES (201,301),(202,301),(202,302),(203,302),(204,302),(205,302),(206,302),(208,302),(209,302),(202,303),(201,304),(201,305),(202,305),(206,305),(207,305),(208,305),(209,305),(210,305),(204,306),(205,306),(201,307),(202,307),(206,307),(207,307),(208,307),(204,308),(205,308),(208,308),(201,309),(202,309),(207,309),(208,309),(210,309),(203,310),(204,310),(206,310),(207,310),(208,310),(209,310),(210,310),(201,311),(207,311),(208,311),(202,312),(203,312),(204,312),(205,312),(207,312),(209,312),(210,312),(205,313),(202,314),(202,315),(210,315);
/*!40000 ALTER TABLE `positions_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skill_id` int NOT NULL,
  `skill_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (301,'Leadership'),(302,'Organisation'),(303,'CPR'),(304,'Surgeon'),(305,'People Skills '),(306,'Analyical Ability'),(307,'Communication'),(308,'Computer Skills '),(309,'Intelligence'),(310,'Time Management'),(311,'Listening Skills'),(312,'Team Work'),(313,'Engineering'),(314,'Defobrillator Skill'),(315,'Nursing');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hayes12409032'
--

--
-- Dumping routines for database 'hayes12409032'
--
/*!50003 DROP PROCEDURE IF EXISTS `insert new position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert new position`(IN p_job_id int, IN p_position_type varchar(45))
BEGIN
insert into position (job_id, position_type) values (p_job_id, p_position_type);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidate`(IN p_candidate_id int, IN p_firstname varchar(45), IN p_surname varchar(45), IN p_address varchar(100), IN p_phone int)
BEGIN
insert into candidate(candidate_id, firstname, surname, address, phone) values (p_candidate_id, p_firstname, p_surname, p_address, p_phone);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_candidate_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_candidate_skills`(IN p_candidate_id int, IN p_skills_id int)
BEGIN
insert into candidate_skills (candidate_id, skills_id) values (p_candidate_id, p_skills_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_hired` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_hired`(IN p_employee_id int, IN p_interview_id int)
BEGIN
insert into hired (employee_id, interview_id) values(p_employee_id, p_interview_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_hospital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_hospital`(IN p_hospital_id int, IN p_hospital_name varchar(45), IN p_hospital_address varchar(100), IN p_hospital_phone int)
BEGIN
insert into hospitals (hospital_id, hospital_name, hospital_address, hospital_phone) values (p_hospital_id, p_hospital_name, p_hospital_address, p_hospital_phone);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_interview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_interview`(IN p_interview_id int, IN p_date_of_interview date, IN p_candidate_id int, IN p_hospital_id int, IN p_job_offer varchar(3), IN p_position_advertised int)
BEGIN
insert into interviews (interview_id, date_of_interview, candidate_id, hospital_id, job_offer, position_advertised) values (p_interview_id, p_date_of_interview, p_candidate_id, p_hospital_id, p_job_offer, p_position_advertised);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_available_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_available_position`(IN p_position_id int, IN p_hospital_id int, IN p_number_of_available_positions int)
BEGIN
insert into positions_available (position_id, hospital_id, number_of_available_positions) values (p_position_id, p_hospital_id, p_number_of_available_positions);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_new_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_new_skill`(IN p_skill_id int, IN p_skill_name varchar(45))
BEGIN
insert into skill (skill_id, skill_name) values (p_skill_id, p_skill_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_skill_required_for_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_skill_required_for_position`(IN p_position_id int, IN p_position_skills int)
BEGIN
insert into positions_skills (position_id, position_skills) values (p_position_id, p_position_skills);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q10_only_interviewed_once_given_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q10_only_interviewed_once_given_date`(IN p_date_of_interview date)
BEGIN
select candidate_id from interviews
where date_of_interview = p_date_of_interview
group by candidate_id 
having count(candidate_id) = 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `q11_interviewed_more_than_once` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `q11_interviewed_more_than_once`()
BEGIN
select i.candidate_id, c.firstname, c.surname from interviews i, candidate c
where c.candidate_id = i.candidate_id
group by candidate_id 
having count(i.candidate_id) > 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q1_find_hospital_with_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q1_find_hospital_with_id`(IN p_hospital_id int)
BEGIN
select * from hospitals where hospital_id = p_hospital_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q2_find_hospitals_given_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q2_find_hospitals_given_name`(IN p_hospital_name varchar(100))
BEGIN
select * from hospitals where hospital_name = p_hospital_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q3_find_candidates_given_lastname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q3_find_candidates_given_lastname`(IN p_surname varchar(45))
BEGIN
select * from candidate where surname = p_surname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q4_Select_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q4_Select_skills`(IN p_position_id int)
BEGIN
select cs.candidate_id from candidate_skills cs, positions_skills ps
where cs.skills_id = ps.position_skills and position_id = p_position_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q5_number_offered_job` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q5_number_offered_job`()
BEGIN
SELECT count(candidate_id) from interviews
where job_offer = 'Yes';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q6_jobs_matching_skill_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q6_jobs_matching_skill_id`(IN p_skill_id int)
BEGIN
select p.position_type from positions_skills ps, skill s, position p
where s.skill_id = ps.position_skills and p.job_id = ps.position_id and s.skill_id = p_skill_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q7_number_of_positions_needing_nursing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q7_number_of_positions_needing_nursing`()
BEGIN
select count(ps.position_id) from positions_skills ps, skill s 
where ps.position_skills = s.skill_id and skill_name = 'Nursing';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q8_order_jobs_by_hospital_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q8_order_jobs_by_hospital_name`()
BEGIN
select h.hospital_name, p.position_type  from hospitals h, position p, positions_available pa
where h.hospital_id = pa.hospital_id and pa.position_id = p.job_id
order by hospital_name asc, position_type asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q9_interview_detail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q9_interview_detail`(IN p_date_of_interview date)
BEGIN
select i.interview_id, c.firstname, c.surname, p.position_type from interviews i, candidate c, position p
where p.job_id = i.position_advertised and i.candidate_id = c.candidate_id and i.date_of_interview = p_date_of_interview;
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

-- Dump completed on 2020-11-24 13:11:59
