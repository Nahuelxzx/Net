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
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vuelo` (
  `idVuelo` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_Salida` date NOT NULL,
  `Cod_Aepto_Origen` int(11) NOT NULL,
  `Cod_Aepto_Destino` int(11) NOT NULL,
  `Hora_Salida` time DEFAULT NULL,
  `Hora_Llegada` time DEFAULT NULL,
  `Dia_vuelo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idVuelo`),
  KEY `FK_Aepto_Origen_idx` (`Cod_Aepto_Origen`),
  KEY `Fk_Aepto_Destino_idx` (`Cod_Aepto_Destino`),
  CONSTRAINT `Fk_Aepto_Destino` FOREIGN KEY (`Cod_Aepto_Destino`) REFERENCES `aeropuerto` (`idAeropuerto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Aepto_Origen` FOREIGN KEY (`Cod_Aepto_Origen`) REFERENCES `aeropuerto` (`idAeropuerto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
INSERT INTO `vuelo` VALUES (1,'2014-09-09',2,3,'00:00:00','00:00:00','');
/*!40000 ALTER TABLE `vuelo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-06 23:22:19
