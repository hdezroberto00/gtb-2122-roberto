-- MySQL dump 10.13  Distrib 5.1.51, for Win64 (unknown)
--
-- Host: localhost    Database: cfs
-- ------------------------------------------------------
-- Server version	5.1.51-community

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `DNI` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `APENOM` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DIREC` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `POBLA` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `TELEF` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES ('12344345','Alcalde García, Elena','C/Las Matas, 24','Madrid','917766545'),('4448242','Cerrato Vela, Luis','C/Mina 28 - 3A','Madrid','916566545'),('56882942','Díaz Fernández, María','C/Luis Vives 25','Móstoles','915577545');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaturas` (
  `COD` int(2) NOT NULL DEFAULT '0',
  `NOMBRE` varchar(25) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`COD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
INSERT INTO `asignaturas` VALUES (1,'Prog. Leng. Estr.'),(2,'Sist. Informáticos'),(3,'Análisis'),(4,'FOL'),(5,'RET'),(6,'Entornos Gráficos'),(7,'Aplic. Entornos 4ªGen');
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `DNI` varchar(10) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `COD` int(2) NOT NULL DEFAULT '0',
  `NOTA` int(2) DEFAULT NULL,
  PRIMARY KEY (`DNI`,`COD`),
  KEY `C` (`COD`),
  CONSTRAINT `C` FOREIGN KEY (`COD`) REFERENCES `asignaturas` (`COD`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `D` FOREIGN KEY (`DNI`) REFERENCES `alumnos` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES ('12344345',1,6),('12344345',2,5),('12344345',3,6),('4448242',4,6),('4448242',5,8),('4448242',6,4),('4448242',7,5),('56882942',4,8),('56882942',5,7),('56882942',6,8),('56882942',7,9);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-06-06 21:41:03
