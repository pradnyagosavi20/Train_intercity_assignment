-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: train_intercity
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation` (
  `room_id` varchar(20) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `staff_id` (`staff_id`),
  CONSTRAINT `accommodation_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES ('Room001','s_1001','2023-11-16'),('Room002','s_1002','2023-11-16'),('Room003','s_1003','2023-11-16'),('Room004','s_1004','2023-11-16'),('Room005','s_1005','2023-11-16'),('Room006','s_1006','2023-11-16'),('Room007','s_1007','2023-11-16'),('Room008','s_1008','2023-11-16'),('Room009','s_1009','2023-11-16'),('Room010','s_1010','2023-11-16'),('Room011','s_1011','2023-10-10'),('Room012','s_1012','2023-10-10'),('Room013','s_1013','2023-10-10'),('Room014','s_1014','2023-10-10'),('Room015','s_1015','2023-10-10'),('Room016','s_1016','2023-10-10'),('Room017','s_1017','2023-10-10'),('Room018','s_1018','2023-10-10'),('Room019','s_1019','2023-10-10'),('Room020','s_1020','2023-10-10');
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `coach_id` varchar(10) NOT NULL,
  `standby_coach` varchar(10) DEFAULT NULL,
  `mileage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES ('A1','No','4384'),('A2','No','2472'),('A3','Yes','4800'),('B1','Yes','4952'),('B2','No','4200'),('B3','No','2124'),('B4','No','800'),('H1','No','2440'),('H2','No','1400'),('H3','No','1062'),('HA1','No','984'),('HA2','No','2592'),('HA3','No','3528'),('S1','No','3288'),('S2','No','4120'),('S3','Yes','4500'),('S4','No','1089'),('SL1','No','3456'),('SL2','No','3936'),('SL3','Yes','4704');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has` (
  `coach_id` varchar(20) DEFAULT NULL,
  `train_id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  KEY `coach_id` (`coach_id`),
  KEY `train_id` (`train_id`),
  CONSTRAINT `has_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`),
  CONSTRAINT `has_ibfk_2` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has`
--

LOCK TABLES `has` WRITE;
/*!40000 ALTER TABLE `has` DISABLE KEYS */;
INSERT INTO `has` VALUES ('S1','41002','2023-09-06'),('A1','41002','2023-09-14'),('S2','32004','2023-10-25'),('A2','11002','2023-11-27'),('S3','41001','2023-11-23'),('A3','11003','2023-09-30'),('B1','11003','2023-08-12'),('H1','41002','2023-09-13'),('B2','41002','2023-10-29'),('H2','32004','2023-10-21'),('B3','32004','2023-08-06'),('H3','32004','2023-10-16'),('SL1','32004','2023-08-20'),('HA2','32004','2023-11-19'),('SL2','11002','2023-09-23'),('HA1','11002','2023-11-06'),('SL3','11003','2023-10-19'),('HA3','41002','2023-11-12'),('S4','53002','2023-08-11'),('B4','53002','2023-11-01'),('S1','61003','2023-08-22'),('A1','61003','2023-11-13'),('S2','53002','2023-09-26'),('A2','53002','2023-11-06'),('S3','53002','2023-11-19'),('A3','53002','2023-11-10'),('B1','53002','2023-09-05'),('H1','61003','2023-10-03'),('B2','61003','2023-10-11'),('H2','61003','2023-08-19'),('B3','61003','2023-08-26'),('H3','32004','2023-08-13'),('SL1','32004','2023-09-27'),('HA2','32004','2023-09-10'),('SL2','32004','2023-08-04'),('HA1','32004','2023-10-15'),('SL3','61003','2023-10-24'),('HA3','61003','2023-10-11'),('S4','61003','2023-08-28'),('B4','61003','2023-09-20');
/*!40000 ALTER TABLE `has` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintainance`
--

DROP TABLE IF EXISTS `maintainance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintainance` (
  `maint_id` varchar(15) NOT NULL,
  `maintainance_date` date DEFAULT NULL,
  `last_maint_date` date DEFAULT NULL,
  `coach_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`maint_id`),
  KEY `coach_id` (`coach_id`),
  CONSTRAINT `maintainance_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintainance`
--

LOCK TABLES `maintainance` WRITE;
/*!40000 ALTER TABLE `maintainance` DISABLE KEYS */;
INSERT INTO `maintainance` VALUES ('m_1001','2023-11-22','2023-05-08','S1'),('m_1002','2023-10-12','2023-04-15','A1'),('m_1003','2023-10-01','2023-03-17','S2'),('m_1004','2001-01-01','2023-08-27','A2'),('m_1005','2023-10-20','2023-03-28','S3'),('m_1006','2023-10-10','2023-03-02','A3'),('m_1007','2023-10-03','2023-02-27','B1'),('m_1008','2001-01-01','2023-07-31','H1'),('m_1009','2023-10-19','2023-04-26','B2'),('m_1010','2001-01-01','2023-05-02','H2'),('m_1011','2001-01-01','2023-09-03','B3'),('m_1012','2001-01-01','2023-09-30','H3'),('m_1013','2001-01-01','2023-04-21','SL1'),('m_1014','2001-01-01','2023-09-10','HA2'),('m_1015','2023-11-23','2023-05-07','SL2'),('m_1016','2001-01-01','2023-09-20','HA1'),('m_1017','2023-10-18','2023-03-31','SL3'),('m_1018','2001-01-01','2023-07-13','HA3'),('m_1019','2001-01-01','2023-08-11','S4'),('m_1020','2001-01-01','2023-09-12','B4');
/*!40000 ALTER TABLE `maintainance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `pass_id` varchar(20) NOT NULL,
  `pass_name` varchar(30) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `discount_eligibility` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES ('P_21','Brittany Barrett','9997845835',34,'Null'),('P_22','Tara Collins','9990924333',65,'Null'),('P_23','Christina Greer','9990688982',9,'25%'),('P_24','Bryan Huber','9996544149',27,'Null'),('P_25','Ryan Mendoza','9992843615',47,'10%'),('P_26','Erik Walker','9765435673',51,'10%'),('P_27','Jon Smith','9999017338',34,'Null'),('P_28','Patricia Little','9993767893',8,'25%'),('P_29','Kathleen White','9996216971',46,'Null'),('P_30','Monique Velasquez','9997820747',64,'Null'),('P_31','Donna Ramirez','9995742896',72,'10%'),('P_32','Randall Patterson','9991722496',66,'10%'),('P_33','Aaron Wood','9990525511',47,'Null'),('P_34','Terri Landry','9998498682',58,'Null'),('P_35','Christopher Anderson','9991593354',61,'Null'),('P_36','Michael Nixon','9998789714',31,'Null'),('P_37','Benjamin George','9994544808',18,'Null'),('P_38','Hailey Edwards','9992042600',36,'Null'),('P_39','Amy Lawrence','9990111630',72,'10%'),('P_40','Suzanne Castro','9998660253',77,'10%'),('P_41','Shawn Brown','9998338215',11,'25%'),('P_42','Lisa Smith','9990921912',6,'25%'),('P_43','Benjamin Carter','9994938002',54,'Null'),('P_44','Frances Johnson','9997800453',35,'Null'),('P_45','Margaret Adams','9995501789',16,'Null'),('P_46','Alexis Barnes','9997806966',30,'Null'),('P_47','Thomas Brock','9992019177',12,'25%'),('P_48','Amanda Waters','9999901691',56,'Null'),('P_49','Alison Marshall','9994695989',50,'Null'),('P_50','Michelle Hardy','9990127901',42,'Null'),('P_51','Drew Gutierrez','9992844165',28,'Null'),('P_52','Benjamin Murphy','9999375728',53,'Null'),('P_53','Christina Oliver','9994714210',7,'25%'),('P_54','Darryl Mills','9993594802',21,'Null'),('P_55','Robert Martinez PhD','9995909968',14,'Null'),('P_56','Alex Gray','9991897908',9,'25%'),('P_57','Megan Davis','9996652195',37,'Null'),('P_58','Sara Romero','9997550297',41,'Null'),('P_59','Brandon Chang','9990731372',27,'Null'),('P_60','Travis Warren','9991603576',10,'25%'),('P_61','Shelley Christensen','9996736438',62,'Null'),('P_62','Veronica Perez','9991385484',45,'Null'),('P_63','Cynthia Stein','9999428597',29,'Null'),('P_64','Tracy Cooper','9992702128',15,'Null'),('P_65','Daniel Smith','9998018537',59,'Null'),('P_66','Rachel Lopez','9991594972',51,'Null'),('P_67','Jonathan Kirby','7028736182',55,'Null'),('P_68','Angela Alexander','8201827365',42,'Null'),('P_69','Alison Garcia','9284761519',13,'Null'),('P_70','Patrick Mercado','9182756399',74,'10%');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reaches_to`
--

DROP TABLE IF EXISTS `reaches_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reaches_to` (
  `train_id` varchar(20) DEFAULT NULL,
  `station_id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `expected_arr_time` time DEFAULT NULL,
  `actual_arr_time` time DEFAULT NULL,
  KEY `train_id` (`train_id`),
  KEY `station_id` (`station_id`),
  CONSTRAINT `reaches_to_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`),
  CONSTRAINT `reaches_to_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reaches_to`
--

LOCK TABLES `reaches_to` WRITE;
/*!40000 ALTER TABLE `reaches_to` DISABLE KEYS */;
INSERT INTO `reaches_to` VALUES ('11001','S002','2023-11-16','09:20:00','15:00:00','15:00:00'),('11002','S004','2023-11-16','10:50:00','17:00:00','17:30:00'),('11003','S006','2023-11-16','04:30:00','13:00:00','13:15:00'),('11004','S007','2023-11-16','07:40:00','13:00:00','13:05:00'),('21001','S008','2023-11-16','07:25:00','14:00:00','14:00:00'),('32004','S010','2023-10-10','05:15:00','13:00:00','13:00:00'),('41001','S013','2023-10-10','00:15:00','11:00:00','11:00:00'),('41002','S015','2023-10-10','08:00:00','13:00:00','12:45:00'),('53002','S016','2023-10-10','09:00:00','12:00:00','12:00:00'),('61003','S017','2023-10-10','10:00:00','16:00:00','16:25:00'),('11001','S001','2023-11-16','17:00:00','22:40:00','22:40:00'),('11002','S003','2023-11-16','19:00:00','01:10:00','01:10:00'),('11003','S005','2023-11-16','15:00:00','23:30:00','23:35:00'),('11004','S011','2023-11-16','15:00:00','20:20:00','20:20:00'),('21001','S011','2023-11-16','16:00:00','22:35:00','22:45:00'),('32004','S009','2023-10-10','15:00:00','22:45:00','22:50:00'),('41001','S012','2023-10-10','13:00:00','23:45:00','23:45:00'),('41002','S014','2023-10-10','15:00:00','20:00:00','20:00:00'),('53002','S009','2023-10-10','14:00:00','17:00:00','17:00:00'),('61003','S011','2023-10-10','18:00:00','00:05:00','00:05:00');
/*!40000 ALTER TABLE `reaches_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `route_id` varchar(10) NOT NULL,
  `origin` varchar(20) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `distance` varchar(30) DEFAULT NULL,
  `time_taken` varchar(30) DEFAULT NULL,
  `operating_days` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('r_001','Mumbai Central','Gandhinagar','548','5 Hours 40 Minutes','6 Days a week(except Sunday)'),('r_002','New Delhi','Himachal','412','6 Hours 10 Minutes','6 Days a week(except Thursday)'),('r_003','Secunderabad','Visakhapatnam','500','8 Hours 30 Minutes','once  a week(every Sunday)'),('r_004','Mumbai ','Sainagar Shirdi','248','5 Hours 20 Minutes','6 Days a week(except Tuesday)'),('r_005','Mumbai','Solapur','400','6 Hours 35 Minutes','6 Days a week(except Monday)'),('r_006','Bhopal','Delhi','700','7 Hours 45 Minutes','6 Days a week(except Saturday)'),('r_007','Lonavala','Ajmer','1062','10 Hours 45 Minutes','once a week(every Saturday)'),('r_008','Dharwad','Bengaluru','432','5 Hours','Monday and Saturday'),('r_009','Bhopal','Indore','246','3 Hours','Every day'),('r_010','Mumbai','Goa','588','6 Hours','Every day'),('r_011','Gandhinagar','Mumbai Central','548','5 Hours 40 Minutes','6 Days a week(except Sunday)'),('r_012','Himachal','New Delhi','412','6 Hours 10 Minutes','6 Days a week(except Thursday)'),('r_013','Visakhapatnam','Secunderabad','500','8 Hours 30 Minutes','once  a week(every Sunday)'),('r_014','Sainagar Shirdi','Mumbai ','248','5 Hours 20 Minutes','6 Days a week(except Tuesday)'),('r_015','Solapur','Mumbai','400','6 Hours 35 Minutes','6 Days a week(except Monday)'),('r_016','Delhi','Bhopal','700','7 Hours 45 Minutes','6 Days a week(except Saturday)'),('r_017','Ajmer','Lonavala','1062','10 Hours 45 Minutes','once a week(every Saturday)'),('r_018','Bengaluru','Dharwad','432','5 Hours','Monday and Saturday'),('r_019','Indore','Bhopal','246','3 Hours','Every day'),('r_020','Goa','Mumbai','588','6 Hours','Every day');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `train_id` varchar(20) DEFAULT NULL,
  `route_id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  KEY `train_id` (`train_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES ('11001','r_001','2023-11-16','09:20:00','15:00:00'),('11002','r_002','2023-11-16','10:50:00','17:00:00'),('11003','r_003','2023-11-16','04:30:00','13:00:00'),('11004','r_004','2023-11-16','07:40:00','13:00:00'),('21001','r_005','2023-11-16','07:25:00','14:00:00'),('32004','r_006','2023-10-10','05:15:00','13:00:00'),('41001','r_007','2023-10-10','00:15:00','11:00:00'),('41002','r_008','2023-10-10','08:00:00','13:00:00'),('53002','r_009','2023-10-10','09:00:00','12:00:00'),('61003','r_010','2023-10-10','10:00:00','16:00:00'),('11001','r_011','2023-11-16','17:00:00','22:40:00'),('11002','r_012','2023-11-16','19:00:00','01:10:00'),('11003','r_013','2023-11-16','15:00:00','23:30:00'),('11004','r_014','2023-11-16','15:00:00','20:20:00'),('21001','r_015','2023-11-16','16:00:00','22:35:00'),('32004','r_016','2023-10-10','15:00:00','22:45:00'),('41001','r_017','2023-10-10','13:00:00','23:45:00'),('41002','r_018','2023-10-10','15:00:00','20:00:00'),('53002','r_019','2023-10-10','14:00:00','17:00:00'),('61003','r_020','2023-10-10','18:00:00','00:05:00');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `seat_id` varchar(40) NOT NULL,
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('se_01'),('se_02'),('se_03'),('se_04'),('se_05'),('se_06'),('se_07'),('se_08'),('se_09'),('se_10'),('se_11'),('se_12'),('se_13'),('se_14'),('se_15'),('se_16'),('se_17'),('se_18'),('se_19'),('se_20'),('se_21'),('se_22'),('se_23'),('se_24'),('se_25'),('se_26'),('se_27'),('se_28'),('se_29'),('se_30');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(10) NOT NULL,
  `staff_name` varchar(20) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `city_of_residence` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('s_1001','Mahesh R. Kapadne','9786345218','Mumbai'),('s_1002',' Ajay C.  Gupta','8695429742','Lucknow'),('s_1003','Sanjay D. Mehta','7389021563','Noida'),('s_1004','Mohammed W. Shaikh','8421538970','Goa'),('s_1005','Manoj V. Gaikwad','9143750764','Kolhapur'),('s_1006','Hari B. Jha','8213450921','Bhopal'),('s_1007','Nitin A. Kulkarni','9743789970','Pune'),('s_1008','Aditya G. Chaturvedi','7988823145','Vishakhapatnam'),('s_1009','Ganesh K. Reddiar','9111235571','Kerala'),('s_1010','Vilas H. Advani','7865332188','Ajmer'),('s_1011','Anil Y. Kumar','8882345610','Patna'),('s_1012','Kamlesh W. Wable','7695438919','Indore'),('s_1013','Abdul Q. Kazi','9845398876','New Delhi'),('s_1014','Harish I. Chawla','8355466177','Ahmadabad'),('s_1015','Nikhil R. Pandey','9172589911','Dharwad'),('s_1016','Arya E. Asaware','7123411233','Solapur'),('s_1017','Ramesh S. Patel','8799654321','Ahmadabad'),('s_1018','Suresh A. Reddy','7663398811','Bangolre'),('s_1019','Uday J. Agrawal','8651972654','Jaipur'),('s_1020','Bhanu D. Sharma','8765090860','Bhopal');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_schedule`
--

DROP TABLE IF EXISTS `staff_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_schedule` (
  `staff_id` varchar(10) NOT NULL,
  `route_id` varchar(20) NOT NULL,
  `train_id` varchar(10) NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`staff_id`,`route_id`,`train_id`),
  KEY `train_id` (`train_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `staff_schedule_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`),
  CONSTRAINT `staff_schedule_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  CONSTRAINT `staff_schedule_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_schedule`
--

LOCK TABLES `staff_schedule` WRITE;
/*!40000 ALTER TABLE `staff_schedule` DISABLE KEYS */;
INSERT INTO `staff_schedule` VALUES ('s_1001','r_001','11001','Main Driver','2023-11-16','09:20:00'),('s_1001','r_011','11001','Co-Driver','2023-11-16','15:30:00'),('s_1002','r_001','11001','Co-Driver','2023-11-16','09:20:00'),('s_1002','r_011','11001','Main Driver','2023-11-16','15:30:00'),('s_1003','r_002','11002','Main Driver','2023-11-16','10:50:00'),('s_1003','r_012','11002','Co-Driver','2023-11-16','17:30:00'),('s_1004','r_002','11002','Co-Driver','2023-11-16','10:50:00'),('s_1004','r_012','11002','Main Driver','2023-11-16','17:30:00'),('s_1005','r_003','11003','Main Driver','2023-11-16','04:30:00'),('s_1005','r_013','11003','Co-Driver','2023-11-16','13:30:00'),('s_1006','r_003','11003','Co-Driver','2023-11-16','04:30:00'),('s_1006','r_013','11003','Main Driver','2023-11-16','13:30:00'),('s_1007','r_004','11004','Main Driver','2023-11-16','07:40:00'),('s_1007','r_014','11004','Co-Driver','2023-11-16','13:30:00'),('s_1008','r_004','11004','Co-Driver','2023-11-16','07:40:00'),('s_1008','r_014','11004','Main Driver','2023-11-16','13:30:00'),('s_1009','r_005','21001','Main Driver','2023-11-16','07:25:00'),('s_1009','r_015','21001','Co-Driver','2023-11-16','14:30:00'),('s_1010','r_005','21001','Co-Driver','2023-11-16','07:25:00'),('s_1010','r_015','21001','Main Driver','2023-11-16','14:30:00'),('s_1011','r_006','32004','Main Driver','2023-10-10','13:00:00'),('s_1011','r_016','32004','Co-Driver','2023-10-10','13:30:00'),('s_1012','r_006','32004','Co-Driver','2023-10-10','13:00:00'),('s_1012','r_016','32004','Main Driver','2023-10-10','13:30:00'),('s_1013','r_007','41001','Main Driver','2023-10-10','11:00:00'),('s_1013','r_017','41001','Co-Driver','2023-10-10','11:30:00'),('s_1014','r_007','41001','Co-Driver','2023-10-10','11:00:00'),('s_1014','r_017','41001','Main Driver','2023-10-10','11:30:00'),('s_1015','r_008','41002','Main Driver','2023-10-10','13:00:00'),('s_1015','r_018','41002','Co-Driver','2023-10-10','13:30:00'),('s_1016','r_008','41002','Co-Driver','2023-10-10','13:00:00'),('s_1016','r_018','41002','Main Driver','2023-10-10','13:30:00'),('s_1017','r_009','53002','Main Driver','2023-10-10','12:00:00'),('s_1017','r_019','53002','Co-Driver','2023-10-10','12:30:00'),('s_1018','r_009','53002','Co-Driver','2023-10-10','12:00:00'),('s_1018','r_019','53002','Main Driver','2023-10-10','12:30:00'),('s_1019','r_010','61003','Main Driver','2023-10-10','16:00:00'),('s_1019','r_020','61003','Co-Driver','2023-10-10','16:30:00'),('s_1020','r_010','61003','Co-Driver','2023-10-10','16:00:00'),('s_1020','r_020','61003','Main Driver','2023-10-10','16:30:00');
/*!40000 ALTER TABLE `staff_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `station_id` varchar(10) NOT NULL,
  `station_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES ('S001','Mumbai Central'),('S002','Gandhinagar'),('S003','New Delhi'),('S004','Himachal '),('S005','Secunderabad'),('S006','Vishakhapatnam '),('S007','Sainagar Shirdi '),('S008','Solapur'),('S009','Bhopal '),('S010','Delhi '),('S011','Mumbai '),('S012','Lonavala '),('S013','Ajmer'),('S014','Dharwad '),('S015','Bengaluru'),('S016','Indore'),('S017','Goa');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_id` varchar(20) NOT NULL,
  `pass_id` varchar(20) DEFAULT NULL,
  `pass_name` varchar(30) DEFAULT NULL,
  `agent_id` varchar(30) DEFAULT NULL,
  `seat_id` varchar(20) DEFAULT NULL,
  `seat_status` varchar(30) DEFAULT NULL,
  `route_id` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` int DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `pass_id` (`pass_id`),
  KEY `seat_id` (`seat_id`),
  KEY `route_id` (`route_id`),
  KEY `fk_agent_id` (`agent_id`),
  CONSTRAINT `fk_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `travel_agent` (`agent_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`pass_id`) REFERENCES `passenger` (`pass_id`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`seat_id`),
  CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('TC161','P_21','Brittany Barrett','TA_405','se_14','Confirmed','r_019',34,'2023-09-27',800,'Null'),('TC162','P_22','Tara Collins','TA_404','se_06','Confirmed','r_004',65,'2023-09-20',1250,'Null'),('TC163','P_23','Christina Greer',NULL,'se_20','Confirmed','r_005',9,'2023-11-01',1125,'25%'),('TC164','P_24','Bryan Huber','TA_403','se_03','Confirmed','r_012',27,'2023-09-01',800,'Null'),('TC165','P_25','Ryan Mendoza','TA_405','se_06','Confirmed','r_011',70,'2023-09-11',1450,'10%'),('TC166','P_26','Erik Walker','TA_405','se_19','Confirmed','r_011',68,'2023-09-28',2200,'10%'),('TC167','P_27','Jon Smith',NULL,'se_01','Confirmed','r_008',34,'2023-10-10',1500,'Null'),('TC168','P_28','Patricia Little','TA_403','se_17','Confirmed','r_008',8,'2023-10-10',3500,'25%'),('TC169','P_29','Kathleen White','TA_401','se_29','Confirmed','r_005',46,'2023-09-21',1500,'Null'),('TC170','P_30','Monique Velasquez','TA_408','se_18','Waiting','r_017',64,'2023-11-07',2200,'Null'),('TC171','P_31','Donna Ramirez','TA_404','se_15','Confirmed','r_011',72,'2023-09-26',945,'10%'),('TC172','P_32','Randall Patterson','TA_405','se_02','Confirmed','r_005',66,'2023-09-07',1125,'10%'),('TC173','P_33','Aaron Wood','TA_407','se_17','Waiting','r_001',47,'2023-11-03',1500,'Null'),('TC174','P_34','Terri Landry','TA_405','se_11','Confirmed','r_010',58,'2023-09-10',3000,'Null'),('TC175','P_35','Christopher Anderson','TA_402','se_16','Confirmed','r_012',61,'2023-09-13',1500,'Null'),('TC176','P_36','Michael Nixon','TA_409','se_08','Confirmed','r_004',31,'2023-09-28',3000,'Null'),('TC177','P_37','Benjamin George',NULL,'se_05','Confirmed','r_018',18,'2023-10-10',1500,'Null'),('TC178','P_38','Hailey Edwards','TA_404','se_04','Confirmed','r_015',36,'2023-09-14',1250,'Null'),('TC179','P_39','Amy Lawrence',NULL,'se_07','Confirmed','r_017',72,'2023-10-10',3150,'10%'),('TC180','P_40','Suzanne Castro',NULL,'se_05','Confirmed','r_006',77,'2023-10-10',2250,'10%'),('TC181','P_41','Shawn Brown',NULL,'se_20','Waiting','r_005',11,'2023-09-06',1500,'25%'),('TC182','P_42','Lisa Smith','TA_404','se_23','Confirmed','r_017',6,'2023-09-09',2250,'25%'),('TC183','P_43','Benjamin Carter','TA_406','se_26','Confirmed','r_014',54,'2023-11-13',2200,'Null'),('TC184','P_44','Frances Johnson','TA_404','se_20','Confirmed','r_002',35,'2023-09-22',1250,'Null'),('TC185','P_45','Margaret Adams','TA_405','se_01','Confirmed','r_002',16,'2023-09-08',3000,'Null'),('TC186','P_46','Alexis Barnes','TA_404','se_03','Confirmed','r_018',30,'2023-09-21',800,'Null'),('TC187','P_47','Thomas Brock','TA_402','se_04','Confirmed','r_017',12,'2023-09-22',600,'25%'),('TC188','P_48','Amanda Waters','TA_403','se_09','Confirmed','r_007',56,'2023-10-30',3500,'Null'),('TC189','P_49','Alison Marshall',NULL,'se_10','Waiting','r_016',50,'2023-10-08',2200,'Null'),('TC190','P_50','Michelle Hardy','TA_403','se_01','Confirmed','r_020',42,'2023-11-23',800,'Null'),('TC191','P_51','Drew Gutierrez','TA_409','se_24','Confirmed','r_001',28,'2023-09-30',1050,'Null'),('TC192','P_52','Benjamin Murphy','TA_404','se_17','Confirmed','r_005',53,'2023-09-23',3500,'Null'),('TC193','P_53','Christina Oliver','TA_404','se_25','Confirmed','r_019',7,'2023-09-22',938,'25%'),('TC194','P_54','Darryl Mills','TA_408','se_10','Confirmed','r_007',21,'2023-09-09',1250,'Null'),('TC195','P_55','Robert Martinez PhD',NULL,'se_10','Confirmed','r_010',14,'2023-10-10',3000,'Null'),('TC196','P_56','Alex Gray',NULL,'se_21','Confirmed','r_016',9,'2023-11-01',600,'25%'),('TC197','P_57','Megan Davis',NULL,'se_29','Confirmed','r_019',37,'2023-11-17',800,'Null'),('TC198','P_58','Sara Romero',NULL,'se_17','Confirmed','r_017',41,'2023-09-12',1100,'Null'),('TC199','P_59','Brandon Chang','TA_404','se_18','Confirmed','r_018',27,'2023-09-24',2000,'Null'),('TC200','P_60','Travis Warren',NULL,'se_09','Confirmed','r_008',10,'2023-10-10',788,'25%'),('TC201','P_61','Shelley Christensen','TA_405','se_26','Confirmed','r_004',62,'2023-09-23',2000,'Null'),('TC202','P_62','Veronica Perez',NULL,'se_15','Confirmed','r_015',45,'2023-09-22',2000,'Null'),('TC203','P_63','Cynthia Stein','TA_408','se_16','Confirmed','r_016',29,'2023-09-07',2500,'Null'),('TC204','P_64','Tracy Cooper','TA_405','se_07','Confirmed','r_002',15,'2023-09-25',2500,'Null'),('TC205','P_65','Daniel Smith','TA_401','se_03','Confirmed','r_003',59,'2023-11-12',1050,'Null'),('TC206','P_66','Rachel Lopez',NULL,'se_24','Confirmed','r_005',51,'2023-09-15',2000,'Null'),('TC207','P_67','Jonathan Kirby','TA_405','se_21','Confirmed','r_003',55,'2023-09-04',1500,'Null'),('TC208','P_68','Angela Alexander','TA_405','se_19','Confirmed','r_014',42,'2023-09-11',2000,'Null'),('TC209','P_69','Alison Garcia','TA_404','se_14','Confirmed','r_011',13,'2023-09-06',1100,'Null'),('TC210','P_70','Patrick Mercado','TA_404','se_04','Confirmed','r_001',74,'2023-09-17',945,'10%'),('TC211','P_21','Brittany Barrett','TA_405','se_14','Confirmed','r_019',34,'2023-05-27',800,'Null'),('TC212','P_61','Shelley Christensen','TA_405','se_26','Confirmed','r_004',62,'2023-09-22',2000,'Null'),('TC213','P_28','Patricia Little','TA_403','se_17','Confirmed','r_016',8,'2023-10-11',3500,'25%'),('TC214','P_61','Shelley Christensen','TA_405','se_26','Confirmed','r_004',62,'2023-09-25',2000,'Null'),('TC215','P_21','Brittany Barrett','TA_405','se_14','Confirmed','r_019',34,'2023-09-20',800,'Null'),('TC216','P_61','Shelley Christensen','TA_405','se_26','Confirmed','r_004',62,'2023-09-03',2000,'Null'),('TC217','P_28','Patricia Little','TA_403','se_17','Confirmed','r_016',8,'2023-10-30',3500,'25%'),('TC218','P_61','Shelley Christensen','TA_405','se_26','Confirmed','r_004',62,'2023-09-13',2000,'Null'),('TC219','P_38','Hailey Edwards','TA_404','se_04','Confirmed','r_015',36,'2023-09-24',1250,'Null'),('TC220','P_21','Brittany Barrett','TA_405','se_14','Confirmed','r_019',34,'2023-09-17',800,'Null');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `train_id` varchar(10) NOT NULL,
  `train_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES ('11001','Ahimsa Express'),('11002','Konarka Express'),('11003','Pragraj Express'),('11004','Express'),('21001','Mangla Express'),('32004','Pushpak Express'),('41001','Gomati Express'),('41002','DB Express'),('53002','Bhopal Express'),('61003','Udayan Express');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_agent`
--

DROP TABLE IF EXISTS `travel_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_agent` (
  `agent_id` varchar(20) NOT NULL,
  `agent_name` varchar(30) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `commission_rate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_agent`
--

LOCK TABLES `travel_agent` WRITE;
/*!40000 ALTER TABLE `travel_agent` DISABLE KEYS */;
INSERT INTO `travel_agent` VALUES ('TA_401','Arun Sharma','9837652810','255.00'),('TA_402','Balram Joshi','9765487817','210.00'),('TA_403','Rahul Jadhav','8010686643','1153.75'),('TA_404','Mahesh Bakshi','7927654310','1304.00'),('TA_405','Santosh Deshpande','9873027432','1492.50'),('TA_406','Sunil Agarwal','9387502884','420.00'),('TA_407','Varun Apte','8028374664','150.00'),('TA_408','Amar Singh','9208374621','595.00'),('TA_409','Sameer Malik','9102836453','405.00');
/*!40000 ALTER TABLE `travel_agent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-16  0:21:29
