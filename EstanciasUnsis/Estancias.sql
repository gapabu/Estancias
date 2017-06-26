-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: estancias
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `clasificacion`
--

DROP TABLE IF EXISTS `clasificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clasificacion` (
  `idClasificacion` int(11) NOT NULL AUTO_INCREMENT,
  `clasificacion` varchar(30) NOT NULL,
  PRIMARY KEY (`idClasificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clasificacion`
--

LOCK TABLES `clasificacion` WRITE;
/*!40000 ALTER TABLE `clasificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `clasificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `APaterno` varchar(15) DEFAULT NULL,
  `AMaterno` varchar(15) DEFAULT NULL,
  `Puesto` varchar(20) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idContacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `idClasificacion` int(11) NOT NULL,
  `idGiro` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  PRIMARY KEY (`idEmpresa`),
  KEY `idClasificacion` (`idClasificacion`),
  KEY `idGiro` (`idGiro`),
  CONSTRAINT `idClasificacion` FOREIGN KEY (`idClasificacion`) REFERENCES `clasificacion` (`idClasificacion`),
  CONSTRAINT `idGiro` FOREIGN KEY (`idGiro`) REFERENCES `giro` (`idGiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giro`
--

DROP TABLE IF EXISTS `giro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giro` (
  `idGiro` int(11) NOT NULL AUTO_INCREMENT,
  `Giro` varchar(30) NOT NULL,
  PRIMARY KEY (`idGiro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giro`
--

LOCK TABLES `giro` WRITE;
/*!40000 ALTER TABLE `giro` DISABLE KEYS */;
/*!40000 ALTER TABLE `giro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `APaterno` varchar(15) DEFAULT NULL,
  `AMaterno` varchar(15) DEFAULT NULL,
  `Area` varchar(20) NOT NULL,
  `Nivel` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'io','1','G','P','B','info',1),(2,'due','2','K','L','B','emp',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'estancias'
--

--
-- Dumping routines for database 'estancias'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-26 10:50:19
