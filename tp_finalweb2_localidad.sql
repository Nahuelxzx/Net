CREATE DATABASE  IF NOT EXISTS `tp_finalweb2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tp_finalweb2`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: tp_finalweb2
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidad` (
  `idLocalidad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `idProvincia` int(11) DEFAULT NULL,
  `Oasi` varchar(4) NOT NULL,
  PRIMARY KEY (`idLocalidad`),
  KEY `fkidProvincia_idx` (`idProvincia`),
  CONSTRAINT `fki_dProvincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`idProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES (1,'Azul',1,'SAZA'),(2,'Bahia Blanca',1,'SAZB'),(3,'Bariloche',15,'SAZS'),(4,'Bolivar',1,'SAZI'),(5,'Buenos Aires',1,'SABE'),(6,'Campo de Mayo',1,'SADO'),(7,'Caviahue',14,'SAHE'),(8,'Ceres',20,'SANW'),(9,'Chamical',11,'SACT'),(10,'Chepes',11,'SACP'),(11,'Chilecito',11,'SANO'),(12,'Clorinda',8,'SATC'),(13,'Comodoro Rivadavia',4,'SAVC'),(14,'Cordoba',5,'SACO'),(15,'Concordia',7,'SAAC'),(16,'Coronel Suarez',1,'SAZC'),(17,'Corrientes',6,'SARC'),(18,'El Bolson',15,'SAVB'),(19,'El Calafate',19,'SAWC'),(20,'Esquel',4,'SAVE'),(21,'Ezeiza',1,'SAEZ'),(22,'Formosa',8,'SARF'),(23,'Villa Gesell',1,'SAZV'),(24,'Tandil',1,'SAZT');
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-06 23:22:20
