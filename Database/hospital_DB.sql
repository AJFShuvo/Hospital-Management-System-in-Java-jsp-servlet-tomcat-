-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_2
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `appoint_date` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phno` varchar(45) NOT NULL,
  `diseases` varchar(500) NOT NULL,
  `doctor_id` int NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_idx` (`user_id`),
  KEY `did_idx` (`doctor_id`),
  CONSTRAINT `did` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (3,6,'moshiur rahman','male','21','2023-12-08','moshiur@mail.com','123564856','HeartAche',1,'mirpur','peracitamol 2 bela'),(4,7,'Shojib ahmed','male','21','2023-12-16','shojib@mail.com','017549845498','Brain inflamation',5,'mirpur','Peracitamol 2 bela'),(5,8,'babarazam','male','26','2023-12-22','babarazam@mail.com','012649548','teeth problem',4,'mirpur pallabi','peracitamol 2 bela'),(6,1,'Shuvo','male','23','2023-12-13','shuvo@mail.com','01347946545','Asthma',6,'Mirpur Pallabi','Pending');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `specialist` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobno` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'AJF Shuvo','2000-11-01','MBHS','Cardiologist','ajfshuvo98@gmail.com','01761621246','1234'),(4,'Aditto Adhikary','2001-02-13','haturi doctor','Cardiologist','aditto@mail.com','01619681535','12345'),(5,'Muhammad  Sheikh','2000-12-15','MBBS','Cardiologist','Sheikh@mail.com','01706889981','1234'),(6,'Jahidul Islam','2000-06-07','Spelicalist on codeforeces','Psychoilogist','jahidul@mail.com','016464584755645','0156');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specalist`
--

DROP TABLE IF EXISTS `specalist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specalist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specalist`
--

LOCK TABLES `specalist` WRITE;
/*!40000 ALTER TABLE `specalist` DISABLE KEYS */;
INSERT INTO `specalist` VALUES (1,'Cardiologist'),(2,'Dentist'),(3,'Damatologist'),(4,'Psychoilogist');
/*!40000 ALTER TABLE `specalist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dtls`
--

DROP TABLE IF EXISTS `user_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_dtls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dtls`
--

LOCK TABLES `user_dtls` WRITE;
/*!40000 ALTER TABLE `user_dtls` DISABLE KEYS */;
INSERT INTO `user_dtls` VALUES (1,'shuvo','shuvo@mail.com','1234'),(2,'rofik','rofik@mail.com','1234'),(3,'ulluk','jj@mail.com','12345'),(4,'aditto','aditto@mail.com','12345'),(5,'Bakhteyar','haider@gmail.com','1234'),(6,'moshiur','moshiur@mail.com','12345'),(7,'Shojib','shojib@mail.com','12345'),(8,'babarazam','babarazam@mail.com','0123');
/*!40000 ALTER TABLE `user_dtls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-16  1:19:53
