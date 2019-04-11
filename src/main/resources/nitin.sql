-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('4028808669f6c92d0169f6cab6b30000','','Transportation'),('4028808669f6c92d0169f6cc24890001','','Wedding'),('4028808669f6c92d0169f6cd0aaa0002','','Electronics'),('4028808669f6c92d0169f6cddcab0003','','On Demand Services'),('4028808669f6c92d0169f6ced2fa0004','','Building And Construction'),('4028808669f6c92d0169f6cf90ea0005','','Furniture'),('4028808669f6c92d0169f6cfe2f40006','','Costumes'),('4028808669f6c92d0169f6d2bc760007','','Property');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('4028808669d2de030169d2de60490000','Pune'),('4028808669d2de030169d2de76830001','Nashik'),('4028808669d2de030169d2de8b250002','Mumbai'),('4028808669d2de030169d2dea4090003','Nagpur'),('4028808669d2de030169d2dec9d20004','Jalgoan'),('4028808669d2de030169d2dee0ec0005','Dhule'),('4028808669d2de030169d2df16680006','Aurangabad'),('4028808669d2de030169d2df3dd50007','Thane');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hh_category`
--

DROP TABLE IF EXISTS `hh_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hh_category` (
  `id` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hh_category`
--

LOCK TABLES `hh_category` WRITE;
/*!40000 ALTER TABLE `hh_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `hh_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `category_id` varchar(255) NOT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  KEY `FK1722fotgl02iptku7txh130c` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES ('4028808669f6c92d0169f6cab6b30000','Car,Bike,Bus,Mini Bus,Tempo Traveller,Tempo,Truck'),('4028808669f6c92d0169f6cc24890001','Bridal Wear,Photographer,Makeup/Hiar,Mehendi,Floral and Decoration,Caterer,Music System,Banquet Hall'),('4028808669f6c92d0169f6cd0aaa0002','Laptop,computer,Camera,Mobile,Printer,Computer Accesories'),('4028808669f6c92d0169f6cddcab0003','Electrician,Carpenter,Plumber,Driver,Cook,Lawyer,Doctor'),('4028808669f6c92d0169f6ced2fa0004','Civil Engineer,Contractor,Architect,Tractor,Earthermover,Crane'),('4028808669f6c92d0169f6cf90ea0005','Bed,Cupboard,Chair,other'),('4028808669f6c92d0169f6cfe2f40006','Drepary'),('4028808669f6c92d0169f6d2bc760007','House,Office,Banquet,Lawns,Shop');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-11  9:59:13
