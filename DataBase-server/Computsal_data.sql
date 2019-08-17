-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: Computsal
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `captain`
--

DROP TABLE IF EXISTS `captain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_captain_team` varchar(255) NOT NULL,
  `fk_captain_player` int(11) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`,`fk_captain_team`,`fk_captain_player`),
  KEY `fk_captain_player_idx` (`fk_captain_player`),
  KEY `fk_captain_team_idx` (`fk_captain_team`),
  CONSTRAINT `fk_captain_player` FOREIGN KEY (`fk_captain_player`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_captain_team` FOREIGN KEY (`fk_captain_team`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captain`
--

LOCK TABLES `captain` WRITE;
/*!40000 ALTER TABLE `captain` DISABLE KEYS */;
INSERT INTO `captain` VALUES (31,'Gol++',214,'email1'),(32,'DigDin',225,'email2'),(33,'Etanoicos',233,'email3'),(34,'BKFC',241,'email4'),(35,'Borussia',247,'email5'),(36,'Chinchilas',253,'email6'),(37,'Real Matrix',260,'email7'),(38,'Laranja Mecanica',266,'email8'),(39,'Horriver Plate',272,'email9'),(40,'Barcelombra',278,'email10'),(41,'olla',283,'email11'),(42,'Exclude',290,'email12'),(43,'Logo time',298,'email13'),(44,'Bola voando',303,'email14'),(45,'Whasoccer',308,'email15'),(46,'Time logo',314,'email16');
/*!40000 ALTER TABLE `captain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elimination_match`
--

DROP TABLE IF EXISTS `elimination_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elimination_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team1` varchar(45) NOT NULL,
  `team2` varchar(45) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elimination_match`
--

LOCK TABLES `elimination_match` WRITE;
/*!40000 ALTER TABLE `elimination_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `elimination_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `next_match`
--

DROP TABLE IF EXISTS `next_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `next_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_next_team1` varchar(255) NOT NULL,
  `fk_next_team2` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`,`fk_next_team1`,`fk_next_team2`),
  KEY `fk_next_match_1_idx` (`fk_next_team1`),
  KEY `fk_next_match_2_idx` (`fk_next_team2`),
  CONSTRAINT `fk_next_team1` FOREIGN KEY (`fk_next_team1`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_next_team2` FOREIGN KEY (`fk_next_team2`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `next_match`
--

LOCK TABLES `next_match` WRITE;
/*!40000 ALTER TABLE `next_match` DISABLE KEYS */;
INSERT INTO `next_match` VALUES (7,'Barcelombra','Logo time',3,0),(8,'Gol++','Etanoicos',4,0);
/*!40000 ALTER TABLE `next_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fk_player_team` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`fk_player_team`),
  KEY `fk_player_team_idx` (`fk_player_team`),
  CONSTRAINT `fk_player_team` FOREIGN KEY (`fk_player_team`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (214,'André Luiz Bittencourt','Gol++'),(215,'Gabriel Crespo','Gol++'),(216,'Rodrigo Cardoso','Gol++'),(217,'Luan','Gol++'),(218,'Kelvin','Gol++'),(219,'Igor','Gol++'),(220,'Rafael Alencar','Gol++'),(221,'Artur Renan','Gol++'),(222,'Artur Zorron','Gol++'),(223,'Hugo Rezende','Gol++'),(224,'Gabriel Mello','Gol++'),(225,'Luís Silva','DigDin'),(226,'Felipe Ribeiro','DigDin'),(227,'Murilo Silva','DigDin'),(228,'Luis Correia','DigDin'),(229,'Kauê Carvalho','DigDin'),(230,'Rodrigo Souza','DigDin'),(231,'Vitór Rocha','DigDin'),(232,'Caio Rocha','DigDin'),(233,'Victor Guedes','Etanoicos'),(234,'Victor Araujo','Etanoicos'),(235,'Tomás','Etanoicos'),(236,'Madruga','Etanoicos'),(237,'Patrick','Etanoicos'),(238,'Marcos Alves','Etanoicos'),(239,'José Rodrigues','Etanoicos'),(240,'João Cardoso','Etanoicos'),(241,'Rafael Batista','BKFC'),(242,'Kauê Azevedo','BKFC'),(243,'Fábio Rocha','BKFC'),(244,'Luan Cavalcanti','BKFC'),(245,'Leonardo Ferreira','BKFC'),(246,'André Rodrigues','BKFC'),(247,'Renan Alves','Borussia'),(248,'Erick Cardoso','Borussia'),(249,'Arthur Ferreira','Borussia'),(250,'André Fernandes','Borussia'),(251,'Luis Almeida','Borussia'),(252,'Danilo Goncalves','Borussia'),(253,'Marcelo','Chinchilas'),(254,'Bonomo','Chinchilas'),(255,'Coutinho','Chinchilas'),(256,'Stanley','Chinchilas'),(257,'Samuel','Chinchilas'),(258,'Ken','Chinchilas'),(259,'Rolf','Chinchilas'),(260,'Breno','Real Matrix'),(261,'Rodolfo','Real Matrix'),(262,'Tarcisio Junior','Real Matrix'),(263,'Miguel Lima','Real Matrix'),(264,'Gabriel','Real Matrix'),(265,'Renan Rocha','Real Matrix'),(266,'Tomás Goncalves','Laranja Mecanica'),(267,'Luan Ribeiro','Laranja Mecanica'),(268,'Kauê Fernandes','Laranja Mecanica'),(269,'Luiz Alves','Laranja Mecanica'),(270,'Enzo Fernandes','Laranja Mecanica'),(271,'Guilherme Castro','Laranja Mecanica'),(272,'Douglas','Horriver Plate'),(273,'Joao Melo','Horriver Plate'),(274,'Thiago Cunha','Horriver Plate'),(275,'Rodrigo Ribeiro','Horriver Plate'),(276,'Douglas Pinto','Horriver Plate'),(277,'Rafael Castro','Horriver Plate'),(278,'Emanuel Guedella','Barcelombra'),(279,'Salomão Caneira','Barcelombra'),(280,'Reinaldo Luz','Barcelombra'),(281,'Raul Juruna','Barcelombra'),(282,'Nicolau Granjeia','Barcelombra'),(283,'Erick Almeida','olla'),(284,'Vinícius Dias','olla'),(285,'Enzo Cunha','olla'),(286,'Ricardo','olla'),(287,'Roberto Rocha','olla'),(288,'Alberto','olla'),(289,'Junior','olla'),(290,'Ricardo Almeida','Exclude'),(291,'Jose marcos','Exclude'),(292,'Thiago rocha','Exclude'),(293,'Humberto da silva','Exclude'),(294,'Mateus lima','Exclude'),(295,'Pedro paulo','Exclude'),(296,'Arthur carvalho','Exclude'),(297,'Vitor da silva','Exclude'),(298,'Alex Oliveira','Logo time'),(299,'Murilo Pinto','Logo time'),(300,'Ryan Correia','Logo time'),(301,'Julian Alves','Logo time'),(302,'José Fernandes','Logo time'),(303,'Daniel Dias','Bola voando'),(304,'Estevan Lima','Bola voando'),(305,'Luís Cavalcanti Barros','Bola voando'),(306,'Otávio Pinto Oliveira','Bola voando'),(307,'Antônio Rodrigues Martins','Bola voando'),(308,'Diego Barros Sousa','Whasoccer'),(309,'Erick Oliveira Barbosa','Whasoccer'),(310,'André Ricardo','Whasoccer'),(311,'Cesar Augusto','Whasoccer'),(312,'Augusto Cesar','Whasoccer'),(313,'João Marcos','Whasoccer'),(314,'Eduardo Alves','Time logo'),(315,'Leandro Junior','Time logo'),(316,'Marcelo silva','Time logo'),(317,'Daniel moura','Time logo'),(318,'Raimundo','Time logo'),(319,'Pedro da silva','Time logo');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_match`
--

DROP TABLE IF EXISTS `player_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_score_player` int(11) NOT NULL,
  `fk_score_match` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `yellow` int(11) NOT NULL,
  `red` int(11) NOT NULL,
  PRIMARY KEY (`id`,`fk_score_player`,`fk_score_match`),
  KEY `fk_score_match_idx` (`fk_score_match`),
  KEY `fk_score_player` (`fk_score_player`),
  CONSTRAINT `fk_score_match` FOREIGN KEY (`fk_score_match`) REFERENCES `previous_match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_player` FOREIGN KEY (`fk_score_player`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_match`
--

LOCK TABLES `player_match` WRITE;
/*!40000 ALTER TABLE `player_match` DISABLE KEYS */;
INSERT INTO `player_match` VALUES (14,292,15,2,1,0),(15,303,15,1,0,1),(16,291,15,1,0,0),(17,293,15,1,0,0),(18,269,16,3,0,0),(19,271,16,1,0,0),(20,272,16,4,0,0),(21,273,16,0,1,0),(22,256,17,3,0,0),(23,253,17,1,1,0),(24,264,17,1,0,0),(25,260,17,1,0,1),(26,286,18,1,0,0),(27,229,19,3,0,0),(28,241,19,2,0,0);
/*!40000 ALTER TABLE `player_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previous_match`
--

DROP TABLE IF EXISTS `previous_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_match_team1` varchar(255) NOT NULL,
  `fk_match_team2` varchar(255) NOT NULL,
  `match_type` int(11) NOT NULL,
  `phase` int(11) NOT NULL,
  PRIMARY KEY (`id`,`fk_match_team1`,`fk_match_team2`),
  KEY `fk_match_team1_idx` (`fk_match_team1`),
  KEY `fk_match_team2_idx` (`fk_match_team2`),
  CONSTRAINT `fk_match_team1` FOREIGN KEY (`fk_match_team1`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_match_team2` FOREIGN KEY (`fk_match_team2`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous_match`
--

LOCK TABLES `previous_match` WRITE;
/*!40000 ALTER TABLE `previous_match` DISABLE KEYS */;
INSERT INTO `previous_match` VALUES (15,'Exclude','Bola voando',0,1),(16,'Laranja Mecanica','Horriver Plate',0,1),(17,'Chinchilas','Real Matrix',0,1),(18,'olla','Time logo',0,1),(19,'DigDin','BKFC',0,1),(20,'Borussia','Whasoccer',0,1);
/*!40000 ALTER TABLE `previous_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_schedule_team` varchar(255) NOT NULL,
  `fk_schedule_time` int(11) NOT NULL,
  PRIMARY KEY (`id`,`fk_schedule_team`,`fk_schedule_time`),
  KEY `fk_schedule_team_idx` (`fk_schedule_team`),
  KEY `time_idx` (`fk_schedule_time`),
  CONSTRAINT `fk_schedule_team` FOREIGN KEY (`fk_schedule_team`) REFERENCES `team` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `time` FOREIGN KEY (`fk_schedule_time`) REFERENCES `time` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `group_number` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('Gol++','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A122?alt=media&token=8eecf87b-cc3d-4d73-b204-6436b736793c',1,31),('DigDin','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fdig.jpg?alt=media&token=54dc6c04-ffec-42ec-9ac8-7aa798a5ffdf',2,32),('Etanoicos','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A123?alt=media&token=8d4e9ffd-190b-4806-b198-f40b52f686a3',1,33),('BKFC','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A124?alt=media&token=44ce5d83-a615-4056-9e04-c16fe0603f0c',2,34),('Borussia','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A125?alt=media&token=c8aa1aee-a917-4366-abdc-9cf16fe53a99',2,35),('Chinchilas','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A128?alt=media&token=4eca9b9d-f1c1-495f-9d0d-508714b50786',3,36),('Real Matrix','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A129?alt=media&token=3497e4a8-ebf4-4cda-98b0-9e378e5a1560',3,37),('Laranja Mecanica','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A131?alt=media&token=ebbf494f-1680-4d07-ad6e-8c0b34805cd9',4,38),('Horriver Plate','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A132?alt=media&token=472f6ac1-ba9b-4205-a9a2-7498d4dadfcd',4,39),('Barcelombra','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A133?alt=media&token=d8787af3-d3f7-448e-8013-47386dcb1ba3',1,40),('olla','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fimage%3A151?alt=media&token=3daaeea1-774a-48d0-a7b1-825a06b78dd4',3,41),('Exclude','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Fnova.jpg?alt=media&token=238577ce-1678-49e6-9a6c-9997cadcce5b',4,42),('Logo time','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Ft1.png?alt=media&token=3fc926f3-947d-47e3-b06f-778394f72db2',1,43),('Bola voando','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Ft2.png?alt=media&token=251c4040-ae4b-41aa-90b5-46abb10ae842',4,44),('Whasoccer','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Ft3.jpg?alt=media&token=bae13969-d783-442a-a235-b0025a3574dc',2,45),('Time logo','https://firebasestorage.googleapis.com/v0/b/computsal-70e30.appspot.com/o/Logo_times%2Ft4.png?alt=media&token=82811d34-35d3-4fe1-b8ff-c174747a6522',3,46);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `time_UNIQUE` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (7,'10:00:00'),(8,'11:00:00'),(6,'12:00:00'),(5,'13:00:00'),(1,'14:30:00'),(2,'15:00:00'),(3,'16:00:00'),(4,'17:00:00');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-17  9:46:13
