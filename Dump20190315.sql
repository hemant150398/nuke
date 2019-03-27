-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--// HHHHHHHHHHHHHHHHHHHHHHHEEEEEEEEEEEEEEEEEEEELLLLLLLLLLLLLLLLLLLOOOOOOOOOOOOOOOOOOOOOOO
-- Host: 127.0.0.1    Database: qbis
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `activity_user_course_content_view`
--

DROP TABLE IF EXISTS `activity_user_course_content_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_user_course_content_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `view_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `section_id` int(11) DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `spent_time` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds ',
  `course_activity_id` int(11) NOT NULL,
  `test_attempt_id` int(11) DEFAULT NULL COMMENT 'if this content id quiz then it would not be null',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_user_course_content_view`
--

LOCK TABLES `activity_user_course_content_view` WRITE;
/*!40000 ALTER TABLE `activity_user_course_content_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_user_course_content_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_user_course_view`
--

DROP TABLE IF EXISTS `activity_user_course_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_user_course_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_datetime` datetime DEFAULT NULL,
  `spent_time` int(11) NOT NULL DEFAULT '0' COMMENT 'in seconds ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_user_course_view`
--

LOCK TABLES `activity_user_course_view` WRITE;
/*!40000 ALTER TABLE `activity_user_course_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_user_course_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_section_mapping`
--

DROP TABLE IF EXISTS `content_section_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_section_mapping` (
  `content_id` int(10) NOT NULL,
  `section_id` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `attempt_id` int(11) DEFAULT NULL,
  `is_live` int(10) NOT NULL DEFAULT '5',
  KEY `content_id` (`content_id`),
  KEY `section_id` (`section_id`),
  KEY `fk_content_section_mapping_1_idx` (`attempt_id`),
  CONSTRAINT `` FOREIGN KEY (`attempt_id`) REFERENCES `course_attempts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `content_section_mapping_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `course_content_manager` (`content_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `content_section_mapping_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `course_section_manager` (`section_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `content_section_mapping_ibfk_4` FOREIGN KEY (`attempt_id`) REFERENCES `course_attempts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_section_mapping`
--

LOCK TABLES `content_section_mapping` WRITE;
/*!40000 ALTER TABLE `content_section_mapping` DISABLE KEYS */;
INSERT INTO `content_section_mapping` VALUES (1,1,'w3c_home_256',NULL,0),(2,2,'w3c_home',NULL,0),(3,3,'w3c_home_256',NULL,0),(4,4,'w3c_home',NULL,0),(5,5,'w3c_home',NULL,0),(6,6,'w3c_home_256',NULL,0),(7,7,'w3c_home_256',NULL,0),(9,22,'Who wants to be  a millionaire',NULL,0),(10,22,'Who wants to be  a millionaire',NULL,0),(11,23,'Who wants to be  a millionaire',NULL,0),(12,20,'Who wants to be  a millionaire',NULL,0),(13,20,'Who wants to be  a millionaire',NULL,0),(14,20,'Who wants to be  a millionaire',NULL,0),(22,24,'Who wants to be  a millionaire',NULL,0),(23,26,'Who wants to be  a millionaire',NULL,0),(24,28,'Who wants to be  a millionaire',NULL,0),(26,30,'Who wants to be  a millionaire',NULL,0),(27,32,'Who wants to be  a millionaire',NULL,0),(28,34,'Who wants to be  a millionaire',NULL,0),(8,36,'w3c_home',NULL,0),(8,38,'w3c_home',NULL,0),(29,40,'Who wants to be  a millionaire',NULL,0),(30,40,'Who wants to be  a millionaire',NULL,0),(32,42,'Who wants to be  a millionaire',1,0),(33,42,'Who wants to be  a millionaire',2,0),(34,46,'Who wants to be  a millionaire',1,0),(8,48,'w3c_home',NULL,0),(40,44,'Who wants to be  a millionaire',1,0),(44,68,'Who wants to be  a millionaire',1,0),(48,74,'Who wants to be  a millionaire',1,0),(8,70,'w3c_home',NULL,0),(52,70,'Who wants to be  a millionaire',1,0),(53,70,'Who wants to be  a millionaire',1,0),(54,71,'Who wants to be  a millionaire',NULL,0),(64,76,'Who wants to be  a millionaire',1,0),(79,78,'Who wants to be  a millionaire',1,0),(80,78,'Who wants to be  a millionaire',2,0),(104,80,'smallsdsdssd',NULL,5),(126,80,'Who wants to be  a millionaire',1,5),(127,81,'Who wants to be  a millionaire',NULL,5),(102,84,'sasasa',NULL,5),(128,84,'Who wants to be  a millionaire',1,5),(129,85,'Who wants to be  a millionaire',NULL,5),(130,86,'Who wants to be  a millionaire',1,5),(103,82,'shiva',NULL,5),(131,82,'Who wants to be  a millionaire',1,5),(104,88,'smallsdsdssd',NULL,5),(132,88,'Who wants to be  a millionaire',1,5),(133,89,'Who wants to be  a millionaire',NULL,5),(103,90,'shiva',NULL,5),(134,90,'Who wants to be  a millionaire',1,5),(135,91,'Who wants to be  a millionaire',NULL,5),(136,92,'Who wants to be  a millionaire',1,5),(137,92,'Who wants to be  a millionaire',2,5),(138,92,'Who wants to be  a millionaire',1,5),(104,94,'smallsdsdssd',NULL,5),(139,94,'Who wants to be  a millionaire',1,5),(140,94,'Who wants to be  a millionaire',2,5),(103,94,'shiva',NULL,5),(103,96,'shiva',NULL,5),(141,96,'Who wants to be  a millionaire',1,5),(142,96,'Who wants to be  a millionaire',2,5),(101,96,'small',NULL,5),(143,96,'Who wants to be  a millionaire',1,5),(144,96,'Who wants to be  a millionaire',2,5),(145,97,'Who wants to be  a millionaire',NULL,5);
/*!40000 ALTER TABLE `content_section_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_type`
--

DROP TABLE IF EXISTS `content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_type` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(500) DEFAULT NULL,
  `mimetype` varchar(500) DEFAULT NULL,
  `extension` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0' COMMENT '0 for not , 1 for yes',
  `is_global` tinyint(1) DEFAULT '0' COMMENT 'o for not , 1 for yes',
  `icon_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_type`
--

LOCK TABLES `content_type` WRITE;
/*!40000 ALTER TABLE `content_type` DISABLE KEYS */;
INSERT INTO `content_type` VALUES (1,'PDF','application/pdf','pdf',1,1,'c-pdf.png'),(2,'TEST','test','test',1,0,'c-test.png'),(3,'IMAGE','image/jpeg','jpeg',1,1,'c-jpeg.png'),(4,'IMAGE','image/jpeg','jpg',1,1,'c-jpg.png'),(5,'IMAGE','image/png','png',1,1,'c-png.png'),(6,'IMAGE','image/gif','gif',1,1,'c-gif.png'),(7,'IMAGE','image/bmp','bmp',1,1,'c-bmp.png'),(8,'IMAGE','image/tiff','tiff',0,1,'c-tiff.png'),(9,'VIDEO','video/mpeg','mpeg',1,1,'c-mpeg.png'),(10,'VIDEO','video/mp4','mp4',1,1,'c-mp4.png'),(11,'VIDEO','video/x-msvideo','avi',1,1,'c-avi.png'),(12,'VIDEO','video/quicktime','mov',1,1,'c-mov.png'),(13,'PPT','application/vnd.ms-powerpoint','ppt',1,1,'c-ppt.png'),(14,'PPT','application/vnd.openxmlformats-officedocument.presentationml.presentation','pptx',1,1,'c-pptx.png'),(15,'VIDEO','video',NULL,1,1,'c-mp4.png');
/*!40000 ALTER TABLE `content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_assessment`
--

DROP TABLE IF EXISTS `course_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_assessment` (
  `course_assessment_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `isEnroll` tinyint(1) DEFAULT '0' COMMENT '0 for not , 1 for yes',
  `enroll_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`course_assessment_id`),
  KEY `course_id` (`course_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `course_assessment_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_manager` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `course_assessment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_assessment`
--

LOCK TABLES `course_assessment` WRITE;
/*!40000 ALTER TABLE `course_assessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_attempts`
--

DROP TABLE IF EXISTS `course_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_practice` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_attempts`
--

LOCK TABLES `course_attempts` WRITE;
/*!40000 ALTER TABLE `course_attempts` DISABLE KEYS */;
INSERT INTO `course_attempts` VALUES (1,'attempt_1','Attempt 1',0),(2,'attempt_2','attempt 2',0),(4,'attempt_4','Attempt 2',0);
/*!40000 ALTER TABLE `course_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_attempts_mapping`
--

DROP TABLE IF EXISTS `course_attempts_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_attempts_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL,
  `attempt_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_practice` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `created_by` int(11) unsigned NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `attempt_id` (`attempt_id`),
  CONSTRAINT `course_attempts_mapping_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_manager` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `course_attempts_mapping_ibfk_2` FOREIGN KEY (`attempt_id`) REFERENCES `course_attempts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_attempts_mapping`
--

LOCK TABLES `course_attempts_mapping` WRITE;
/*!40000 ALTER TABLE `course_attempts_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_attempts_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_content_manager`
--

DROP TABLE IF EXISTS `course_content_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_content_manager` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT,
  `content_name` varchar(500) DEFAULT NULL,
  `section_id` int(11) unsigned DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `additional_info` varchar(2000) DEFAULT NULL,
  `content_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `content_order` int(11) DEFAULT NULL,
  `no_of_pages` int(11) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visibility` tinyint(1) DEFAULT '0' COMMENT '0 for private, 1 for public',
  `description` varchar(2000) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `is_external_url` tinyint(1) DEFAULT '0' COMMENT '0 for browse, 1 for external url',
  `file_size` bigint(20) DEFAULT NULL,
  `attempt_id` int(11) DEFAULT NULL,
  `streaming_url` varchar(1000) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `fk_course_content_manager_course_section_manager1` (`section_id`) USING BTREE,
  KEY `fk_course_content_manager_content_type1` (`content_type_id`) USING BTREE,
  KEY `attempt_id` (`attempt_id`),
  CONSTRAINT `course_content_manager_ibfk_1` FOREIGN KEY (`attempt_id`) REFERENCES `course_attempts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_content_manager_content_type1` FOREIGN KEY (`content_type_id`) REFERENCES `content_type` (`content_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_content_manager_course_attempts` FOREIGN KEY (`attempt_id`) REFERENCES `course_attempts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_content_manager_course_section_manager1` FOREIGN KEY (`section_id`) REFERENCES `course_section_manager` (`section_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_content_manager`
--

LOCK TABLES `course_content_manager` WRITE;
/*!40000 ALTER TABLE `course_content_manager` DISABLE KEYS */;
INSERT INTO `course_content_manager` VALUES (1,'w3c_home_256',NULL,'bellurbis/w3c_home_256_1.gif',NULL,6,NULL,0,1,'2019-02-22 06:12:04',0,NULL,NULL,0,1667,NULL,'https://d31swx9bnpo7f0.cloudfront.net/29c779d5-b695-4f48-b9f6-29291e65283b/hls/SampleVideo_1280x720_1mb_69.m3u8',1,NULL),(2,'w3c_home',NULL,'bellurbis/w3c_home_2.png',NULL,5,NULL,0,1,'2019-02-22 06:17:25',0,NULL,NULL,0,2028,NULL,NULL,0,NULL),(3,'w3c_home_256',NULL,'bellurbis/w3c_home_256_3.gif',NULL,6,NULL,0,1,'2019-02-22 07:06:47',0,NULL,NULL,0,1667,NULL,NULL,0,NULL),(4,'w3c_home',NULL,'bellurbis/w3c_home_4.png',NULL,5,NULL,0,1,'2019-02-22 07:10:42',0,NULL,NULL,0,2028,NULL,NULL,0,NULL),(5,'w3c_home',NULL,'bellurbis/w3c_home_5.png',NULL,5,NULL,0,1,'2019-02-22 07:18:10',0,NULL,NULL,0,2028,NULL,NULL,0,NULL),(6,'w3c_home_256',NULL,'bellurbis/w3c_home_256_6.gif',NULL,6,NULL,0,1,'2019-02-22 07:22:16',0,NULL,NULL,0,1667,NULL,NULL,0,NULL),(7,'w3c_home_256',NULL,'bellurbis/w3c_home_256_7.gif',NULL,6,NULL,0,1,'2019-02-22 07:31:36',0,NULL,NULL,0,1667,NULL,NULL,0,NULL),(8,'w3c_home',NULL,'bellurbis/w3c_home_8.png',NULL,5,NULL,0,1,'2019-02-22 12:05:50',0,NULL,NULL,0,2028,NULL,NULL,0,NULL),(9,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-22 12:43:00',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(10,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-22 12:43:05',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(11,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-22 12:43:17',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(12,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-23 18:43:24',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(13,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-23 18:44:47',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(14,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-24 17:31:00',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(15,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 06:51:26',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(16,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 06:51:57',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(17,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 07:00:39',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(18,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 07:03:06',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(19,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 07:03:19',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(20,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 07:03:33',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(21,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 07:36:52',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(22,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 07:41:05',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(23,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:36:54',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(24,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:39:37',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(25,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:44:33',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(26,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:48:34',0,NULL,NULL,0,NULL,4,NULL,0,NULL),(27,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:49:39',0,NULL,NULL,0,NULL,2,NULL,0,NULL),(28,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:50:52',0,NULL,NULL,0,NULL,1,NULL,0,NULL),(29,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:54:55',0,NULL,NULL,0,NULL,1,NULL,0,NULL),(30,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 08:55:00',0,NULL,NULL,0,NULL,2,NULL,0,NULL),(31,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 09:37:23',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(32,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 09:39:37',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(33,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 09:39:42',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(34,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 09:48:10',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(35,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 10:14:44',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(36,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 10:21:35',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(37,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 10:44:22',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(38,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 10:54:48',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(39,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 11:25:20',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(40,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 11:25:36',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(41,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:31:47',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(42,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:33:17',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(43,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:33:23',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(44,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:37:08',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(45,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:39:56',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(46,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:41:44',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(47,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:48:34',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(48,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 16:51:05',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(49,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 17:31:40',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(50,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-25 17:42:54',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(51,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-26 05:30:24',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(52,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-26 05:36:56',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(53,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-26 05:37:12',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(54,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-26 05:38:27',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(55,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-26 06:03:26',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(56,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-26 10:33:00',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(57,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 05:15:32',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(58,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 05:15:41',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(59,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 05:20:08',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(60,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 05:23:50',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(61,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 05:24:43',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(62,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 05:27:23',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(63,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 05:35:42',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(64,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 08:55:28',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(65,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-27 08:55:36',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(66,'pdf-sample',NULL,'bellurbis/66_pdf',NULL,1,NULL,1,1,'2019-02-28 05:22:02',0,NULL,NULL,0,7945,NULL,NULL,0,NULL),(67,'file_example_MP4_1280_10MG',NULL,'bellurbis/file_example_MP4_1280_10MG_67.mp4',NULL,10,NULL,0,1,'2019-02-28 06:08:03',0,NULL,NULL,0,9840497,NULL,NULL,0,NULL),(68,'SampleVideo_1280x720_1mb',NULL,'bellurbis/SampleVideo_1280x720_1mb_68.mp4',NULL,10,NULL,0,1,'2019-02-28 06:16:01',0,NULL,NULL,0,1055736,NULL,NULL,0,NULL),(69,'SampleVideo_1280x720_1mb',NULL,'bellurbis/SampleVideo_1280x720_1mb_69.mp4',NULL,10,NULL,0,1,'2019-02-28 06:31:02',0,NULL,NULL,0,1055736,NULL,NULL,0,NULL),(70,'drop',NULL,'bellurbis/drop_70.avi',NULL,11,NULL,0,1,'2019-02-28 06:45:32',0,NULL,NULL,0,675840,NULL,NULL,0,NULL),(71,'SampleVideo_1280x720_1mb',NULL,'bellurbis/SampleVideo_1280x720_1mb_71.mp4',NULL,10,NULL,0,1,'2019-02-28 06:47:01',0,NULL,NULL,0,1055736,NULL,NULL,0,NULL),(73,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-28 10:38:50',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(74,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-02-28 10:39:53',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(75,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-04 10:47:34',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(76,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-04 10:48:56',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(77,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-04 10:49:16',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(78,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-04 10:49:19',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(79,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-04 11:54:07',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(80,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-04 12:50:14',0,NULL,NULL,0,NULL,NULL,NULL,0,NULL),(81,'small.mp4',NULL,'bellurbis/small_81.mp4',NULL,10,NULL,0,1,'2019-03-06 06:10:03',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(82,'small.mp4',NULL,'bellurbis/small_82.mp4',NULL,10,NULL,0,1,'2019-03-06 06:12:04',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(83,'small.mp4',NULL,'bellurbis/small_83.mp4',NULL,10,NULL,0,1,'2019-03-06 06:15:03',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(84,'SampleVideo_1280x720_5mb',NULL,'bellurbis/SampleVideo_1280x720_5mb_84.mp4',NULL,10,NULL,0,1,'2019-03-06 06:18:02',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL),(85,'SampleVideo_1280x720_2mb',NULL,'bellurbis/SampleVideo_1280x720_2mb_85.mp4',NULL,10,NULL,0,1,'2019-03-06 06:18:07',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(86,'small',NULL,'bellurbis/small_86.mp4',NULL,10,NULL,0,1,'2019-03-06 06:19:11',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(87,'holaaa',NULL,'bellurbis/SampleVideo_1280x720_2mb_87.mp4',NULL,10,NULL,0,1,'2019-03-06 06:19:16',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(88,'small',NULL,'bellurbis/small_88.mp4',NULL,10,NULL,0,1,'2019-03-06 06:20:17',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(89,'SampleVideo_1280x720_5mb',NULL,'bellurbis/SampleVideo_1280x720_5mb_89.mp4',NULL,10,NULL,0,1,'2019-03-06 06:33:32',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL),(90,'SampleVideo_1280x720_2mb',NULL,'bellurbis/SampleVideo_1280x720_2mb_90.mp4',NULL,10,NULL,0,1,'2019-03-06 06:33:38',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(91,'shiv1',NULL,'bellurbis/small_91.mp4',NULL,10,NULL,0,1,'2019-03-06 06:36:46',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(92,'shiv2',NULL,'bellurbis/SampleVideo_1280x720_5mb_92.mp4',NULL,10,NULL,0,1,'2019-03-06 06:36:53',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL),(93,'SAGSG',NULL,'bellurbis/small_93.mp4',NULL,10,NULL,0,1,'2019-03-06 06:38:38',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(94,'SADSDB',NULL,'bellurbis/SampleVideo_1280x720_5mb_94.mp4',NULL,10,NULL,0,1,'2019-03-06 06:38:44',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL),(95,'test11',NULL,'bellurbis/SampleVideo_1280x720_5mb_95.mp4',NULL,10,NULL,0,1,'2019-03-06 06:43:34',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL),(96,'test12',NULL,'bellurbis/SampleVideo_1280x720_1mb (1)_96.mp4',NULL,10,NULL,0,1,'2019-03-06 06:43:39',0,NULL,NULL,0,1055736,NULL,NULL,0,NULL),(97,'ssdsds',NULL,'bellurbis/SampleVideo_1280x720_5mb_97.mp4',NULL,10,NULL,0,1,'2019-03-06 06:49:10',0,NULL,NULL,0,5253880,NULL,NULL,1,NULL),(98,'sdsdsd',NULL,'bellurbis/SampleVideo_1280x720_2mb_98.mp4',NULL,10,NULL,0,1,'2019-03-06 06:49:15',0,NULL,NULL,0,2107842,NULL,NULL,1,NULL),(99,'ststus',NULL,'bellurbis/SampleVideo_1280x720_5mb_99.mp4',NULL,10,NULL,0,1,'2019-03-06 06:52:05',0,NULL,NULL,0,5253880,NULL,NULL,1,NULL),(100,'ststus',NULL,'bellurbis/SampleVideo_1280x720_2mb_100.mp4',NULL,10,NULL,0,1,'2019-03-06 06:52:10',0,NULL,NULL,0,2107842,NULL,NULL,1,NULL),(101,'small',NULL,'bellurbis/small_101.mp4',NULL,10,4,0,1,'2019-03-06 06:54:56',0,NULL,NULL,0,383631,NULL,NULL,1,NULL),(102,'sasasa',NULL,'bellurbis/SampleVideo_1280x720_5mb_102.mp4',NULL,10,NULL,0,1,'2019-03-06 06:55:03',0,NULL,NULL,0,5253880,NULL,NULL,1,NULL),(103,'shiva',NULL,'bellurbis/SampleVideo_1280x720_5mb_103.mp4',NULL,10,1,0,1,'2019-03-06 06:58:40',0,NULL,NULL,0,5253880,NULL,NULL,1,NULL),(104,'smallsdsdssd',NULL,'bellurbis/small_104.mp4',NULL,10,NULL,0,1,'2019-03-06 07:00:34',0,NULL,NULL,0,383631,NULL,NULL,1,NULL),(105,'small',NULL,'bellurbis/small_105.mp4',NULL,10,NULL,0,1,'2019-03-06 07:02:24',0,NULL,NULL,0,383631,NULL,NULL,NULL,NULL),(106,'small',NULL,'bellurbis/small_106.mp4',NULL,10,NULL,0,1,'2019-03-06 07:06:00',0,NULL,NULL,0,383631,NULL,NULL,NULL,NULL),(107,'finaltest',NULL,'bellurbis/small_107.mp4',NULL,10,NULL,0,1,'2019-03-06 07:09:34',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(108,'asasasasadsds',NULL,'bellurbis/small_108.mp4',NULL,10,NULL,0,1,'2019-03-06 07:12:12',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(109,'wewewe',NULL,'bellurbis/small_109.mp4',NULL,10,NULL,0,1,'2019-03-06 07:13:46',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(110,'drop_70sadsfsf',NULL,'bellurbis/drop_70_110.avi',NULL,11,NULL,0,1,'2019-03-06 07:14:55',0,NULL,NULL,0,675840,NULL,NULL,0,NULL),(111,'sdsd',NULL,'bellurbis/drop_70_111.avi',NULL,11,NULL,0,1,'2019-03-06 07:16:43',0,NULL,NULL,0,675840,NULL,NULL,0,NULL),(112,'smallasassssssssssssssss',NULL,'bellurbis/small_112.mp4',NULL,10,NULL,0,1,'2019-03-06 07:22:16',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(113,'smallsdsdsdsdsdsfddfdgd',NULL,'bellurbis/small_113.mp4',NULL,10,NULL,0,1,'2019-03-06 07:28:02',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(114,'hahahahdggdgd',NULL,'bellurbis/SampleVideo_1280x720_1mb (1)_114.mp4',NULL,10,NULL,0,1,'2019-03-06 07:32:37',0,NULL,NULL,0,1055736,NULL,NULL,2,NULL),(115,'shivanshFinaale',NULL,'bellurbis/drop_70 (1)_115.avi',NULL,11,NULL,0,1,'2019-03-06 07:34:22',0,NULL,NULL,0,675840,NULL,NULL,2,NULL),(116,'drop_70 (1)',NULL,'bellurbis/drop_70 (1)_116.avi',NULL,11,NULL,0,1,'2019-03-06 07:36:01',0,NULL,NULL,0,675840,NULL,NULL,0,NULL),(117,'sdsffgreetyeyety',NULL,'bellurbis/drop_70_117.avi',NULL,11,NULL,0,1,'2019-03-06 07:36:21',0,NULL,NULL,0,675840,NULL,NULL,0,NULL),(118,'SampleVideo_1280x720_5mb',NULL,'bellurbis/SampleVideo_1280x720_5mb_118.mp4',NULL,10,NULL,0,1,'2019-03-06 07:37:46',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL),(119,'SampleVideo_1280x720_1mb (1)',NULL,'bellurbis/SampleVideo_1280x720_1mb (1)_119.mp4',NULL,10,NULL,0,1,'2019-03-06 07:41:12',0,NULL,NULL,0,1055736,NULL,NULL,0,NULL),(120,'SampleVideo_1280x720_5mb',NULL,'bellurbis/SampleVideo_1280x720_5mb_120.mp4',NULL,10,NULL,0,1,'2019-03-06 08:34:36',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL),(121,'small',NULL,'bellurbis/small_121.mp4',NULL,10,NULL,0,1,'2019-03-06 08:50:21',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(122,'smallhaiye',NULL,'small_122.mp4',NULL,10,NULL,0,1,'2019-03-06 08:56:00',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(123,'small',NULL,'small_123.mp4',NULL,10,NULL,0,1,'2019-03-06 09:35:36',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(124,'Lms1',NULL,'small_124.mp4',NULL,10,NULL,0,1,'2019-03-06 12:28:55',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(125,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 10:37:00',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(126,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 10:48:16',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(127,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 10:48:23',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(128,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 10:57:33',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(129,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 10:57:39',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(130,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:15:46',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(131,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:17:37',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(132,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:19:14',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(133,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:19:23',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(134,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:45:43',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(135,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:45:49',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(136,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:49:24',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(137,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:49:28',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(138,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-11 11:50:32',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(139,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-12 09:39:47',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(140,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-12 09:40:13',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(141,'Who wants to be  a millionaire',NULL,'1',NULL,2,2,0,1,'2019-03-12 10:48:20',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(142,'Who wants to be  a millionaire',NULL,'1',NULL,2,3,0,1,'2019-03-12 10:48:24',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(143,'Who wants to be  a millionaire',NULL,'1',NULL,2,5,0,1,'2019-03-12 10:49:04',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(144,'Who wants to be  a millionaire',NULL,'1',NULL,2,6,0,1,'2019-03-12 10:49:12',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(145,'Who wants to be  a millionaire',NULL,'1',NULL,2,NULL,0,1,'2019-03-12 10:49:48',0,NULL,NULL,0,NULL,NULL,NULL,1,NULL),(146,'new',NULL,'small_146.mp4',NULL,10,NULL,0,1,'2019-03-13 06:28:19',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(147,'small',NULL,'small_147.mp4',NULL,10,NULL,0,1,'2019-03-13 06:31:32',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(148,'small',NULL,'small_148.mp4',NULL,10,NULL,0,1,'2019-03-13 06:32:48',0,NULL,NULL,0,383631,NULL,NULL,0,NULL),(149,'sample videp',NULL,'sample videp_149.mp4',NULL,10,NULL,0,1,'2019-03-13 06:40:00',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(150,'sample videp',NULL,'sample videp_150.mp4',NULL,10,NULL,0,1,'2019-03-13 06:45:14',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(151,'sample videp',NULL,'sample videp_151.mp4',NULL,10,NULL,0,1,'2019-03-13 06:51:43',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(152,'sample videp',NULL,'sample videp_152.mp4',NULL,10,NULL,0,1,'2019-03-13 06:53:10',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(153,'sample_videp',NULL,'sample videp_153.mp4',NULL,10,NULL,0,1,'2019-03-13 06:54:20',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(154,'sample_video',NULL,'sample video_154.mp4',NULL,10,NULL,0,1,'2019-03-13 06:59:30',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(155,'sample_video',NULL,'sample video_155.mp4',NULL,10,NULL,0,1,'2019-03-13 07:07:46',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(156,'sample_video',NULL,'sample video_156.mp4',NULL,10,NULL,0,1,'2019-03-13 07:18:03',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(157,'sample_video',NULL,'sample video_157.mp4',NULL,10,NULL,0,1,'2019-03-13 07:20:31',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(158,'sample_video',NULL,'sample video_158.mp4',NULL,10,NULL,0,1,'2019-03-13 07:27:13',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(159,'sample_video',NULL,'sample video_159.mp4',NULL,10,NULL,0,1,'2019-03-13 07:31:48',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(160,'sample_video',NULL,'sample video_160.mp4',NULL,10,NULL,0,1,'2019-03-13 07:34:26',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(161,'sample_video',NULL,'sample video_161.mp4',NULL,10,NULL,0,1,'2019-03-13 07:38:57',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(162,'sample video',NULL,'sample video_162.mp4',NULL,10,NULL,0,1,'2019-03-13 07:45:44',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(163,'sample video',NULL,'sample video_163.mp4',NULL,10,NULL,0,1,'2019-03-13 08:32:21',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(164,'sample video',NULL,'sample video_164.mp4',NULL,10,NULL,0,1,'2019-03-13 08:53:08',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(165,'sample video',NULL,'sample video_165.mp4',NULL,10,NULL,0,1,'2019-03-13 08:55:09',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(166,'sample video',NULL,'sample video_166.mp4',NULL,10,NULL,0,1,'2019-03-13 08:56:46',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(167,'sample_video',NULL,'sample video_167.mp4',NULL,10,NULL,0,1,'2019-03-13 09:02:20',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(168,'sample_video',NULL,'sample video_168.mp4',NULL,10,NULL,0,1,'2019-03-13 09:04:49',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(169,'sample_video',NULL,'sample video_169.mp4',NULL,10,NULL,0,1,'2019-03-13 09:13:10',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(170,'sample_video',NULL,'sample video_170.mp4',NULL,10,NULL,0,1,'2019-03-13 09:18:40',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(171,'sample_video',NULL,'sample video_171.mp4',NULL,10,NULL,0,1,'2019-03-13 09:21:57',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(172,'sample_video',NULL,'sample video_172.mp4',NULL,10,NULL,0,1,'2019-03-13 09:23:21',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(173,'sample_video',NULL,'sample_video.mp4',NULL,10,NULL,0,1,'2019-03-13 09:32:29',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(174,'sample_video',NULL,'sample_video.mp4',NULL,10,NULL,0,1,'2019-03-13 09:37:51',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(175,'sample_video',NULL,'sample_video.mp4',NULL,10,NULL,0,1,'2019-03-13 09:43:06',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(176,'sample video',NULL,'sample_video.mp4',NULL,10,NULL,0,1,'2019-03-13 09:45:39',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(177,'sample video',NULL,'sample_video.mp4',NULL,10,NULL,0,1,'2019-03-13 09:46:10',0,NULL,NULL,0,2107842,NULL,NULL,0,NULL),(178,'SampleVideo_1280x720_5mb',NULL,'SampleVideo_1280x720_5mb.mp4',NULL,10,NULL,0,1,'2019-03-13 09:46:41',0,NULL,NULL,0,5253880,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `course_content_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_manager`
--

DROP TABLE IF EXISTS `course_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_manager` (
  `course_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `highlights` varchar(2000) DEFAULT NULL,
  `promo_video` varchar(2000) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - public, 1 - private',
  `is_paid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - free 1 - paid',
  `max_cost` double(10,2) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 active, 0- inactive',
  `published` tinyint(1) DEFAULT '0' COMMENT '0-not publish, 1-published',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT NULL,
  `published_on` datetime DEFAULT NULL,
  `is_scheduled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for not, 1 for yes',
  `schedule_publish_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `level_id` int(11) unsigned NOT NULL,
  `language_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for not shared and 1 for shared',
  `course_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'o means internal course and 1 means scorm type course',
  `scorm_root_path` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `fk_course_manager_qbis_users1` (`user_id`),
  KEY `fk_course_manager_language_content1` (`language_id`) USING BTREE,
  KEY `fk_course_manager_difficulty_level1` (`level_id`) USING BTREE,
  CONSTRAINT `fk_course_manager_difficulty_level1` FOREIGN KEY (`level_id`) REFERENCES `difficulty_level` (`level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_manager_language_content1` FOREIGN KEY (`language_id`) REFERENCES `language_content` (`language_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_manager_qbis_users1` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_manager`
--

LOCK TABLES `course_manager` WRITE;
/*!40000 ALTER TABLE `course_manager` DISABLE KEYS */;
INSERT INTO `course_manager` VALUES (1,'FirstTesting','sas','############','',NULL,'Group,',0,0,NULL,0,1,'2019-02-22 06:12:17','2019-02-22 11:42:17','2019-02-22 11:42:17',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(2,'sasa','asasa','############','',NULL,'Test,',0,0,NULL,0,1,'2019-02-22 06:17:41','2019-02-22 11:47:41','2019-02-22 11:47:41',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(3,'dddd','dsdd','############','',NULL,'Group,',0,0,NULL,0,1,'2019-02-22 07:06:54','2019-02-22 12:36:54','2019-02-22 12:36:54',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(4,'zsasas','sasa','############','',NULL,'12th,',0,0,NULL,0,1,'2019-02-22 07:10:51','2019-02-22 12:40:51','2019-02-22 12:40:51',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(5,'ds','dfdf','############','',NULL,'Subject,',0,0,NULL,0,1,'2019-02-22 07:18:17','2019-02-22 12:48:17','2019-02-22 12:48:17',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(6,'dfdfd','dfd','############','',NULL,'Subject,',0,0,NULL,0,1,'2019-02-22 07:22:23','2019-02-22 12:52:23','2019-02-22 12:52:23',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(7,'sdsds','sdsd','############','',NULL,'12th,',0,0,NULL,0,1,'2019-02-24 17:31:19','2019-02-24 23:01:19','2019-02-24 23:01:19',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(8,'sdsd','sdsd','############','',NULL,'Subject,',0,0,NULL,0,1,'2019-02-22 07:31:44','2019-02-22 13:01:44','2019-02-22 13:01:44',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(9,'kaun Banegaa carorepati','sssws','############','',NULL,'12th,',0,0,NULL,0,1,'2019-02-22 12:43:37','2019-02-22 18:13:37','2019-02-22 18:13:37',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(10,'HelloCourse','ddsds','############','',NULL,'Subject,',0,0,NULL,0,1,'2019-02-25 07:41:51','2019-02-25 13:11:51','2019-02-25 13:11:51',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(11,'Title','dddfd','############','',NULL,'Test,',0,0,NULL,0,1,'2019-02-25 08:37:13','2019-02-25 14:07:13','2019-02-25 14:07:13',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(12,'sasassasas','ssss','############','',NULL,'B.Tech,',0,0,NULL,0,1,'2019-02-25 08:39:48','2019-02-25 14:09:48','2019-02-25 14:09:48',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(13,'hello111','sdsd','############','',NULL,'Test,',0,0,NULL,0,1,'2019-02-25 08:48:42','2019-02-25 14:18:42','2019-02-25 14:18:42',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(14,'shivanshTest','sdsd','############','',NULL,'Subject,',0,0,NULL,0,1,'2019-02-25 08:49:48','2019-02-25 14:19:48','2019-02-25 14:19:48',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(15,'Bellurbis','asas','############','',NULL,'Test,',0,0,NULL,0,1,'2019-02-25 08:51:00','2019-02-25 14:21:00','2019-02-25 14:21:00',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(16,'BellurbisTesting','dddssdsd','############','',NULL,'Group,',0,0,NULL,0,1,'2019-02-25 08:52:01','2019-02-25 14:22:01','2019-02-25 14:22:01',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(17,'Bell@12','sssssssds','############','',NULL,'B.Tech,',0,0,NULL,0,1,'2019-02-25 08:54:04','2019-02-25 14:24:04','2019-02-25 14:24:04',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(18,'HELLOjpg','dsdsd','############','',NULL,'Test,',0,0,NULL,0,1,'2019-02-25 08:55:16','2019-02-25 14:25:16','2019-02-25 14:25:16',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(19,'wwewe','wewe','############','',NULL,'Group,',0,0,NULL,0,1,'2019-02-25 09:40:05','2019-02-25 15:10:05','2019-02-25 15:10:05',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(20,'BellurbisTesting1','wwded','############','',NULL,'Group,',0,0,NULL,0,0,'2019-02-25 09:40:35','2019-02-25 15:10:35',NULL,0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(21,'HELLOjpg','ddf','############','',NULL,'Test,',0,0,NULL,0,1,'2019-02-25 09:48:23','2019-02-25 15:18:23','2019-02-25 15:18:23',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(22,'ddddddddddssssssss','dfdf','############','',NULL,'12th,',0,0,NULL,0,1,'2019-02-25 09:59:01','2019-02-25 15:29:01','2019-02-25 15:29:01',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(23,'Further Testing','sdsds','############','',NULL,'Test,',0,0,NULL,0,0,'2019-02-25 11:30:56','2019-02-25 17:00:56',NULL,0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(24,'hfhfhf','fdfd','############','',NULL,'Test,',0,0,NULL,0,0,'2019-02-25 16:39:42','2019-02-25 22:09:42',NULL,0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(25,'sdsd','sdsd','############','',NULL,'Group,',0,0,NULL,0,1,'2019-02-25 17:29:43','2019-02-25 22:59:43','2019-02-25 22:59:43',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(26,'Dffdg','hgjj','############','',NULL,'gfh,',0,0,NULL,0,0,'2019-02-26 06:01:20','2019-02-26 11:31:20',NULL,0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(27,'dfdf','gfg','############','',NULL,'B.Tech,',0,0,NULL,0,0,'2019-02-28 10:38:19','2019-02-28 16:08:19',NULL,0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(28,'NewCourse','Description','############','',NULL,'Group,',0,0,NULL,0,1,'2019-03-11 10:48:41','2019-03-11 16:18:41','2019-03-11 16:18:41',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(29,'bdkjsdf','sdsd','############','',NULL,'Group,',0,0,NULL,0,1,'2019-03-11 11:17:51','2019-03-11 16:47:51','2019-03-11 16:47:51',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(30,'HelloTest1','asddsd','############','',NULL,'Class, Group, Subject,',0,0,NULL,0,1,'2019-03-11 10:57:57','2019-03-11 16:27:57','2019-03-11 16:27:57',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(31,'dsjlkfjs','sdsdf','############','',NULL,'Test,',0,0,NULL,0,1,'2019-03-11 11:16:00','2019-03-11 16:46:00','2019-03-11 16:46:00',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(32,'Heya1122','SDJSJD','############','',NULL,'Group,',0,0,NULL,0,1,'2019-03-11 11:19:55','2019-03-11 16:49:55','2019-03-11 16:49:55',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(33,'Testing4','sdss','############','',NULL,'Group,',0,0,NULL,0,1,'2019-03-11 11:46:04','2019-03-11 17:16:04','2019-03-11 17:16:04',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(34,'shivanshTest','gfgvfh','############','',NULL,'Test,',0,0,NULL,0,1,'2019-03-11 11:49:50','2019-03-11 17:19:50','2019-03-11 17:19:50',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(35,'March12Course','asa','############','',NULL,'12th,',0,0,NULL,0,1,'2019-03-12 09:40:43','2019-03-12 15:10:43','2019-03-12 15:10:43',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL),(36,'Trainee Course','sss','############','',NULL,'Group,',0,0,NULL,0,1,'2019-03-12 10:49:59','2019-03-12 16:19:59','2019-03-12 16:19:59',0,NULL,NULL,NULL,1,1,1,'',0,0,NULL);
/*!40000 ALTER TABLE `course_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_section_manager`
--

DROP TABLE IF EXISTS `course_section_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_section_manager` (
  `section_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(500) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0' COMMENT '0-not publish, 1-published',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `course_id` int(11) unsigned NOT NULL,
  `order` int(11) DEFAULT NULL,
  `quiz_mandatory` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0- No and 1 - Yes',
  `passing_criteria` int(3) DEFAULT NULL COMMENT 'null then no passing criteria',
  `min_time_spent` int(10) DEFAULT '5' COMMENT '(in min)',
  `course_attempt_id` bigint(20) DEFAULT NULL,
  `is_practice` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`),
  KEY `fk_course_section_manager_course_manager1` (`course_id`) USING BTREE,
  CONSTRAINT `fk_course_section_manager_course_manager1` FOREIGN KEY (`course_id`) REFERENCES `course_manager` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_section_manager`
--

LOCK TABLES `course_section_manager` WRITE;
/*!40000 ALTER TABLE `course_section_manager` DISABLE KEYS */;
INSERT INTO `course_section_manager` VALUES (1,'sasas',1,NULL,NULL,1,NULL,0,NULL,5,NULL,0),(2,'asasa',1,NULL,NULL,2,NULL,0,NULL,5,NULL,0),(3,'ddd',1,NULL,NULL,3,NULL,0,NULL,5,NULL,0),(4,'asas',1,NULL,NULL,4,NULL,0,NULL,5,NULL,0),(5,'ewe',1,NULL,NULL,5,NULL,0,NULL,5,NULL,0),(6,'sss',1,NULL,NULL,6,NULL,0,NULL,5,NULL,0),(7,'sdd',1,NULL,NULL,8,NULL,0,NULL,5,NULL,0),(20,'ssdsd',1,NULL,NULL,7,NULL,0,NULL,5,NULL,0),(21,'ssdsd (Practice) ',0,NULL,NULL,7,NULL,0,NULL,5,NULL,1),(22,'wwwwe',1,NULL,NULL,9,NULL,0,NULL,5,NULL,0),(23,'wwwwe (Practice) ',1,NULL,NULL,9,NULL,0,NULL,5,NULL,1),(24,'Sec1',1,NULL,NULL,10,NULL,0,NULL,5,NULL,0),(25,'Sec1 (Practice) ',0,NULL,NULL,10,NULL,0,NULL,5,NULL,1),(26,'Sec1',1,NULL,NULL,11,NULL,0,NULL,5,NULL,0),(27,'Sec1 (Practice) ',0,NULL,NULL,11,NULL,0,NULL,5,NULL,1),(28,'Sec1',1,NULL,NULL,12,NULL,0,NULL,5,NULL,0),(29,'Sec1 (Practice) ',0,NULL,NULL,12,NULL,0,NULL,5,NULL,1),(30,'hellooo',1,NULL,NULL,13,NULL,0,NULL,5,NULL,0),(31,'hellooo (Practice) ',0,NULL,NULL,13,NULL,0,NULL,5,NULL,1),(32,'hellooo1',1,NULL,NULL,14,NULL,0,NULL,5,NULL,0),(33,'hellooo1 (Practice) ',0,NULL,NULL,14,NULL,0,NULL,5,NULL,1),(34,'Bellurbis',1,NULL,NULL,15,NULL,0,NULL,5,NULL,0),(35,'Bellurbis (Practice) ',0,NULL,NULL,15,NULL,0,NULL,5,NULL,1),(36,'Bell',1,NULL,NULL,16,NULL,0,NULL,5,NULL,0),(37,'Bell (Practice) ',0,NULL,NULL,16,NULL,0,NULL,5,NULL,1),(38,'hashtag',1,NULL,NULL,17,NULL,0,NULL,5,NULL,0),(39,'hashtag (Practice) ',0,NULL,NULL,17,NULL,0,NULL,5,NULL,1),(40,'hashtag',1,NULL,NULL,18,NULL,0,NULL,5,NULL,0),(41,'hashtag (Practice) ',0,NULL,NULL,18,NULL,0,NULL,5,NULL,1),(42,'Sec1',1,NULL,NULL,19,NULL,0,NULL,5,NULL,0),(43,'Sec1 (Practice) ',0,NULL,NULL,19,NULL,0,NULL,5,NULL,1),(44,'Hello',0,NULL,NULL,20,NULL,0,NULL,5,NULL,0),(45,'Hello (Practice) ',0,NULL,NULL,20,NULL,0,NULL,5,NULL,1),(46,'hii',1,NULL,NULL,21,NULL,0,NULL,5,NULL,0),(47,'hii (Practice) ',0,NULL,NULL,21,NULL,0,NULL,5,NULL,1),(48,'hello',1,NULL,NULL,22,NULL,0,NULL,5,NULL,0),(49,'hello (Practice) ',0,NULL,NULL,22,NULL,0,NULL,5,NULL,1),(52,'hello',0,NULL,NULL,20,NULL,0,NULL,5,NULL,0),(68,'hello',0,NULL,NULL,23,NULL,0,NULL,5,NULL,0),(69,'hello (Practice) ',0,NULL,NULL,23,NULL,0,NULL,5,NULL,1),(70,'dsds',0,NULL,NULL,24,NULL,0,NULL,5,NULL,0),(71,'dsds (Practice) ',0,NULL,NULL,24,NULL,0,NULL,5,NULL,1),(74,'ghghg',1,NULL,NULL,25,NULL,0,NULL,5,NULL,0),(75,'ghghg (Practice) ',0,NULL,NULL,25,NULL,0,NULL,5,NULL,1),(76,'AAAA',0,NULL,NULL,26,NULL,0,NULL,5,NULL,0),(77,'AAAA (Practice) ',0,NULL,NULL,26,NULL,0,NULL,5,NULL,1),(78,'helloo',0,NULL,NULL,27,NULL,0,NULL,5,NULL,0),(79,'helloo (Practice) ',0,NULL,NULL,27,NULL,0,NULL,5,NULL,1),(80,'SECTION1',1,NULL,NULL,28,NULL,0,NULL,5,NULL,0),(81,'SECTION1 (Practice) ',1,NULL,NULL,28,NULL,0,NULL,5,NULL,1),(82,'Pramod',1,NULL,NULL,29,NULL,0,NULL,5,NULL,0),(83,'Pramod (Practice) ',0,NULL,NULL,29,NULL,0,NULL,5,NULL,1),(84,'Sec11',1,NULL,NULL,30,NULL,0,NULL,5,NULL,0),(85,'Sec11 (Practice) ',1,NULL,NULL,30,NULL,0,NULL,5,NULL,1),(86,'hello',1,NULL,NULL,31,NULL,0,NULL,5,NULL,0),(87,'hello (Practice) ',0,NULL,NULL,31,NULL,0,NULL,5,NULL,1),(88,'hello1122',1,NULL,NULL,32,NULL,0,NULL,5,NULL,0),(89,'hello1122 (Practice) ',1,NULL,NULL,32,NULL,0,NULL,5,NULL,1),(90,'First',1,NULL,NULL,33,NULL,0,NULL,5,NULL,0),(91,'First (Practice) ',1,NULL,NULL,33,NULL,0,NULL,5,NULL,1),(92,'SectionTesting',1,NULL,NULL,34,NULL,0,NULL,5,NULL,0),(93,'SectionTesting (Practice) ',0,NULL,NULL,34,NULL,0,NULL,5,NULL,1),(94,'March12',1,NULL,NULL,35,NULL,0,NULL,5,NULL,0),(95,'March12 (Practice) ',0,NULL,NULL,35,NULL,0,NULL,5,NULL,1),(96,'Chapter 1',1,NULL,NULL,36,NULL,0,NULL,5,NULL,0),(97,'Chapter 1 (Practice) ',1,NULL,NULL,36,NULL,0,NULL,5,NULL,1);
/*!40000 ALTER TABLE `course_section_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `difficulty_level`
--

DROP TABLE IF EXISTS `difficulty_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `difficulty_level` (
  `level_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `level_name` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for inactive, 1 for active',
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `difficulty_level`
--

LOCK TABLES `difficulty_level` WRITE;
/*!40000 ALTER TABLE `difficulty_level` DISABLE KEYS */;
INSERT INTO `difficulty_level` VALUES (1,'Beginner',1),(2,'Intermediate',1),(3,'Expert',1);
/*!40000 ALTER TABLE `difficulty_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_read_write_mapping`
--

DROP TABLE IF EXISTS `function_read_write_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_read_write_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_function_id` varchar(45) DEFAULT NULL,
  `read_write` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_read_write_mapping`
--

LOCK TABLES `function_read_write_mapping` WRITE;
/*!40000 ALTER TABLE `function_read_write_mapping` DISABLE KEYS */;
INSERT INTO `function_read_write_mapping` VALUES (1,'1','R'),(2,'2','R'),(3,'3','R'),(4,'4','R'),(5,'5','R'),(6,'6','R'),(7,'7','R'),(8,'8','R'),(9,'9','R'),(10,'10','R'),(11,'11','R'),(12,'12','R'),(13,'13','R');
/*!40000 ALTER TABLE `function_read_write_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_content`
--

DROP TABLE IF EXISTS `language_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_content` (
  `language_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `language_name` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 for inactive, 1 for active',
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_content`
--

LOCK TABLES `language_content` WRITE;
/*!40000 ALTER TABLE `language_content` DISABLE KEYS */;
INSERT INTO `language_content` VALUES (1,'English',1);
/*!40000 ALTER TABLE `language_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_company_details`
--

DROP TABLE IF EXISTS `license_company_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_company_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `buy_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_status` tinyint(1) DEFAULT '0' COMMENT ' 0 for uncomplete, 1 for complete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_company_details`
--

LOCK TABLES `license_company_details` WRITE;
/*!40000 ALTER TABLE `license_company_details` DISABLE KEYS */;
INSERT INTO `license_company_details` VALUES (1,1,1,'2020-02-22 05:22:34',0);
/*!40000 ALTER TABLE `license_company_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_details`
--

DROP TABLE IF EXISTS `license_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_details` (
  `license_id` int(11) NOT NULL,
  `license_name` varchar(255) DEFAULT NULL,
  `validity_days` int(10) DEFAULT NULL,
  `validity_month` int(5) DEFAULT NULL,
  `validity_years` int(4) DEFAULT NULL,
  `cost` double(10,0) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `desc` varchar(2000) DEFAULT NULL,
  `yearly_cost` double DEFAULT '0',
  PRIMARY KEY (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_details`
--

LOCK TABLES `license_details` WRITE;
/*!40000 ALTER TABLE `license_details` DISABLE KEYS */;
INSERT INTO `license_details` VALUES (1,'Trial licence',14,NULL,NULL,0,'2016-10-18 00:35:10',1,'dummy for testing',0),(2,'Advance licence',30,NULL,NULL,50,'2016-10-18 00:35:07',1,'dummy for testing',0);
/*!40000 ALTER TABLE `license_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_feature`
--

DROP TABLE IF EXISTS `license_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_feature` (
  `license_feature_id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`license_feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_feature`
--

LOCK TABLES `license_feature` WRITE;
/*!40000 ALTER TABLE `license_feature` DISABLE KEYS */;
INSERT INTO `license_feature` VALUES (1,'USERS'),(2,'TEST'),(3,'COURSE'),(4,'QUESTION_TYPE'),(5,'SPACE');
/*!40000 ALTER TABLE `license_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_sub_details`
--

DROP TABLE IF EXISTS `license_sub_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_sub_details` (
  `license_details_id` int(11) NOT NULL,
  `sub_feature_id` int(11) DEFAULT NULL,
  `count` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_sub_details`
--

LOCK TABLES `license_sub_details` WRITE;
/*!40000 ALTER TABLE `license_sub_details` DISABLE KEYS */;
INSERT INTO `license_sub_details` VALUES (1,1,'10'),(1,2,'10'),(1,3,'500'),(1,4,'500'),(1,5,NULL),(1,6,''),(1,7,''),(1,9,'10737418240'),(1,8,''),(1,10,'10'),(1,11,NULL),(1,12,NULL),(2,1,'25'),(2,2,'25'),(2,3,'500'),(2,4,'500'),(2,5,NULL),(2,6,NULL),(2,7,NULL),(2,8,NULL),(2,9,'10737418240'),(2,10,'25'),(2,11,NULL),(2,12,NULL);
/*!40000 ALTER TABLE `license_sub_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_sub_feature`
--

DROP TABLE IF EXISTS `license_sub_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `license_sub_feature` (
  `license_sub_feature_id` int(11) NOT NULL AUTO_INCREMENT,
  `license_feature_id` int(11) DEFAULT NULL,
  `sub_feature_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`license_sub_feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_sub_feature`
--

LOCK TABLES `license_sub_feature` WRITE;
/*!40000 ALTER TABLE `license_sub_feature` DISABLE KEYS */;
INSERT INTO `license_sub_feature` VALUES (1,1,'Student'),(2,1,'Teacher'),(3,2,'MAXALLOWEDTEST'),(4,3,'MAXALLOWEDCOURSE'),(5,4,'Multi Choice'),(6,4,'Single Choice'),(7,4,'Sort List'),(8,4,'Choice Matrix'),(9,5,'COURSECONTENTSPACE'),(10,1,'MAXALLOWEDUSER'),(11,4,'Classification'),(12,4,'Match List');
/*!40000 ALTER TABLE `license_sub_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` tinyint(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'New course FirstTesting published. Please enroll','studentCourse?action=coursedetail&courseId=1&nid=1',NULL,'2019-02-22 06:12:17',NULL,NULL),(2,'New course sasa published. Please enroll','studentCourse?action=coursedetail&courseId=2&nid=2',NULL,'2019-02-22 06:17:41',NULL,NULL),(3,'New course dddd published. Please enroll','studentCourse?action=coursedetail&courseId=3&nid=3',NULL,'2019-02-22 07:06:54',NULL,NULL),(4,'New course zsasas published. Please enroll','studentCourse?action=coursedetail&courseId=4&nid=4',NULL,'2019-02-22 07:10:51',NULL,NULL),(5,'New course ds published. Please enroll','studentCourse?action=coursedetail&courseId=5&nid=5',NULL,'2019-02-22 07:18:18',NULL,NULL),(6,'New course dfdfd published. Please enroll','studentCourse?action=coursedetail&courseId=6&nid=6',NULL,'2019-02-22 07:22:23',NULL,NULL),(7,'New course sdsd published. Please enroll','studentCourse?action=coursedetail&courseId=8&nid=7',NULL,'2019-02-22 07:31:44',NULL,NULL),(8,'New test Who wants to be  a millionaire is published now. Please enroll','studentGivenTest?testId=1&nid=8',NULL,'2019-02-22 12:42:45',NULL,NULL),(9,'New course kaun Banegaa carorepati published. Please enroll','studentCourse?action=coursedetail&courseId=9&nid=9',NULL,'2019-02-22 12:43:37',NULL,NULL),(10,'New course sdsds published. Please enroll','studentCourse?action=coursedetail&courseId=7&nid=10',NULL,'2019-02-24 17:31:19',NULL,NULL),(11,'Hi Guest! course HelloCourse is pending in draft. Please complete the course and publish it.','courseViewController?courseId=10&isPublish=0&nid=11',NULL,'2019-02-25 05:56:00',NULL,NULL),(12,'New course HelloCourse published. Please enroll','studentCourse?action=coursedetail&courseId=10&nid=12',NULL,'2019-02-25 07:41:51',NULL,NULL),(13,'New course Title published. Please enroll','studentCourse?action=coursedetail&courseId=11&nid=13',NULL,'2019-02-25 08:37:13',NULL,NULL),(14,'New course sasassasas published. Please enroll','studentCourse?action=coursedetail&courseId=12&nid=14',NULL,'2019-02-25 08:39:48',NULL,NULL),(15,'New course hello111 published. Please enroll','studentCourse?action=coursedetail&courseId=13&nid=15',NULL,'2019-02-25 08:48:42',NULL,NULL),(16,'New course shivanshTest published. Please enroll','studentCourse?action=coursedetail&courseId=14&nid=16',NULL,'2019-02-25 08:49:48',NULL,NULL),(17,'New course Bellurbis published. Please enroll','studentCourse?action=coursedetail&courseId=15&nid=17',NULL,'2019-02-25 08:51:00',NULL,NULL),(18,'New course BellurbisTesting published. Please enroll','studentCourse?action=coursedetail&courseId=16&nid=18',NULL,'2019-02-25 08:52:01',NULL,NULL),(19,'New course Bell@12 published. Please enroll','studentCourse?action=coursedetail&courseId=17&nid=19',NULL,'2019-02-25 08:54:04',NULL,NULL),(20,'New course HELLOjpg published. Please enroll','studentCourse?action=coursedetail&courseId=18&nid=20',NULL,'2019-02-25 08:55:16',NULL,NULL),(21,'New course wwewe published. Please enroll','studentCourse?action=coursedetail&courseId=19&nid=21',NULL,'2019-02-25 09:40:05',NULL,NULL),(22,'New course HELLOjpg published. Please enroll','studentCourse?action=coursedetail&courseId=21&nid=22',NULL,'2019-02-25 09:48:23',NULL,NULL),(23,'New course ddddddddddssssssss published. Please enroll','studentCourse?action=coursedetail&courseId=22&nid=23',NULL,'2019-02-25 09:59:01',NULL,NULL),(24,'New course sdsd published. Please enroll','studentCourse?action=coursedetail&courseId=25&nid=24',NULL,'2019-02-25 17:29:43',NULL,NULL),(25,'Hi your invitee successfully registered in system.','dummy?userId=1&nid=25',NULL,'2019-02-27 05:46:23',NULL,NULL),(26,'Hi Guest! course BellurbisTesting1 is pending in draft. Please complete the course and publish it.','courseViewController?courseId=20&isPublish=0&nid=26',NULL,'2019-02-28 05:56:00',NULL,NULL),(27,'Hi Guest! course Further Testing is pending in draft. Please complete the course and publish it.','courseViewController?courseId=23&isPublish=0&nid=27',NULL,'2019-02-28 05:56:00',NULL,NULL),(28,'Hi Guest! course hfhfhf is pending in draft. Please complete the course and publish it.','courseViewController?courseId=24&isPublish=0&nid=28',NULL,'2019-02-28 05:56:00',NULL,NULL),(29,'Hi Guest! course Dffdg is pending in draft. Please complete the course and publish it.','courseViewController?courseId=26&isPublish=0&nid=29',NULL,'2019-02-28 05:56:00',NULL,NULL),(30,'Hi Guest! course BellurbisTesting1 is pending in draft. Please complete the course and publish it.','courseViewController?courseId=20&isPublish=0&nid=30',NULL,'2019-03-04 05:56:00',NULL,NULL),(31,'Hi Guest! course Further Testing is pending in draft. Please complete the course and publish it.','courseViewController?courseId=23&isPublish=0&nid=31',NULL,'2019-03-04 05:56:00',NULL,NULL),(32,'Hi Guest! course hfhfhf is pending in draft. Please complete the course and publish it.','courseViewController?courseId=24&isPublish=0&nid=32',NULL,'2019-03-04 05:56:00',NULL,NULL),(33,'Hi Guest! course Dffdg is pending in draft. Please complete the course and publish it.','courseViewController?courseId=26&isPublish=0&nid=33',NULL,'2019-03-04 05:56:00',NULL,NULL),(34,'Hi Guest! course dfdf is pending in draft. Please complete the course and publish it.','courseViewController?courseId=27&isPublish=0&nid=34',NULL,'2019-03-04 05:56:00',NULL,NULL),(35,'Hi Guest! course BellurbisTesting1 is pending in draft. Please complete the course and publish it.','courseViewController?courseId=20&isPublish=0&nid=35',NULL,'2019-03-07 05:56:00',NULL,NULL),(36,'Hi Guest! course Further Testing is pending in draft. Please complete the course and publish it.','courseViewController?courseId=23&isPublish=0&nid=36',NULL,'2019-03-07 05:56:00',NULL,NULL),(37,'Hi Guest! course hfhfhf is pending in draft. Please complete the course and publish it.','courseViewController?courseId=24&isPublish=0&nid=37',NULL,'2019-03-07 05:56:00',NULL,NULL),(38,'Hi Guest! course Dffdg is pending in draft. Please complete the course and publish it.','courseViewController?courseId=26&isPublish=0&nid=38',NULL,'2019-03-07 05:56:00',NULL,NULL),(39,'Hi Guest! course dfdf is pending in draft. Please complete the course and publish it.','courseViewController?courseId=27&isPublish=0&nid=39',NULL,'2019-03-07 05:56:00',NULL,NULL),(40,'Hi Guest! test helloo is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=2&nid=40',NULL,'2019-03-07 07:08:00',NULL,NULL),(41,'Hi Guest! test sa is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=3&nid=41',NULL,'2019-03-07 07:08:00',NULL,NULL),(42,'Hi Guest! test fsf is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=4&nid=42',NULL,'2019-03-07 07:08:00',NULL,NULL),(43,'Hi Guest! test ssd is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=5&nid=43',NULL,'2019-03-07 07:08:00',NULL,NULL),(44,'Hi Guest! test khkh is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=6&nid=44',NULL,'2019-03-07 07:08:00',NULL,NULL),(45,'New course NewCourse published. Please enroll','studentCourse?action=coursedetail&courseId=28&nid=45',NULL,'2019-03-11 10:48:41',NULL,NULL),(46,'New course HelloTest1 published. Please enroll','studentCourse?action=coursedetail&courseId=30&nid=46',NULL,'2019-03-11 10:57:57',NULL,NULL),(47,'New course dsjlkfjs published. Please enroll','studentCourse?action=coursedetail&courseId=31&nid=47',NULL,'2019-03-11 11:16:00',NULL,NULL),(48,'New course bdkjsdf published. Please enroll','studentCourse?action=coursedetail&courseId=29&nid=48',NULL,'2019-03-11 11:17:51',NULL,NULL),(49,'New course Heya1122 published. Please enroll','studentCourse?action=coursedetail&courseId=32&nid=49',NULL,'2019-03-11 11:19:55',NULL,NULL),(50,'New course Testing4 published. Please enroll','studentCourse?action=coursedetail&courseId=33&nid=50',NULL,'2019-03-11 11:46:04',NULL,NULL),(51,'New course shivanshTest published. Please enroll','studentCourse?action=coursedetail&courseId=34&nid=51',NULL,'2019-03-11 11:49:50',NULL,NULL),(52,'New course March12Course published. Please enroll','studentCourse?action=coursedetail&courseId=35&nid=52',NULL,'2019-03-12 09:40:43',NULL,NULL),(53,'New course Trainee Course published. Please enroll','studentCourse?action=coursedetail&courseId=36&nid=53',NULL,'2019-03-12 10:49:59',NULL,NULL),(54,'Hi Guest! course BellurbisTesting1 is pending in draft. Please complete the course and publish it.','courseViewController?courseId=20&isPublish=0&nid=54',NULL,'2019-03-13 05:56:00',NULL,NULL),(55,'Hi Guest! course Further Testing is pending in draft. Please complete the course and publish it.','courseViewController?courseId=23&isPublish=0&nid=55',NULL,'2019-03-13 05:56:00',NULL,NULL),(56,'Hi Guest! course hfhfhf is pending in draft. Please complete the course and publish it.','courseViewController?courseId=24&isPublish=0&nid=56',NULL,'2019-03-13 05:56:00',NULL,NULL),(57,'Hi Guest! course Dffdg is pending in draft. Please complete the course and publish it.','courseViewController?courseId=26&isPublish=0&nid=57',NULL,'2019-03-13 05:56:00',NULL,NULL),(58,'Hi Guest! course dfdf is pending in draft. Please complete the course and publish it.','courseViewController?courseId=27&isPublish=0&nid=58',NULL,'2019-03-13 05:56:00',NULL,NULL),(59,'Hi Guest! test helloo is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=2&nid=59',NULL,'2019-03-13 07:08:00',NULL,NULL),(60,'Hi Guest! test sa is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=3&nid=60',NULL,'2019-03-13 07:08:00',NULL,NULL),(61,'Hi Guest! test fsf is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=4&nid=61',NULL,'2019-03-13 07:08:00',NULL,NULL),(62,'Hi Guest! test ssd is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=5&nid=62',NULL,'2019-03-13 07:08:00',NULL,NULL),(63,'Hi Guest! test khkh is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=6&nid=63',NULL,'2019-03-13 07:08:00',NULL,NULL),(64,'Hi Guest! test sd is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=7&nid=64',NULL,'2019-03-13 07:08:01',NULL,NULL),(65,'Hi Guest! test n is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=8&nid=65',NULL,'2019-03-13 07:08:01',NULL,NULL),(66,'Hi Guest! test swqw is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=9&nid=66',NULL,'2019-03-13 07:08:01',NULL,NULL),(67,'Hi Guest! test ewe is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=10&nid=67',NULL,'2019-03-13 07:08:01',NULL,NULL),(68,'Hi Guest! test sd is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=11&nid=68',NULL,'2019-03-13 07:08:01',NULL,NULL),(69,'Hi Guest! test asa is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=12&nid=69',NULL,'2019-03-13 07:08:01',NULL,NULL),(70,'Hi Guest! test asa is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=13&nid=70',NULL,'2019-03-13 07:08:02',NULL,NULL),(71,'Hi Guest! test ass is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=14&nid=71',NULL,'2019-03-13 07:08:02',NULL,NULL),(72,'Hi Guest! test sd is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=15&nid=72',NULL,'2019-03-13 07:08:02',NULL,NULL),(73,'Hi Guest! test er is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=16&nid=73',NULL,'2019-03-13 07:08:02',NULL,NULL),(74,'Hi Guest! test er is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=17&nid=74',NULL,'2019-03-13 07:08:02',NULL,NULL),(75,'Hi Guest! test erer is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=18&nid=75',NULL,'2019-03-13 07:08:02',NULL,NULL),(76,'Hi Guest! test tyr is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=19&nid=76',NULL,'2019-03-13 07:08:03',NULL,NULL),(77,'Hi Guest! test sdsdtyr is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=20&nid=77',NULL,'2019-03-13 07:08:03',NULL,NULL),(78,'Hi Guest! test sdsdtyr is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=21&nid=78',NULL,'2019-03-13 07:08:03',NULL,NULL),(79,'Hi Guest! test asa is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=22&nid=79',NULL,'2019-03-13 07:08:03',NULL,NULL),(80,'Hi Guest! test asa is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=23&nid=80',NULL,'2019-03-13 07:08:03',NULL,NULL),(81,'Hi Guest! test Kaun banega CarorePati is pending in draft. Please complete the test and publish it.','viewTestDetail?testId=24&nid=81',NULL,'2019-03-13 07:08:03',NULL,NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_target`
--

DROP TABLE IF EXISTS `notification_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_target` (
  `notification_id` int(11) NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `read_status` tinyint(1) DEFAULT '0' COMMENT '0 for unread, 1 for read',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_target`
--

LOCK TABLES `notification_target` WRITE;
/*!40000 ALTER TABLE `notification_target` DISABLE KEYS */;
INSERT INTO `notification_target` VALUES (11,1,1,'2019-02-25 05:56:00'),(25,1,0,'2019-02-27 05:46:23'),(26,1,1,'2019-02-28 05:56:00'),(27,1,1,'2019-02-28 05:56:00'),(28,1,1,'2019-02-28 05:56:00'),(29,1,1,'2019-02-28 05:56:00'),(30,1,0,'2019-03-04 05:56:00'),(31,1,0,'2019-03-04 05:56:00'),(32,1,0,'2019-03-04 05:56:00'),(33,1,0,'2019-03-04 05:56:00'),(34,1,0,'2019-03-04 05:56:00'),(35,1,0,'2019-03-07 05:56:00'),(36,1,0,'2019-03-07 05:56:00'),(37,1,0,'2019-03-07 05:56:00'),(38,1,0,'2019-03-07 05:56:00'),(39,1,0,'2019-03-07 05:56:00'),(40,1,0,'2019-03-07 07:08:00'),(41,1,0,'2019-03-07 07:08:00'),(42,1,0,'2019-03-07 07:08:00'),(43,1,0,'2019-03-07 07:08:00'),(44,1,0,'2019-03-07 07:08:00'),(54,1,0,'2019-03-13 05:56:00'),(55,1,0,'2019-03-13 05:56:00'),(56,1,0,'2019-03-13 05:56:00'),(57,1,0,'2019-03-13 05:56:00'),(58,1,0,'2019-03-13 05:56:00'),(59,1,0,'2019-03-13 07:08:00'),(60,1,0,'2019-03-13 07:08:00'),(61,1,0,'2019-03-13 07:08:00'),(62,1,0,'2019-03-13 07:08:00'),(63,1,0,'2019-03-13 07:08:00'),(64,1,0,'2019-03-13 07:08:01'),(65,1,0,'2019-03-13 07:08:01'),(66,1,0,'2019-03-13 07:08:01'),(67,1,0,'2019-03-13 07:08:01'),(68,1,0,'2019-03-13 07:08:01'),(69,1,0,'2019-03-13 07:08:01'),(70,1,0,'2019-03-13 07:08:02'),(71,1,0,'2019-03-13 07:08:02'),(72,1,0,'2019-03-13 07:08:02'),(73,1,0,'2019-03-13 07:08:02'),(74,1,0,'2019-03-13 07:08:02'),(75,1,0,'2019-03-13 07:08:03'),(76,1,0,'2019-03-13 07:08:03'),(77,1,0,'2019-03-13 07:08:03'),(78,1,0,'2019-03-13 07:08:03'),(79,1,0,'2019-03-13 07:08:03'),(80,1,0,'2019-03-13 07:08:03'),(81,1,0,'2019-03-13 07:08:04');
/*!40000 ALTER TABLE `notification_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Trial Project','Trial Project desc',50,'2019-03-04 16:54:52',1,0),(2,'Middle Level','Middle Level desc',40,'2019-03-04 16:55:39',2,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_course_mapping`
--

DROP TABLE IF EXISTS `product_course_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_course_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `course_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `product_course_mapping_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product_course_mapping_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course_manager` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_course_mapping`
--

LOCK TABLES `product_course_mapping` WRITE;
/*!40000 ALTER TABLE `product_course_mapping` DISABLE KEYS */;
INSERT INTO `product_course_mapping` VALUES (1,1,1);
/*!40000 ALTER TABLE `product_course_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_subscriber_mapping`
--

DROP TABLE IF EXISTS `product_subscriber_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_subscriber_mapping` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subscribed_data` date DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_subscriber_mapping`
--

LOCK TABLES `product_subscriber_mapping` WRITE;
/*!40000 ALTER TABLE `product_subscriber_mapping` DISABLE KEYS */;
INSERT INTO `product_subscriber_mapping` VALUES (1,1,'2019-03-12');
/*!40000 ALTER TABLE `product_subscriber_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_attempt_video_question`
--

DROP TABLE IF EXISTS `qbis_attempt_video_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_attempt_video_question` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `qbis_users_pk` int(11) NOT NULL,
  `course_section_manager_pk` int(11) NOT NULL,
  `qbis_video_content_map_pk` int(11) NOT NULL,
  `attempted_answer` varchar(256) NOT NULL,
  `attempted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attempted_number` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_attempt_video_question`
--

LOCK TABLES `qbis_attempt_video_question` WRITE;
/*!40000 ALTER TABLE `qbis_attempt_video_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbis_attempt_video_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_content_audio`
--

DROP TABLE IF EXISTS `qbis_content_audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_content_audio` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `audio_folder_name` varchar(256) DEFAULT NULL,
  `page_number` int(11) NOT NULL,
  `page_hold_time` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_content_audio`
--

LOCK TABLES `qbis_content_audio` WRITE;
/*!40000 ALTER TABLE `qbis_content_audio` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbis_content_audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_functions`
--

DROP TABLE IF EXISTS `qbis_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_functions` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) NOT NULL,
  `menu_service` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `menu_class` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_functions`
--

LOCK TABLES `qbis_functions` WRITE;
/*!40000 ALTER TABLE `qbis_functions` DISABLE KEYS */;
INSERT INTO `qbis_functions` VALUES (1,'lbl.leftmenu.dashboard','dashboardcontroller','dashboard','fa fa-dashboard',0),(2,'lbl.leftmenu.assessments','testList','test','fa fa-file-text-o',0),(3,'lbl.leftmenu.courses','courselist','course','fa fa-pencil-square-o',0),(4,'lbl.leftmenu.questionlibrary','questionList','questionList','fa fa-question-circle',0),(5,'lbl.leftmenu.contentlibrary','listuploadcontent','uploadcontent','fa fa-folder-o',0),(6,'lbl.leftmenu.users','userlist','users','fa fa-users',0),(7,'lbl.leftmenu.notification','createNotificationPage','notification','fa fa-bell-o',0),(8,'lbl.leftmenu.reports','customreport','report','fa fa-bar-chart-o',0),(9,'lbl.leftmenu.mylibrary','myLibrary?action=list','giveTest','fa fa-bar-chart-o',0),(10,'lbl.leftmenu.rolemanagement','rolelist','rolemanagement','fa fa-user-secret',0),(11,'lbl.leftmenu.settings','settings','settings','fa fa-user-secret',0);
/*!40000 ALTER TABLE `qbis_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_group`
--

DROP TABLE IF EXISTS `qbis_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_group` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(128) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_group`
--

LOCK TABLES `qbis_group` WRITE;
/*!40000 ALTER TABLE `qbis_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbis_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_options`
--

DROP TABLE IF EXISTS `qbis_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_options` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) unsigned NOT NULL,
  `option_name` mediumblob NOT NULL,
  `correct_answer_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-no ,1-yes',
  `option_position` int(2) NOT NULL,
  PRIMARY KEY (`pk`),
  KEY `question_id` (`question_id`) USING BTREE,
  CONSTRAINT `question_id` FOREIGN KEY (`question_id`) REFERENCES `qbis_quest` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_options`
--

LOCK TABLES `qbis_options` WRITE;
/*!40000 ALTER TABLE `qbis_options` DISABLE KEYS */;
INSERT INTO `qbis_options` VALUES (1,1,_binary '<p>Narendra Modi</p>',1,1),(2,1,_binary '<p>Indira Gandhi</p>',0,2),(3,2,_binary '<p>Dhoni</p>',0,1),(4,2,_binary '<p>Kohli</p>',1,2),(5,3,_binary '<p>Oracle</p>',1,1),(6,3,_binary '<p>Adobe</p>',0,2),(7,4,_binary '<p>dsd</p>',1,1),(8,4,_binary '<p>sdss</p>',0,2),(13,7,_binary '<p>dsds</p>',1,1),(14,7,_binary '<p>dsds</p>',0,2),(15,8,_binary '<p>fgff</p>',1,1),(16,8,_binary '<p>ewe</p>',0,2),(17,9,_binary '<p>aa</p>',1,1),(18,9,_binary '<p>aaa</p>',0,2),(19,10,_binary '<p>wew</p>',1,1),(20,10,_binary '<p>wewe</p>',0,2),(21,11,_binary '<p>wwwe</p>',1,1),(22,11,_binary '<p>www</p>',0,2),(23,12,_binary '<p>s</p>',1,1),(24,12,_binary '<p>s</p>',0,2),(25,13,_binary '<p>ee</p>',1,1),(26,13,_binary '<p>ee</p>',0,2),(27,14,_binary '<p>fgf</p>',1,1),(28,14,_binary '<p>gffg</p>',0,2),(29,15,_binary '<p>as</p>',1,1),(30,15,_binary '<p>asa</p>',0,2),(31,16,_binary '<p>A</p>',1,1),(32,16,_binary '<p>A</p>',0,2),(33,17,_binary '<p>wee</p>',1,1),(34,17,_binary '<p>wewe</p>',0,2),(35,18,_binary '<p>ere</p>',1,1),(36,18,_binary '<p>ere</p>',0,2),(37,19,_binary '<p>sdd</p>',1,1),(38,19,_binary '<p>dsd</p>',0,2),(39,20,_binary '<p>ere</p>',1,1),(40,20,_binary '<p>rer</p>',0,2),(41,21,_binary '<p>sds</p>',1,1),(42,21,_binary '<p>sdsd</p>',0,2),(43,22,_binary '<p>sds</p>',1,1),(44,22,_binary '<p>sdds</p>',0,2),(45,23,_binary '<p>sss</p>',1,1),(46,23,_binary '<p>sdd</p>',0,2),(47,24,_binary '<p>DSD</p>',1,1),(48,24,_binary '<p>SDSD</p>',0,2),(49,25,_binary '<p>sds</p>',1,1),(50,25,_binary '<p>sdsd</p>',0,2),(51,26,_binary '<p>sds</p>',1,1),(52,26,_binary '<p>sds</p>',0,2),(53,27,_binary '<p>asa</p>',1,1),(54,27,_binary '<p>asas</p>',1,2),(57,28,_binary '<p>hkjh</p>',1,1),(58,28,_binary '<p>jhkj</p>',0,2),(77,30,_binary '<p>sdsd</p>',1,1),(78,30,_binary '<p>sds</p>',0,2),(79,29,_binary '<p>adadad</p>',1,1),(80,29,_binary '<p>aadad</p>',0,2),(83,31,_binary '<p>DS</p>',1,1),(84,31,_binary '<p>DS</p>',0,2),(103,32,_binary '<p>jajaja</p>',0,1),(104,32,_binary '<p>jajaja</p>',1,2),(123,33,_binary '<p>gjhgjhas</p>',1,1),(124,33,_binary '<p>jhkjas</p>',0,2),(139,34,_binary '<p>jhgjhgj</p>',1,1),(140,34,_binary '<p>jkhkhkj</p>',0,2),(141,35,_binary '<p>jhlkjhl</p>',1,1),(142,35,_binary '<p>kjlkjl</p>',0,2),(143,36,_binary '<p>vasg</p>',1,1),(144,36,_binary '<p>gajshgas</p>',0,2),(151,39,_binary '<p>smkd</p>',1,1),(152,39,_binary '<p>m.sdm.sdm</p>',0,2),(155,37,_binary '<p>hghghe</p>',0,1),(156,37,_binary '<p>jhekjhe</p>',1,2),(157,38,_binary '<p>kflkjerf</p>',1,1),(158,38,_binary '<p>kjrlkew</p>',0,2),(167,40,_binary '<p>jbmjb</p>',1,1),(168,40,_binary '<p>hbjh</p>',0,2),(169,41,_binary '<p>Tag Question 1</p>',0,1),(170,41,_binary '<p>Tag Question 2</p>',1,2),(171,42,_binary '<p>testing1</p>',1,1),(172,42,_binary '<p>testing</p>',0,2),(173,43,_binary '<p>eer</p>',1,1),(174,43,_binary '<p>er</p>',0,2),(175,44,_binary '<p>rytu</p>',1,1),(176,44,_binary '<p>tutui</p>',0,2),(177,45,_binary '<p>sdsd</p>',1,1),(178,45,_binary '<p>sdsd</p>',0,2),(179,46,_binary '<p>wewe</p>',1,1),(180,46,_binary '<p>wewe</p>',0,2),(181,47,_binary '<p>hfhfhf</p>',1,1),(182,47,_binary '<p>fhgdbjhgd</p>',0,2),(183,48,_binary '<p>dfdf</p>',1,1),(184,48,_binary '<p>dfdf</p>',0,2),(185,49,_binary '<p>hjgjhf</p>',1,1),(186,49,_binary '<p>jvjvfdf</p>',0,2),(187,50,_binary '<p>sdsd</p>',1,1),(188,50,_binary '<p>sdsd</p>',0,2),(189,51,_binary '<p>efeljfb</p>',1,1),(190,51,_binary '<p>efefdekjb</p>',0,2),(191,52,_binary '<p>sdsdsds</p>',1,1),(192,52,_binary '<p>sfsfsfs</p>',0,2),(193,53,_binary '<p>sdslkhsdlj</p>',1,1),(194,53,_binary '<p>sdjbkjsdb</p>',0,2),(195,54,_binary '<p>sdsd</p>',1,1),(196,54,_binary '<p>sdsds</p>',0,2),(197,55,_binary '<p>ghgh</p>',1,1),(198,55,_binary '<p>ghgh</p>',0,2),(199,56,_binary '<p>gjgh</p>',1,1),(200,56,_binary '<p>gjghjg</p>',0,2),(201,57,_binary '<p>dsdfsf</p>',1,1),(202,57,_binary '<p>dfdg</p>',0,2),(203,58,_binary '<p>sffd</p>',1,1),(204,58,_binary '<p>dfdsf</p>',0,2),(205,59,_binary '<p>dffd</p>',1,1),(206,59,_binary '<p>ddfdfd</p>',0,2),(207,60,_binary '<p>wewe</p>',1,1),(208,60,_binary '<p>ert</p>',0,2),(209,61,_binary '<p>eded</p>',1,1),(210,61,_binary '<p>ede</p>',0,2),(211,62,_binary '<p>sdsd</p>',1,1),(212,62,_binary '<p>sdsd</p>',0,2),(215,63,_binary '<p>wew</p>',1,1),(216,63,_binary '<p>wewe</p>',0,2),(217,64,_binary '<p>1212</p>',1,1),(218,64,_binary '<p>12121</p>',0,2),(219,65,_binary '<p>ssasa</p>',1,1),(220,65,_binary '<p>sas</p>',0,2),(221,66,_binary '<p>asas</p>',1,1),(222,66,_binary '<p>asas</p>',0,2),(223,67,_binary '<p>sdsd</p>',0,1),(224,67,_binary '<p>sds</p>',1,2),(225,68,_binary '<p>dd</p>',0,1),(226,68,_binary '<p>sd</p>',1,2),(227,69,_binary '<p>sdsd</p>',0,1),(228,69,_binary '<p>sdsd</p>',1,2),(229,70,_binary '<p>sss</p>',1,1),(230,70,_binary '<p>sss</p>',0,2),(231,71,_binary '<p>jhjhj</p>',0,1),(232,71,_binary '<p>jjjj</p>',1,2),(233,72,_binary '<p>Virat</p>',1,1),(234,72,_binary '<p>Msd</p>',0,2);
/*!40000 ALTER TABLE `qbis_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_organization`
--

DROP TABLE IF EXISTS `qbis_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_organization` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_subdomain` varchar(255) DEFAULT NULL,
  `org_Name` varchar(500) DEFAULT NULL,
  `org_status` int(11) NOT NULL DEFAULT '1' COMMENT '0-Delete',
  `org_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_organization`
--

LOCK TABLES `qbis_organization` WRITE;
/*!40000 ALTER TABLE `qbis_organization` DISABLE KEYS */;
INSERT INTO `qbis_organization` VALUES (1,'bellurbis','Bellurbis Technologies',1,NULL);
/*!40000 ALTER TABLE `qbis_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_quest`
--

DROP TABLE IF EXISTS `qbis_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_quest` (
  `question_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question_txt` mediumblob NOT NULL,
  `answer_explanation` text,
  `question_no` int(4) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `question_marks` int(3) DEFAULT NULL,
  `question_type` int(11) NOT NULL,
  `question_parent_id` int(11) DEFAULT NULL,
  `negative_mark` float DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_formula` tinyint(1) DEFAULT '0',
  `math_formula` mediumblob,
  `is_parent` int(11) DEFAULT '0',
  `answer_value` varchar(2000) DEFAULT NULL,
  `question_setting` mediumblob,
  PRIMARY KEY (`question_id`),
  KEY `fk_qbis_quest_qbis_section1_idx` (`section_id`),
  KEY `fk_qbis_quest_test_type1_idx` (`question_type`),
  CONSTRAINT `fk_qbis_quest_test_type1` FOREIGN KEY (`question_type`) REFERENCES `question_type` (`pk`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_quest`
--

LOCK TABLES `qbis_quest` WRITE;
/*!40000 ALTER TABLE `qbis_quest` DISABLE KEYS */;
INSERT INTO `qbis_quest` VALUES (1,_binary '<p>Who is the Prime minister of India?</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-02-22 12:42:36',0,'',0,NULL,_binary 'null'),(2,_binary '<p>Who is the Captain of INdian Cricket Team?</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-02-22 12:42:37',0,'',0,NULL,_binary 'null'),(3,_binary '<p>Who is the owner of java?</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-01 13:17:51',0,'',0,NULL,_binary 'null'),(4,_binary '<p>dsdss</p>','sdsd',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 07:13:39',0,'',0,NULL,_binary 'null'),(7,_binary '<p>dsds</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 07:16:42',0,'',0,NULL,_binary 'null'),(8,_binary '<p>wewerer</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 07:20:11',0,'',0,NULL,_binary 'null'),(9,_binary '<p>aa</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 07:22:55',0,'',0,NULL,_binary 'null'),(10,_binary '<p>wew</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 07:30:01',0,'',0,NULL,_binary 'null'),(11,_binary '<p>qwww</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 07:31:15',0,'',0,NULL,_binary 'null'),(12,_binary '<p>s</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-02 07:31:56',0,'',0,NULL,_binary 'null'),(13,_binary '<p>wweree</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 07:33:01',0,'',0,NULL,_binary 'null'),(14,_binary '<p>fgfg</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:03:00',0,'',0,NULL,_binary 'null'),(15,_binary '<p>asa</p>','as',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:05:22',0,'',0,NULL,_binary 'null'),(16,_binary '<p>A</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:10:54',0,'',0,NULL,_binary 'null'),(17,_binary '<p>ewew</p>','weweweer',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:17:20',0,'',0,NULL,_binary 'null'),(18,_binary '<p>rere</p>','re',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:19:02',0,'',0,NULL,_binary 'null'),(19,_binary '<p>ds</p>','sdds',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:21:11',0,'',0,NULL,_binary 'null'),(20,_binary '<p>eere</p>','erre',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:22:53',0,'',0,NULL,_binary 'null'),(21,_binary '<p>sds</p>','sdd',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:23:59',0,'',0,NULL,_binary 'null'),(22,_binary '<p>ssd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:26:42',0,'',0,NULL,_binary 'null'),(23,_binary '<p>axx</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:27:43',0,'',0,NULL,_binary 'null'),(24,_binary '<p>SDS</p>','SD',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:32:10',0,'',0,NULL,_binary 'null'),(25,_binary '<p>asasadsds</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 08:57:46',0,'',0,NULL,_binary 'null'),(26,_binary '<p>ssd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 09:09:06',0,'',0,NULL,_binary 'null'),(27,_binary '<p>asa</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 09:10:31',0,'',0,NULL,_binary 'null'),(28,_binary '<p>retre</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 13:17:24',0,'',0,NULL,_binary 'null'),(29,_binary '<p>dsdsd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 13:06:45',0,'',0,NULL,_binary 'null'),(30,_binary '<p>sdsd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 13:05:16',0,'',0,NULL,_binary 'null'),(31,_binary '<p>NEW</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 13:14:10',0,'',0,NULL,_binary 'null'),(32,_binary '<p>hhahahahaha</p>','dljsldfjlsf',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 13:32:00',0,'',0,NULL,_binary 'null'),(33,_binary '<p>fsfsdsfs</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 14:09:04',0,'',0,NULL,_binary 'null'),(34,_binary '<p>gfhgfhgfjh</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 17:00:28',0,'',0,NULL,_binary 'null'),(35,_binary '<p>hhghghjhg</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-02 19:01:02',0,'',0,NULL,_binary 'null'),(36,_binary '<p>gfgfadhga</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-03 09:41:20',0,'',0,NULL,_binary 'null'),(37,_binary '<p>hhheeeheee</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-03 17:47:44',0,'',0,NULL,_binary 'null'),(38,_binary '<p>jbjjdbjed</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-03 17:48:49',0,'',0,NULL,_binary 'null'),(39,_binary '<p>kn,sns</p>','sds',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-03 17:42:50',0,'',0,NULL,_binary 'null'),(40,_binary '<p>hbhb</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 04:48:29',0,'',0,NULL,_binary 'null'),(41,_binary '<p>Tag Question</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:01:10',0,'',0,NULL,_binary 'null'),(42,_binary '<p>Testing2</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:06:25',0,'',0,NULL,_binary 'null'),(43,_binary '<p>wewe</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-04 05:10:32',0,'',0,NULL,_binary 'null'),(44,_binary '<p>rtrt</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-04 05:12:33',0,'',0,NULL,_binary 'null'),(45,_binary '<p>sds</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-04 05:13:19',0,'',0,NULL,_binary 'null'),(46,_binary '<p>wewe</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:14:15',0,'',0,NULL,_binary 'null'),(47,_binary '<p>dfdfdggd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:15:01',0,'',0,NULL,_binary 'null'),(48,_binary '<p>sdsfdf</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:18:55',0,'',0,NULL,_binary 'null'),(49,_binary '<p>gdffdgdgf</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-04 05:20:12',0,'',0,NULL,_binary 'null'),(50,_binary '<p>asasd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:21:53',0,'',0,NULL,_binary 'null'),(51,_binary '<p>ghfhgdg</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:23:51',0,'',0,NULL,_binary 'null'),(52,_binary '<p>sdsdsd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:27:16',0,'',0,NULL,_binary 'null'),(53,_binary '<p>hell01</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:28:09',0,'',0,NULL,_binary 'null'),(54,_binary '<p>gfddhs</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:29:59',0,'',0,NULL,_binary 'null'),(55,_binary '<p>sas</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:32:17',0,'',0,NULL,_binary 'null'),(56,_binary '<p>hjghjj</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:35:01',0,'',0,NULL,_binary 'null'),(57,_binary '<p>asas</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:38:26',0,'',0,NULL,_binary 'null'),(58,_binary '<p>sdfsf</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:40:17',0,'',0,NULL,_binary 'null'),(59,_binary '<p>sdsfd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:43:10',0,'',0,NULL,_binary 'null'),(60,_binary '<p>wwewe</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:45:06',0,'',0,NULL,_binary 'null'),(61,_binary '<p>assd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:46:03',0,'',0,NULL,_binary 'null'),(62,_binary '<p>sdd</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 05:53:47',0,'',0,NULL,_binary 'null'),(63,_binary '<p>wew</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 06:03:34',0,'',0,NULL,_binary 'null'),(64,_binary '<p>hellooo12122</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-04 06:07:11',0,'',0,NULL,_binary 'null'),(65,_binary '<p>shivanshshivansh</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-04 06:08:23',0,'',0,NULL,_binary 'null'),(66,_binary '<p>sas</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-07 06:43:44',0,'',0,NULL,_binary 'null'),(67,_binary '<p>sds</p>','sdsd',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-07 09:00:07',0,'',0,NULL,_binary 'null'),(68,_binary '<p>ds</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-07 09:00:59',0,'',0,NULL,_binary 'null'),(69,_binary '<p>sds</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-07 09:03:10',0,'',0,NULL,_binary 'null'),(70,_binary '<p>sss</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-08 05:14:45',0,'',0,NULL,_binary 'null'),(71,_binary '<p>dfgfh</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-08 06:21:32',0,'',0,NULL,_binary 'null'),(72,_binary '<p>Who is captain of Indian cricket Team</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-12 09:37:31',0,'',0,NULL,_binary 'null'),(73,_binary '<p>Who is captain of Indian cricket Team</p>','',NULL,NULL,NULL,2,NULL,NULL,1,'2019-03-12 09:38:51',0,'',72,NULL,_binary 'null'),(74,_binary '<p>dfgfh</p>','',NULL,NULL,NULL,1,NULL,NULL,1,'2019-03-12 09:38:52',0,'',71,NULL,_binary 'null');
/*!40000 ALTER TABLE `qbis_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_section`
--

DROP TABLE IF EXISTS `qbis_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) DEFAULT NULL,
  `test_id` int(11) NOT NULL,
  `section_marks` int(3) DEFAULT NULL,
  `sequence` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`),
  KEY `fk_qbis_section_qbis_test1_idx` (`test_id`),
  CONSTRAINT `fk_qbis_section_qbis_test1` FOREIGN KEY (`test_id`) REFERENCES `qbis_test` (`test_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_section`
--

LOCK TABLES `qbis_section` WRITE;
/*!40000 ALTER TABLE `qbis_section` DISABLE KEYS */;
INSERT INTO `qbis_section` VALUES (1,'hii',1,10,0),(2,'Hello1',24,10,0);
/*!40000 ALTER TABLE `qbis_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_sub_function`
--

DROP TABLE IF EXISTS `qbis_sub_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_sub_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function_id` int(11) DEFAULT NULL,
  `sub_function_name` varchar(200) DEFAULT NULL,
  `sub_function_service` varchar(200) DEFAULT NULL,
  `sub_function_menu_id` varchar(200) DEFAULT NULL,
  `sub_function_menu_class` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_sub_function`
--

LOCK TABLES `qbis_sub_function` WRITE;
/*!40000 ALTER TABLE `qbis_sub_function` DISABLE KEYS */;
INSERT INTO `qbis_sub_function` VALUES (1,1,'lbl.leftsubmenu.trainerdashboard','dashboardcontroller','dashboard','fa fa-dashboard'),(2,1,'lbl.leftsubmenu.traineedashboard','studentdashboard','dashboardstu','fa fa-dashboard'),(3,3,'lbl.leftsubmenu.createnewcourse','courselist','course','fa fa-pencil-square-o'),(4,3,'lbl.leftsubmenu.mycourses','studentCourse?action=courseList','studentCourse','fa fa-pencil-square-o'),(5,2,'lbl.leftsubmenu.createnewassessment','testList','test','fa fa-file-text-o'),(6,2,'lbl.leftsubmenu.myassessment','studentTest?action=list','allTest','fa fa-file-text-o'),(7,4,'lbl.leftsubmenu.questionlibrary','questionList','questionList','fa fa-question-circle'),(8,5,'lbl.leftsubmenu.contentlibrary','listuploadcontent','uploadcontent','fa fa-folder-o'),(9,6,'lbl.leftsubmenu.allusers','userlist','usersInvite','fa fa-users'),(10,7,'lbl.leftsubmenu.createnotification','createNotificationPage','notification','fa fa-bell-o'),(11,8,'lbl.leftsubmenu.adhocreport','customreport','report','fa fa-bar-chart-o'),(12,9,'lbl.leftsubmenu.library','myLibrary?action=list','giveTest','fa fa-bar-chart-o'),(13,10,'lbl.leftsubmenu.rolemanagement','rolelist','rolemanagement','fa fa-user-secret'),(14,10,'lbl.leftsubmenu.createnewrole','addNewRole','newrole','fa fa-user-secret'),(15,6,'lbl.leftsubmenu.invitetrainee','userlist?action=student','studentInvite','fa fa-users'),(16,6,'lbl.leftsubmenu.invitetrainer','userlist?action=teacher','teacherInvite','fa fa-users'),(17,11,'lbl.leftsubmenu.settings','settings','settings','fa fa-user-secret'),(18,8,'lbl.leftsubmenu.userreports','userReportsList','userReportsList','fa fa-bar-chart-o'),(19,8,'lbl.leftsubmenu.coursereports','coursereportlist','coursereportlist','fa fa-bar-chart-o');
/*!40000 ALTER TABLE `qbis_sub_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_sub_options`
--

DROP TABLE IF EXISTS `qbis_sub_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_sub_options` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) unsigned NOT NULL,
  `option_name` mediumblob NOT NULL,
  `correct_answer_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-no ,1-yes',
  `option_position` int(2) NOT NULL,
  PRIMARY KEY (`pk`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `qbis_sub_options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `qbis_quest` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_sub_options`
--

LOCK TABLES `qbis_sub_options` WRITE;
/*!40000 ALTER TABLE `qbis_sub_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbis_sub_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_test`
--

DROP TABLE IF EXISTS `qbis_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_title` varchar(255) DEFAULT NULL,
  `test_desc` varchar(512) DEFAULT NULL,
  `test_instruct` varchar(1024) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `test_attempts` int(2) unsigned DEFAULT NULL,
  `negative_mark` int(2) DEFAULT NULL COMMENT 'If value is null or 0 - no negative mark otherwise applicable',
  `test_time_bound` time DEFAULT NULL COMMENT 'If value is null - no time bound otherwise applicable',
  `test_pause` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-not applicable, 1-applicable',
  `test_adaptive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-not applicable, 1-applicable',
  `shuffling` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-not applicable, 1-Section wise, 2-Question wise, 3-answer wise',
  `test_review` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-in last, 1-per question',
  `org_id` int(11) unsigned DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - public, 1 - private',
  `total_marks` int(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-draft, 1-submit',
  `is_schedule` tinyint(1) DEFAULT '0',
  `schedule_publish_date` datetime DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-not publish, 1-published',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-not share, 1-shared',
  `test_end_date` datetime DEFAULT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `test_start_date` datetime DEFAULT NULL,
  `is_resume` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-not resume, 1-resume',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_question_mark_same` tinyint(1) DEFAULT '0',
  `every_ques_mark` int(3) DEFAULT NULL,
  `is_review` tinyint(1) DEFAULT '0' COMMENT 'o for no, 1 for yes',
  `review_with_correct` tinyint(1) DEFAULT NULL COMMENT '1 for With Correct Answer, 0 for Without Correct Answer',
  `shuffle_section` tinyint(1) DEFAULT '0' COMMENT 'value is 1 then sections would be shuffle inside test.',
  `shuffle_question` tinyint(1) DEFAULT '0' COMMENT 'value is 1 then questions would be shuffle inside sections.',
  `shuffle_option` tinyint(1) DEFAULT '0' COMMENT 'value is 1 then options would be shuffle inside questions.',
  `test_icon` varchar(255) DEFAULT NULL,
  `published_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `is_random` tinyint(1) NOT NULL,
  `max_question` int(11) DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `fk_qbis_test_qbis_users1_idx` (`user_id`),
  CONSTRAINT `fk_qbis_test_qbis_users1` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_test`
--

LOCK TABLES `qbis_test` WRITE;
/*!40000 ALTER TABLE `qbis_test` DISABLE KEYS */;
INSERT INTO `qbis_test` VALUES (1,'Who wants to be  a millionaire','Play and win','<p>The quizzes consists of questions carefully designed to help you self-assess your comprehension of the information presented on the topics covered in the module. No data will be collected on the website regarding your responses or how many times you take the quiz.</p>\r\n\r\n<p>If you select an incorrect response for a question, you can try again until you get the correct response. If you retake the quiz, the questions and their respective responses will be randomized.</p>\r\n\r\n<p>The total score for the quiz is based on your responses to all questions. If you respond incorrectly to a question or retake a question again and get the correct response, your quiz score will reflect it appropriately. However, your quiz will not be graded, if you skip a question or exit before responding to all the questions.</p>\r\n','Group',NULL,25,'00:05:00',0,0,0,0,1,0,10,1,0,NULL,1,0,NULL,1,NULL,0,'2019-02-22 12:40:31',1,5,0,NULL,0,0,0,NULL,'2019-02-22 18:12:45','2019-02-22 18:12:45',0,NULL),(2,'helloo','gfdg','<p>sfdg</p>\r\n','Subject',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-04 10:37:37',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-04 16:55:31',0,0),(3,'sa','qwwq','<p>qwqw</p>\r\n','B.Tech',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-04 11:40:08',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-04 17:10:08',0,0),(4,'fsf','esrfst','<p>sfs</p>\r\n','12th',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-04 11:46:27',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-04 17:16:27',0,0),(5,'ssd','sdsd','<p>sdd</p>\r\n','B.Tech',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-04 11:49:48',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-04 17:19:48',0,0),(6,'khkh','ijolij','<p>&nbsp;mnkk</p>\r\n','Test',NULL,0,'00:05:00',0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-05 06:25:04',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-05 11:55:04',0,0),(7,'sd','sdsd','<p>sdsd</p>\r\n','CBSE',NULL,25,'00:05:00',0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-07 10:49:05',1,5,0,NULL,0,0,0,NULL,NULL,'2019-03-07 16:19:05',0,0),(8,'n','u','<p>i</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-07 11:57:51',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-07 17:27:51',0,0),(9,'swqw','qw','<p>qwq</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 06:26:37',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 11:56:37',0,0),(10,'ewe','wew','<p>wew</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 06:29:48',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 11:59:48',0,0),(11,'sd','sd','<p>sd</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 06:46:31',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:16:31',0,0),(12,'asa','asa','<p>as</p>\r\n','CBSE',NULL,50,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 06:52:51',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:22:51',0,0),(13,'asa','asas','<p>asa</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 06:55:01',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:25:01',0,0),(14,'ass','as','<p>asa</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:07:33',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:37:33',0,0),(15,'sd','sds','<p>sd</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:16:45',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:46:45',0,0),(16,'er','er','<p>ere</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:17:18',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:47:18',0,0),(17,'er','er','<p>ere</p>\r\n','CBSE',NULL,25,'00:05:00',0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:19:27',0,3,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:49:27',0,0),(18,'erer','ere','<p>ere</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:22:36',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 12:52:36',0,0),(19,'tyr','sasere','<p>ere</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:30:43',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 13:00:43',0,0),(20,'sdsdtyr','saseresd','<p>ereds</p>\r\n','CBSE',NULL,50,'00:05:00',0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:31:57',0,5,0,NULL,0,0,0,NULL,NULL,'2019-03-08 13:01:57',0,0),(21,'sdsdtyr','saseresd','<p>ereds</p>\r\n','CBSE',NULL,50,'00:05:00',0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 07:32:29',0,5,0,NULL,0,0,0,NULL,NULL,'2019-03-08 13:02:29',0,0),(22,'asa','asas','<p>assa</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 10:08:24',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 15:38:24',0,0),(23,'asa','asas','<p>assa</p>\r\n','CBSE',NULL,50,'00:05:00',0,0,0,0,1,0,0,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-08 10:09:05',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-08 15:39:05',0,0),(24,'Kaun banega CarorePati','asas','<p>asassasas</p>\r\n','CBSE',NULL,0,NULL,0,0,0,0,1,0,10,0,0,NULL,0,0,NULL,1,NULL,0,'2019-03-12 09:36:38',0,NULL,0,NULL,0,0,0,NULL,NULL,'2019-03-12 15:07:54',0,0);
/*!40000 ALTER TABLE `qbis_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_user_group_mapping`
--

DROP TABLE IF EXISTS `qbis_user_group_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_user_group_mapping` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `qbis_group_pk` int(11) NOT NULL,
  `qbis_user_id` int(11) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_user_group_mapping`
--

LOCK TABLES `qbis_user_group_mapping` WRITE;
/*!40000 ALTER TABLE `qbis_user_group_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbis_user_group_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_users`
--

DROP TABLE IF EXISTS `qbis_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) DEFAULT NULL,
  `user_pwd` varchar(128) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-active, 1-deleted',
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT '0',
  `user_email` varchar(64) DEFAULT NULL,
  `hash_token` varchar(128) DEFAULT NULL COMMENT 'for reseting password',
  `access_id` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `about` varchar(500) DEFAULT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `registration_id` varchar(255) DEFAULT NULL,
  `permissionId` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modifyed_date` datetime DEFAULT NULL,
  `modifyed_by` int(11) DEFAULT NULL,
  `role_modifyed_date` datetime DEFAULT NULL,
  `role_modifyed_by` int(11) DEFAULT NULL,
  `system_language` varchar(20) DEFAULT 'en',
  `state` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `school_name` varchar(250) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_qbis_users_role_description1_idx` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_users`
--

LOCK TABLES `qbis_users` WRITE;
/*!40000 ALTER TABLE `qbis_users` DISABLE KEYS */;
INSERT INTO `qbis_users` VALUES (1,NULL,'*F9519641034DAAA0910CBEEF27591BE84B476CD7',1,'2019-03-15 08:09:36',NULL,NULL,1,NULL,0,'shivansh.pandey@bellurbis.com',NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'en',NULL,NULL,NULL,NULL),(2,NULL,'*F9519641034DAAA0910CBEEF27591BE84B476CD7',1,'2019-02-27 05:32:00',NULL,NULL,1,NULL,0,'shivansh.pandey521@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL,NULL,'en',NULL,NULL,NULL,NULL),(3,NULL,NULL,0,'2019-02-27 05:43:50',NULL,NULL,1,NULL,0,'shivansh.pandey7@gmail.com','79d49bea55e4f3aed13b7c6f9d534d084579400f',NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,'en',NULL,NULL,NULL,NULL),(4,NULL,'bellurbis@123',1,'2019-03-13 05:54:58','hero','pandey',1,NULL,0,'shivansh.pandey1114@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'en',NULL,NULL,NULL,NULL),(5,NULL,'bellurbis',1,'2019-03-15 09:50:43','prabhat','singh',1,NULL,0,'prabhatiitbhu@gmail.com','eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MSwiZXhwIjoxNTU3NTc3MjkwfQ.gMD0x_fDk5YW3_Br-z1nx6EwRdMsV7kt2iTjHURkvY4',NULL,NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL,NULL,'en',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qbis_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_users_device`
--

DROP TABLE IF EXISTS `qbis_users_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_users_device` (
  `user_id` int(11) unsigned DEFAULT NULL,
  `device_id` varchar(255) NOT NULL,
  `access_id` varchar(255) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `device_os` varchar(255) DEFAULT NULL,
  `app_version` varchar(255) DEFAULT NULL,
  `register_pn_token` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `network` varchar(255) DEFAULT NULL,
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `qbis_users_device_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_users_device`
--

LOCK TABLES `qbis_users_device` WRITE;
/*!40000 ALTER TABLE `qbis_users_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `qbis_users_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_video_content_map`
--

DROP TABLE IF EXISTS `qbis_video_content_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_video_content_map` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `question_type` tinyint(2) NOT NULL DEFAULT '0',
  `question` blob NOT NULL,
  `time_slot` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_video_content_map`
--

LOCK TABLES `qbis_video_content_map` WRITE;
/*!40000 ALTER TABLE `qbis_video_content_map` DISABLE KEYS */;
INSERT INTO `qbis_video_content_map` VALUES (1,117,1,_binary '<p>asa</p>',0,1,'2019-03-06 07:36:35'),(2,118,1,_binary '<p>ssd</p>',0,1,'2019-03-06 07:38:35'),(3,149,1,_binary '<p>ssd</p>',0,1,'2019-03-13 06:41:26');
/*!40000 ALTER TABLE `qbis_video_content_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qbis_video_content_map_details`
--

DROP TABLE IF EXISTS `qbis_video_content_map_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qbis_video_content_map_details` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `qbis_video_content_map_id` int(11) NOT NULL,
  `answer` blob NOT NULL,
  `correct_answer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-incorrect, 1-correct',
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qbis_video_content_map_details`
--

LOCK TABLES `qbis_video_content_map_details` WRITE;
/*!40000 ALTER TABLE `qbis_video_content_map_details` DISABLE KEYS */;
INSERT INTO `qbis_video_content_map_details` VALUES (1,1,_binary '<p>sds</p>',1),(2,1,_binary '<p>sdd</p>',0),(3,2,_binary '<p>d</p>',1),(4,2,_binary '<p>sds</p>',1),(5,3,_binary '<p>sfsf</p>',1),(6,3,_binary '<p>sfs</p>',0);
/*!40000 ALTER TABLE `qbis_video_content_map_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_section_mapping`
--

DROP TABLE IF EXISTS `question_section_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_section_mapping` (
  `section_id` int(11) NOT NULL,
  `question_id` int(11) unsigned NOT NULL,
  `question_order` int(4) DEFAULT NULL,
  `question_marks` int(3) DEFAULT NULL,
  `negative_mark` float DEFAULT '0',
  KEY `section_id` (`section_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `question_section_mapping_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `qbis_section` (`section_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `question_section_mapping_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `qbis_quest` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_section_mapping`
--

LOCK TABLES `question_section_mapping` WRITE;
/*!40000 ALTER TABLE `question_section_mapping` DISABLE KEYS */;
INSERT INTO `question_section_mapping` VALUES (1,1,1,5,1.25),(1,2,2,5,1.25),(2,73,1,5,0),(2,74,2,5,0);
/*!40000 ALTER TABLE `question_section_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_type` (
  `pk` int(11) NOT NULL AUTO_INCREMENT COMMENT '0-not delete, 1-deleted',
  `type_name` varchar(64) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_type`
--

LOCK TABLES `question_type` WRITE;
/*!40000 ALTER TABLE `question_type` DISABLE KEYS */;
INSERT INTO `question_type` VALUES (1,'Multi Choice',0),(2,'Single Choice',0);
/*!40000 ALTER TABLE `question_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quick_fee_transaction`
--

DROP TABLE IF EXISTS `quick_fee_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_fee_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transection_id` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `status` enum('Created','Success','Rejected','Failed') DEFAULT 'Created',
  `bank_payment_id` varchar(45) DEFAULT NULL,
  `transection_responce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quick_fee_transaction`
--

LOCK TABLES `quick_fee_transaction` WRITE;
/*!40000 ALTER TABLE `quick_fee_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `quick_fee_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_description`
--

DROP TABLE IF EXISTS `role_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_description` (
  `role_id` int(11) NOT NULL,
  `role_desc` varchar(255) NOT NULL,
  `role_type` enum('I','E') DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_description`
--

LOCK TABLES `role_description` WRITE;
/*!40000 ALTER TABLE `role_description` DISABLE KEYS */;
INSERT INTO `role_description` VALUES (1,'Admin','I'),(2,'Organization','I'),(3,'Teacher','I'),(4,'Student','E');
/*!40000 ALTER TABLE `role_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_function`
--

DROP TABLE IF EXISTS `role_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_function` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  KEY `function_id` (`menu_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  CONSTRAINT `role_function_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `web_menu` (`pk`),
  CONSTRAINT `role_function_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role_description` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_function`
--

LOCK TABLES `role_function` WRITE;
/*!40000 ALTER TABLE `role_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_functions_mapping`
--

DROP TABLE IF EXISTS `role_functions_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_functions_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `sub_function_Id` varchar(45) DEFAULT NULL,
  `read_write_id` int(11) DEFAULT NULL,
  `function_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_functions_mapping`
--

LOCK TABLES `role_functions_mapping` WRITE;
/*!40000 ALTER TABLE `role_functions_mapping` DISABLE KEYS */;
INSERT INTO `role_functions_mapping` VALUES (1,1,'1',NULL,1),(3,1,'3',NULL,3),(5,1,'5',NULL,2),(7,1,'9',NULL,6),(8,1,'8',NULL,5),(9,1,'13',NULL,10),(10,1,'7',NULL,4),(11,1,'10',NULL,7),(12,1,'11',NULL,8),(91,2,'1',NULL,1),(93,2,'5',NULL,2),(95,2,'3',NULL,3),(96,2,'7',NULL,4),(97,2,'8',NULL,5),(98,2,'15',NULL,6),(99,2,'10',NULL,7),(100,2,'11',NULL,8),(101,2,'12',NULL,9),(102,3,'2',NULL,1),(103,3,'6',NULL,2),(104,3,'4',NULL,3),(105,3,'12',NULL,9),(111,1,'15',NULL,6),(112,1,'16',NULL,6),(118,1,'17',NULL,11),(119,1,'18',NULL,8),(120,1,'19',NULL,8);
/*!40000 ALTER TABLE `role_functions_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(250) DEFAULT NULL,
  `roleDesc` varchar(250) DEFAULT NULL,
  `rolecreaterId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','Admin',NULL),(2,'Trainer','Trainer deafult role in qbis','0'),(3,'Trainee','Trainee default role in qbis','0');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config`
--

DROP TABLE IF EXISTS `system_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config`
--

LOCK TABLES `system_config` WRITE;
/*!40000 ALTER TABLE `system_config` DISABLE KEYS */;
INSERT INTO `system_config` VALUES (1,'board','Board','select'),(2,'session','Session','select'),(3,'class','Class','select'),(4,'subject','Subject','select'),(5,'chapter','Chapter','empty'),(6,'act','Act','empty');
/*!40000 ALTER TABLE `system_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_config_mapping`
--

DROP TABLE IF EXISTS `system_config_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_config_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_id` (`config_id`),
  CONSTRAINT `system_config_mapping_ibfk_1` FOREIGN KEY (`config_id`) REFERENCES `system_config` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_config_mapping`
--

LOCK TABLES `system_config_mapping` WRITE;
/*!40000 ALTER TABLE `system_config_mapping` DISABLE KEYS */;
INSERT INTO `system_config_mapping` VALUES (1,1,'CBSE',1),(2,1,'ICSE ',2),(3,1,'UP Board',3),(4,2,'2019-20',1),(5,2,'2018-19',2),(6,2,'2017-18',3),(7,2,'2016-17',4),(8,3,'12th',1),(9,3,'11th',2),(10,3,'10th',3),(11,3,'9th',4),(12,3,'8th',5),(13,3,'7th',6),(14,3,'6th',7),(15,3,'5th',8),(16,3,'4th',9),(17,3,'3rd',10),(18,3,'2nd',11),(19,3,'1st',12),(20,3,'B',13),(21,3,'A',14),(22,4,'History',1),(23,4,'English',2),(24,4,'Chemistry',3);
/*!40000 ALTER TABLE `system_config_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_mapping`
--

DROP TABLE IF EXISTS `tag_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_mapping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `config_id` int(11) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  `mapped_id` int(11) NOT NULL,
  `mapped_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_id` (`config_id`),
  CONSTRAINT `tag_mapping_ibfk_1` FOREIGN KEY (`config_id`) REFERENCES `system_config` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_mapping`
--

LOCK TABLES `tag_mapping` WRITE;
/*!40000 ALTER TABLE `tag_mapping` DISABLE KEYS */;
INSERT INTO `tag_mapping` VALUES (37,1,'1',0,'question'),(38,2,'4',0,'question'),(39,3,'8',0,'question'),(40,4,'22',0,'question'),(41,5,'',0,'question'),(42,6,'',0,'question'),(97,1,'1',33,'question'),(98,2,'4',33,'question'),(99,3,'8',33,'question'),(100,4,'22',33,'question'),(101,5,'change',33,'question'),(102,6,'change',33,'question'),(133,1,'shh',34,'question'),(134,2,'shh',34,'question'),(135,3,'shh',34,'question'),(136,4,'shh',34,'question'),(137,5,'shh',34,'question'),(138,6,'shh',34,'question'),(139,1,'3',35,'question'),(140,2,'7',35,'question'),(141,3,'21',35,'question'),(142,4,'24',35,'question'),(143,5,'hh',35,'question'),(144,6,'hh',35,'question'),(145,1,'2',36,'question'),(146,2,'5',36,'question'),(147,3,'17',36,'question'),(148,4,'23',36,'question'),(149,5,'sas',36,'question'),(150,6,'asas',36,'question'),(169,1,'2',39,'question'),(170,2,'6',39,'question'),(171,3,'13',39,'question'),(172,4,'23',39,'question'),(173,5,'hhhhhhhhhhhhhhhhh',39,'question'),(174,6,'hhhhhhhhhhhhhhhhhh',39,'question'),(181,1,'1',37,'question'),(182,2,'4',37,'question'),(183,3,'8',37,'question'),(184,4,'22',37,'question'),(185,5,'shivanshshivansh',37,'question'),(186,6,'shh',37,'question'),(187,1,'1',38,'question'),(188,2,'4',38,'question'),(189,3,'8',38,'question'),(190,4,'22',38,'question'),(191,5,'kk',38,'question'),(192,6,'kk',38,'question'),(217,1,'2',40,'question'),(218,2,'6',40,'question'),(219,3,'11',40,'question'),(220,4,'22',40,'question'),(221,5,'sdsd',40,'question'),(222,6,'fffgfg',40,'question'),(229,1,'3',63,'question'),(230,2,'7',63,'question'),(231,3,'21',63,'question'),(232,4,'23',63,'question'),(233,5,'wewe3',63,'question'),(234,6,'wewe3',63,'question'),(235,1,'2',64,'question'),(236,2,'6',64,'question'),(237,3,'18',64,'question'),(238,4,'23',64,'question'),(239,5,'Bellurbs11',64,'question'),(240,6,'Bellurbis1212',64,'question'),(241,1,'2',65,'question'),(242,2,'5',65,'question'),(243,3,'18',65,'question'),(244,4,'23',65,'question'),(245,5,'qwerty',65,'question'),(246,6,'qwerty1122',65,'question'),(265,1,'2',2,'test'),(266,2,'5',2,'test'),(267,3,'15',2,'test'),(268,4,'23',2,'test'),(269,5,'ddfe',2,'test'),(270,6,'gdetht',2,'test'),(271,1,'1',3,'test'),(272,2,'4',3,'test'),(273,3,'8',3,'test'),(274,4,'22',3,'test'),(275,5,'qw',3,'test'),(276,6,'qw',3,'test'),(277,1,'1',4,'test'),(278,2,'4',4,'test'),(279,3,'8',4,'test'),(280,4,'22',4,'test'),(281,5,'sds',4,'test'),(282,6,'sd',4,'test'),(283,1,'1',5,'test'),(284,2,'4',5,'test'),(285,3,'8',5,'test'),(286,4,'22',5,'test'),(287,5,'sdd',5,'test'),(288,6,'sdsd',5,'test'),(289,1,'1',6,'test'),(290,2,'4',6,'test'),(291,3,'8',6,'test'),(292,4,'22',6,'test'),(293,5,'gjg',6,'test'),(294,6,'hkuh',6,'test'),(295,1,'1',67,'question'),(296,2,'4',67,'question'),(297,3,'8',67,'question'),(298,4,'22',67,'question'),(299,5,'',67,'question'),(300,6,'',67,'question'),(301,1,'1',68,'question'),(302,2,'4',68,'question'),(303,3,'8',68,'question'),(304,4,'22',68,'question'),(305,5,'',68,'question'),(306,6,'',68,'question'),(307,1,'1',69,'question'),(308,2,'4',69,'question'),(309,3,'8',69,'question'),(310,4,'22',69,'question'),(311,5,'',69,'question'),(312,6,'',69,'question'),(313,1,'1',7,'test'),(314,2,'4',7,'test'),(315,3,'8',7,'test'),(316,4,'22',7,'test'),(317,5,'',7,'test'),(318,6,'',7,'test'),(319,1,'1',8,'test'),(320,2,'4',8,'test'),(321,3,'8',8,'test'),(322,4,'22',8,'test'),(323,5,'',8,'test'),(324,6,'',8,'test'),(325,1,'1',70,'question'),(326,2,'4',70,'question'),(327,3,'8',70,'question'),(328,4,'22',70,'question'),(329,5,'ssss',70,'question'),(330,6,'sdfsdgg',70,'question'),(331,1,'1',71,'question'),(332,2,'4',71,'question'),(333,3,'8',71,'question'),(334,4,'22',71,'question'),(335,5,'aaaaa',71,'question'),(336,6,'aaaaa',71,'question'),(337,1,'1',9,'test'),(338,2,'4',9,'test'),(339,3,'8',9,'test'),(340,4,'22',9,'test'),(341,5,'',9,'test'),(342,6,'',9,'test'),(343,1,'1',10,'test'),(344,2,'4',10,'test'),(345,3,'8',10,'test'),(346,4,'22',10,'test'),(347,5,'wew',10,'test'),(348,6,'',10,'test'),(349,1,'1',11,'test'),(350,2,'4',11,'test'),(351,3,'8',11,'test'),(352,4,'22',11,'test'),(353,5,'sdsd',11,'test'),(354,6,'',11,'test'),(355,1,'1',12,'test'),(356,2,'4',12,'test'),(357,3,'8',12,'test'),(358,4,'22',12,'test'),(359,5,'',12,'test'),(360,6,'asas',12,'test'),(361,1,'1',13,'test'),(362,2,'4',13,'test'),(363,3,'8',13,'test'),(364,4,'22',13,'test'),(365,5,'asas',13,'test'),(366,6,'asa',13,'test'),(367,1,'1',14,'test'),(368,2,'4',14,'test'),(369,3,'8',14,'test'),(370,4,'22',14,'test'),(371,5,'',14,'test'),(372,6,'',14,'test'),(373,1,'1',15,'test'),(374,2,'4',15,'test'),(375,3,'8',15,'test'),(376,4,'22',15,'test'),(377,5,'sds',15,'test'),(378,6,'dsd',15,'test'),(379,1,'1',16,'test'),(380,2,'4',16,'test'),(381,3,'8',16,'test'),(382,4,'22',16,'test'),(383,5,'',16,'test'),(384,6,'',16,'test'),(385,1,'1',17,'test'),(386,2,'4',17,'test'),(387,3,'8',17,'test'),(388,4,'22',17,'test'),(389,5,'',17,'test'),(390,6,'',17,'test'),(391,1,'1',18,'test'),(392,2,'4',18,'test'),(393,3,'8',18,'test'),(394,4,'22',18,'test'),(395,5,'3434',18,'test'),(396,6,'3434',18,'test'),(397,1,'1',19,'test'),(398,2,'4',19,'test'),(399,3,'8',19,'test'),(400,4,'22',19,'test'),(401,5,'fdf',19,'test'),(402,6,'',19,'test'),(403,1,'1',20,'test'),(404,2,'4',20,'test'),(405,3,'8',20,'test'),(406,4,'22',20,'test'),(407,5,'fdf',20,'test'),(408,6,'',20,'test'),(409,1,'1',21,'test'),(410,2,'4',21,'test'),(411,3,'8',21,'test'),(412,4,'22',21,'test'),(413,5,'fdf',21,'test'),(414,6,'',21,'test'),(415,1,'1',22,'test'),(416,2,'4',22,'test'),(417,3,'8',22,'test'),(418,4,'22',22,'test'),(419,5,'asa',22,'test'),(420,6,'as',22,'test'),(421,1,'1',23,'test'),(422,2,'4',23,'test'),(423,3,'8',23,'test'),(424,4,'22',23,'test'),(425,5,'',23,'test'),(426,6,'',23,'test'),(433,1,'1',72,'question'),(434,2,'4',72,'question'),(435,3,'8',72,'question'),(436,4,'22',72,'question'),(437,5,'sds',72,'question'),(438,6,'sdsd',72,'question'),(439,1,'1',24,'test'),(440,2,'4',24,'test'),(441,3,'8',24,'test'),(442,4,'22',24,'test'),(443,5,'hello',24,'test'),(444,6,'hello',24,'test');
/*!40000 ALTER TABLE `tag_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transection`
--

DROP TABLE IF EXISTS `transection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transectionId` varchar(45) DEFAULT NULL,
  `payementStatus` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `licenseId` int(11) DEFAULT NULL,
  `orgId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transectionId` (`transectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transection`
--

LOCK TABLES `transection` WRITE;
/*!40000 ALTER TABLE `transection` DISABLE KEYS */;
/*!40000 ALTER TABLE `transection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_attempt_answer`
--

DROP TABLE IF EXISTS `user_attempt_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_attempt_answer` (
  `user_question_attempt_pk` int(11) NOT NULL,
  `qbis_option_id` int(11) DEFAULT NULL,
  `subjective_ans` text,
  KEY `fk_table2_user_question_attempt1_idx` (`user_question_attempt_pk`),
  CONSTRAINT `fk_table2_user_question_attempt1` FOREIGN KEY (`user_question_attempt_pk`) REFERENCES `user_question_attempt` (`pk`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_attempt_answer`
--

LOCK TABLES `user_attempt_answer` WRITE;
/*!40000 ALTER TABLE `user_attempt_answer` DISABLE KEYS */;
INSERT INTO `user_attempt_answer` VALUES (1,1,''),(2,3,''),(3,1,''),(4,3,'');
/*!40000 ALTER TABLE `user_attempt_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_abuse_report`
--

DROP TABLE IF EXISTS `user_content_abuse_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_content_abuse_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `report_text` varchar(2000) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `course_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `user_content_abuse_report_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `course_content_manager` (`content_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_content_abuse_report_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_content_abuse_report_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course_manager` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_abuse_report`
--

LOCK TABLES `user_content_abuse_report` WRITE;
/*!40000 ALTER TABLE `user_content_abuse_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_content_abuse_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_favorites`
--

DROP TABLE IF EXISTS `user_content_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_content_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `is_favorites` tinyint(1) DEFAULT '0' COMMENT '0 for not, 1 for yes',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_content_favorites_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `course_content_manager` (`content_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_content_favorites_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_favorites`
--

LOCK TABLES `user_content_favorites` WRITE;
/*!40000 ALTER TABLE `user_content_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_content_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_course_mapping`
--

DROP TABLE IF EXISTS `user_course_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_course_mapping` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(10) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `mapping_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk`),
  KEY `course_id` (`course_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_course_mapping_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_manager` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_course_mapping_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_course_mapping`
--

LOCK TABLES `user_course_mapping` WRITE;
/*!40000 ALTER TABLE `user_course_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_course_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_activity_details`
--

DROP TABLE IF EXISTS `user_login_activity_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_activity_details` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NOT NULL,
  `last_login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=724 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_activity_details`
--

LOCK TABLES `user_login_activity_details` WRITE;
/*!40000 ALTER TABLE `user_login_activity_details` DISABLE KEYS */;
INSERT INTO `user_login_activity_details` VALUES (1,1,'2019-02-22 05:23:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(2,1,'2019-02-22 06:08:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(3,1,'2019-02-22 06:16:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(4,1,'2019-02-22 07:00:55','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(5,1,'2019-02-22 07:10:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(6,1,'2019-02-22 07:21:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(7,1,'2019-02-22 07:29:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(8,1,'2019-02-22 07:31:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(9,1,'2019-02-22 08:44:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(10,1,'2019-02-22 08:57:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(11,1,'2019-02-22 09:11:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(12,1,'2019-02-22 10:04:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(13,1,'2019-02-22 10:11:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(14,1,'2019-02-22 10:11:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(15,1,'2019-02-22 10:11:35','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(16,1,'2019-02-22 10:22:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(17,1,'2019-02-22 10:22:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(18,1,'2019-02-22 10:32:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(19,1,'2019-02-22 10:32:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(20,1,'2019-02-22 10:40:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(21,1,'2019-02-22 10:40:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(22,1,'2019-02-22 12:10:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(23,1,'2019-02-22 12:28:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(24,1,'2019-02-22 12:31:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(25,1,'2019-02-22 17:46:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(26,1,'2019-02-22 17:50:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(27,1,'2019-02-22 17:54:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(28,1,'2019-02-22 17:55:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(29,1,'2019-02-22 18:03:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(30,1,'2019-02-23 10:01:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(31,1,'2019-02-23 10:02:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(32,1,'2019-02-23 10:06:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(33,1,'2019-02-23 10:20:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(34,1,'2019-02-23 10:25:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(35,1,'2019-02-23 10:25:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(36,1,'2019-02-23 10:34:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(37,1,'2019-02-23 10:45:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(38,1,'2019-02-23 10:45:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(39,1,'2019-02-23 10:52:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(40,1,'2019-02-23 10:55:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(41,1,'2019-02-23 10:56:35','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(42,1,'2019-02-23 10:56:43','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(43,1,'2019-02-23 11:01:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(44,1,'2019-02-23 11:02:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(45,1,'2019-02-23 11:02:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(46,1,'2019-02-23 11:06:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(47,1,'2019-02-23 11:12:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(48,1,'2019-02-23 11:12:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(49,1,'2019-02-23 11:16:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(50,1,'2019-02-23 11:16:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(51,1,'2019-02-23 11:24:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(52,1,'2019-02-23 11:26:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(53,1,'2019-02-23 11:26:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(54,1,'2019-02-23 11:26:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(55,1,'2019-02-23 11:35:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(56,1,'2019-02-23 11:43:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(57,1,'2019-02-23 11:55:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(58,1,'2019-02-23 11:56:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(59,1,'2019-02-23 18:01:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(60,1,'2019-02-23 18:06:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(61,1,'2019-02-23 18:22:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(62,1,'2019-02-23 18:33:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(63,1,'2019-02-23 18:35:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(64,1,'2019-02-23 18:35:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(65,1,'2019-02-24 17:15:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(66,1,'2019-02-25 04:39:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(67,1,'2019-02-25 04:50:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(68,1,'2019-02-25 05:10:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(69,1,'2019-02-25 05:23:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(70,1,'2019-02-25 05:42:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(71,1,'2019-02-25 05:42:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(72,1,'2019-02-25 05:48:22','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(73,1,'2019-02-25 05:50:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(74,1,'2019-02-25 05:52:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(75,1,'2019-02-25 05:53:43','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(76,1,'2019-02-25 05:55:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(77,1,'2019-02-25 05:57:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(78,1,'2019-02-25 05:59:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(79,1,'2019-02-25 06:01:06','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(80,1,'2019-02-25 07:36:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(81,1,'2019-02-25 07:40:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(82,1,'2019-02-25 07:45:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(83,1,'2019-02-25 07:45:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(84,1,'2019-02-25 08:35:38','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(85,1,'2019-02-25 08:36:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(86,1,'2019-02-25 08:38:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(87,1,'2019-02-25 08:39:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(88,1,'2019-02-25 08:44:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(89,1,'2019-02-25 08:45:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(90,1,'2019-02-25 08:48:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(91,1,'2019-02-25 09:00:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(92,1,'2019-02-25 09:35:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(93,1,'2019-02-25 09:37:10','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(94,1,'2019-02-25 09:39:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(95,1,'2019-02-25 09:39:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(96,1,'2019-02-25 09:45:55','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(97,1,'2019-02-25 09:51:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(98,1,'2019-02-25 09:56:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(99,1,'2019-02-25 09:56:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(100,1,'2019-02-25 09:58:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(101,1,'2019-02-25 10:13:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(102,1,'2019-02-25 10:19:38','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(103,1,'2019-02-25 10:21:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(104,1,'2019-02-25 10:23:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(105,1,'2019-02-25 10:23:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(106,1,'2019-02-25 10:27:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(107,1,'2019-02-25 10:29:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(108,1,'2019-02-25 10:30:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(109,1,'2019-02-25 10:31:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(110,1,'2019-02-25 10:48:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(111,1,'2019-02-25 12:28:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(112,1,'2019-02-25 12:35:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(113,1,'2019-02-25 12:52:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(114,1,'2019-02-25 12:53:27','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(115,1,'2019-02-25 12:55:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(116,1,'2019-02-25 12:56:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(117,1,'2019-02-25 12:58:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(118,1,'2019-02-25 12:58:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(119,1,'2019-02-25 12:59:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(120,1,'2019-02-25 13:07:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(121,1,'2019-02-25 13:09:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(122,1,'2019-02-25 13:15:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(123,1,'2019-02-25 13:17:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(124,1,'2019-02-25 13:20:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(125,1,'2019-02-25 15:43:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(126,1,'2019-02-25 15:44:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(127,1,'2019-02-25 15:58:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(128,1,'2019-02-25 16:00:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(129,1,'2019-02-25 16:02:07','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(130,1,'2019-02-25 16:03:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(131,1,'2019-02-25 16:07:06','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(132,1,'2019-02-25 16:20:06','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(133,1,'2019-02-25 16:20:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(134,1,'2019-02-26 05:38:12','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(135,1,'2019-02-26 06:01:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(136,1,'2019-02-26 06:20:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(137,1,'2019-02-26 06:58:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(138,1,'2019-02-26 07:11:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(139,1,'2019-02-26 07:11:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(140,1,'2019-02-26 07:32:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(141,1,'2019-02-26 08:49:36','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(142,1,'2019-02-26 08:49:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(143,1,'2019-02-26 09:00:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(144,1,'2019-02-26 09:02:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(145,1,'2019-02-26 09:03:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(146,1,'2019-02-26 09:06:38','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(147,1,'2019-02-26 09:06:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(148,1,'2019-02-26 09:09:19','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(149,1,'2019-02-26 09:14:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(150,1,'2019-02-26 09:15:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(151,1,'2019-02-26 09:20:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(152,1,'2019-02-26 09:23:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(153,1,'2019-02-26 09:36:54','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(154,1,'2019-02-26 09:37:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(155,1,'2019-02-26 09:37:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(156,1,'2019-02-26 09:37:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(157,1,'2019-02-26 09:38:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(158,1,'2019-02-26 09:39:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(159,1,'2019-02-26 09:54:20','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(160,1,'2019-02-26 09:55:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(161,1,'2019-02-26 09:56:10','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(162,1,'2019-02-26 09:56:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(163,1,'2019-02-26 09:57:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(164,1,'2019-02-26 09:57:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(165,1,'2019-02-26 09:58:55','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(166,1,'2019-02-26 10:03:20','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(167,1,'2019-02-26 10:03:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(168,1,'2019-02-26 10:05:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(169,1,'2019-02-26 10:06:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(170,1,'2019-02-26 10:08:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(171,1,'2019-02-26 10:08:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(172,1,'2019-02-26 10:10:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(173,1,'2019-02-26 10:11:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(174,1,'2019-02-26 10:15:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(175,1,'2019-02-26 10:32:07','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(176,1,'2019-02-26 10:32:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(177,1,'2019-02-27 05:54:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(178,1,'2019-02-27 09:14:19','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(179,1,'2019-02-27 09:17:22','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(180,1,'2019-02-27 09:23:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(181,1,'2019-02-27 10:22:20','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(182,1,'2019-02-27 10:47:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(183,1,'2019-02-27 11:34:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(184,1,'2019-02-27 12:31:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(185,1,'2019-02-28 04:57:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(186,1,'2019-02-28 04:58:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(187,1,'2019-02-28 05:00:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(188,1,'2019-02-28 05:40:12','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(189,1,'2019-02-28 05:42:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(190,1,'2019-02-28 05:45:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(191,1,'2019-02-28 05:53:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(192,1,'2019-02-28 06:06:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(193,1,'2019-02-28 06:07:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(194,1,'2019-02-28 06:10:57','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(195,1,'2019-02-28 06:51:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(196,1,'2019-02-28 06:57:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(197,1,'2019-02-28 07:26:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(198,1,'2019-02-28 10:32:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(199,1,'2019-02-28 10:33:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(200,1,'2019-02-28 11:06:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(201,1,'2019-02-28 11:50:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(202,1,'2019-03-01 05:36:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(203,1,'2019-03-01 05:37:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(204,1,'2019-03-01 06:23:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(205,1,'2019-03-01 06:33:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(206,1,'2019-03-01 06:37:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(207,1,'2019-03-01 06:38:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(208,1,'2019-03-01 06:51:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(209,1,'2019-03-01 06:51:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(210,1,'2019-03-01 07:19:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(211,1,'2019-03-01 07:38:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(212,1,'2019-03-01 07:40:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(213,1,'2019-03-01 07:42:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(214,1,'2019-03-01 07:43:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(215,1,'2019-03-01 09:10:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(216,1,'2019-03-01 09:11:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(217,1,'2019-03-01 17:00:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(218,1,'2019-03-02 07:29:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(219,1,'2019-03-02 08:02:43','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(220,1,'2019-03-02 08:04:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(221,1,'2019-03-02 08:10:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(222,1,'2019-03-02 08:16:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(223,1,'2019-03-02 08:22:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(224,1,'2019-03-02 08:23:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(225,1,'2019-03-02 08:23:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(226,1,'2019-03-02 08:25:07','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(227,1,'2019-03-02 08:26:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(228,1,'2019-03-02 08:27:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(229,1,'2019-03-02 08:31:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(230,1,'2019-03-02 08:31:54','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(231,1,'2019-03-02 08:55:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(232,1,'2019-03-02 09:08:03','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(233,1,'2019-03-02 09:24:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(234,1,'2019-03-02 10:13:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(235,1,'2019-03-02 10:22:20','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(236,1,'2019-03-02 10:27:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(237,1,'2019-03-02 12:48:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(238,1,'2019-03-02 12:56:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(239,1,'2019-03-02 13:02:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(240,1,'2019-03-02 13:13:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(241,1,'2019-03-02 13:16:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(242,1,'2019-03-02 13:19:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(243,1,'2019-03-02 13:29:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(244,1,'2019-03-02 13:40:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(245,1,'2019-03-02 13:51:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(246,1,'2019-03-02 13:54:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(247,1,'2019-03-02 13:55:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(248,1,'2019-03-02 13:55:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(249,1,'2019-03-02 14:00:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(250,1,'2019-03-02 14:03:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(251,1,'2019-03-02 14:08:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(252,1,'2019-03-02 14:15:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(253,1,'2019-03-02 14:20:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(254,1,'2019-03-02 14:26:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(255,1,'2019-03-02 14:32:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(256,1,'2019-03-02 16:42:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(257,1,'2019-03-02 16:51:06','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(258,1,'2019-03-02 16:53:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(259,1,'2019-03-02 16:53:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(260,1,'2019-03-02 16:53:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(261,1,'2019-03-02 16:54:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(262,1,'2019-03-02 17:00:03','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(263,1,'2019-03-02 17:05:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(264,1,'2019-03-02 17:06:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(265,1,'2019-03-02 17:07:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(266,1,'2019-03-02 17:07:55','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(267,1,'2019-03-02 17:13:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(268,1,'2019-03-02 17:13:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(269,1,'2019-03-02 17:19:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(270,1,'2019-03-02 17:26:03','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(271,1,'2019-03-02 17:32:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(272,1,'2019-03-02 17:32:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(273,1,'2019-03-02 17:33:27','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(274,1,'2019-03-02 17:34:38','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(275,1,'2019-03-02 17:34:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(276,1,'2019-03-02 17:35:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(277,1,'2019-03-02 17:36:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(278,1,'2019-03-02 17:41:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(279,1,'2019-03-02 17:43:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(280,1,'2019-03-02 18:00:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(281,1,'2019-03-02 18:05:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(282,1,'2019-03-02 18:09:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(283,1,'2019-03-02 18:11:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(284,1,'2019-03-02 18:13:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(285,1,'2019-03-02 18:14:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(286,1,'2019-03-02 18:14:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(287,1,'2019-03-02 18:15:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(288,1,'2019-03-02 18:27:03','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(289,1,'2019-03-02 18:30:27','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(290,1,'2019-03-02 18:33:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(291,1,'2019-03-02 18:37:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(292,1,'2019-03-02 18:40:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(293,1,'2019-03-02 18:40:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(294,1,'2019-03-02 18:55:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(295,1,'2019-03-02 18:56:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(296,1,'2019-03-02 18:59:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(297,1,'2019-03-03 06:02:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(298,1,'2019-03-03 06:04:31','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(299,1,'2019-03-03 06:06:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(300,1,'2019-03-03 07:34:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(301,1,'2019-03-03 08:03:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(302,1,'2019-03-03 08:18:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(303,1,'2019-03-03 08:26:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(304,1,'2019-03-03 08:27:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(305,1,'2019-03-03 08:28:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(306,1,'2019-03-03 08:28:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(307,1,'2019-03-03 08:33:22','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(308,1,'2019-03-03 08:33:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(309,1,'2019-03-03 08:36:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(310,1,'2019-03-03 08:38:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(311,1,'2019-03-03 08:39:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(312,1,'2019-03-03 08:39:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(313,1,'2019-03-03 08:40:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(314,1,'2019-03-03 08:41:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(315,1,'2019-03-03 08:44:35','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(316,1,'2019-03-03 08:44:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(317,1,'2019-03-03 08:46:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(318,1,'2019-03-03 08:57:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(319,1,'2019-03-03 09:01:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(320,1,'2019-03-03 09:01:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(321,1,'2019-03-03 09:02:22','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(322,1,'2019-03-03 09:02:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(323,1,'2019-03-03 09:06:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(324,1,'2019-03-03 09:19:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(325,1,'2019-03-03 09:42:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(326,1,'2019-03-03 09:43:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(327,1,'2019-03-03 09:45:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(328,1,'2019-03-03 09:48:07','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(329,1,'2019-03-03 09:50:10','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(330,1,'2019-03-03 10:31:54','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(331,1,'2019-03-03 10:57:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(332,1,'2019-03-03 11:05:20','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(333,1,'2019-03-03 11:32:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(334,1,'2019-03-03 11:34:38','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(335,1,'2019-03-03 11:34:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(336,1,'2019-03-03 11:35:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(337,1,'2019-03-03 11:35:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(338,1,'2019-03-03 11:36:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(339,1,'2019-03-03 11:36:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(340,1,'2019-03-03 11:36:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(341,1,'2019-03-03 15:10:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(342,1,'2019-03-03 15:22:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(343,1,'2019-03-03 15:35:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(344,1,'2019-03-03 15:37:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(345,1,'2019-03-03 15:37:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(346,1,'2019-03-03 16:03:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(347,1,'2019-03-03 16:14:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(348,1,'2019-03-03 16:51:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(349,1,'2019-03-03 16:56:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(350,1,'2019-03-03 16:57:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(351,1,'2019-03-03 17:30:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(352,1,'2019-03-03 17:45:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(353,1,'2019-03-03 17:47:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(354,1,'2019-03-03 17:48:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(355,1,'2019-03-03 17:53:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(356,1,'2019-03-03 18:03:12','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(357,1,'2019-03-04 04:49:27','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(358,1,'2019-03-04 05:03:22','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(359,1,'2019-03-04 05:09:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(360,1,'2019-03-04 05:09:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(361,1,'2019-03-04 05:18:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(362,1,'2019-03-04 05:19:43','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(363,1,'2019-03-04 05:21:31','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(364,1,'2019-03-04 05:23:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(365,1,'2019-03-04 05:26:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(366,1,'2019-03-04 05:29:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(367,1,'2019-03-04 05:34:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(368,1,'2019-03-04 05:39:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(369,1,'2019-03-04 05:42:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(370,1,'2019-03-04 05:53:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(371,1,'2019-03-04 05:57:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(372,1,'2019-03-04 05:58:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(373,1,'2019-03-04 06:06:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(374,1,'2019-03-04 06:06:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(375,1,'2019-03-04 10:26:57','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(376,1,'2019-03-04 11:02:10','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(377,1,'2019-03-04 11:46:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(378,1,'2019-03-04 11:49:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(379,1,'2019-03-05 05:14:19','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(380,1,'2019-03-05 05:16:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(381,1,'2019-03-05 13:09:03','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(382,1,'2019-03-06 05:03:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(383,1,'2019-03-06 05:41:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(384,1,'2019-03-06 05:49:19','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(385,1,'2019-03-06 05:50:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(386,1,'2019-03-06 06:32:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(387,1,'2019-03-06 06:38:00','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(388,1,'2019-03-06 06:42:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(389,1,'2019-03-06 06:54:36','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(390,1,'2019-03-06 07:00:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(391,1,'2019-03-06 07:05:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(392,1,'2019-03-06 07:11:57','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(393,1,'2019-03-06 07:13:29','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(394,1,'2019-03-06 07:16:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(395,1,'2019-03-06 07:21:27','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(396,1,'2019-03-06 07:27:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(397,1,'2019-03-06 07:35:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(398,1,'2019-03-06 08:42:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(399,1,'2019-03-06 08:47:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(400,1,'2019-03-06 08:48:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(401,1,'2019-03-06 08:55:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(402,1,'2019-03-06 09:24:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(403,1,'2019-03-06 09:31:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(404,1,'2019-03-06 09:31:10','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(405,1,'2019-03-06 12:19:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(406,1,'2019-03-06 12:54:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(407,1,'2019-03-07 05:20:02','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(408,1,'2019-03-07 05:25:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(409,1,'2019-03-07 06:31:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(410,1,'2019-03-07 06:31:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(411,1,'2019-03-07 06:32:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(412,1,'2019-03-07 06:33:10','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(413,1,'2019-03-07 06:33:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(414,1,'2019-03-07 06:33:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(415,1,'2019-03-07 06:36:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(416,1,'2019-03-07 06:40:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(417,1,'2019-03-07 07:03:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(418,1,'2019-03-07 07:12:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(419,1,'2019-03-07 07:16:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(420,1,'2019-03-07 07:16:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(421,1,'2019-03-07 07:18:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(422,1,'2019-03-07 07:18:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(423,1,'2019-03-07 07:19:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(424,1,'2019-03-07 08:08:50','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(425,1,'2019-03-07 09:05:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(426,1,'2019-03-07 09:28:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(427,1,'2019-03-07 09:28:32','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(428,1,'2019-03-07 09:33:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(429,1,'2019-03-07 09:34:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(430,1,'2019-03-07 09:41:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(431,1,'2019-03-07 10:09:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(432,1,'2019-03-07 10:11:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(433,1,'2019-03-07 10:11:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(434,1,'2019-03-07 10:13:03','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(435,1,'2019-03-07 10:14:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(436,1,'2019-03-07 12:00:53','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(437,1,'2019-03-07 13:07:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(438,1,'2019-03-07 13:08:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(439,1,'2019-03-07 13:12:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(440,1,'2019-03-07 13:13:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(441,1,'2019-03-07 13:13:54','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(442,1,'2019-03-08 04:53:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(443,1,'2019-03-08 06:43:08','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(444,1,'2019-03-08 08:44:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(445,1,'2019-03-08 11:22:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(446,1,'2019-03-08 11:23:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(447,1,'2019-03-09 06:19:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(448,1,'2019-03-09 06:26:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(449,1,'2019-03-09 07:12:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(450,1,'2019-03-09 07:27:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(451,1,'2019-03-09 07:29:20','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(452,1,'2019-03-09 07:30:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(453,1,'2019-03-09 07:31:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(454,1,'2019-03-09 07:32:25','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(455,1,'2019-03-09 07:39:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(456,1,'2019-03-09 07:39:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(457,1,'2019-03-09 07:39:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(458,1,'2019-03-09 07:40:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(459,1,'2019-03-09 07:53:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(460,1,'2019-03-09 07:53:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(461,1,'2019-03-09 09:59:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(462,1,'2019-03-09 10:02:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(463,1,'2019-03-09 10:51:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(464,1,'2019-03-09 10:52:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(465,1,'2019-03-09 11:40:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(466,1,'2019-03-09 11:43:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(467,1,'2019-03-09 11:44:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(468,1,'2019-03-09 11:44:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(469,1,'2019-03-09 11:55:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(470,1,'2019-03-11 05:31:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(471,1,'2019-03-11 10:21:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(472,1,'2019-03-11 10:22:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(473,1,'2019-03-11 10:23:33','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(474,1,'2019-03-11 10:24:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(475,1,'2019-03-11 10:28:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(476,1,'2019-03-11 10:30:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(477,1,'2019-03-11 10:35:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(478,1,'2019-03-11 10:56:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(479,1,'2019-03-11 11:45:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(480,1,'2019-03-11 11:59:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(481,1,'2019-03-11 12:32:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(482,1,'2019-03-11 12:35:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(483,1,'2019-03-11 12:40:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(484,1,'2019-03-11 12:41:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(485,1,'2019-03-11 12:48:27','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(486,1,'2019-03-11 12:51:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(487,1,'2019-03-11 12:52:57','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(488,1,'2019-03-11 12:53:44','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(489,1,'2019-03-11 12:54:13','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(490,1,'2019-03-11 12:54:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(491,1,'2019-03-11 13:01:22','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(492,1,'2019-03-11 13:02:11','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(493,1,'2019-03-11 13:11:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(494,1,'2019-03-11 13:16:20','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(495,1,'2019-03-11 13:18:12','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(496,1,'2019-03-11 13:18:46','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(497,1,'2019-03-11 13:21:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(498,1,'2019-03-12 05:14:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(499,1,'2019-03-12 05:34:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(500,1,'2019-03-12 05:35:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(501,1,'2019-03-12 05:36:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(502,1,'2019-03-12 05:44:09','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(503,1,'2019-03-12 05:45:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(504,1,'2019-03-12 05:48:31','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(505,1,'2019-03-12 06:27:23','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(506,1,'2019-03-12 07:19:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(507,1,'2019-03-12 09:35:31','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(508,1,'2019-03-12 09:47:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(509,1,'2019-03-12 09:47:14','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(510,1,'2019-03-12 10:03:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(511,1,'2019-03-12 10:09:43','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(512,1,'2019-03-12 10:09:57','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(513,1,'2019-03-12 10:10:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(514,1,'2019-03-12 10:13:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(515,1,'2019-03-12 10:13:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(516,1,'2019-03-12 10:16:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(517,1,'2019-03-12 10:38:47','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(518,1,'2019-03-12 10:47:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(519,1,'2019-03-12 10:50:24','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(520,1,'2019-03-12 10:53:57','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(521,1,'2019-03-12 10:55:17','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(522,1,'2019-03-12 10:59:28','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(523,1,'2019-03-12 11:00:36','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(524,1,'2019-03-12 11:01:56','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(525,1,'2019-03-12 11:26:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(526,1,'2019-03-12 11:29:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(527,1,'2019-03-12 11:29:58','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(528,1,'2019-03-12 11:30:41','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(529,1,'2019-03-12 11:31:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(530,1,'2019-03-12 11:33:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(531,1,'2019-03-12 12:28:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(532,1,'2019-03-12 12:34:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(533,1,'2019-03-13 05:32:06','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(534,1,'2019-03-13 06:14:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(535,1,'2019-03-13 06:14:39','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(536,1,'2019-03-13 06:25:45','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(537,1,'2019-03-13 06:25:54','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(538,1,'2019-03-13 06:27:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(539,1,'2019-03-13 06:39:21','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(540,1,'2019-03-13 06:44:49','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(541,1,'2019-03-13 06:50:59','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(542,1,'2019-03-13 06:52:43','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(543,1,'2019-03-13 06:53:55','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(544,1,'2019-03-13 06:57:54','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(545,1,'2019-03-13 07:17:37','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(546,1,'2019-03-13 07:20:07','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(547,1,'2019-03-13 07:26:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(548,1,'2019-03-13 07:30:52','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(549,1,'2019-03-13 07:31:04','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(550,1,'2019-03-13 07:34:03','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(551,1,'2019-03-13 07:38:40','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(552,1,'2019-03-13 07:44:48','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(553,1,'2019-03-13 08:30:15','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(554,1,'2019-03-13 08:52:36','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(555,1,'2019-03-13 08:54:51','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(556,1,'2019-03-13 08:56:30','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(557,1,'2019-03-13 09:01:55','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(558,1,'2019-03-13 09:04:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(559,1,'2019-03-13 09:11:27','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(560,1,'2019-03-13 09:12:34','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(561,1,'2019-03-13 09:17:54','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(562,1,'2019-03-13 09:21:18','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(563,1,'2019-03-13 09:23:05','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(564,1,'2019-03-13 09:32:01','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(565,1,'2019-03-13 09:37:26','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(566,1,'2019-03-13 09:42:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(567,1,'2019-03-13 09:42:42','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(568,1,'2019-03-13 09:45:16','0:0:0:0:0:0:0:1','Chrome-56.0.2924.87','Unix'),(569,1,'2019-03-13 13:00:32','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(570,1,'2019-03-14 04:57:36','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(571,1,'2019-03-14 08:46:10','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(572,1,'2019-03-14 08:55:37','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(573,1,'2019-03-14 08:56:50','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(574,1,'2019-03-14 08:58:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(575,1,'2019-03-14 09:08:52','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(576,1,'2019-03-14 09:11:59','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(577,1,'2019-03-14 09:16:54','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(578,1,'2019-03-14 09:17:06','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(579,1,'2019-03-14 09:18:07','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(580,1,'2019-03-14 09:20:56','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(581,1,'2019-03-14 09:24:04','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(582,1,'2019-03-14 09:27:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(583,1,'2019-03-14 09:27:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(584,1,'2019-03-14 09:29:12','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(585,1,'2019-03-14 09:31:08','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(586,1,'2019-03-14 09:33:33','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(587,1,'2019-03-14 09:45:33','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(588,1,'2019-03-14 09:48:24','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(589,1,'2019-03-14 09:49:37','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(590,1,'2019-03-14 09:52:20','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(591,1,'2019-03-14 09:54:57','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(592,1,'2019-03-14 09:57:17','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(593,1,'2019-03-14 10:04:21','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(594,1,'2019-03-14 10:05:25','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(595,1,'2019-03-14 10:05:43','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(596,1,'2019-03-14 10:06:34','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(597,1,'2019-03-14 10:06:35','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(598,1,'2019-03-14 10:08:46','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(599,1,'2019-03-14 10:08:46','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(600,1,'2019-03-14 10:28:20','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(601,1,'2019-03-14 10:28:53','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(602,1,'2019-03-14 10:29:01','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(603,1,'2019-03-14 10:32:14','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(604,5,'2019-03-14 11:46:49','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(605,5,'2019-03-14 11:48:40','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(606,5,'2019-03-14 11:51:00','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(607,5,'2019-03-14 11:51:54','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(608,5,'2019-03-14 11:52:16','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(609,5,'2019-03-14 11:54:20','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(610,1,'2019-03-14 11:55:18','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(611,1,'2019-03-14 11:59:41','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(612,1,'2019-03-14 12:06:04','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(613,5,'2019-03-14 12:12:40','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(614,5,'2019-03-14 12:29:10','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(615,5,'2019-03-14 12:29:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(616,5,'2019-03-14 12:34:42','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(617,5,'2019-03-14 12:36:24','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(618,5,'2019-03-14 12:38:50','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(619,5,'2019-03-14 12:53:24','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(620,5,'2019-03-14 12:55:01','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(621,5,'2019-03-14 12:57:42','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(622,5,'2019-03-14 13:00:10','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(623,5,'2019-03-14 13:06:07','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(624,5,'2019-03-14 13:08:15','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(625,5,'2019-03-14 13:10:24','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(626,5,'2019-03-14 13:11:54','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(627,5,'2019-03-14 13:12:14','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(628,5,'2019-03-14 13:12:57','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(629,5,'2019-03-14 13:13:16','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(630,5,'2019-03-14 13:14:10','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(631,5,'2019-03-14 13:15:22','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(632,5,'2019-03-14 13:23:36','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(633,5,'2019-03-14 13:24:09','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(634,5,'2019-03-14 13:26:17','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(635,5,'2019-03-14 13:28:24','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(636,5,'2019-03-14 13:37:49','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(637,5,'2019-03-14 13:45:05','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(638,5,'2019-03-14 13:46:05','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(639,5,'2019-03-14 13:47:41','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(640,1,'2019-03-15 05:58:50','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(641,5,'2019-03-15 06:23:55','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(642,1,'2019-03-15 06:32:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(643,1,'2019-03-15 06:34:32','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(644,1,'2019-03-15 06:51:35','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(645,1,'2019-03-15 06:52:04','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(646,1,'2019-03-15 06:53:13','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(647,1,'2019-03-15 06:55:00','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(648,1,'2019-03-15 06:58:24','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(649,1,'2019-03-15 07:06:51','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(650,5,'2019-03-15 07:10:17','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(651,1,'2019-03-15 07:14:23','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(652,5,'2019-03-15 07:19:01','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(653,1,'2019-03-15 07:25:03','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(654,1,'2019-03-15 07:29:03','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(655,1,'2019-03-15 07:29:37','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(656,5,'2019-03-15 07:31:30','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(657,1,'2019-03-15 07:44:07','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(658,1,'2019-03-15 07:45:27','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(659,1,'2019-03-15 07:46:06','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(660,1,'2019-03-15 07:48:02','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(661,1,'2019-03-15 07:49:34','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(662,5,'2019-03-15 07:51:16','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(663,1,'2019-03-15 07:52:08','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(664,5,'2019-03-15 07:52:18','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(665,1,'2019-03-15 07:54:47','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(666,5,'2019-03-15 07:54:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(667,1,'2019-03-15 07:55:52','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(668,1,'2019-03-15 07:57:22','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(669,1,'2019-03-15 07:58:45','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(670,5,'2019-03-15 07:58:54','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(671,5,'2019-03-15 07:59:25','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(672,1,'2019-03-15 08:01:04','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(673,1,'2019-03-15 08:02:37','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(674,1,'2019-03-15 08:03:39','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(675,5,'2019-03-15 08:04:23','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(676,1,'2019-03-15 08:07:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(677,5,'2019-03-15 08:08:48','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(678,1,'2019-03-15 08:09:36','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(679,5,'2019-03-15 08:10:34','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(680,5,'2019-03-15 08:10:37','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(681,5,'2019-03-15 08:12:56','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(682,5,'2019-03-15 08:37:12','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(683,5,'2019-03-15 08:38:47','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(684,5,'2019-03-15 08:40:37','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(685,5,'2019-03-15 08:42:05','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(686,5,'2019-03-15 08:45:04','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(687,5,'2019-03-15 08:45:11','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(688,5,'2019-03-15 08:45:31','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(689,5,'2019-03-15 08:45:39','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(690,5,'2019-03-15 08:45:43','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(691,5,'2019-03-15 08:46:09','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(692,5,'2019-03-15 08:47:30','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(693,5,'2019-03-15 08:48:07','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(694,5,'2019-03-15 08:49:38','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(695,5,'2019-03-15 08:52:43','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(696,5,'2019-03-15 08:53:09','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(697,5,'2019-03-15 08:53:57','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(698,5,'2019-03-15 08:54:54','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(699,5,'2019-03-15 08:56:00','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(700,5,'2019-03-15 08:56:32','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(701,5,'2019-03-15 08:56:46','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(702,5,'2019-03-15 08:56:51','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(703,5,'2019-03-15 08:57:41','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(704,5,'2019-03-15 08:58:57','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(705,5,'2019-03-15 08:59:13','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(706,5,'2019-03-15 09:34:49','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(707,5,'2019-03-15 09:35:17','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(708,5,'2019-03-15 09:36:20','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(709,5,'2019-03-15 09:38:35','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(710,5,'2019-03-15 09:40:29','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(711,5,'2019-03-15 09:40:44','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(712,5,'2019-03-15 09:41:28','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(713,5,'2019-03-15 09:41:29','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(714,5,'2019-03-15 09:42:37','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(715,5,'2019-03-15 09:42:55','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(716,5,'2019-03-15 09:43:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(717,5,'2019-03-15 09:45:03','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(718,5,'2019-03-15 09:45:19','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(719,5,'2019-03-15 09:45:39','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(720,5,'2019-03-15 09:45:58','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(721,5,'2019-03-15 09:47:40','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(722,5,'2019-03-15 09:48:49','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix'),(723,5,'2019-03-15 09:50:43','0:0:0:0:0:0:0:1','Chrome-69.0.3497.92','Unix');
/*!40000 ALTER TABLE `user_login_activity_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_question_attempt`
--

DROP TABLE IF EXISTS `user_question_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_question_attempt` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_section_attempt_pk` int(11) NOT NULL,
  `qbis_quest_question_id` int(11) unsigned NOT NULL,
  `marks` float NOT NULL DEFAULT '0',
  `is_correct` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-incorrect, 1-correct',
  `is_favorite` tinyint(1) DEFAULT NULL COMMENT '0 for not , 1 for yes',
  `notes` varchar(255) DEFAULT NULL COMMENT 'user comments about test',
  `answer_value` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`pk`),
  KEY `fk_table1_user_test_attempt1_idx` (`user_section_attempt_pk`),
  KEY `fk_table1_qbis_quest1_idx` (`qbis_quest_question_id`),
  CONSTRAINT `fk_table1_qbis_quest1` FOREIGN KEY (`qbis_quest_question_id`) REFERENCES `qbis_quest` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_question_attempt_ibfk_1` FOREIGN KEY (`user_section_attempt_pk`) REFERENCES `user_section_attempt` (`pk`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_question_attempt`
--

LOCK TABLES `user_question_attempt` WRITE;
/*!40000 ALTER TABLE `user_question_attempt` DISABLE KEYS */;
INSERT INTO `user_question_attempt` VALUES (1,1,1,5,1,NULL,NULL,NULL),(2,1,2,1.25,0,NULL,NULL,NULL),(3,2,1,5,1,NULL,NULL,NULL),(4,2,2,1.25,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_question_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_question_favorites`
--

DROP TABLE IF EXISTS `user_question_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_question_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `is_favorites` tinyint(1) DEFAULT '0' COMMENT '0 for not, 1 for yes',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_question_favorites_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `qbis_quest` (`question_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_question_favorites_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_question_favorites`
--

LOCK TABLES `user_question_favorites` WRITE;
/*!40000 ALTER TABLE `user_question_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_question_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_questions_notes`
--

DROP TABLE IF EXISTS `user_questions_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_questions_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `test_attempt_id` int(11) NOT NULL,
  `note_text` varchar(2000) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_questions_notes`
--

LOCK TABLES `user_questions_notes` WRITE;
/*!40000 ALTER TABLE `user_questions_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_questions_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_section_attempt`
--

DROP TABLE IF EXISTS `user_section_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_section_attempt` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_test_attempt_pk` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `time_taken` int(11) DEFAULT NULL,
  `obtain_marks` float NOT NULL DEFAULT '0',
  `correct_que_attempt` int(4) NOT NULL DEFAULT '0',
  `wrong_que_attempt` int(4) DEFAULT '0',
  `unattempt_que` int(4) DEFAULT '0',
  `correct_que_score` float DEFAULT '0',
  `wrong_que_score` float DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inprogress, 1-submit',
  PRIMARY KEY (`pk`),
  KEY `user_test_attempt_pk` (`user_test_attempt_pk`),
  KEY `section_id` (`section_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_section_attempt_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_section_attempt_ibfk_2` FOREIGN KEY (`user_test_attempt_pk`) REFERENCES `user_test_attempt` (`pk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_section_attempt_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `qbis_section` (`section_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_section_attempt`
--

LOCK TABLES `user_section_attempt` WRITE;
/*!40000 ALTER TABLE `user_section_attempt` DISABLE KEYS */;
INSERT INTO `user_section_attempt` VALUES (1,1,1,1,0,3.75,1,1,0,5,1.25,1),(2,2,1,1,0,3.75,1,1,0,5,1.25,1);
/*!40000 ALTER TABLE `user_section_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_test_attempt`
--

DROP TABLE IF EXISTS `user_test_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_test_attempt` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `test_id` int(11) NOT NULL,
  `time_taken` int(11) DEFAULT NULL COMMENT 'In second',
  `obtain_marks` float NOT NULL DEFAULT '0',
  `test_given_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `correct_que_attempt` int(4) NOT NULL DEFAULT '0',
  `wrong_que_attempt` int(4) DEFAULT NULL,
  `unattampt_que` int(4) DEFAULT NULL,
  `correct_que_score` float DEFAULT NULL,
  `wrong_que_score` float DEFAULT NULL,
  `ststus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inprogress, 1-submit',
  `answer_json` text,
  PRIMARY KEY (`pk`),
  KEY `fk_user_test_attempt_qbis_users1_idx` (`user_id`),
  KEY `fk_user_test_attempt_qbis_test1_idx` (`test_id`),
  CONSTRAINT `fk_user_test_attempt_qbis_test1` FOREIGN KEY (`test_id`) REFERENCES `qbis_test` (`test_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_test_attempt_qbis_users1` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_test_attempt`
--

LOCK TABLES `user_test_attempt` WRITE;
/*!40000 ALTER TABLE `user_test_attempt` DISABLE KEYS */;
INSERT INTO `user_test_attempt` VALUES (1,1,1,6,3.75,'2019-02-22 12:46:37',1,1,0,5,1.25,1,'{\"userTestAttemptId\":1,\"userId\":1,\"testId\":1,\"testTime\":0,\"testStatus\":0,\"totalQuestion\":2,\"sectionlist\":[{\"sectionId\":1,\"sectionTime\":\"0\",\"totalQuestions\":2,\"sectionStatus\":0,\"questionList\":[]}]}'),(2,1,1,8,3.75,'2019-02-28 09:26:14',1,1,0,5,1.25,1,'{\"userTestAttemptId\":2,\"userId\":1,\"testId\":1,\"testTime\":0,\"testStatus\":0,\"totalQuestion\":2,\"sectionlist\":[{\"sectionId\":1,\"sectionTime\":\"0\",\"totalQuestions\":2,\"sectionStatus\":0,\"questionList\":[]}]}');
/*!40000 ALTER TABLE `user_test_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_test_mapping`
--

DROP TABLE IF EXISTS `user_test_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_test_mapping` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `test_id` int(11) NOT NULL,
  `mapping_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pk`),
  KEY `fk_user_test_mapping_qbis_users1_idx` (`user_id`),
  KEY `fk_user_test_mapping_qbis_test1_idx` (`test_id`),
  CONSTRAINT `fk_user_test_mapping_qbis_test1` FOREIGN KEY (`test_id`) REFERENCES `qbis_test` (`test_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_test_mapping_qbis_users1` FOREIGN KEY (`user_id`) REFERENCES `qbis_users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_test_mapping`
--

LOCK TABLES `user_test_mapping` WRITE;
/*!40000 ALTER TABLE `user_test_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_test_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_menu`
--

DROP TABLE IF EXISTS `web_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_menu` (
  `pk` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_service` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_menu`
--

LOCK TABLES `web_menu` WRITE;
/*!40000 ALTER TABLE `web_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-15 15:41:58
