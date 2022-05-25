-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 13.235.134.171    Database: college_mgmt
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

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
-- Table structure for table `tbl_college`
--

DROP TABLE IF EXISTS `tbl_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_college` (
  `college_id` int NOT NULL AUTO_INCREMENT,
  `collegename` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_college`
--

LOCK TABLES `tbl_college` WRITE;
/*!40000 ALTER TABLE `tbl_college` DISABLE KEYS */;
INSERT INTO `tbl_college` VALUES (1,'Sant_College','Sant_IBM'),(2,'ACE,Hosur','MainStreet'),(3,'ACE,Hosur','Main'),(4,'Bannari','Erode'),(5,'ACE_Hosur','Main'),(6,'CollegeTest','CS'),(7,'Don Bosco College','Jayangar'),(8,'Ruchi_College','Blr'),(9,'College_nitin','Bangalore'),(10,'College_nitin','Bangalore');
/*!40000 ALTER TABLE `tbl_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (1,'Admin'),(2,'Co Admin');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentname` varchar(200) NOT NULL,
  `college_id` int NOT NULL,
  `gender` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'Sant_Stud1',1,'male','santsiva@mbl.com','Sant_Sub1'),(2,'Sant_Stud2',1,'male','santsiva2@mbl.com','Sant_Sub1'),(3,'Sant_Stud3',1,'male','santsiva@mbl2.com','Sant_Sub1'),(4,'Sant_Stud5',1,'male','santsiva@mbl3.com','Sant_Sub1'),(5,'Sant_Stud4',1,'male','santsiva@mbl4.com','Sant_Sub1'),(6,'ACE One',2,'male','aceone@hosur.co','Mech'),(7,'Nitin',5,'male','test@gmail.com','Engg'),(8,'Ace Two',2,'female','ace2@hosur.com','CSE'),(9,'Peter Parker',7,'male','peter.parker@test.com','Commerce'),(11,'ACE No Mail',2,'male','acemail','Civil'),(12,'K L Rahul',7,'male','klrahul@hotmail.com','BBA'),(14,'Nitin',2,'male','nitin_ranjan@test.com','Eng'),(15,'Student 1',8,'male','student1@gmail.com','Course1'),(16,'Student2',8,'female','student2@gmail.com','Course2'),(17,'kavi',4,'female','kavi1@gmail.com','Medical Science'),(18,'@#$%%^^',1,'female','4#@56.com','$%^&'),(19,'Nitin',9,'male','nitin_ranjan@in.ibm.com','Eng');
/*!40000 ALTER TABLE `tbl_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `college_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `confpwd` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'Verity Admin',0,'verityaws18@gmail.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Sant_Mode',1,'santsiva@mbl.com','male',2,'77c932b4cabe6e7012ec90a5c98758e353cc746a','77c932b4cabe6e7012ec90a5c98758e353cc746a'),(3,'kalai',4,'mugilanbushanthi@gmail.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(4,'Test',6,'test@gmail.com','female',1,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),(5,'Barla',2,'ace@hosur.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(6,'nitinModerator',6,'nitin_ranjan@in.ibm.com','male',1,'1a1b2fd66ae0e186be213928d293e145786ecdf9','1a1b2fd66ae0e186be213928d293e145786ecdf9'),(7,'PKdemoDonBosco',7,'PKdemoDonBosco@outlok.com','male',1,'83787f060a59493aefdcd4b2369990e7303e186e','83787f060a59493aefdcd4b2369990e7303e186e'),(8,'Ruchi',8,'ruchia24@in.ibm.com','female',2,'25c7d58b6eade8d5a98a83bbfec4f5d6e4b2301d','25c7d58b6eade8d5a98a83bbfec4f5d6e4b2301d'),(9,'ACE Two_!234@%',5,'DNM','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','8cb2237d0679ca88db6464eac60da96345513964'),(10,'nitinModerator',9,'nitin_ranjan@in.ibm.com','male',1,'1a1b2fd66ae0e186be213928d293e145786ecdf9','1a1b2fd66ae0e186be213928d293e145786ecdf9');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 15:21:22
