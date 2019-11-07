-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: tango
-- ------------------------------------------------------
-- Server version	5.5.52

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_address`
--

DROP TABLE IF EXISTS `access_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_address` (
  `user` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `netmask` varchar(255) DEFAULT 'FF.FF.FF.FF',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_address`
--

LOCK TABLES `access_address` WRITE;
/*!40000 ALTER TABLE `access_address` DISABLE KEYS */;
INSERT INTO `access_address` VALUES ('*','*.*.*.*','FF.FF.FF.FF','2006-08-24 13:12:21','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `access_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_device`
--

DROP TABLE IF EXISTS `access_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_device` (
  `user` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `rights` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_device`
--

LOCK TABLES `access_device` WRITE;
/*!40000 ALTER TABLE `access_device` DISABLE KEYS */;
INSERT INTO `access_device` VALUES ('*','*/*/*','write','2006-08-24 13:12:21','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `access_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_alias`
--

DROP TABLE IF EXISTS `attribute_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_alias` (
  `alias` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `device` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_attribute_alias` (`alias`(64),`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_alias`
--

LOCK TABLES `attribute_alias` WRITE;
/*!40000 ALTER TABLE `attribute_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_class`
--

DROP TABLE IF EXISTS `attribute_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_attribute_class` (`class`(64),`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_class`
--

LOCK TABLES `attribute_class` WRITE;
/*!40000 ALTER TABLE `attribute_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_attribute_history_id`
--

DROP TABLE IF EXISTS `class_attribute_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_attribute_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_attribute_history_id`
--

LOCK TABLES `class_attribute_history_id` WRITE;
/*!40000 ALTER TABLE `class_attribute_history_id` DISABLE KEYS */;
INSERT INTO `class_attribute_history_id` VALUES (0);
/*!40000 ALTER TABLE `class_attribute_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_history_id`
--

DROP TABLE IF EXISTS `class_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_history_id`
--

LOCK TABLES `class_history_id` WRITE;
/*!40000 ALTER TABLE `class_history_id` DISABLE KEYS */;
INSERT INTO `class_history_id` VALUES (28);
/*!40000 ALTER TABLE `class_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_pipe_history_id`
--

DROP TABLE IF EXISTS `class_pipe_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_pipe_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_pipe_history_id`
--

LOCK TABLES `class_pipe_history_id` WRITE;
/*!40000 ALTER TABLE `class_pipe_history_id` DISABLE KEYS */;
INSERT INTO `class_pipe_history_id` VALUES (0);
/*!40000 ALTER TABLE `class_pipe_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `name` varchar(255) NOT NULL DEFAULT 'nada',
  `alias` varchar(255) DEFAULT NULL,
  `domain` varchar(85) NOT NULL DEFAULT 'nada',
  `family` varchar(85) NOT NULL DEFAULT 'nada',
  `member` varchar(85) NOT NULL DEFAULT 'nada',
  `exported` int(11) DEFAULT '0',
  `ior` text,
  `host` varchar(255) NOT NULL DEFAULT 'nada',
  `server` varchar(255) NOT NULL DEFAULT 'nada',
  `pid` int(11) DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT 'nada',
  `version` varchar(8) NOT NULL DEFAULT 'nada',
  `started` datetime DEFAULT NULL,
  `stopped` datetime DEFAULT NULL,
  `comment` text,
  KEY `name` (`name`(64),`alias`(64))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('sys/database/2',NULL,'sys','database','2',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000a5000000010102000b0000003137322e31392e302e330000102700000800000064617461626173650300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303031372d3135373331323331343800','4e77e72456b6','DataBaseds/2',17,'DataBase','5','2019-11-07 10:39:08','0000-00-00 00:00:00','nada'),('dserver/DataBaseds/2',NULL,'dserver','DataBaseds','2',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000b1000000010102000b0000003137322e31392e302e3300001027000014000000647365727665722f646174616261736564732f320300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303031372d3135373331323331343800','4e77e72456b6','DataBaseds/2',17,'DServer','5','2019-11-07 10:39:08','0000-00-00 00:00:00','nada'),('sys/tg_test/1',NULL,'sys','tg_test','1',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000ad000000010102000b0000003137322e31392e302e33000067d600000e000000fe4ef4c35d00000036000000000000000300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303035342d3135373331323331353000','4e77e72456b6','TangoTest/test',54,'TangoTest','5','2019-11-07 10:39:10','2019-11-06 15:24:08','nada'),('dserver/TangoTest/test',NULL,'dserver','TangoTest','test',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000ad000000010102000b0000003137322e31392e302e33000067d600000e000000fe4ef4c35d00000036000000000100000300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303035342d3135373331323331353000','4e77e72456b6','TangoTest/test',54,'DServer','5','2019-11-07 10:39:10','2019-11-06 15:24:08','nada'),('sys/access_control/1',NULL,'sys','access_control','1',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000ad000000010102000b0000003137322e31392e302e330000a59800000e000000fe4ef4c35d00000035000000000000000300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303035332d3135373331323331353000','4e77e72456b6','TangoAccessControl/1',53,'TangoAccessControl','5','2019-11-07 10:39:10','0000-00-00 00:00:00','nada'),('dserver/TangoAccessControl/1',NULL,'dserver','TangoAccessControl','1',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000ad000000010102000b0000003137322e31392e302e330000a59800000e000000fe4ef4c35d00000035000000000100000300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303035332d3135373331323331353000','4e77e72456b6','TangoAccessControl/1',53,'DServer','5','2019-11-07 10:39:10','0000-00-00 00:00:00','nada'),('tango/admin/4e77e72456b6',NULL,'tango','admin','4e77e72456b6',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000ad000000010102000b0000003137322e31392e302e33000091a500000e000000fe4ef4c35d00000034000000000000000300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303035322d3135373331323331353000','4e77e72456b6','Starter/4e77e72456b6',52,'Starter','5','2019-11-07 10:39:16',NULL,NULL),('dserver/Starter/4e77e72456b6',NULL,'dserver','Starter','4e77e72456b6',1,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000ad000000010102000b0000003137322e31392e302e33000091a500000e000000fe4ef4c35d00000034000000000100000300000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000254544141000000010000000d00000034653737653732343536623600000000250000002f746d702f6f6d6e692d74616e676f2f3030303030303035322d3135373331323331353000','4e77e72456b6','Starter/4e77e72456b6',52,'DServer','5','2019-11-07 10:39:16',NULL,NULL);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_attribute_history_id`
--

DROP TABLE IF EXISTS `device_attribute_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_attribute_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_attribute_history_id`
--

LOCK TABLES `device_attribute_history_id` WRITE;
/*!40000 ALTER TABLE `device_attribute_history_id` DISABLE KEYS */;
INSERT INTO `device_attribute_history_id` VALUES (0);
/*!40000 ALTER TABLE `device_attribute_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_history_id`
--

DROP TABLE IF EXISTS `device_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_history_id`
--

LOCK TABLES `device_history_id` WRITE;
/*!40000 ALTER TABLE `device_history_id` DISABLE KEYS */;
INSERT INTO `device_history_id` VALUES (4);
/*!40000 ALTER TABLE `device_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_pipe_history_id`
--

DROP TABLE IF EXISTS `device_pipe_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_pipe_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_pipe_history_id`
--

LOCK TABLES `device_pipe_history_id` WRITE;
/*!40000 ALTER TABLE `device_pipe_history_id` DISABLE KEYS */;
INSERT INTO `device_pipe_history_id` VALUES (0);
/*!40000 ALTER TABLE `device_pipe_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `name` varchar(255) DEFAULT NULL,
  `exported` int(11) DEFAULT NULL,
  `ior` text,
  `host` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `version` varchar(8) DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `stopped` datetime DEFAULT NULL,
  KEY `index_name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_history_id`
--

DROP TABLE IF EXISTS `object_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_history_id`
--

LOCK TABLES `object_history_id` WRITE;
/*!40000 ALTER TABLE `object_history_id` DISABLE KEYS */;
INSERT INTO `object_history_id` VALUES (0);
/*!40000 ALTER TABLE `object_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `object` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_name` (`object`(64),`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_class`
--

DROP TABLE IF EXISTS `property_attribute_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_property_attribute_class` (`class`(64),`attribute`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_class`
--

LOCK TABLES `property_attribute_class` WRITE;
/*!40000 ALTER TABLE `property_attribute_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_class_hist`
--

DROP TABLE IF EXISTS `property_attribute_class_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_class_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_class` (`class`),
  KEY `index_attribute` (`attribute`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_class_hist`
--

LOCK TABLES `property_attribute_class_hist` WRITE;
/*!40000 ALTER TABLE `property_attribute_class_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_class_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_device`
--

DROP TABLE IF EXISTS `property_attribute_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_device` (
  `device` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_property_attribute_device` (`device`(64),`attribute`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_device`
--

LOCK TABLES `property_attribute_device` WRITE;
/*!40000 ALTER TABLE `property_attribute_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_device_hist`
--

DROP TABLE IF EXISTS `property_attribute_device_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_device_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_device` (`device`),
  KEY `index_attribute` (`attribute`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_device_hist`
--

LOCK TABLES `property_attribute_device_hist` WRITE;
/*!40000 ALTER TABLE `property_attribute_device_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_device_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_class`
--

DROP TABLE IF EXISTS `property_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_property` (`class`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_class`
--

LOCK TABLES `property_class` WRITE;
/*!40000 ALTER TABLE `property_class` DISABLE KEYS */;
INSERT INTO `property_class` VALUES ('Database','AllowedAccessCmd',1,'DbGetServerInfo','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',2,'DbGetServerNameList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',3,'DbGetInstanceNameList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',4,'DbGetDeviceServerClassList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',5,'DbGetDeviceList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',6,'DbGetDeviceDomainList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',7,'DbGetDeviceFamilyList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',8,'DbGetDeviceMemberList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',9,'DbGetClassList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',10,'DbGetDeviceAliasList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',11,'DbGetObjectList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',12,'DbGetPropertyList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',13,'DbGetProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',14,'DbGetClassPropertyList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',15,'DbGetClassProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',16,'DbGetDevicePropertyList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',17,'DbGetDeviceProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',18,'DbGetClassAttributeList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',19,'DbGetDeviceAttributeProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',20,'DbGetDeviceAttributeProperty2','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',21,'DbGetLoggingLevel','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',22,'DbGetAliasDevice','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',23,'DbGetClassForDevice','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',24,'DbGetClassInheritanceForDevice','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',25,'DbGetDataForServerCache','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',26,'DbInfo','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',27,'DbGetClassAttributeProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',28,'DbGetClassAttributeProperty2','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',29,'DbMysqlSelect','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',30,'DbGetDeviceInfo','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',31,'DbGetDeviceWideList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',32,'DbImportEvent','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',33,'DbGetDeviceAlias','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',34,'DbGetCSDbServerList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',35,'DbGetDeviceClassList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',36,'DbGetDeviceExportedList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',37,'DbGetHostServerList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',38,'DbGetAttributeAlias2','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',39,'DbGetAliasAttribute','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',40,'DbGetClassPipeProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',41,'DbGetDevicePipeProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',42,'DbGetClassPipeList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',43,'DbGetDevicePipeList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',44,'DbGetAttributeAliasList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Database','AllowedAccessCmd',45,'DbGetForwardedAttributeListForDevice','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',1,'QueryClass','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',2,'QueryDevice','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',3,'EventSubscriptionChange','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',4,'DevPollStatus','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',5,'GetLoggingLevel','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',6,'GetLoggingTarget','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',7,'QueryWizardDevProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',8,'QueryWizardClassProperty','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',9,'QuerySubDevice','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('DServer','AllowedAccessCmd',10,'ZMQEventSubscriptionChange','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Starter','AllowedAccessCmd',1,'DevReadLog','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Starter','AllowedAccessCmd',2,'DevStart','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Starter','AllowedAccessCmd',3,'DevGetRunningServers','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Starter','AllowedAccessCmd',4,'DevGetStopServers','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('Starter','AllowedAccessCmd',5,'UpdateServerList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('TangoAccessControl','AllowedAccessCmd',1,'GetUsers','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('TangoAccessControl','AllowedAccessCmd',2,'GetAddressByUser','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('TangoAccessControl','AllowedAccessCmd',3,'GetDeviceByUser','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('TangoAccessControl','AllowedAccessCmd',4,'GetAccess','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('TangoAccessControl','AllowedAccessCmd',5,'GetAllowedCommands','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('TangoAccessControl','AllowedAccessCmd',6,'GetAllowedCommandClassList','2019-11-06 13:45:46','2019-11-06 13:45:46',NULL),('TangoTest','ProjectTitle',1,'TANGO Device Server for testing generic clients','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoTest','Description',2,'each TANGO data type (i.e. each command returns an exact copy of <argin>).','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoTest','Description',1,'A device to test generic clients. It offers a \"echo\" like command for','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoTest','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoTest','InheritedFrom',1,'TANGO_BASE_CLASS','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','ProjectTitle',1,'Tango Access Control Management','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','Description',5,'It implements also commands used by client API to check access for specified user, device and address.<Br>','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','Description',4,'It implements commands for tool to defines access for users, devices and IP addresses.<Br>','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','Description',2,'<Br>','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','Description',3,'This class defines how to manage the TANGO access control.<Br>','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','Description',1,'This class is a conceate class inherited from AccessControl abstract class.<Br>','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','InheritedFrom',1,'Tango::Device_4Impl','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('Starter','ProjectTitle',1,'Starter for Tango Administration','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('Starter','Description',2,'It is able to start or stop and to report the status of these components.','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('Starter','Description',1,'This device server is able to control <b>Tango</b> components (database, device servers, clients...).','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('Starter','svn_location',1,'https://tango-cs.svn.sourceforge.net/svnroot/tango-cs/classes/cpp/starter $','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('Starter','cvs_tag',1,'Starter-Release-6.8','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('Starter','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('Starter','InheritedFrom',1,'TANGO_BASE_CLASS','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL),('TangoAccessControl','Description',6,'And it implements register and unregister it as TANGO service.','2019-11-07 10:39:10','2019-11-07 10:39:10',NULL);
/*!40000 ALTER TABLE `property_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_class_hist`
--

DROP TABLE IF EXISTS `property_class_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_class_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_class` (`class`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_class_hist`
--

LOCK TABLES `property_class_hist` WRITE;
/*!40000 ALTER TABLE `property_class_hist` DISABLE KEYS */;
INSERT INTO `property_class_hist` VALUES (1,'2019-11-06 13:45:51','TangoTest','ProjectTitle',1,'TANGO Device Server for testing generic clients'),(2,'2019-11-06 13:45:51','TangoTest','Description',1,'A device to test generic clients. It offers a \"echo\" like command for'),(2,'2019-11-06 13:45:51','TangoTest','Description',2,'each TANGO data type (i.e. each command returns an exact copy of <argin>).'),(3,'2019-11-06 13:45:51','TangoTest','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/'),(4,'2019-11-06 13:45:51','TangoTest','InheritedFrom',1,'TANGO_BASE_CLASS'),(5,'2019-11-06 13:45:51','TangoAccessControl','ProjectTitle',1,'Tango Access Control Management'),(6,'2019-11-06 13:45:51','TangoAccessControl','Description',1,'This class is a conceate class inherited from AccessControl abstract class.<Br>'),(6,'2019-11-06 13:45:51','TangoAccessControl','Description',2,'<Br>'),(6,'2019-11-06 13:45:51','TangoAccessControl','Description',3,'This class defines how to manage the TANGO access control.<Br>'),(6,'2019-11-06 13:45:51','TangoAccessControl','Description',4,'It implements commands for tool to defines access for users, devices and IP addresses.<Br>'),(6,'2019-11-06 13:45:51','TangoAccessControl','Description',5,'It implements also commands used by client API to check access for specified user, device and address.<Br>'),(6,'2019-11-06 13:45:51','TangoAccessControl','Description',6,'And it implements register and unregister it as TANGO service.'),(7,'2019-11-06 13:45:51','TangoAccessControl','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/'),(8,'2019-11-06 13:45:51','TangoAccessControl','InheritedFrom',1,'Tango::Device_4Impl'),(9,'2019-11-06 13:45:51','Starter','ProjectTitle',1,'Starter for Tango Administration'),(10,'2019-11-06 13:45:51','Starter','Description',1,'This device server is able to control <b>Tango</b> components (database, device servers, clients...).'),(10,'2019-11-06 13:45:51','Starter','Description',2,'It is able to start or stop and to report the status of these components.'),(11,'2019-11-06 13:45:51','Starter','svn_location',1,'https://tango-cs.svn.sourceforge.net/svnroot/tango-cs/classes/cpp/starter $'),(12,'2019-11-06 13:45:51','Starter','cvs_tag',1,'Starter-Release-6.8'),(13,'2019-11-06 13:45:51','Starter','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/'),(14,'2019-11-06 13:45:51','Starter','InheritedFrom',1,'TANGO_BASE_CLASS'),(15,'2019-11-07 10:39:10','TangoAccessControl','ProjectTitle',1,'Tango Access Control Management'),(16,'2019-11-07 10:39:10','TangoAccessControl','Description',1,'This class is a conceate class inherited from AccessControl abstract class.<Br>'),(16,'2019-11-07 10:39:10','TangoAccessControl','Description',2,'<Br>'),(16,'2019-11-07 10:39:10','TangoAccessControl','Description',3,'This class defines how to manage the TANGO access control.<Br>'),(16,'2019-11-07 10:39:10','TangoAccessControl','Description',4,'It implements commands for tool to defines access for users, devices and IP addresses.<Br>'),(16,'2019-11-07 10:39:10','TangoAccessControl','Description',5,'It implements also commands used by client API to check access for specified user, device and address.<Br>'),(16,'2019-11-07 10:39:10','TangoAccessControl','Description',6,'And it implements register and unregister it as TANGO service.'),(17,'2019-11-07 10:39:10','TangoAccessControl','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/'),(18,'2019-11-07 10:39:10','TangoAccessControl','InheritedFrom',1,'Tango::Device_4Impl'),(19,'2019-11-07 10:39:10','TangoTest','ProjectTitle',1,'TANGO Device Server for testing generic clients'),(20,'2019-11-07 10:39:10','TangoTest','Description',1,'A device to test generic clients. It offers a \"echo\" like command for'),(20,'2019-11-07 10:39:10','TangoTest','Description',2,'each TANGO data type (i.e. each command returns an exact copy of <argin>).'),(21,'2019-11-07 10:39:10','TangoTest','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/'),(22,'2019-11-07 10:39:10','TangoTest','InheritedFrom',1,'TANGO_BASE_CLASS'),(23,'2019-11-07 10:39:10','Starter','ProjectTitle',1,'Starter for Tango Administration'),(24,'2019-11-07 10:39:10','Starter','Description',1,'This device server is able to control <b>Tango</b> components (database, device servers, clients...).'),(24,'2019-11-07 10:39:10','Starter','Description',2,'It is able to start or stop and to report the status of these components.'),(25,'2019-11-07 10:39:10','Starter','svn_location',1,'https://tango-cs.svn.sourceforge.net/svnroot/tango-cs/classes/cpp/starter $'),(26,'2019-11-07 10:39:10','Starter','cvs_tag',1,'Starter-Release-6.8'),(27,'2019-11-07 10:39:10','Starter','doc_url',1,'http://www.esrf.eu/computing/cs/tango/tango_doc/ds_doc/'),(28,'2019-11-07 10:39:10','Starter','InheritedFrom',1,'TANGO_BASE_CLASS');
/*!40000 ALTER TABLE `property_class_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_device`
--

DROP TABLE IF EXISTS `property_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_device` (
  `device` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `family` varchar(255) NOT NULL DEFAULT '',
  `member` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_resource` (`device`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_device`
--

LOCK TABLES `property_device` WRITE;
/*!40000 ALTER TABLE `property_device` DISABLE KEYS */;
INSERT INTO `property_device` VALUES ('tango/admin/4e77e72456b6','polled_attr','','','',1,'notifdstate','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',2,'1000','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',3,'hoststate','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',4,'1000','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',5,'runningservers','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',6,'1000','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',7,'stoppedservers','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',8,'1000','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',9,'servers','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',10,'1000','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',11,'state','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('tango/admin/4e77e72456b6','polled_attr','','','',12,'1000','2019-11-06 13:45:51','2019-11-06 13:45:51',NULL),('dserver/Starter/4e77e72456b6','polling_threads_pool_conf','','','',1,'tango/admin/4e77e72456b6','2019-11-06 13:45:56','2019-11-06 13:45:56',NULL),('dserver/Starter/4e77e72456b6','__SubDevices','','','',1,'dserver/tangotest/test','2019-11-06 14:15:51','2019-11-06 14:15:51',NULL),('tango/admin/4e77e72456b6','__SubDevices','','','',1,'sys/database/2','2019-11-06 14:15:51','2019-11-06 14:15:51',NULL);
/*!40000 ALTER TABLE `property_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_device_hist`
--

DROP TABLE IF EXISTS `property_device_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_device_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_device` (`device`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_device_hist`
--

LOCK TABLES `property_device_hist` WRITE;
/*!40000 ALTER TABLE `property_device_hist` DISABLE KEYS */;
INSERT INTO `property_device_hist` VALUES (1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',1,'notifdstate'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',2,'1000'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',3,'hoststate'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',4,'1000'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',5,'runningservers'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',6,'1000'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',7,'stoppedservers'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',8,'1000'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',9,'servers'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',10,'1000'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',11,'state'),(1,'2019-11-06 13:45:51','tango/admin/4e77e72456b6','polled_attr',12,'1000'),(2,'2019-11-06 13:45:56','dserver/Starter/4e77e72456b6','polling_threads_pool_conf',1,'tango/admin/4e77e72456b6'),(3,'2019-11-06 14:15:51','dserver/Starter/4e77e72456b6','__SubDevices',1,'dserver/tangotest/test'),(4,'2019-11-06 14:15:51','tango/admin/4e77e72456b6','__SubDevices',1,'sys/database/2');
/*!40000 ALTER TABLE `property_device_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_hist`
--

DROP TABLE IF EXISTS `property_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_object` (`object`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_hist`
--

LOCK TABLES `property_hist` WRITE;
/*!40000 ALTER TABLE `property_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_class`
--

DROP TABLE IF EXISTS `property_pipe_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_property_pipe_class` (`class`(64),`pipe`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_class`
--

LOCK TABLES `property_pipe_class` WRITE;
/*!40000 ALTER TABLE `property_pipe_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_class_hist`
--

DROP TABLE IF EXISTS `property_pipe_class_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_class_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_class` (`class`),
  KEY `index_pipe` (`pipe`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_class_hist`
--

LOCK TABLES `property_pipe_class_hist` WRITE;
/*!40000 ALTER TABLE `property_pipe_class_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_class_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_device`
--

DROP TABLE IF EXISTS `property_pipe_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_device` (
  `device` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` text,
  KEY `index_property_pipe_device` (`device`(64),`pipe`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_device`
--

LOCK TABLES `property_pipe_device` WRITE;
/*!40000 ALTER TABLE `property_pipe_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_device_hist`
--

DROP TABLE IF EXISTS `property_pipe_device_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_device_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_device` (`device`),
  KEY `index_pipe` (`pipe`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_device_hist`
--

LOCK TABLES `property_pipe_device_hist` WRITE;
/*!40000 ALTER TABLE `property_pipe_device_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_device_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `host` varchar(255) NOT NULL DEFAULT '',
  `mode` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  KEY `index_name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES ('tangoaccesscontrol/1','4e77e72456b6',0,0);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-07 16:58:51
