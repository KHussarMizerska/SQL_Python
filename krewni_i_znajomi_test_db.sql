-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: krewni_i_znajomi_test
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Temporary view structure for view `bezdzietni`
--

DROP TABLE IF EXISTS `bezdzietni`;
/*!50001 DROP VIEW IF EXISTS `bezdzietni`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bezdzietni` AS SELECT 
 1 AS `id_dorosli`,
 1 AS `imie`,
 1 AS `nazwisko`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dorosli`
--

DROP TABLE IF EXISTS `dorosli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dorosli` (
  `id_dorosli` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(55) NOT NULL,
  `data_ur` date DEFAULT NULL,
  `plec` enum('K','M') NOT NULL DEFAULT 'K',
  `relacje_id_rel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dorosli`),
  KEY `id_rel_idx` (`relacje_id_rel`),
  CONSTRAINT `id_rel` FOREIGN KEY (`relacje_id_rel`) REFERENCES `relacje` (`id_rel`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dorosli`
--

LOCK TABLES `dorosli` WRITE;
/*!40000 ALTER TABLE `dorosli` DISABLE KEYS */;
INSERT INTO `dorosli` VALUES (1,'Teresa','xxx','1984-09-20','K',4),(2,'Błażej','xxx','1984-05-01','M',4),(3,'Marta','xxx','1982-01-15','K',2),(4,'Sławomir','xxx','1982-05-22','M',2),(5,'Michał','xxx','1980-04-16','M',2),(6,'Dorota','xxx','1985-09-05','K',2),(7,'Tomasz','xxx','1986-01-16','M',3),(8,'Katarzyna','xxx','1988-02-09','K',3),(9,'Jarosław','xxx','1982-11-14','M',2),(11,'Agnieszka','xxx','1980-10-16','K',1),(12,'Marcin','xxx','1980-07-18','M',1),(13,'Michalina','xxx','1967-09-02','K',2),(14,'Janusz','xxx','1969-06-12','M',2),(15,'Ewa','xxx','1986-08-30','K',1),(16,'Robert','xxx','1983-07-14','M',1),(17,'Anna','xxx','1984-09-17','K',2),(18,'Michał','xxx','1985-03-06','M',2),(19,'Magdalena','xxx','1981-05-09','K',2),(20,'Paweł','xxx','1981-04-15','M',2),(21,'Joanna','xxx','1983-10-28','K',2),(22,'Tomasz','xxx','1983-10-03','M',2),(24,'Magdalena','xxx','1984-04-25','K',5),(25,'Tomasz','xxx','1984-02-06','M',5),(26,'Aleksandra','xxx','1986-06-08','K',5),(27,'Arkadiusz','xxx','1987-01-17','M',5),(28,'Aleksandra','xxx','1985-05-29','K',5),(29,'Paweł','xxx','1985-11-21','M',5),(30,'Joanna','xxx','1978-03-30','K',6),(31,'Piotr','xxx','1976-07-21','M',6),(32,'Katarzyna','xxx','1985-01-30','K',5),(34,'Edyta','xxx','1984-05-15','K',4),(35,'Dariusz','xxx','1982-01-25','M',4),(37,'Sylwia','xxx','1984-05-15','K',4),(38,'Adrian','xxx','1986-09-12','M',4),(39,'Magda','xxx','1985-01-17','K',2),(40,'Marcin','xxx','1984-10-19','M',2),(52,'Anne-Marie','xxx','1987-11-16','K',2),(53,'Fabian','xxx','1900-01-01','M',2),(54,'Katarzyna','xxx','1987-10-07','K',4),(55,'Magdalena','xxx','1984-09-23','K',5),(56,'Marcin','xxx','1980-11-08','M',5),(57,'Sylwia','xxx','1987-04-11','K',3),(58,'Adam','xxx','1987-04-03','M',3),(59,'Agata','xxx','1981-12-17','K',3),(60,'Arkadiusz','xxx','1979-08-08','M',3),(61,'Katarzyna','yyy','1985-11-17','K',1),(62,'Paweł','xxx','1982-04-30','M',1),(63,'Barbara','xxx','1981-03-07','K',3),(64,'Tomasz','xxx','1980-02-25','M',3),(65,'Michał','xxx','1978-08-05','M',6),(66,'Ewa','xxx','1977-09-07','K',6),(67,'Maciej','xxx','1980-09-07','M',6),(68,'Marta','xxx','1981-08-29','K',6),(69,'Aleksandra','xxx','1983-05-08','K',6),(70,'Tomasz','xxx','1985-07-23','M',6),(71,'Magdalena','xxx','1984-04-24','K',6),(72,'Arkadiusz','xxx','1981-11-17','M',6),(73,'Joanna','xxx','1986-03-12','K',6),(74,'Adam','xxx','1986-12-27','M',6),(75,'Paweł','xxx','1985-02-07','M',3),(76,'Monika','xxx','1986-08-08','K',3),(77,'Magdalena','xxx','1985-05-29','K',2),(78,'Maciej','xxx','1985-07-21','M',2),(79,'Paulina','xxx','1982-05-31','K',2),(80,'Mariusz','xxx','1986-04-27','M',2),(81,'Jacek','xxx','1985-12-16','M',4),(82,'Martyna','xxx','1992-10-17','K',4),(83,'Marcin','xxx','1985-06-09','M',4),(84,'Monika','xxx','1986-09-30','K',4),(85,'Ilona','xxx','1985-08-19','K',5),(86,'Anna','xxx','1984-03-14','K',2),(87,'Jacek','xxx','1980-02-16','M',2),(88,'Błażej','xxx','1984-12-10','M',5),(89,'Magdalena','xxx','1985-11-15','K',5),(90,'Anna','xxx','1985-08-02','K',4),(91,'Bartosz','xxx','1986-06-18','M',4),(92,'Katarzyna','xxx','1983-02-22','K',2),(93,'Maciej','xxx','1980-08-27','M',2),(94,'Katarzyna','xxx','1982-12-29','K',5),(95,'Maciej','xxx','1984-04-28','M',5),(96,'Anna','xxx','1983-04-13','K',3),(97,'Dawid','xxx','1975-10-12','M',3),(100,'Szymon','xxx','1985-02-14','M',4),(101,'Jolanta','xxx','1983-06-10','K',4),(102,'Marta','xxx','1985-08-11','K',5),(103,'Grzegorz','xxx','1985-02-21','M',5),(104,'Katarzyna','xxx','1981-05-13','K',3),(105,'Łukasz','xxx','1985-11-12','M',3),(106,'Iwona','xxx','1986-02-03','K',2),(107,'Maciej','xxx','1984-05-16','M',2),(108,'Martyna','xxx','1985-01-04','K',2),(109,'Jarosław','xxx','1972-04-17','M',2),(110,'Dawid','xxx','1984-11-20','M',2),(111,'Katarzyna','xxx','1984-12-16','K',2),(112,'Lucyna','xxx','1984-10-26','K',2),(113,'Szymon','xxx','1983-06-06','M',2),(114,'Marek','xxx','1985-05-31','M',2),(115,'Agnieszka','xxx','1984-03-13','K',2),(116,'Dominika','xxx','1984-04-21','K',2),(117,'Maciej','xxx','1980-06-06','M',2),(118,'Aleksandra','xxx','1987-09-30','K',2),(119,'Bianca','xxx','1979-12-31','K',2),(120,'Michał','xxx','1900-01-01','M',2),(121,'Borys','xxx','1988-09-09','M',1);
/*!40000 ALTER TABLE `dorosli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dzieci`
--

DROP TABLE IF EXISTS `dzieci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dzieci` (
  `id_dzieci` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) NOT NULL,
  `nazwisko` varchar(55) NOT NULL,
  `data_ur` date DEFAULT NULL,
  `plec` enum('K','M') NOT NULL DEFAULT 'K',
  PRIMARY KEY (`id_dzieci`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dzieci`
--

LOCK TABLES `dzieci` WRITE;
/*!40000 ALTER TABLE `dzieci` DISABLE KEYS */;
INSERT INTO `dzieci` VALUES (1,'Patryk','xxx','2014-02-14','M'),(2,'Adam','xxx','2016-10-23','M'),(3,'Hanna','xxx','2012-08-24','K'),(4,'Aleksandra','xxx','2015-06-06','K'),(5,'Wiktoria','xxx','2008-10-20','K'),(6,'Marta','xxx','2007-05-08','K'),(8,'Amelia','xxx','2012-08-12','K'),(9,'Nela','xxx','2018-02-14','K'),(10,'Mateusz','xxx','2015-07-03','M'),(11,'Amelia','xxx','2017-03-03','K'),(12,'Krzysztof','xxx','2014-11-26','M'),(13,'Natalia','xxx','2017-02-12','K'),(14,'Emilia','xxx','2018-08-14','K'),(15,'Olaf','xxx','2015-02-23','M'),(16,'Gabriela','xxx','2016-08-16','K'),(17,'Marianna','xxx','2018-09-03','K'),(18,'Lea','xxx','2016-05-18','K'),(19,'Bona','xxx','2018-05-30','K'),(20,'Maja','xxx','2017-03-12','K'),(21,'Mateusz','xxx','2012-12-05','M'),(22,'Grzegorz','xxx','2016-09-25','M'),(23,'Stefan','xxx','2015-09-04','M'),(24,'Zofia','xxx','2014-12-08','K'),(25,'Tadeusz','xxx','2016-10-01','M'),(26,'Leon','xxx','2016-10-05','M'),(27,'Szymon','xxx','2014-08-29','M'),(28,'Mateusz','xxx','2016-03-18','M'),(29,'Tymoteusz','xxx','2013-10-10','M'),(30,'Remigiusz','xxx','2017-08-07','M'),(31,'Juliusz','xxx','2011-06-28','M'),(32,'Antoni','xxx','2014-04-21','M'),(33,'Tomasz','xxx','2014-11-25','M'),(34,'Agata','xxx','2016-10-16','K'),(35,'Andrzej','xxx','2015-01-27','M'),(36,'Piotr','xxx','2017-10-24','M'),(37,'Piotr','xxx','2013-09-21','M'),(38,'Mikołaj','xxx','2015-10-04','M'),(39,'Paulina','xxx','2014-08-05','K'),(40,'Antonina','xxx','2017-08-05','K'),(41,'Jakub','xxx','2015-02-07','M'),(42,'Jan','xxx','2017-03-08','M'),(43,'Maksymilian','xxx','2014-12-17','M'),(44,'Maksymilian','xxx','2015-01-13','M'),(45,'Antoni','xxx','2016-05-07','M'),(46,'Filip','xxx','2014-01-21','M'),(47,'Samuel','xxx','2015-09-12','M'),(51,'Szymon','xxx','2015-04-09','M'),(55,'Alicja','xxx','2016-07-01','K'),(56,'Katarzyna','xxx','2015-05-05','K'),(57,'Jakub','xxx','2017-12-03','M'),(58,'Oliwia','xxx','2015-01-02','K'),(59,'Helena','xxx','2016-06-21','K'),(60,'Ziemowit','xxx','2018-08-12','M'),(61,'Gabriela','xxx','2018-01-30','K'),(62,'Jakub','xxx','2017-05-12','M'),(63,'Dawid','xxx','2011-08-04','M'),(64,'Małgorzata','xxx','2013-08-14','K'),(65,'Aleksandra','xxx','2016-08-23','K'),(66,'Tymoteusz','xxx','2011-02-15','M'),(67,'Anna','xxx','2012-08-06','K'),(68,'Mikołaj','xxx','2014-03-06','M'),(69,'Irena','xxx','2016-02-07','K'),(70,'Kacper','xxx','2014-05-26','M'),(71,'Szymon','xxx','2017-10-31','M'),(72,'Jakub','xxx','2013-08-25','M'),(73,'Aleksander','xxx','2015-07-20','M'),(74,'Helena','xxx','2011-05-15','K'),(75,'Marta','xxx','2014-03-23','K'),(76,'Marcel','xxx','2014-12-08','M'),(77,'Maja','xxx','2018-04-06','K'),(78,'Agata','xxx','2018-10-04','K'),(79,'Jan','xxx','2018-10-26','M'),(80,'Anna','xxx','2018-10-27','K');
/*!40000 ALTER TABLE `dzieci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dzietni`
--

DROP TABLE IF EXISTS `dzietni`;
/*!50001 DROP VIEW IF EXISTS `dzietni`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dzietni` AS SELECT 
 1 AS `id_dorosli`,
 1 AS `imie`,
 1 AS `nazwisko`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `liczba_dzieci`
--

DROP TABLE IF EXISTS `liczba_dzieci`;
/*!50001 DROP VIEW IF EXISTS `liczba_dzieci`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `liczba_dzieci` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `liczba_dzieci`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `malzenstwa`
--

DROP TABLE IF EXISTS `malzenstwa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malzenstwa` (
  `id_malzenstwa` int(11) NOT NULL AUTO_INCREMENT,
  `id_zony` int(11) NOT NULL,
  `id_meza` int(11) NOT NULL,
  `data_slubu` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id_malzenstwa`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malzenstwa`
--

LOCK TABLES `malzenstwa` WRITE;
/*!40000 ALTER TABLE `malzenstwa` DISABLE KEYS */;
INSERT INTO `malzenstwa` VALUES (1,61,62,'2012-10-27'),(2,1,2,'2010-06-05'),(3,3,4,'2008-07-19'),(4,6,5,'2018-07-28'),(5,8,7,NULL),(6,11,12,'2007-10-13'),(7,13,14,'1998-03-07'),(8,15,16,'2010-07-31'),(9,17,18,'2007-03-17'),(10,19,20,NULL),(11,21,22,NULL),(12,24,25,'2008-02-02'),(13,26,27,'2012-08-11'),(14,28,29,'2013-07-20'),(15,30,31,'2017-07-01'),(16,34,35,'2008-08-30'),(17,37,38,'2014-09-27'),(18,39,40,'2009-09-12'),(19,52,53,'2015-08-29'),(20,55,56,'2010-01-02'),(21,57,58,'2012-05-05'),(22,59,60,'2010-06-02'),(23,63,64,'2014-10-04'),(24,66,65,'2013-08-10'),(25,69,70,'2018-06-23'),(26,71,72,'2009-07-11'),(27,73,74,'2017-02-04'),(28,76,75,'2012-10-13'),(29,77,78,'2010-09-11'),(30,79,80,'2013-09-14'),(31,82,81,'2015-04-25'),(32,84,83,'2010-02-13'),(33,86,87,'2013-10-12'),(34,90,91,'2011-10-08'),(35,92,93,'2014-08-30'),(36,94,95,'2016-05-02'),(37,96,97,'2015-06-04'),(38,101,100,'2008-11-15'),(39,102,103,'2010-05-09'),(40,104,105,'2013-05-30'),(41,106,107,'2011-10-07'),(42,108,109,NULL),(43,112,113,'2018-08-18'),(44,115,114,'2010-07-24'),(45,116,117,'2016-04-09');
/*!40000 ALTER TABLE `malzenstwa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `malzenstwa_imiennie`
--

DROP TABLE IF EXISTS `malzenstwa_imiennie`;
/*!50001 DROP VIEW IF EXISTS `malzenstwa_imiennie`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `malzenstwa_imiennie` AS SELECT 
 1 AS `imie_zony`,
 1 AS `nazwisko_zony`,
 1 AS `data_slubu`,
 1 AS `imie_meza`,
 1 AS `nazwisko_meza`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `miesiace_slubu`
--

DROP TABLE IF EXISTS `miesiace_slubu`;
/*!50001 DROP VIEW IF EXISTS `miesiace_slubu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `miesiace_slubu` AS SELECT 
 1 AS `MONTH(data_slubu)`,
 1 AS `miesiac_slubu`,
 1 AS `COUNT(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `relacje`
--

DROP TABLE IF EXISTS `relacje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relacje` (
  `id_rel` int(11) NOT NULL AUTO_INCREMENT,
  `relacja` varchar(45) NOT NULL,
  PRIMARY KEY (`id_rel`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacje`
--

LOCK TABLES `relacje` WRITE;
/*!40000 ALTER TABLE `relacje` DISABLE KEYS */;
INSERT INTO `relacje` VALUES (1,'rodzina'),(2,'znajomi'),(3,'praca'),(4,'liceum'),(5,'studia'),(6,'przewodnicy');
/*!40000 ALTER TABLE `relacje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rocznice`
--

DROP TABLE IF EXISTS `rocznice`;
/*!50001 DROP VIEW IF EXISTS `rocznice`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rocznice` AS SELECT 
 1 AS `imie_zony`,
 1 AS `nazwisko_zony`,
 1 AS `imie_meza`,
 1 AS `nazwisko_meza`,
 1 AS `data_slubu`,
 1 AS `nr_rocznicy`,
 1 AS `nazwa_rocznicy`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rocznice_slubu`
--

DROP TABLE IF EXISTS `rocznice_slubu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rocznice_slubu` (
  `id_rocznicy` int(11) NOT NULL AUTO_INCREMENT,
  `nr_rocznicy` int(11) NOT NULL,
  `nazwa_rocznicy` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id_rocznicy`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rocznice_slubu`
--

LOCK TABLES `rocznice_slubu` WRITE;
/*!40000 ALTER TABLE `rocznice_slubu` DISABLE KEYS */;
INSERT INTO `rocznice_slubu` VALUES (1,1,'papierowa'),(2,2,'bawełniana'),(3,3,'skórzana'),(4,4,'kwiatowa / owocowa'),(5,5,'drewniana'),(6,6,'cukrowa'),(7,7,'wełniana'),(8,8,'spiżowa / brązowa / blaszana'),(9,9,'gliniana / generalska'),(10,10,'cynowa / aluminiowa'),(11,11,'stalowa'),(12,12,'płócienna / jedwabna / lniana'),(13,13,'koronkowa'),(14,14,'kości słoniowej'),(15,15,'kryształowa'),(16,20,'porcelanowa'),(17,25,'srebrna'),(18,30,'perłowa'),(19,35,'koralowa'),(20,40,'rubinowa'),(21,45,'szafirowa'),(22,50,'złota');
/*!40000 ALTER TABLE `rocznice_slubu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rodzice_dzieci`
--

DROP TABLE IF EXISTS `rodzice_dzieci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rodzice_dzieci` (
  `id_rd` int(11) NOT NULL AUTO_INCREMENT,
  `id_dzieci` int(11) NOT NULL,
  `id_dorosli` int(11) NOT NULL,
  PRIMARY KEY (`id_rd`),
  KEY `fk_dzieci_has_dorosli_dorosli1_idx` (`id_dorosli`),
  KEY `fk_dzieci_has_dorosli_dzieci1_idx` (`id_dzieci`),
  CONSTRAINT `fk_dzieci_has_dorosli_dorosli1` FOREIGN KEY (`id_dorosli`) REFERENCES `dorosli` (`id_dorosli`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_dzieci_has_dorosli_dzieci1` FOREIGN KEY (`id_dzieci`) REFERENCES `dzieci` (`id_dzieci`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rodzice_dzieci`
--

LOCK TABLES `rodzice_dzieci` WRITE;
/*!40000 ALTER TABLE `rodzice_dzieci` DISABLE KEYS */;
INSERT INTO `rodzice_dzieci` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,3,3),(6,3,4),(7,4,3),(8,4,4),(9,5,11),(10,5,12),(11,6,13),(12,6,14),(13,8,15),(14,8,16),(15,9,15),(16,9,16),(17,12,19),(18,12,20),(19,13,19),(20,13,20),(21,14,19),(22,14,20),(23,15,21),(24,15,22),(25,16,21),(26,16,22),(27,17,21),(28,17,22),(29,18,24),(30,18,25),(31,19,24),(32,19,25),(33,20,26),(34,20,27),(35,21,34),(36,21,35),(37,22,34),(38,22,35),(39,23,37),(40,23,38),(41,24,39),(42,24,40),(43,25,39),(44,25,40),(45,26,52),(46,26,53),(47,27,55),(48,27,56),(49,28,55),(50,28,56),(51,29,57),(52,29,58),(53,30,57),(54,30,58),(55,31,59),(56,31,60),(57,32,59),(58,32,60),(59,33,61),(60,33,62),(61,34,61),(62,34,62),(63,35,63),(64,35,64),(65,36,63),(66,36,64),(67,37,65),(68,37,66),(69,38,71),(70,38,72),(71,39,75),(72,39,76),(73,40,75),(74,40,76),(75,41,7),(76,41,8),(77,42,7),(78,42,8),(79,43,77),(80,43,78),(81,44,79),(82,44,80),(83,45,79),(84,45,80),(85,46,83),(86,46,84),(87,47,83),(88,47,84),(89,51,86),(90,51,87),(91,55,88),(92,55,89),(93,56,90),(94,56,91),(95,57,90),(96,57,91),(97,58,92),(98,58,93),(99,59,92),(100,59,93),(101,60,92),(102,60,93),(103,61,94),(104,61,95),(105,62,96),(106,62,97),(107,63,100),(108,63,101),(109,64,100),(110,64,101),(111,65,100),(112,65,101),(113,66,102),(114,66,103),(115,67,102),(116,67,103),(117,68,102),(118,68,103),(119,69,102),(120,69,103),(121,70,104),(122,70,105),(123,71,104),(124,71,105),(125,72,106),(126,72,107),(127,73,106),(128,73,107),(129,74,108),(130,74,109),(131,75,108),(132,75,109),(133,76,114),(134,76,115),(135,77,114),(136,77,115),(137,10,17),(138,10,18),(139,11,17),(140,11,18),(141,78,81),(142,78,82);
/*!40000 ALTER TABLE `rodzice_dzieci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rodzice_i_ich_dzieci`
--

DROP TABLE IF EXISTS `rodzice_i_ich_dzieci`;
/*!50001 DROP VIEW IF EXISTS `rodzice_i_ich_dzieci`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rodzice_i_ich_dzieci` AS SELECT 
 1 AS `imie_rodzica`,
 1 AS `nazwisko_rodzica`,
 1 AS `imie_dziecka`,
 1 AS `nazwisko_dziecka`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `test`
--

DROP TABLE IF EXISTS `test`;
/*!50001 DROP VIEW IF EXISTS `test`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `test` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `string`,
 1 AS `subtotal1`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `test1`
--

DROP TABLE IF EXISTS `test1`;
/*!50001 DROP VIEW IF EXISTS `test1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `test1` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `subtotal2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wibracje`
--

DROP TABLE IF EXISTS `wibracje`;
/*!50001 DROP VIEW IF EXISTS `wibracje`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wibracje` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `wibracja`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wszyscy`
--

DROP TABLE IF EXISTS `wszyscy`;
/*!50001 DROP VIEW IF EXISTS `wszyscy`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wszyscy` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `data_ur`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `znaki_zodiaku_d`
--

DROP TABLE IF EXISTS `znaki_zodiaku_d`;
/*!50001 DROP VIEW IF EXISTS `znaki_zodiaku_d`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `znaki_zodiaku_d` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `znak_zodiaku`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `znaki_zodiaku_dz`
--

DROP TABLE IF EXISTS `znaki_zodiaku_dz`;
/*!50001 DROP VIEW IF EXISTS `znaki_zodiaku_dz`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `znaki_zodiaku_dz` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `znak_zodiaku`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `znaki_zodiaku_w`
--

DROP TABLE IF EXISTS `znaki_zodiaku_w`;
/*!50001 DROP VIEW IF EXISTS `znaki_zodiaku_w`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `znaki_zodiaku_w` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `znak_zodiaku`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'krewni_i_znajomi_test'
--

--
-- Dumping routines for database 'krewni_i_znajomi_test'
--

--
-- Final view structure for view `bezdzietni`
--

/*!50001 DROP VIEW IF EXISTS `bezdzietni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bezdzietni` AS select `d`.`id_dorosli` AS `id_dorosli`,`d`.`imie` AS `imie`,`d`.`nazwisko` AS `nazwisko` from (`dorosli` `d` left join `rodzice_dzieci` `rd` on((`rd`.`id_dorosli` = `d`.`id_dorosli`))) where isnull(`rd`.`id_dorosli`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dzietni`
--

/*!50001 DROP VIEW IF EXISTS `dzietni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dzietni` AS select distinct `d`.`id_dorosli` AS `id_dorosli`,`d`.`imie` AS `imie`,`d`.`nazwisko` AS `nazwisko` from (`dorosli` `d` left join `rodzice_dzieci` `rd` on((`rd`.`id_dorosli` = `d`.`id_dorosli`))) where (`rd`.`id_dorosli` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `liczba_dzieci`
--

/*!50001 DROP VIEW IF EXISTS `liczba_dzieci`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `liczba_dzieci` AS select `d`.`imie` AS `imie`,`d`.`nazwisko` AS `nazwisko`,count(0) AS `liczba_dzieci` from (`dorosli` `d` left join `rodzice_dzieci` `rd` on((`rd`.`id_dorosli` = `d`.`id_dorosli`))) group by `d`.`id_dorosli`,`d`.`imie`,`d`.`nazwisko` order by `liczba_dzieci` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `malzenstwa_imiennie`
--

/*!50001 DROP VIEW IF EXISTS `malzenstwa_imiennie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `malzenstwa_imiennie` AS select `d`.`imie` AS `imie_zony`,`d`.`nazwisko` AS `nazwisko_zony`,`m`.`data_slubu` AS `data_slubu`,`dor`.`imie` AS `imie_meza`,`dor`.`nazwisko` AS `nazwisko_meza` from ((`malzenstwa` `m` join `dorosli` `d` on((`d`.`id_dorosli` = `m`.`id_zony`))) join `dorosli` `dor` on((`dor`.`id_dorosli` = `m`.`id_meza`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `miesiace_slubu`
--

/*!50001 DROP VIEW IF EXISTS `miesiace_slubu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `miesiace_slubu` AS select month(`malzenstwa`.`data_slubu`) AS `MONTH(data_slubu)`,(case when (month(`malzenstwa`.`data_slubu`) = 1) then 'Styczeń' when (month(`malzenstwa`.`data_slubu`) = 2) then 'Luty' when (month(`malzenstwa`.`data_slubu`) = 3) then 'Marzec' when (month(`malzenstwa`.`data_slubu`) = 4) then 'Kwiecień' when (month(`malzenstwa`.`data_slubu`) = 5) then 'Maj' when (month(`malzenstwa`.`data_slubu`) = 6) then 'Czerwiec' when (month(`malzenstwa`.`data_slubu`) = 7) then 'Lipiec' when (month(`malzenstwa`.`data_slubu`) = 8) then 'Sierpień' when (month(`malzenstwa`.`data_slubu`) = 9) then 'Wrzesień' when (month(`malzenstwa`.`data_slubu`) = 10) then 'Październik' when (month(`malzenstwa`.`data_slubu`) = 11) then 'Listopad' when (month(`malzenstwa`.`data_slubu`) = 12) then 'Grudzień' end) AS `miesiac_slubu`,count(0) AS `COUNT(*)` from `malzenstwa` group by `miesiac_slubu` order by month(`malzenstwa`.`data_slubu`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rocznice`
--

/*!50001 DROP VIEW IF EXISTS `rocznice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rocznice` AS select `m`.`imie_zony` AS `imie_zony`,`m`.`nazwisko_zony` AS `nazwisko_zony`,`m`.`imie_meza` AS `imie_meza`,`m`.`nazwisko_meza` AS `nazwisko_meza`,`m`.`data_slubu` AS `data_slubu`,`r`.`nr_rocznicy` AS `nr_rocznicy`,`r`.`nazwa_rocznicy` AS `nazwa_rocznicy` from (`malzenstwa_imiennie` `m` join `rocznice_slubu` `r` on(((year(curdate()) - year(`m`.`data_slubu`)) = `r`.`nr_rocznicy`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rodzice_i_ich_dzieci`
--

/*!50001 DROP VIEW IF EXISTS `rodzice_i_ich_dzieci`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rodzice_i_ich_dzieci` AS select `d`.`imie` AS `imie_rodzica`,`d`.`nazwisko` AS `nazwisko_rodzica`,`dz`.`imie` AS `imie_dziecka`,`dz`.`nazwisko` AS `nazwisko_dziecka` from ((`rodzice_dzieci` `rd` join `dorosli` `d` on((`d`.`id_dorosli` = `rd`.`id_dorosli`))) join `dzieci` `dz` on((`dz`.`id_dzieci` = `rd`.`id_dzieci`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test`
--

/*!50001 DROP VIEW IF EXISTS `test`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test` AS select `wszyscy`.`imie` AS `imie`,`wszyscy`.`nazwisko` AS `nazwisko`,date_format(`wszyscy`.`data_ur`,'%Y%d%m') AS `string`,(((((((cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),1,1) as signed) + cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),2,1) as signed)) + cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),3,1) as signed)) + cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),4,1) as signed)) + cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),5,1) as signed)) + cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),6,1) as signed)) + cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),7,1) as signed)) + cast(substr(date_format(`wszyscy`.`data_ur`,'%Y%d%m'),8,1) as signed)) AS `subtotal1` from `wszyscy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `test1`
--

/*!50001 DROP VIEW IF EXISTS `test1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `test1` AS select `test`.`imie` AS `imie`,`test`.`nazwisko` AS `nazwisko`,(case when ((`test`.`subtotal1` = '11') or (`test`.`subtotal1` = '22') or (`test`.`subtotal1` = '33') or (`test`.`subtotal1` = '33')) then `test`.`subtotal1` else (cast(substr(`test`.`subtotal1`,1,1) as signed) + cast(substr(`test`.`subtotal1`,2,1) as signed)) end) AS `subtotal2` from `test` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wibracje`
--

/*!50001 DROP VIEW IF EXISTS `wibracje`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wibracje` AS select `test1`.`imie` AS `imie`,`test1`.`nazwisko` AS `nazwisko`,(case when ((`test1`.`subtotal2` = '11') or (`test1`.`subtotal2` = '22') or (`test1`.`subtotal2` = '33') or (`test1`.`subtotal2` = '33')) then `test1`.`subtotal2` else (cast(substr(`test1`.`subtotal2`,1,1) as signed) + cast(substr(`test1`.`subtotal2`,2,1) as signed)) end) AS `wibracja` from `test1` order by (case when ((`test1`.`subtotal2` = '11') or (`test1`.`subtotal2` = '22') or (`test1`.`subtotal2` = '33') or (`test1`.`subtotal2` = '33')) then `test1`.`subtotal2` else (cast(substr(`test1`.`subtotal2`,1,1) as signed) + cast(substr(`test1`.`subtotal2`,2,1) as signed)) end) desc,`test1`.`nazwisko`,`test1`.`imie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wszyscy`
--

/*!50001 DROP VIEW IF EXISTS `wszyscy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wszyscy` AS select `dorosli`.`imie` AS `imie`,`dorosli`.`nazwisko` AS `nazwisko`,`dorosli`.`data_ur` AS `data_ur` from `dorosli` union all select `dzieci`.`imie` AS `imie`,`dzieci`.`nazwisko` AS `nazwisko`,`dzieci`.`data_ur` AS `data_ur` from `dzieci` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `znaki_zodiaku_d`
--

/*!50001 DROP VIEW IF EXISTS `znaki_zodiaku_d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `znaki_zodiaku_d` AS select `dorosli`.`imie` AS `imie`,`dorosli`.`nazwisko` AS `nazwisko`,(case when (((month(`dorosli`.`data_ur`) = 3) and (dayofmonth(`dorosli`.`data_ur`) >= 21)) or ((month(`dorosli`.`data_ur`) = 4) and (dayofmonth(`dorosli`.`data_ur`) <= 19))) then 'Baran' when (((month(`dorosli`.`data_ur`) = 4) and (dayofmonth(`dorosli`.`data_ur`) >= 20)) or ((month(`dorosli`.`data_ur`) = 5) and (dayofmonth(`dorosli`.`data_ur`) <= 22))) then 'Byk' when (((month(`dorosli`.`data_ur`) = 5) and (dayofmonth(`dorosli`.`data_ur`) >= 23)) or ((month(`dorosli`.`data_ur`) = 6) and (dayofmonth(`dorosli`.`data_ur`) <= 21))) then 'Bliźnięta' when (((month(`dorosli`.`data_ur`) = 6) and (dayofmonth(`dorosli`.`data_ur`) >= 22)) or ((month(`dorosli`.`data_ur`) = 7) and (dayofmonth(`dorosli`.`data_ur`) <= 22))) then 'Rak' when (((month(`dorosli`.`data_ur`) = 7) and (dayofmonth(`dorosli`.`data_ur`) >= 23)) or ((month(`dorosli`.`data_ur`) = 8) and (dayofmonth(`dorosli`.`data_ur`) <= 23))) then 'Lew' when (((month(`dorosli`.`data_ur`) = 8) and (dayofmonth(`dorosli`.`data_ur`) >= 24)) or ((month(`dorosli`.`data_ur`) = 9) and (dayofmonth(`dorosli`.`data_ur`) <= 22))) then 'Panna' when (((month(`dorosli`.`data_ur`) = 9) and (dayofmonth(`dorosli`.`data_ur`) >= 23)) or ((month(`dorosli`.`data_ur`) = 10) and (dayofmonth(`dorosli`.`data_ur`) <= 22))) then 'Waga' when (((month(`dorosli`.`data_ur`) = 10) and (dayofmonth(`dorosli`.`data_ur`) >= 23)) or ((month(`dorosli`.`data_ur`) = 11) and (dayofmonth(`dorosli`.`data_ur`) <= 21))) then 'Skorpion' when (((month(`dorosli`.`data_ur`) = 11) and (dayofmonth(`dorosli`.`data_ur`) >= 22)) or ((month(`dorosli`.`data_ur`) = 12) and (dayofmonth(`dorosli`.`data_ur`) <= 21))) then 'Strzelec' when (((month(`dorosli`.`data_ur`) = 12) and (dayofmonth(`dorosli`.`data_ur`) >= 22)) or ((month(`dorosli`.`data_ur`) = 1) and (dayofmonth(`dorosli`.`data_ur`) <= 19))) then 'Koziorożec' when (((month(`dorosli`.`data_ur`) = 1) and (dayofmonth(`dorosli`.`data_ur`) >= 20)) or ((month(`dorosli`.`data_ur`) = 2) and (dayofmonth(`dorosli`.`data_ur`) <= 18))) then 'Wodnik' when (((month(`dorosli`.`data_ur`) = 2) and (dayofmonth(`dorosli`.`data_ur`) >= 19)) or ((month(`dorosli`.`data_ur`) = 3) and (dayofmonth(`dorosli`.`data_ur`) <= 20))) then 'Ryby' end) AS `znak_zodiaku` from `dorosli` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `znaki_zodiaku_dz`
--

/*!50001 DROP VIEW IF EXISTS `znaki_zodiaku_dz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `znaki_zodiaku_dz` AS select `dzieci`.`imie` AS `imie`,`dzieci`.`nazwisko` AS `nazwisko`,(case when (((month(`dzieci`.`data_ur`) = 3) and (dayofmonth(`dzieci`.`data_ur`) >= 21)) or ((month(`dzieci`.`data_ur`) = 4) and (dayofmonth(`dzieci`.`data_ur`) <= 19))) then 'Baran' when (((month(`dzieci`.`data_ur`) = 4) and (dayofmonth(`dzieci`.`data_ur`) >= 20)) or ((month(`dzieci`.`data_ur`) = 5) and (dayofmonth(`dzieci`.`data_ur`) <= 22))) then 'Byk' when (((month(`dzieci`.`data_ur`) = 5) and (dayofmonth(`dzieci`.`data_ur`) >= 23)) or ((month(`dzieci`.`data_ur`) = 6) and (dayofmonth(`dzieci`.`data_ur`) <= 21))) then 'Bliźnięta' when (((month(`dzieci`.`data_ur`) = 6) and (dayofmonth(`dzieci`.`data_ur`) >= 22)) or ((month(`dzieci`.`data_ur`) = 7) and (dayofmonth(`dzieci`.`data_ur`) <= 22))) then 'Rak' when (((month(`dzieci`.`data_ur`) = 7) and (dayofmonth(`dzieci`.`data_ur`) >= 23)) or ((month(`dzieci`.`data_ur`) = 8) and (dayofmonth(`dzieci`.`data_ur`) <= 23))) then 'Lew' when (((month(`dzieci`.`data_ur`) = 8) and (dayofmonth(`dzieci`.`data_ur`) >= 24)) or ((month(`dzieci`.`data_ur`) = 9) and (dayofmonth(`dzieci`.`data_ur`) <= 22))) then 'Panna' when (((month(`dzieci`.`data_ur`) = 9) and (dayofmonth(`dzieci`.`data_ur`) >= 23)) or ((month(`dzieci`.`data_ur`) = 10) and (dayofmonth(`dzieci`.`data_ur`) <= 22))) then 'Waga' when (((month(`dzieci`.`data_ur`) = 10) and (dayofmonth(`dzieci`.`data_ur`) >= 23)) or ((month(`dzieci`.`data_ur`) = 11) and (dayofmonth(`dzieci`.`data_ur`) <= 21))) then 'Skorpion' when (((month(`dzieci`.`data_ur`) = 11) and (dayofmonth(`dzieci`.`data_ur`) >= 22)) or ((month(`dzieci`.`data_ur`) = 12) and (dayofmonth(`dzieci`.`data_ur`) <= 21))) then 'Strzelec' when (((month(`dzieci`.`data_ur`) = 12) and (dayofmonth(`dzieci`.`data_ur`) >= 22)) or ((month(`dzieci`.`data_ur`) = 1) and (dayofmonth(`dzieci`.`data_ur`) <= 19))) then 'Koziorożec' when (((month(`dzieci`.`data_ur`) = 1) and (dayofmonth(`dzieci`.`data_ur`) >= 20)) or ((month(`dzieci`.`data_ur`) = 2) and (dayofmonth(`dzieci`.`data_ur`) <= 18))) then 'Wodnik' when (((month(`dzieci`.`data_ur`) = 2) and (dayofmonth(`dzieci`.`data_ur`) >= 19)) or ((month(`dzieci`.`data_ur`) = 3) and (dayofmonth(`dzieci`.`data_ur`) <= 20))) then 'Ryby' end) AS `znak_zodiaku` from `dzieci` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `znaki_zodiaku_w`
--

/*!50001 DROP VIEW IF EXISTS `znaki_zodiaku_w`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `znaki_zodiaku_w` AS select `wszyscy`.`imie` AS `imie`,`wszyscy`.`nazwisko` AS `nazwisko`,(case when (((month(`wszyscy`.`data_ur`) = 3) and (dayofmonth(`wszyscy`.`data_ur`) >= 21)) or ((month(`wszyscy`.`data_ur`) = 4) and (dayofmonth(`wszyscy`.`data_ur`) <= 19))) then 'Baran' when (((month(`wszyscy`.`data_ur`) = 4) and (dayofmonth(`wszyscy`.`data_ur`) >= 20)) or ((month(`wszyscy`.`data_ur`) = 5) and (dayofmonth(`wszyscy`.`data_ur`) <= 22))) then 'Byk' when (((month(`wszyscy`.`data_ur`) = 5) and (dayofmonth(`wszyscy`.`data_ur`) >= 23)) or ((month(`wszyscy`.`data_ur`) = 6) and (dayofmonth(`wszyscy`.`data_ur`) <= 21))) then 'Bliźnięta' when (((month(`wszyscy`.`data_ur`) = 6) and (dayofmonth(`wszyscy`.`data_ur`) >= 22)) or ((month(`wszyscy`.`data_ur`) = 7) and (dayofmonth(`wszyscy`.`data_ur`) <= 22))) then 'Rak' when (((month(`wszyscy`.`data_ur`) = 7) and (dayofmonth(`wszyscy`.`data_ur`) >= 23)) or ((month(`wszyscy`.`data_ur`) = 8) and (dayofmonth(`wszyscy`.`data_ur`) <= 23))) then 'Lew' when (((month(`wszyscy`.`data_ur`) = 8) and (dayofmonth(`wszyscy`.`data_ur`) >= 24)) or ((month(`wszyscy`.`data_ur`) = 9) and (dayofmonth(`wszyscy`.`data_ur`) <= 22))) then 'Panna' when (((month(`wszyscy`.`data_ur`) = 9) and (dayofmonth(`wszyscy`.`data_ur`) >= 23)) or ((month(`wszyscy`.`data_ur`) = 10) and (dayofmonth(`wszyscy`.`data_ur`) <= 22))) then 'Waga' when (((month(`wszyscy`.`data_ur`) = 10) and (dayofmonth(`wszyscy`.`data_ur`) >= 23)) or ((month(`wszyscy`.`data_ur`) = 11) and (dayofmonth(`wszyscy`.`data_ur`) <= 21))) then 'Skorpion' when (((month(`wszyscy`.`data_ur`) = 11) and (dayofmonth(`wszyscy`.`data_ur`) >= 22)) or ((month(`wszyscy`.`data_ur`) = 12) and (dayofmonth(`wszyscy`.`data_ur`) <= 21))) then 'Strzelec' when (((month(`wszyscy`.`data_ur`) = 12) and (dayofmonth(`wszyscy`.`data_ur`) >= 22)) or ((month(`wszyscy`.`data_ur`) = 1) and (dayofmonth(`wszyscy`.`data_ur`) <= 19))) then 'Koziorożec' when (((month(`wszyscy`.`data_ur`) = 1) and (dayofmonth(`wszyscy`.`data_ur`) >= 20)) or ((month(`wszyscy`.`data_ur`) = 2) and (dayofmonth(`wszyscy`.`data_ur`) <= 18))) then 'Wodnik' when (((month(`wszyscy`.`data_ur`) = 2) and (dayofmonth(`wszyscy`.`data_ur`) >= 19)) or ((month(`wszyscy`.`data_ur`) = 3) and (dayofmonth(`wszyscy`.`data_ur`) <= 20))) then 'Ryby' end) AS `znak_zodiaku` from `wszyscy` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-27 16:53:41
