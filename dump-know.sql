-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: know
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `knowledgegraphdomain`
--

DROP TABLE IF EXISTS `knowledgegraphdomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledgegraphdomain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nodecount` int(11) NOT NULL DEFAULT '0',
  `shipcount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledgegraphdomain`
--

LOCK TABLES `knowledgegraphdomain` WRITE;
/*!40000 ALTER TABLE `knowledgegraphdomain` DISABLE KEYS */;
INSERT INTO `knowledgegraphdomain` VALUES (45,'Movie',1,0,1,'tc'),(89,'test',1,0,1,'tc'),(91,'drug',1,0,1,'tc'),(92,'re',1,0,1,'tc'),(93,'askjhd',1,0,0,'tc'),(94,'123',1,0,1,'tc'),(95,'mode',1,0,1,'tc'),(96,'asd',1,0,1,'tc');
/*!40000 ALTER TABLE `knowledgegraphdomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledgenodedetail`
--

DROP TABLE IF EXISTS `knowledgenodedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledgenodedetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '领域关系主键',
  `DomainId` int(11) DEFAULT NULL COMMENT '知识图谱领域主键',
  `NodeId` int(11) DEFAULT NULL COMMENT '关系定义主键',
  `Status` int(11) DEFAULT '1',
  `Content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CreateUser` varchar(255) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyUser` varchar(255) DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `domainid` (`DomainId`) USING BTREE,
  KEY `nodeid` (`NodeId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledgenodedetail`
--

LOCK TABLES `knowledgenodedetail` WRITE;
/*!40000 ALTER TABLE `knowledgenodedetail` DISABLE KEYS */;
INSERT INTO `knowledgenodedetail` VALUES (9,89,22,1,'<p>hghgfhgfdg&nbsp;</p>','tc','2019-09-25 12:47:12',NULL,'2019-10-24 12:11:24'),(10,92,5,1,'<p>aSASa<span style=\"font-weight: bold;\">ASDDASASDSA</span>SADD<span style=\"text-decoration-line: line-through;\">ASDAS</span></p>','tc','2019-10-25 06:59:49',NULL,NULL),(11,89,5,1,'<p>DASDSAD</p>','tc','2019-10-25 07:00:11',NULL,'2019-10-25 07:00:14');
/*!40000 ALTER TABLE `knowledgenodedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledgenodedetailfile`
--

DROP TABLE IF EXISTS `knowledgenodedetailfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledgenodedetailfile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '领域关系主键',
  `DomainId` int(11) DEFAULT NULL COMMENT '知识图谱领域主键',
  `NodeId` int(11) DEFAULT NULL COMMENT '关系定义主键',
  `FileName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '若是本地上传则为文件名称，若是网络链接则保存为链接',
  `ImageType` int(11) DEFAULT '0' COMMENT '0=本地上传,1=网络链接',
  `Status` int(11) DEFAULT '1',
  `CreateUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `ModifyUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ModifyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `domainid` (`DomainId`) USING BTREE,
  KEY `nodeid` (`NodeId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledgenodedetailfile`
--

LOCK TABLES `knowledgenodedetailfile` WRITE;
/*!40000 ALTER TABLE `knowledgenodedetailfile` DISABLE KEYS */;
INSERT INTO `knowledgenodedetailfile` VALUES (65,89,22,'http://file.miaoleyan.com/nndt/7pRiXX54Fdxi2EtgyMCNOLOFJgKZPA3q',0,0,'tc','2019-09-25 12:54:36',NULL,NULL),(66,89,61,'http://file.miaoleyan.com/nndt/zX6En1tv3ZgGy5zE8jb7y79APLCivENv',0,1,'tc','2019-11-04 08:34:41',NULL,NULL);
/*!40000 ALTER TABLE `knowledgenodedetailfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'know'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-28 17:08:22
