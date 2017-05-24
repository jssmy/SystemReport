-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: soft_db
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `tb_atencion`
--

DROP TABLE IF EXISTS `tb_atencion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_atencion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `atendido_por` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tb_atencion_1_idx` (`atendido_por`),
  CONSTRAINT `fk_tb_atencion_1` FOREIGN KEY (`atendido_por`) REFERENCES `tb_empleado` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_atencion`
--

LOCK TABLES `tb_atencion` WRITE;
/*!40000 ALTER TABLE `tb_atencion` DISABLE KEYS */;
INSERT INTO `tb_atencion` VALUES (1,'N_IM000214464',3,'2017-04-01 16:08:53',NULL,NULL,'CLOSED',1),(2,'N_IM000217641',3,'2017-04-01 16:11:13',NULL,NULL,'CLOSES',1),(3,'N_IM000218605',3,'2017-04-01 16:11:13',NULL,NULL,'CLOSES',1),(4,'N_IM000221399',3,'2017-04-01 16:11:13',NULL,NULL,'CLOSED',1),(5,'N_IM000222489',3,'2017-04-01 16:11:13',NULL,NULL,'CLOSED',1),(6,'N_IM000223747',3,'2017-04-01 16:11:13',NULL,NULL,'CLOSED',2);
/*!40000 ALTER TABLE `tb_atencion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cargo`
--

DROP TABLE IF EXISTS `tb_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cargo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cargo`
--

LOCK TABLES `tb_cargo` WRITE;
/*!40000 ALTER TABLE `tb_cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_departamento` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamento`
--

LOCK TABLES `tb_departamento` WRITE;
/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;
INSERT INTO `tb_departamento` VALUES (1,'L-REQSSP-REGULATORIOS',NULL),(2,'REQ_APROVISIONAMIENTO_N3',NULL),(3,'REQ_APROVISIONAMIENTO_N2',NULL);
/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_empleado`
--

DROP TABLE IF EXISTS `tb_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_empleado` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(40) DEFAULT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email_personal` varchar(100) DEFAULT NULL,
  `email_empresa` varchar(100) DEFAULT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `cargo` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_empleado`
--

LOCK TABLES `tb_empleado` WRITE;
/*!40000 ALTER TABLE `tb_empleado` DISABLE KEYS */;
INSERT INTO `tb_empleado` VALUES (1,'jss.my','54545333','Joset','Manihuari','LIma-chorrillos','servidorlogico@gmail.com','jss.my@upc.pe','232333232',2,NULL,NULL),(2,'rics.mss','54564333','Ricardo','Parlo','LIma-Santa','ricky@gmail.com','rics.mss@upc.pe','545644356',2,NULL,NULL),(3,'carlos.marin','65478900','Carlos','Marin','LIma-CHorri','carly@gmail.com','carly.marin@upc.pe','878788656',3,NULL,NULL);
/*!40000 ALTER TABLE `tb_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_grupo`
--

DROP TABLE IF EXISTS `tb_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_grupo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_grupo`
--

LOCK TABLES `tb_grupo` WRITE;
/*!40000 ALTER TABLE `tb_grupo` DISABLE KEYS */;
INSERT INTO `tb_grupo` VALUES (1,'INC_PREPAGO',NULL),(2,'INC_APROVISIONAMIENTO',NULL),(3,'INC_APROVISIONAMIENTO_N2',NULL);
/*!40000 ALTER TABLE `tb_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_incidencia`
--

DROP TABLE IF EXISTS `tb_incidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_incidencia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `grupo` int(11) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `solucion` text,
  PRIMARY KEY (`ID`),
  KEY `fk_tb_incidencia_2_idx` (`grupo`),
  CONSTRAINT `fk_tb_incidencia_1` FOREIGN KEY (`ID`) REFERENCES `tb_atencion` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_incidencia_2` FOREIGN KEY (`grupo`) REFERENCES `tb_grupo` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_incidencia`
--

LOCK TABLES `tb_incidencia` WRITE;
/*!40000 ALTER TABLE `tb_incidencia` DISABLE KEYS */;
INSERT INTO `tb_incidencia` VALUES (6,2,'  ERRORES DE ACTIVACION AL  28/10/2016','*DESCRIPCION DEL INCIDENTE: Cliente indica que no les llega el sms de conformaciÃ³n al momento de realizar recargas virtuales, le llega el saldo pero no el mensaje confirmando la recarga.  *DATOS DEL CLIENTE (En caso corresponda) NÂ° TelefÃ³nico: VARIOS NÂ° Contrato/incidente/Orden: VARIOS NÂ° DNI / RUC: VARIOS  *SE ADJUNTA LOS CASOS AFECTADOS EN ARCHIVO EXCEL.','Se realizÃ³ conciliaciÃ³n de algunos escenarios conocidos.');
/*!40000 ALTER TABLE `tb_incidencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_requerimiento`
--

DROP TABLE IF EXISTS `tb_requerimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_requerimiento` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` int(11) DEFAULT NULL,
  `codificado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tb_requerimiento_2_idx` (`departamento`),
  CONSTRAINT `fk_tb_requerimiento_1` FOREIGN KEY (`ID`) REFERENCES `tb_atencion` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_requerimiento_2` FOREIGN KEY (`departamento`) REFERENCES `tb_departamento` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_requerimiento`
--

LOCK TABLES `tb_requerimiento` WRITE;
/*!40000 ALTER TABLE `tb_requerimiento` DISABLE KEYS */;
INSERT INTO `tb_requerimiento` VALUES (1,1,1),(2,1,0),(3,1,1),(4,3,1),(5,2,0);
/*!40000 ALTER TABLE `tb_requerimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tarea`
--

DROP TABLE IF EXISTS `tb_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tarea` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `asignado_a` int(11) DEFAULT NULL,
  `resuelto_por` int(11) DEFAULT NULL,
  `fecha_apertura` datetime DEFAULT NULL,
  `fecha_solucion` datetime DEFAULT NULL,
  `atencion` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tb_tarea_1_idx` (`asignado_a`),
  KEY `fk_tb_tarea_2_idx` (`resuelto_por`),
  KEY `fk_tb_tarea_3_idx` (`atencion`),
  CONSTRAINT `fk_tb_tarea_1` FOREIGN KEY (`asignado_a`) REFERENCES `tb_empleado` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_tarea_2` FOREIGN KEY (`resuelto_por`) REFERENCES `tb_empleado` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_tarea_3` FOREIGN KEY (`atencion`) REFERENCES `tb_atencion` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tarea`
--

LOCK TABLES `tb_tarea` WRITE;
/*!40000 ALTER TABLE `tb_tarea` DISABLE KEYS */;
INSERT INTO `tb_tarea` VALUES (1,1,1,'2017-04-02 16:37:20','2017-04-02 16:37:20',1,NULL,NULL),(2,2,2,'2017-04-02 16:37:20','2017-04-02 16:37:20',2,NULL,NULL),(3,1,2,'2017-04-02 16:37:20','2017-04-02 16:37:20',3,NULL,NULL),(4,1,1,'2017-04-02 16:37:20','2017-04-02 16:37:20',4,NULL,NULL),(5,1,1,'2017-04-02 16:37:20','2017-04-02 16:37:20',5,NULL,NULL),(6,2,2,'2017-04-02 16:37:20','2017-04-02 16:37:20',6,NULL,NULL);
/*!40000 ALTER TABLE `tb_tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `passsword` varchar(255) DEFAULT NULL,
  `typee` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `empleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tb_user_1_idx` (`empleado`),
  CONSTRAINT `fk_tb_user_1` FOREIGN KEY (`empleado`) REFERENCES `tb_empleado` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (8,'jss.my@upc.pe','nSvl18JO6fdiLQKb8lUGAA==','USER','2017-04-04 00:00:00',NULL,1);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-05 19:57:34
