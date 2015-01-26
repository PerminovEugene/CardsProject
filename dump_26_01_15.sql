-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: CardsProject
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `house` int(11) NOT NULL,
  `housing` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `post_code` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,0,'Moskva',1,'1','21',644526,'Lenina'),(2,0,'Omsk',124,'25','18',643421,'Mira'),(3,1,'121223123',1211,'','',312123,'12231231'),(4,0,'12',1212,'','',121212,'12');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL,
  `picture_id` bigint(20) NOT NULL,
  `sign` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_24hcwfwb63j9komh4xbp65i8o` (`company_id`),
  KEY `FK_2twn30jnlxlb4qgpyj26uwkay` (`picture_id`),
  KEY `FK_bghvg4xo76su71a9k40s0rplq` (`user_id`),
  CONSTRAINT `FK_bghvg4xo76su71a9k40s0rplq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_24hcwfwb63j9komh4xbp65i8o` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK_2twn30jnlxlb4qgpyj26uwkay` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,0,2,'2014-09-19 17:14:55',1,'Your\'s banny','MODERATION','Congratulation',1),(2,0,2,'2014-09-19 17:14:55',2,'Your\'s banny','PRINT','Congratulation',1),(3,0,4,'2014-09-30 06:44:22',6,'qweqew','ON MODERATION','qewqwe',2);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_beq83js88rg05mno8cc440req` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (1,0,'Cats'),(2,0,'Eva'),(3,0,'happy birthday'),(4,0,'valentines Day'),(5,0,'holidays');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `human_id` bigint(20) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_niu8sfil2gxywcru9ah3r4ec5` (`name`),
  KEY `FK_h2rewspdf9bnwpbt1nauwiaww` (`address_id`),
  KEY `FK_lfcq74n0vgrch3n38qn4cvfgv` (`human_id`),
  CONSTRAINT `FK_lfcq74n0vgrch3n38qn4cvfgv` FOREIGN KEY (`human_id`) REFERENCES `human` (`id`),
  CONSTRAINT `FK_h2rewspdf9bnwpbt1nauwiaww` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,0,2,1,'images/logo/mostovik.jpeg','Mostovik'),(2,0,1,2,'images/logo/lukoil.jpeg','Lukoil'),(3,0,3,3,'images/temp/7bits.png','12'),(4,0,4,4,NULL,'1212');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `human`
--

DROP TABLE IF EXISTS `human`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `human` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `human`
--

LOCK TABLES `human` WRITE;
/*!40000 ALTER TABLE `human` DISABLE KEYS */;
INSERT INTO `human` VALUES (1,0,'Alexeev S.K.','Director'),(2,0,'Antonov A.V.','General director'),(3,1,'12313123','12123123'),(4,0,'121','');
/*!40000 ALTER TABLE `human` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `human_card`
--

DROP TABLE IF EXISTS `human_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `human_card` (
  `human_card_id` bigint(20) DEFAULT NULL,
  `card_id` bigint(20) DEFAULT NULL,
  KEY `FK_la1xdt0njtta29om51ylg462h` (`card_id`),
  KEY `FK_jq8ke7mu7xa84u3gtj0e3t6kt` (`human_card_id`),
  CONSTRAINT `FK_jq8ke7mu7xa84u3gtj0e3t6kt` FOREIGN KEY (`human_card_id`) REFERENCES `human` (`id`),
  CONSTRAINT `FK_la1xdt0njtta29om51ylg462h` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `human_card`
--

LOCK TABLES `human_card` WRITE;
/*!40000 ALTER TABLE `human_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `human_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `human_user`
--

DROP TABLE IF EXISTS `human_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `human_user` (
  `human_user_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  KEY `FK_tjebjc5q3y9nrjamelg7nd0kg` (`user_id`),
  KEY `FK_jc7irdupptpjtf9qcrdjvb71e` (`human_user_id`),
  CONSTRAINT `FK_jc7irdupptpjtf9qcrdjvb71e` FOREIGN KEY (`human_user_id`) REFERENCES `human` (`id`),
  CONSTRAINT `FK_tjebjc5q3y9nrjamelg7nd0kg` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `human_user`
--

LOCK TABLES `human_user` WRITE;
/*!40000 ALTER TABLE `human_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `human_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `catalog_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3plfqgke4kowtx05twxpi0ied` (`name`),
  UNIQUE KEY `UK_9i1w9h0i82ooq6oufmhbxsaf2` (`path`),
  KEY `FK_4kl9u6w8q797ni4c59ibqteer` (`catalog_id`),
  CONSTRAINT `FK_4kl9u6w8q797ni4c59ibqteer` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (1,0,3,'crazy man','assets/testCards/card1.jpg'),(2,0,4,'happy girl','assets/testCards/card2.jpg'),(3,0,5,'bubble goom girl','assets/testCards/card3.jpg'),(4,0,1,'pict4','assets/testCards/card4.jpg'),(5,0,1,'pict5','assets/testCards/card5.jpg'),(6,0,1,'pict6','assets/testCards/card6.jpg'),(7,0,1,'pict7','assets/testCards/card7.jpg'),(8,0,1,'pict8','assets/testCards/card8.png'),(9,0,1,'pict9','assets/testCards/card9.png');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requester`
--

DROP TABLE IF EXISTS `requester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requester` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method_of_delivery_radio` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_send_radio` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `what_send_radio` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requester`
--

LOCK TABLES `requester` WRITE;
/*!40000 ALTER TABLE `requester` DISABLE KEYS */;
INSERT INTO `requester` VALUES (1,0,'','Personal','Анна','Nominal','+79095350073','startPage','Cards'),(2,0,'antonoff@mail.com','Personal','Андрей','Noname','+79054326574','startPage','Cards'),(3,0,'dfgdg','Spam','fgdsf','Noname','dfgdfg','startPage','Cards'),(4,0,'dfgdg','Spam','fgdsf','Noname','dfgdfg','startPage','Cards'),(5,0,'dfgdg','Spam','fgdsf','Noname','dfgdfg','startPage','Cards'),(6,0,'dfgdg','Spam','fgdsf','Noname','dfgdfg','startPage','Cards'),(7,0,'dfgdg','Spam','fgdsf','Noname','dfgdfg','startPage','Cards'),(8,0,'ывап','Personal','выап','Nominal','','startPage','Cards'),(9,0,'','Personal','авпр','Nominal','вапвпа','startPage','Cards'),(10,0,'at@7bits.it','Personal','Анна','Nominal','','startPage','Cards'),(13,0,'2','Personal','','Nominal','','startPage','Cards');
/*!40000 ALTER TABLE `requester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role`
--

DROP TABLE IF EXISTS `sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oah023x2ltqw09mdue7w0mcxb` (`authority`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role`
--

LOCK TABLES `sec_role` WRITE;
/*!40000 ALTER TABLE `sec_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user`
--

DROP TABLE IF EXISTS `sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5ctbdrlf3eismye20vsdtk8w8` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user`
--

LOCK TABLES `sec_user` WRITE;
/*!40000 ALTER TABLE `sec_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_sec_role`
--

DROP TABLE IF EXISTS `sec_user_sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_sec_role` (
  `sec_role_id` bigint(20) NOT NULL,
  `sec_user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sec_role_id`,`sec_user_id`),
  KEY `FK_f1eew3u65ajs3e50xvacwgron` (`sec_user_id`),
  CONSTRAINT `FK_bshvqhdx8h9mb4rrbo1ahnp7q` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_role` (`id`),
  CONSTRAINT `FK_f1eew3u65ajs3e50xvacwgron` FOREIGN KEY (`sec_user_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_sec_role`
--

LOCK TABLES `sec_user_sec_role` WRITE;
/*!40000 ALTER TABLE `sec_user_sec_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_user_sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,0,'qweqwe@mail.ru'),(2,0,'antonoff@mail.com'),(3,0,'dngfk@djfg.er'),(6,0,'sqweqf@mail.ur'),(7,0,'annie.tarasenko@gmail.com'),(8,0,'swag4eg@mail.ru'),(9,0,'at@7bits.it'),(11,0,'adsada@mail.ru'),(12,0,'qweqweq@mail.ru');
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `e_mail` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5awx5dcb9xdv5m1bl38bmoke0` (`e_mail`),
  KEY `FK_bteyn2vjkuydkfqefgaje2rhr` (`company_id`),
  CONSTRAINT `FK_bteyn2vjkuydkfqefgaje2rhr` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'\0','\0',1,'test@gmail.com','','qwerty','\0'),(2,1,'\0','\0',3,'sfgw2noob4toli@mail.ru','','d8578edf8458ce06fbc5bb76a58c5ca4','\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-26  1:29:42
