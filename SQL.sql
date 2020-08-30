CREATE DATABASE  IF NOT EXISTS `company` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `company`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `id_pass`
--

DROP TABLE IF EXISTS `id_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_pass` (
  `Officer_ID` int(11) DEFAULT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_pass`
--

LOCK TABLES `id_pass` WRITE;
/*!40000 ALTER TABLE `id_pass` DISABLE KEYS */;
INSERT INTO `id_pass` VALUES (NULL,'kanha','kani'),(NULL,'kanishak','12345678'),(NULL,'kanishkaaa','patel'),(NULL,'kanna','123'),(NULL,'kannymanny','kanuP10.'),(NULL,'kratika','kanii'),(NULL,'Username','Password');
/*!40000 ALTER TABLE `id_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officers`
--

DROP TABLE IF EXISTS `officers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `officers` (
  `Officer_ID` int(11) NOT NULL,
  `Officer_name` varchar(50) DEFAULT NULL,
  `S_ID` int(11) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Officer_ID`),
  KEY `S_ID` (`S_ID`),
  CONSTRAINT `officers_ibfk_1` FOREIGN KEY (`S_ID`) REFERENCES `scholarship` (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officers`
--

LOCK TABLES `officers` WRITE;
/*!40000 ALTER TABLE `officers` DISABLE KEYS */;
INSERT INTO `officers` VALUES (101,'Rajesh Mishra',1,'Head','raj123@gmail.com'),(102,'Amit Raj',2,'Advisor','amit123@gmail.com'),(104,'Manish Bhatia',1,'Consultant','manish22224@gmail.com'),(105,'Aditya Patel',2,'Head','adi23@gmail.com');
/*!40000 ALTER TABLE `officers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PAYMENT_ID` int(11) NOT NULL,
  `ROLL_NO` int(11) DEFAULT NULL,
  `S_ID` int(11) NOT NULL,
  `TRANSACTION_ID` varchar(50) NOT NULL,
  `AMOUNT` int(11) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,18001009,2,'4778f234ew4ker35',66667),(2,18001004,2,'4778f2343dker56',66667),(3,18001005,1,'4778h3349djnr33',112000),(4,18002010,3,'4778q2349dker84',100000),(5,18002021,3,'4778d2349dker78',100000),(6,18002033,2,'4778l2349dker05',66667),(7,18003036,3,'4778u2349dker45',100000),(8,18003037,1,'4778o2349dker65',112000),(9,18003045,3,'477842349dker70',100000),(10,18003041,2,'477sf2349dker90',66667),(11,18002048,2,'477kf2349dker89',66667),(12,18001049,1,'kaugubk86248235',112000),(16,18003086,3,'sdafwaewewe',100000),(23,18003086,1,'hwhgfukwfwf',1120000);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remarkUpdate` AFTER INSERT ON `payment` FOR EACH ROW BEGIN
UPDATE student
SET PAYMENT_ID=NEW.PAYMENT_ID,
Remarks='Approved',
S_ID=NEW.S_ID
WHERE Roll_no=NEW.ROLL_NO;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `scholarship`
--

DROP TABLE IF EXISTS `scholarship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholarship` (
  `S_ID` int(11) NOT NULL,
  `SCHOLARSHIP_NAME` varchar(50) NOT NULL,
  `DURATION_MONTHS` int(11) DEFAULT NULL,
  `MIN_CPI` float DEFAULT NULL,
  `BENEFIT_AMT` int(11) DEFAULT NULL,
  `MIN_INCOME` int(11) DEFAULT NULL,
  `MAX_INCOME` int(11) DEFAULT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship`
--

LOCK TABLES `scholarship` WRITE;
/*!40000 ALTER TABLE `scholarship` DISABLE KEYS */;
INSERT INTO `scholarship` VALUES (1,'MCM',6,7.5,112000,0,100000),(2,'Fee Remission',6,NULL,66670,100000,500000),(3,'SC-ST-PWD Quota Based',12,NULL,100000,0,NULL);
/*!40000 ALTER TABLE `scholarship` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `deleteEntry1` BEFORE DELETE ON `scholarship` FOR EACH ROW BEGIN
DELETE FROM student
WHERE S_ID=OLD.S_ID;

DELETE FROM officers
WHERE S_ID = OLD.S_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Roll_no` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `CPI` float DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `S_ID` int(11) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Income` int(11) DEFAULT NULL,
  `Caste` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Bank_AC` varchar(50) DEFAULT NULL,
  `IFSC` varchar(50) DEFAULT NULL,
  `PAYMENT_ID` int(11) DEFAULT NULL,
  `Remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Roll_no`),
  KEY `S_ID` (`S_ID`),
  KEY `PAYMENT_ID` (`PAYMENT_ID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`S_ID`) REFERENCES `scholarship` (`S_ID`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`PAYMENT_ID`) REFERENCES `payment` (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (16002034,'Ansh',8.22,3,3,'M',345553,'ST','jdbgsbe@jd.com','3523535234','24j23jjds',NULL,NULL),(16003005,'Prachi Sajwan',7.19,3,NULL,'F',96000,'GEN','kjcfbgdddd@gsf.com','2346264545','dg453544',NULL,NULL),(16004036,'Anish Agrawal',8.12,3,1,'M',78000,'GEN','aniagrawal@gmail.com','289619469','2736jsh',NULL,NULL),(17001005,'Ashish Shah',7.33,2,2,'M',359995,'GEN','kdhgig@gmail.com','3456246254443','34325fxbd',NULL,NULL),(18001004,'Akshay Raj',NULL,NULL,2,'M',449000,'OBC','araj22@gmail.com','109900223450','000032CNRB',1,'Approved'),(18001005,'Shreya Garg',NULL,NULL,1,'F',32000,'GEN','shreya4423@gmail.com','109900230500','000032IDIB',3,'Approved'),(18001009,'Samyak Jain',NULL,NULL,2,'M',89000,'GEN','samyakn@gmail.com','109900484830','000067CNRB',1,'Approved'),(18001049,'Yashraj Yadav',NULL,NULL,1,'M',562500,'GEN','yy7475@gmail.com','109900229950','000032IDIB',12,'Approved'),(18002033,'Sneha Chauhan',NULL,NULL,2,'F',367500,'GEN','snehac@gmail.com','109900334100','000032CNRB',6,'Approved'),(18002044,'kadjkb',NULL,NULL,NULL,'M',3888438,'GEN','ihaiufb','281947','gdtdd342',NULL,NULL),(18002048,'Kapil Bajaj',NULL,NULL,2,'M',44000,'OBC','kaps@gmail.com','109900445330','000055HHJB',11,'Approved'),(18002054,'Krati Chauhan',NULL,NULL,NULL,'F',883500,'GEN','kratic@gmail.com','109900333100','000032CNRB',NULL,NULL),(18003033,'Shivani Singh',NULL,NULL,NULL,'F',1000000,'OBC','ssingh@gmail.com','109900400400','000067HHDB',NULL,NULL),(18003037,'Harshit Yadav',NULL,NULL,1,'M',32500,'OBC','harshitc@gmail.com','109900233950','000032IDIB',8,'Approved'),(18003041,'Abhinav Bindra',NULL,NULL,2,'F',32550,'GEN','abhi23@gmail.com','109900727370','000032IDIB',10,'Approved'),(18003086,'kanishk',NULL,NULL,1,'M',32000,'OBC','fanlwefn','3282031','fasfs',23,'Approved');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `giveScholarship1` BEFORE INSERT ON `student` FOR EACH ROW BEGIN
if (NEW.Caste='SC') OR (NEW.Caste='ST') OR (NEW.Caste='PWD') THEN
SET new.S_ID=3;
ELSE
IF (NEW.Income<500000) AND (NEW.Income>100000) AND (NEW.Caste<>'SC') AND (NEW.Caste<>'ST') AND (NEW.Caste<>'PWD') THEN
SET new.S_ID=2;
ELSE
IF (NEW.Income<100000) AND (NEW.Caste<>'SC') AND (NEW.Caste<>'ST') AND (NEW.Caste<>'PWD') AND (NEW.CPI>=7.50) AND (NEW.Year>1) THEN
SET new.S_ID=1;
ELSE
IF (NEW.Income>500000) AND (NEW.Caste<>'SC') AND (NEW.Caste<>'ST') AND (NEW.Caste<>'PWD') THEN 
SET new.S_ID=NULL;
END IF;
END IF;
END IF;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'company'
--

--
-- Dumping routines for database 'company'
--
/*!50003 DROP PROCEDURE IF EXISTS `display_officer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_officer`()
BEGIN
SELECT * FROM officers;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_payment`()
BEGIN
SELECT * FROM payment;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_scholarship` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_scholarship`()
BEGIN
SELECT * FROM scholarship;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `display_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `display_student`()
BEGIN
SELECT * FROM student;
end ;;
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

-- Dump completed on 2019-11-18 19:17:43
