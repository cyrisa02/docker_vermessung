-- MariaDB dump 10.19  Distrib 10.6.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vermessdb
-- ------------------------------------------------------
-- Server version	10.6.11-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(190) NOT NULL,
  `firstname` varchar(190) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(190) DEFAULT NULL,
  `address` varchar(190) NOT NULL,
  `zipcode` varchar(190) NOT NULL,
  `city` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_valid` tinyint(1) DEFAULT NULL,
  `phone` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Busch','Dominik','ToDo List','dominik@gmail.com','BeispielStrasse 12','10115','Berlin','2022-11-29 15:16:32',1,'0615603504'),(2,'Jung','Ulrich','ToDo List','ulrcih@gmail.com','GoetheStrasse 12','10115','Berlin','2022-11-29 15:16:32',0,'0615603504'),(3,'Hartmann','Rainer','ToDo List','rainer@gmail.com','DaimlerStrasse 12','10115','Berlin','2022-11-29 15:16:32',1,'0615603504'),(4,'Schumacher','Rodolph','ToDo List','rodolph@gmail.com','BrückenStrasse 12','10115','Berlin','2022-11-29 15:16:32',1,'0615603504');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20221129121011','2022-11-29 13:10:24',111),('DoctrineMigrations\\Version20221129121334','2022-11-29 13:13:38',47),('DoctrineMigrations\\Version20221129135024','2022-11-29 14:50:33',67),('DoctrineMigrations\\Version20221129135320','2022-11-29 14:53:29',52),('DoctrineMigrations\\Version20221129135508','2022-11-29 14:55:17',53),('DoctrineMigrations\\Version20221129141306','2022-11-29 15:13:15',149),('DoctrineMigrations\\Version20221129142754','2022-11-29 15:28:04',233),('DoctrineMigrations\\Version20221129143024','2022-11-29 15:30:34',182),('DoctrineMigrations\\Version20221129155232','2022-11-29 16:52:45',147),('DoctrineMigrations\\Version20221130075623','2022-11-30 08:56:33',170),('DoctrineMigrations\\Version20221130092922','2022-11-30 10:29:31',126),('DoctrineMigrations\\Version20221130093237','2022-11-30 10:32:48',74),('DoctrineMigrations\\Version20221130120648','2022-11-30 13:06:58',194),('DoctrineMigrations\\Version20221130133731','2022-11-30 14:37:41',473),('DoctrineMigrations\\Version20221130135643','2022-11-30 14:56:51',197),('DoctrineMigrations\\Version20221130135824','2022-11-30 14:58:35',177),('DoctrineMigrations\\Version20221130140036','2022-11-30 15:00:46',169),('DoctrineMigrations\\Version20221130145100','2022-11-30 15:51:05',74),('DoctrineMigrations\\Version20221130150047','2022-11-30 16:00:54',120),('DoctrineMigrations\\Version20221130150550','2022-11-30 16:05:59',181),('DoctrineMigrations\\Version20221130152502','2022-11-30 16:25:11',61),('DoctrineMigrations\\Version20221201080435','2022-12-01 09:04:44',226),('DoctrineMigrations\\Version20221201094332','2022-12-01 10:43:41',71);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure`
--

DROP TABLE IF EXISTS `measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(190) NOT NULL,
  `description` longtext DEFAULT NULL,
  `picture` varchar(190) DEFAULT NULL,
  `place` varchar(190) DEFAULT NULL,
  `width` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_id` int(11) DEFAULT NULL,
  `floorname` varchar(190) DEFAULT NULL,
  `floornr` varchar(190) DEFAULT NULL,
  `lastname` varchar(190) NOT NULL,
  `civility` varchar(190) NOT NULL,
  `email` varchar(190) DEFAULT NULL,
  `address` varchar(190) DEFAULT NULL,
  `zipcode` varchar(190) DEFAULT NULL,
  `phone` varchar(190) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `providers_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_80071925B4EA4E60` (`quotation_id`),
  KEY `IDX_80071925A76ED395` (`user_id`),
  KEY `IDX_80071925D178A47B` (`providers_id`),
  CONSTRAINT `FK_80071925A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_80071925B4EA4E60` FOREIGN KEY (`quotation_id`) REFERENCES `quotation` (`id`),
  CONSTRAINT `FK_80071925D178A47B` FOREIGN KEY (`providers_id`) REFERENCES `provider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure`
--

LOCK TABLES `measure` WRITE;
/*!40000 ALTER TABLE `measure` DISABLE KEYS */;
INSERT INTO `measure` VALUES (19,'Schlafzimmer','Todo','room-63887cfd28396.jpg','Berlin',156,687,'2022-11-30 15:52:42',8,'Lex-Laminat','1525','Schumacher','Herr','testpartner@gmail.com','DaimlerStrasse 26','02200','0615603355',2,2),(20,'Esszimmer2','ToDO','room-63887cfd28396.jpg','Berlin',568,687,'2022-11-30 16:09:17',8,'Row-Laminat','14545','Busch','Frau','busch@gmail.com','GoetheStrasse 15','10115','0615603355',3,2),(21,'Wohnzimmer','ToDo','room-63887cfd28396.jpg','Berlin',259,356,'2022-11-30 16:14:13',8,'Pro-Durex','1525','Jung','Herr','jung@gmail.com','BeispielStrasse 12','10115','0615603355',4,3),(22,'Wohnzimmer','todo','room-63887cfd28396.jpg','Berlin',568,689,'2022-11-30 16:28:49',8,'Row-Laminat','1525','Hartmann','Frau','hartmann@gmail.com','BeispielStrasse 12','10115','0615603355',5,1),(23,'Schlafzimmer','To Do','room-6389c63fba1e7.jpg','Berlin',458,659,'2022-12-02 10:32:47',8,'Lex-Laminat','1459','Busch','Herr','test@gmail.com','BeispielStrasse 12','10115','0615603355',6,3),(24,'Esszimmer','To Do','wohnzimmer-6389c9d7391f2.jpg','Berlin',259,659,'2022-12-02 10:40:04',8,'Pro-Durex','1525','Müller','Frau','testsport@gmail.com','DaimlerStrasse 26','10115','0615603355',7,2),(25,'Wohnzimmer','To Do','wohnzimmer-6389d5fb80008.jpg','Berlin',356,652,'2022-12-02 11:39:55',8,'Dura-Laminat','1525','Hartmann','Herr','test@gmail.com','DaimlerStrasse 26','10115','0615603355',8,2);
/*!40000 ALTER TABLE `measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(190) NOT NULL,
  `lastname` varchar(190) DEFAULT NULL,
  `firstname` varchar(190) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(190) NOT NULL,
  `address` varchar(190) NOT NULL,
  `zipcode` varchar(190) NOT NULL,
  `city` varchar(190) NOT NULL,
  `phone` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Laminat-Pro2 GmbH','Kieffer','Karl','ToDo List','cyril.gourdon.02@gmail.com','BeispielStrasse 18','10115','Berlin','0615603504'),(2,'Laminat-Lieferant GmbH','Müller','Johan','ToDo List','cyril.gourdon.02@gmail.com','SchumacherStrasse 12','10115','Berlin','0615603504'),(3,'Pro-Lieferant GmbH','Heinz','Karl','ToDo','cyril.gourdon.02@gmail.com','GoetheStrasse 15','11545','Berlin','066325879');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotation`
--

DROP TABLE IF EXISTS `quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_send` tinyint(1) DEFAULT NULL,
  `deadline` varchar(190) DEFAULT NULL,
  `measure_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_474A8DB95DA37D00` (`measure_id`),
  CONSTRAINT `FK_474A8DB95DA37D00` FOREIGN KEY (`measure_id`) REFERENCES `measure` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotation`
--

LOCK TABLES `quotation` WRITE;
/*!40000 ALTER TABLE `quotation` DISABLE KEYS */;
INSERT INTO `quotation` VALUES (1,0,NULL,NULL),(2,1,'15/12/2022',19),(3,1,'25/11/22test3',20),(4,1,'15/12/2022',21),(5,1,'12/12/22',22),(6,1,'05/12/22',23),(7,0,'Geben Sie ein Liefertermin, bitte.',24),(8,1,'13/12/22',25);
/*!40000 ALTER TABLE `quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `lastname` varchar(190) NOT NULL,
  `firstname` varchar(190) NOT NULL,
  `picture` varchar(190) DEFAULT NULL,
  `company` varchar(190) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) DEFAULT NULL,
  `phone` varchar(190) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'cyrisa02.test@gmail.com','[\"ROLE_ADMIN\"]','$2y$13$WBuW7AvABX8MXB2Ck0sKqOdoRlOZc9vCUZgT3B8xjfAZxozOsxdvu','Gourdon','Cyril','man-63862adba3421.jpg','Admin','2022-11-29 15:16:32',1,'062564897'),(8,'thierry88@picard.fr','[\"ROLE_MEMBER\"]','$2y$13$aFHqF/tYCRjgk.tpPvh8muX1RWWYDjN0W7Jwo3z9HEvcmBLF3uRuK','Royer','Daniel','man-63862adba3421.jpg','Delorme GmbH','2022-11-29 15:16:33',1,'062564897'),(9,'paul.ribeiro@live.com','[\"ROLE_MEMBER\"]','$2y$13$BRPnI8KCj9Dy48Lgx2/jO.w9IDCWvnDva3JqiRs5/t6vcWH4nNCum','Camus','Marc','man-63862adba3421.jpg','Lebon GmBH','2022-11-29 15:16:33',0,'062564897'),(10,'laetitia.renault@guillon.com','[\"ROLE_MEMBER\"]','$2y$13$dOnJ6yhmUDB6q0u.XMRrBOBNnDaUhfHWJHARsIntH1bXkAfBS2/Mi','Gerard','Gérard','man-63862adba3421.jpg','Laporte GmbH','2022-11-29 15:16:34',1,'062564897'),(11,'lebon.suzanne@club-internet.fr','[\"ROLE_MEMBER\"]','$2y$13$VEu2zU7aJuKha4jxwt6jPOHBDRL7L5HPVWp75toihVYuNhiXvrIzS','Poirier','Maryse','man-63862adba3421.jpg','Joubert GmbH','2022-11-29 15:16:34',1,'062564897'),(12,'ovalentin@diaz.org','[\"ROLE_MEMBER\"]','$2y$13$96JMaXUtq9X1bGDFDLfk4u1.xqDhbRtG395u8F3kTAOZjN81xeGXS','Coulon','Danielle','man-63862adba3421.jpg','Rossi GmbH','2022-11-29 15:16:35',1,'062564897'),(13,'test@gmail.com','[\"ROLE_MEMBER\"]','$2y$13$eoGQamIScq.KL6rMK6zDY.zmUG5oGqDZvvthR5M0ZoZoIzMMi8hmu','test','test','man-63862adba3421.jpg','Handschumacher GmbH','2022-11-29 16:52:59',NULL,'062564897'),(14,'karl@gmail.com','[\"ROLE_MEMBER\"]','$2y$13$gb5z19XbPxhwPEMXAsv24.fplTrFcI6/51eLoPZ2CxrMDVz83slwK','Müller','Karl','man-6389c084e2d8c.jpg','Handwerker GmBH','2022-12-02 10:08:20',NULL,NULL);
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

-- Dump completed on 2022-12-02 12:36:14
