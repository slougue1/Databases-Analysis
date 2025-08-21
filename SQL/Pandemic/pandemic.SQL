

CREATE DATABASE IF NOT EXISTS `pandemics` /*!40100 DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pandemics`;
-- MySQL dump 10.13 Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost Database: pandemics
-- ------------------------------------------------------
-- Server version 8.0.30
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `diseases`
--
DROP TABLE IF EXISTS `diseases`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases` (
`disease_id` int NOT NULL,
`disease_name` varchar(45) NOT NULL,
`suspected_origin` varchar(45) DEFAULT NULL,
`transmissibility_rate` int DEFAULT NULL,
`death_rate` int DEFAULT NULL,
`treatment` varchar(45) DEFAULT NULL,
PRIMARY KEY (`disease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `diseases`
--
LOCK TABLES `diseases` WRITE;
/*!40000 ALTER TABLE `diseases` DISABLE KEYS */;
INSERT INTO `diseases` VALUES (1,'Yersinia pestis','Fleas ',20,15,'Gentamicin and
fluoroquinolones'),(2,'Vibrio cholerae','Contaminated water',24,13,'Oral or
intravenous hydration'),(3,'SARS-CoV','Bats pangolins',25,19,'Antiviral treatments
'),(4,'MERS-CoV','Bats ',24,17,'Antiviral treatments '),
(5,'Influenza','Avian',23,10,'Antiviral treatments '),(6,'SARS-CoV-
2','Bats',40,6,'OTC medications'),(7,'Chickenpox','Fleas associated to\nwild
rodents',24,19,'Antiviral treatments '),(8,'Celiac Disease','Contaminated
water',28,13,'Antiviral treatments '),(9,'Crabs','Bats',29,1,'Antiviral treatments
'),(10,'Diabetes','Bats',24,18,'OTC medications'),
(11,'Diphtheria','Avian',23,14,'Gentamicin and fluoroquinolones'),
(12,'Cyclospora','Bats',40,19,'Oral or intravenous hydration'),
(13,'Cancer','Contaminated water',20,19,'Antiviral treatments '),(14,'Chagas','Bats
',24,13,'Antiviral treatments '),(15,'Conjunctivitis','Bats',25,1,'Antiviral
treatments '),(16,'Acne','Avian',24,18,'OTC medications'),
(17,'Asthma','Bats',23,14,'Gentamicin and fluoroquinolones'),
(18,'Appendicitis','primates',40,19,'Oral or intravenous hydration'),
(19,'Arthritis','Contaminated water',20,19,'Antiviral treatments '),
(20,'Bronchitis','pigs ',24,13,'Antiviral treatments '),(21,'Earache','Contaminated
water',25,1,'Antiviral treatments '),(22,'Fibroids','Bats',24,18,'OTC
medications'),(23,'Gallstones','Bats',23,14,'Antiviral treatments '),
(24,'Scoliosis','Avian',40,19,'OTC medications'),
(25,'Thrush','Bats',24,19,'Antiviral treatments '),(26,'Osteoporosis','Fleas
associated to\nwild rodents',23,13,'Antiviral treatments '),
(27,'Impetigo','Contaminated water',40,1,'Antiviral treatments '),
(28,'Haemorrhoids','Bats',20,18,'Antiviral treatments '),
(29,'Vertigo','Bats',24,14,'Antiviral treatments '),(30,'Yellow
fever','Avian',25,19,'OTC medications');
/*!40000 ALTER TABLE `diseases` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `diseases_in_dense_countries`
--
DROP TABLE IF EXISTS `diseases_in_dense_countries`;
/*!50001 DROP VIEW IF EXISTS `diseases_in_dense_countries`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `diseases_in_dense_countries` AS SELECT
1 AS `Diseases in Dense Countries`,
1 AS `nation_name`,
1 AS `density`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `diseases_symptoms_link`
--
DROP TABLE IF EXISTS `diseases_symptoms_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseases_symptoms_link` (
`disease_id` int DEFAULT NULL,
`symptom_id` int DEFAULT NULL,
KEY `symptom_idx` (`symptom_id`),
KEY `disease_sy` (`disease_id`),
CONSTRAINT `disease_sy` FOREIGN KEY (`disease_id`) REFERENCES `diseases`
(`disease_id`),
CONSTRAINT `symptom_di` FOREIGN KEY (`symptom_id`) REFERENCES `symptoms`
(`symptom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `diseases_symptoms_link`
--
LOCK TABLES `diseases_symptoms_link` WRITE;
/*!40000 ALTER TABLE `diseases_symptoms_link` DISABLE KEYS */;
INSERT INTO `diseases_symptoms_link` VALUES (1,2),(2,3),(3,8),(4,7),(5,4),(6,9),
(7,10),(8,14),(9,15),(10,1),(11,7),(12,3),(13,5),(14,13),(15,6),(16,14),(17,2),
(18,3),(19,6),(20,4),(21,8),(22,2),(23,9),(24,10),(25,15),(26,2),(27,5),(28,8),
(29,2),(30,14);
/*!40000 ALTER TABLE `diseases_symptoms_link` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `gender_identity`
--
DROP TABLE IF EXISTS `gender_identity`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender_identity` (
`gender_id` int NOT NULL,
`gender_name` varchar(45) NOT NULL,
PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `gender_identity`
--
LOCK TABLES `gender_identity` WRITE;
/*!40000 ALTER TABLE `gender_identity` DISABLE KEYS */;
INSERT INTO `gender_identity` VALUES (1,'Male'),(2,'Female'),(3,'Non-binary'),
(4,'Gender-fluid'),(5,'Other');
/*!40000 ALTER TABLE `gender_identity` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `government_response`
--
DROP TABLE IF EXISTS `government_response`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `government_response` (
`pandemic_id` int NOT NULL,
`nation_id` int NOT NULL,
`response_type` varchar(45) DEFAULT NULL,
`money_spent_millions` int DEFAULT NULL,
PRIMARY KEY (`pandemic_id`,`nation_id`),
KEY `nation_idx` (`nation_id`),
CONSTRAINT `nation` FOREIGN KEY (`nation_id`) REFERENCES `nations` (`nation_id`),
CONSTRAINT `pandemic` FOREIGN KEY (`pandemic_id`) REFERENCES `pandemics`
(`pandemic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `government_response`
--
LOCK TABLES `government_response` WRITE;
/*!40000 ALTER TABLE `government_response` DISABLE KEYS */;
INSERT INTO `government_response` VALUES (1,1,'vaccination drive ',79),
(2,2,'stimulus ',42),(3,3,'public health policies',75),(3,137,'testing and contact
tracing',24),(3,151,'lockdown',1),(4,4,'lockdown',26),(5,5,'nonpharmaceutical
interventions',3),(5,138,'vaccination drive ',23),(5,152,'nonpharmaceutical
interventions',74),(6,6,'face coverings',67),(6,139,'school and workplace
closures',64),(6,153,'testing and contact tracing',7),(7,7,'school and workplace
closures',31),(7,140,'public information campaigns',27),(8,8,'public information
campaigns',41),(8,141,'vaccination drive ',45),(9,9,'testing and contact
tracing',36),(9,142,'stimulus ',24),(10,10,'international and domestic travel',73),
(10,143,'public health policies',75),(11,11,'google mobility trends',13),
(11,144,'nonpharmaceutical interventions',96),(12,12,'lockdown',47),(12,145,'face
coverings',42),(13,13,'nonpharmaceutical interventions',41),(13,146,'school and
workplace closures',2),(14,14,'face coverings',51),(14,147,'public information
campaigns',5),(15,15,'school and workplace closures',78),(15,154,'vaccination drive
',75),(16,16,'public information campaigns',4),(16,25,'nonpharmaceutical
interventions',24),(16,32,'lockdown',46),(16,39,'google mobility trends',31),
(16,46,'nonpharmaceutical interventions',34),(16,96,'google mobility trends',2),
(16,103,'nonpharmaceutical interventions',16),(16,114,'school and workplace
closures',1),(16,162,'international and domestic travel',46),(17,17,'testing and
contact tracing',1),(17,26,'face coverings',6),(17,33,'nonpharmaceutical
interventions',7),(17,40,'lockdown',85),(17,47,'face coverings',23),
(17,97,'lockdown',21),(17,104,'face coverings',1),(17,115,'public information
campaigns',7),(17,163,'testing and contact tracing',14),(18,18,'vaccination drive
',4),(18,27,'school and workplace closures',7),(18,34,'face coverings',2),
(18,41,'nonpharmaceutical interventions',31),(18,48,'school and workplace
closures',14),(18,61,'public information campaigns',36),(18,74,'nonpharmaceutical
interventions',31),(18,81,'school and workplace closures',1),
(18,98,'nonpharmaceutical interventions',56),(18,105,'school and workplace
closures',8),(18,116,'vaccination drive ',8),(18,131,'google mobility trends',4),
(18,164,'vaccination drive ',32),(18,177,'school and workplace closures',97),
(18,184,'nonpharmaceutical interventions',19),(18,190,'public health policies',4),
(19,19,'stimulus ',6),(19,28,'public information campaigns',83),(19,35,'school and
workplace closures',4),(19,42,'vaccination drive ',42),(19,49,'public information
campaigns',29),(19,62,'vaccination drive ',21),(19,75,'testing and contact
tracing',34),(19,82,'public information campaigns',42),(19,99,'testing and contact
tracing',3),(19,106,'public information campaigns',63),(19,117,'stimulus ',95),
(19,132,'lockdown',51),(19,165,'school and workplace closures',85),(19,178,'public
information campaigns',34),(19,185,'face coverings',67),(19,191,'nonpharmaceutical
interventions',31),(20,20,'public health policies',2),(20,29,'vaccination drive
',21),(20,36,'public information campaigns',8),(20,43,'stimulus ',21),
(20,50,'testing and contact tracing',24),(20,63,'stimulus ',4),
(20,76,'international and domestic travel',21),(20,83,'testing and contact
tracing',21),(20,100,'vaccination drive ',1),(20,107,'testing and contact
tracing',23),(20,118,'public health policies',4),(20,133,'nonpharmaceutical
interventions',2),(20,155,'stimulus ',3),(20,166,'public information
campaigns',42),(20,179,'testing and contact tracing',1),(20,186,'school and
workplace closures',31),(20,192,'face coverings',85),(21,21,'lockdown',87),
(21,30,'stimulus ',7),(21,37,'testing and contact tracing',9),(21,44,'public health
policies',23),(21,51,'international and domestic travel',18),(21,64,'public health
policies',2),(21,77,'google mobility trends',5),(21,84,'vaccination drive ',71),
(21,94,'testing and contact tracing',35),(21,101,'stimulus ',76),
(21,108,'international and domestic travel',75),(21,112,'testing and contact
tracing',6),(21,119,'lockdown',6),(21,121,'face coverings',27),(21,134,'face
coverings',8),(21,148,'testing and contact tracing',3),(21,156,'public health
policies',14),(21,160,'public information campaigns',46),(21,167,'vaccination drive
',4),(21,180,'international and domestic travel',6),(21,187,'public information
campaigns',74),(21,193,'school and workplace closures',25),(22,22,'international
and domestic travel',3),(22,31,'public health policies',41),(22,38,'international
and domestic travel',5),(22,45,'lockdown',12),(22,52,'google mobility trends',24),
(22,65,'lockdown',14),(22,78,'lockdown',6),(22,85,'school and workplace
closures',35),(22,95,'international and domestic travel',3),(22,102,'public health
policies',43),(22,109,'testing and contact tracing',31),(22,113,'vaccination drive
',4),(22,120,'nonpharmaceutical interventions',36),(22,122,'school and workplace
closures',63),(22,135,'school and workplace closures',9),(22,149,'international and
domestic travel',27),(22,157,'nonpharmaceutical interventions',75),(22,161,'testing
and contact tracing',38),(22,168,'stimulus ',3),(22,181,'testing and contact
tracing',3),(22,182,'vaccination drive ',632),(22,188,'public health policies',52),
(22,194,'public information campaigns',95),(23,23,'google mobility trends',1),
(23,53,'lockdown',74),(23,66,'nonpharmaceutical interventions',5),(23,86,'public
information campaigns',23),(23,110,'school and workplace closures',46),
(23,123,'public information campaigns',37),(23,158,'face coverings',32),
(23,169,'public health policies',1),(23,195,'testing and contact tracing',22),
(24,24,'lockdown',5),(24,54,'nonpharmaceutical interventions',23),(24,67,'face
coverings',76),(24,87,'vaccination drive ',98),(24,111,'public information
campaigns',32),(24,124,'testing and contact tracing',35),(24,159,'school and
workplace closures',96),(24,170,'nonpharmaceutical interventions',6),(25,55,'face
coverings',10),(25,68,'school and workplace closures',31),(25,88,'stimulus ',4),
(25,125,'international and domestic travel',9),(25,171,'stimulus ',3),
(26,56,'school and workplace closures',6),(26,69,'public information campaigns',5),
(26,89,'public health policies',32),(26,126,'google mobility trends',4),
(26,172,'public health policies',8),(27,57,'public information campaigns',3),
(27,70,'testing and contact tracing',3),(27,90,'nonpharmaceutical
interventions',52),(27,127,'lockdown',85),(27,173,'nonpharmaceutical
interventions',4),(28,58,'testing and contact tracing',75),(28,71,'international
and domestic travel',96),(28,91,'face coverings',64),(28,128,'nonpharmaceutical
interventions',38),(28,174,'public health policies',16),(29,59,'vaccination drive
',29),(29,72,'google mobility trends',31),(29,79,'nonpharmaceutical
interventions',7),(29,92,'school and workplace closures',31),(29,129,'testing and
contact tracing',56),(29,136,'public information campaigns',56),(29,150,'google
mobility trends',45),(29,175,'nonpharmaceutical interventions',34),(30,60,'school
and workplace closures',17),(30,73,'lockdown',45),(30,80,'face coverings',3),
(30,93,'public information campaigns',97),(30,130,'international and domestic
travel',73),(30,176,'face coverings',86),(30,183,'public health policies',64),
(30,189,'nonpharmaceutical interventions',37);
/*!40000 ALTER TABLE `government_response` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `individual_risk_factors`
--
DROP TABLE IF EXISTS `individual_risk_factors`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `individual_risk_factors` (
`pandemic_id` int DEFAULT NULL,
`gender_id` int DEFAULT NULL,
`race_ethnicity_id` int DEFAULT NULL,
`socioeconomic_id` int DEFAULT NULL,
KEY `socio_ind_idx` (`socioeconomic_id`),
KEY `race_eth_ind_idx` (`race_ethnicity_id`),
KEY `gender_ind_idx` (`gender_id`),
KEY `pandemic_ind_idx` (`pandemic_id`),
CONSTRAINT `gender_ind` FOREIGN KEY (`gender_id`) REFERENCES `gender_identity`
(`gender_id`),
CONSTRAINT `pandemic_ind` FOREIGN KEY (`pandemic_id`) REFERENCES `pandemics`
(`pandemic_id`),
CONSTRAINT `race_eth_ind` FOREIGN KEY (`race_ethnicity_id`) REFERENCES
`race_ethnicity` (`race_ethnicity_id`),
CONSTRAINT `socio_ind` FOREIGN KEY (`socioeconomic_id`) REFERENCES
`socioeconomic_group` (`socioeconomic_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `individual_risk_factors`
--
LOCK TABLES `individual_risk_factors` WRITE;
/*!40000 ALTER TABLE `individual_risk_factors` DISABLE KEYS */;
INSERT INTO `individual_risk_factors` VALUES (1,1,4,5),(2,3,2,1),(3,4,2,2),
(4,1,9,5),(5,2,1,5),(6,5,2,1),(7,2,4,3),(8,1,5,5),(9,5,7,1),(10,2,2,3),(11,4,5,4),
(12,2,6,2),(13,1,8,1),(14,5,9,4),(15,3,5,3),(16,2,2,2),(17,4,4,5),(18,1,1,1),
(19,3,8,5),(20,5,5,2),(21,2,7,4),(22,1,8,1),(23,2,1,2),(24,4,9,5),(25,2,2,1),
(26,5,1,3),(27,1,3,1),(28,4,5,2),(29,1,8,3),(30,5,3,4);
/*!40000 ALTER TABLE `individual_risk_factors` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `multiple_pandemics`
--
DROP TABLE IF EXISTS `multiple_pandemics`;
/*!50001 DROP VIEW IF EXISTS `multiple_pandemics`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `multiple_pandemics` AS SELECT
1 AS `nation_id`,
1 AS `nation_name`,
1 AS `number of pandemics`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `national_risk_factors`
--
DROP TABLE IF EXISTS `national_risk_factors`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `national_risk_factors` (
`national_risk_factors_id` int NOT NULL,
`pandemic_id` int NOT NULL,
`nation_id` int NOT NULL,
`political_system_id` int DEFAULT NULL,
`density` int DEFAULT NULL,
`poverty_rate` int DEFAULT NULL,
`war_status` varchar(45) DEFAULT NULL,
PRIMARY KEY (`national_risk_factors_id`),
KEY `pandemic_nat_idx` (`pandemic_id`),
KEY `nation_nat_idx` (`nation_id`),
KEY `polsys_nat_idx` (`political_system_id`),
CONSTRAINT `nation_nat` FOREIGN KEY (`nation_id`) REFERENCES `nations`
(`nation_id`),
CONSTRAINT `pandemic_nat` FOREIGN KEY (`pandemic_id`) REFERENCES `pandemics`
(`pandemic_id`),
CONSTRAINT `polsys_nat` FOREIGN KEY (`political_system_id`) REFERENCES
`political_system` (`political_system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `national_risk_factors`
--
LOCK TABLES `national_risk_factors` WRITE;
/*!40000 ALTER TABLE `national_risk_factors` DISABLE KEYS */;
INSERT INTO `national_risk_factors` VALUES (1,3,1,3,1450,0,'active'),
(2,5,3,4,1200,0,'inactive'),(3,6,4,1,1200,0,'active'),(4,7,5,3,1450,0,'active'),
(5,5,6,2,1350,0,'active'),(6,3,7,1,1200,0,'inactive'),(7,28,80,4,1200,0,'active'),
(8,11,78,3,1450,0,'active'),(9,17,100,2,1200,0,'inactive'),
(10,10,110,1,1200,0,'active'),(11,9,54,2,1450,0,'inactive'),
(12,16,33,3,1033,0,'active'),(13,14,21,3,1200,0,'inactive'),
(14,2,34,1,1200,0,'inactive'),(15,1,11,4,1450,0,'inactive'),
(16,3,63,3,1639,0,'active'),(17,1,1,1,1462,1,'inactive'),
(18,5,86,4,1485,1,'active'),(19,8,31,3,1953,0,'inactive'),
(20,21,94,2,1753,0,'inactive'),(21,6,41,3,1831,0,'active'),
(22,26,7,1,1085,0,'active'),(23,1,4,4,1253,0,'active'),(24,7,17,3,1852,0,'active'),
(25,29,84,2,1972,0,'inactive'),(26,5,26,4,1853,0,'active'),
(27,2,19,1,1753,0,'inactive'),(28,8,75,3,1952,0,'inactive'),
(29,9,96,1,1753,0,'active'),(30,1,83,4,1853,0,'active');
/*!40000 ALTER TABLE `national_risk_factors` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `nations`
--
DROP TABLE IF EXISTS `nations`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nations` (
`nation_id` int NOT NULL,
`nation_name` varchar(45) NOT NULL,
PRIMARY KEY (`nation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `nations`
--
LOCK TABLES `nations` WRITE;
/*!40000 ALTER TABLE `nations` DISABLE KEYS */;
INSERT INTO `nations` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),
(4,'Andorra'),(5,'Angola'),(6,'Antigua and Barbuda'),(7,'Argentina'),(8,'Armenia'),
(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),
(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),
(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia and Herzegovina'),
(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina Faso'),
(28,'Burundi'),(29,'Cote dIvoire'),(30,'Cabo Verde'),(31,'Cambodia'),
(32,'Cameroon'),(33,'Canada'),(34,'Central African Republic'),(35,'Chad'),
(36,'Chile'),(37,'China'),(38,'Colombia'),(39,'Comoros'),(40,'Congo '),(41,'Costa
Rica'),(42,'Croatia'),(43,'Cuba'),(44,'Cyprus'),(45,'Czechia'),(46,'Democratic
Republic of the Congo'),(47,'Denmark'),(48,'Djibouti'),(49,'Dominica'),
(50,'Dominican Republic'),(51,'Ecuador'),(52,'Egypt'),(53,'El Salvador'),
(54,'Equatorial Guinea'),(55,'Eritrea'),(56,'Estonia'),(57,'Eswatini '),
(58,'Ethiopia'),(59,'Fiji'),(60,'Finland'),(61,'France'),(62,'Gabon'),
(63,'Gambia'),(64,'Georgia'),(65,'Germany'),(66,'Ghana'),(67,'Greece'),
(68,'Grenada'),(69,'Guatemala'),(70,'Guinea'),(71,'Guinea-Bissau'),(72,'Guyana'),
(73,'Haiti'),(74,'Holy See'),(75,'Honduras'),(76,'Hungary'),(77,'Iceland'),
(78,'India'),(79,'Indonesia'),(80,'Iran'),(81,'Iraq'),(82,'Ireland'),(83,'Israel'),
(84,'Italy'),(85,'Jamaica'),(86,'Japan'),(87,'Jordan'),(88,'Kazakhstan'),
(89,'Kenya'),(90,'Kiribati'),(91,'Kuwait'),(92,'Kyrgyzstan'),(93,'Laos'),
(94,'Latvia'),(95,'Lebanon'),(96,'Lesotho'),(97,'Liberia'),(98,'Libya'),
(99,'Liechtenstein'),(100,'Lithuania'),(101,'Luxembourg'),(102,'Madagascar'),
(103,'Malawi'),(104,'Malaysia'),(105,'Maldives'),(106,'Mali'),(107,'Malta'),
(108,'Marshall Islands'),(109,'Mauritania'),(110,'Mauritius'),(111,'Mexico'),
(112,'Micronesia'),(113,'Moldova'),(114,'Monaco'),(115,'Mongolia'),
(116,'Montenegro'),(117,'Morocco'),(118,'Mozambique'),(119,'Myanmar '),
(120,'Namibia'),(121,'Nauru'),(122,'Nepal'),(123,'Netherlands'),(124,'New
Zealand'),(125,'Nicaragua'),(126,'Niger'),(127,'Nigeria'),(128,'North Korea'),
(129,'North Macedonia'),(130,'Norway'),(131,'Oman'),(132,'Pakistan'),(133,'Palau'),
(134,'Palestine State'),(135,'Panama'),(136,'Papua New Guinea'),(137,'Paraguay'),
(138,'Peru'),(139,'Philippines'),(140,'Poland'),(141,'Portugal'),(142,'Qatar'),
(143,'Romania'),(144,'Russia'),(145,'Rwanda'),(146,'Saint Kitts and Nevis'),
(147,'Saint Lucia'),(148,'Saint Vincent and the Grenadines'),(149,'Samoa'),
(150,'San Marino'),(151,'Sao Tome and Principe'),(152,'Saudi Arabia'),
(153,'Senegal'),(154,'Serbia'),(155,'Seychelles'),(156,'Sierra Leone'),
(157,'Singapore'),(158,'Slovakia'),(159,'Slovenia'),(160,'Solomon Islands'),
(161,'Somalia'),(162,'South Africa'),(163,'South Korea'),(164,'South Sudan'),
(165,'Spain'),(166,'Sri Lanka'),(167,'Sudan'),(168,'Suriname'),(169,'Sweden'),
(170,'Switzerland'),(171,'Syria'),(172,'Tajikistan'),(173,'Tanzania'),
(174,'Thailand'),(175,'Timor-Leste'),(176,'Togo'),(177,'Tonga'),(178,'Trinidad and
Tobago'),(179,'Tunisia'),(180,'Turkey'),(181,'Turkmenistan'),(182,'Tuvalu'),
(183,'Uganda'),(184,'Ukraine'),(185,'United Arab Emirates'),(186,'United Kingdom'),
(187,'United States of America'),(188,'Uruguay'),(189,'Uzbekistan'),
(190,'Vanuatu'),(191,'Venezuela'),(192,'Vietnam'),(193,'Yemen'),(194,'Zambia'),
(195,'Zimbabwe');
/*!40000 ALTER TABLE `nations` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `pandemics`
--
DROP TABLE IF EXISTS `pandemics`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pandemics` (
`pandemic_id` int NOT NULL,
`disease_id` int NOT NULL,
`pandemic_name` varchar(45) NOT NULL,
`start_year` int DEFAULT NULL,
`end_year` int DEFAULT NULL,
`number_of_cases` int DEFAULT NULL,
`number_of_deaths` int DEFAULT NULL,
PRIMARY KEY (`pandemic_id`),
KEY `disease_idx` (`disease_id`),
CONSTRAINT `disease` FOREIGN KEY (`disease_id`) REFERENCES `diseases`
(`disease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `pandemics`
--
LOCK TABLES `pandemics` WRITE;
/*!40000 ALTER TABLE `pandemics` DISABLE KEYS */;
INSERT INTO `pandemics` VALUES (1,5,'Spanish Influenza',1918,1919,1067123,67123),
(2,30,'Asian Influenza',1957,1959,530614,30614),(3,29,'Hong Kong
Influenza',1968,1970,155037,105037),(4,5,'Russian Influenza
A(H1N1)',1989,1893,157495,117495),(5,10,'Avian Influenza
(H5N1)',1989,1897,689341,599341),(6,3,'Severe Acute Respiratory Syndrome
(SARS)',2002,2003,30413,20413),(7,5,'A(H1N1) Influenza',2001,2002,49178,29178),
(8,5,'Ebola',2002,2003,181098,111098),(9,5,'Bird Flu',1968,1970,196821,106821),
(10,27,'Plague of Justinian',1541,1543,391890,191890),(11,11,'Black
Death',1347,1351,101203,61203),(12,1,'First cholera\
npandemic',1817,1824,115901,85901),(13,2,'Second cholera\
npandemic',1827,1835,43170,23170),(14,2,'Third cholera\
npandemic',1839,1856,15146,9146),(15,8,'Fourth cholera\
npandemic',1863,1875,130017,90017),(16,3,'Fifth cholera\
npandemic',1881,1886,30166,20166),(17,12,'Third plague ',1885,1889,22908,15908),
(18,2,'Sixth cholera pandemic',1899,1923,144633,94633),(19,2,'Seventh cholera\
npandemic',1961,1966,330495,200495),(20,4,'Middle East respiratory syndrome
(MERS)',2015,2018,159735,159735),(21,6,'COVID-19',2019,2022,118306,118306),
(22,6,'HIV/AIDS',1981,1990,141881,211881),(23,14,'Italian
plague',1885,1890,883205,475374),(24,11,'Naples plague',1918,1920,217382,121212),
(25,17,'Japanese smallpox epidemic',1968,1969,120230,21133),(26,16,'Persian
plague',1957,1958,902322,12122),(27,20,'Mexico smallpox ',1545,1548,904233,12896),
(28,22,'cocoliztli epidemic ',1968,1969,904983,21896),(29,24,'Russia typhus
epidemic',1918,1920,9049896,19896),(30,13,'Rabies',1920,1944,9049896,19896);
/*!40000 ALTER TABLE `pandemics` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `political_system`
--
DROP TABLE IF EXISTS `political_system`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `political_system` (
`political_system_id` int NOT NULL,
`political_system_name` varchar(45) NOT NULL,
PRIMARY KEY (`political_system_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `political_system`
--
LOCK TABLES `political_system` WRITE;
/*!40000 ALTER TABLE `political_system` DISABLE KEYS */;
INSERT INTO `political_system` VALUES (1,'Democratic'),(2,'Hybrid'),
(3,'Authoritarian'),(4,'Other');
/*!40000 ALTER TABLE `political_system` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `race_ethnicity`
--
DROP TABLE IF EXISTS `race_ethnicity`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `race_ethnicity` (
`race_ethnicity_id` int NOT NULL,
`race_ethnicity_name` varchar(45) NOT NULL,
PRIMARY KEY (`race_ethnicity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `race_ethnicity`
--
LOCK TABLES `race_ethnicity` WRITE;
/*!40000 ALTER TABLE `race_ethnicity` DISABLE KEYS */;
INSERT INTO `race_ethnicity` VALUES (1,'American Indian or Alaska Native'),
(2,'Asian'),(3,'Black or African American'),(4,'Hispanic or Latino'),(5,'Middle
Eastern or North African'),(6,'Native Hawaiian or Pacific Islander'),(7,'White'),
(8,'Two or more races'),(9,'Other');
/*!40000 ALTER TABLE `race_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `socioecon_risk`
--
DROP TABLE IF EXISTS `socioecon_risk`;
/*!50001 DROP VIEW IF EXISTS `socioecon_risk`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `socioecon_risk` AS SELECT
1 AS `pandemic_name`,
1 AS `socioeconomic_name`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `socioeconomic_group`
--
DROP TABLE IF EXISTS `socioeconomic_group`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socioeconomic_group` (
`socioeconomic_group_id` int NOT NULL,
`socioeconomic_name` varchar(45) NOT NULL,
PRIMARY KEY (`socioeconomic_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `socioeconomic_group`
--
LOCK TABLES `socioeconomic_group` WRITE;
/*!40000 ALTER TABLE `socioeconomic_group` DISABLE KEYS */;
INSERT INTO `socioeconomic_group` VALUES (1,'Upper class'),(2,'Upper-middle
class'),(3,'Middle class'),(4,'Working class'),(5,'Lower income class');
/*!40000 ALTER TABLE `socioeconomic_group` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `symptoms`
--
DROP TABLE IF EXISTS `symptoms`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symptoms` (
`symptom_id` int NOT NULL,
`symptom_name` varchar(45) NOT NULL,
PRIMARY KEY (`symptom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `symptoms`
--
LOCK TABLES `symptoms` WRITE;
/*!40000 ALTER TABLE `symptoms` DISABLE KEYS */;
INSERT INTO `symptoms` VALUES (1,'headache'),(2,'fever'),(3,'body ache'),
(4,'chills'),(5,'rash'),(6,'strep throat'),(7,'shortness of breath'),
(8,'congestion'),(9,'cough'),(10,'fatigue'),(11,'nausea'),(12,'inflammation'),
(13,'loss of appetite'),(14,'itchiness'),(15,'loss of taste and/or smell');
/*!40000 ALTER TABLE `symptoms` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `total_cost`
--
DROP TABLE IF EXISTS `total_cost`;
/*!50001 DROP VIEW IF EXISTS `total_cost`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_cost` AS SELECT
1 AS `pandemic_id`,
1 AS `pandemic_name`,
1 AS `total_amount`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `twentieth_century`
--
DROP TABLE IF EXISTS `twentieth_century`;
/*!50001 DROP VIEW IF EXISTS `twentieth_century`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `twentieth_century` AS SELECT
1 AS `pandemic_id`,
1 AS `pandemic_name`,
1 AS `start_year`,
1 AS `end_year`*/;
SET character_set_client = @saved_cs_client;
--
-- Final view structure for view `diseases_in_dense_countries`
--
/*!50001 DROP VIEW IF EXISTS `diseases_in_dense_countries`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `diseases_in_dense_countries` AS select `diseases`.`disease_name` AS
`Diseases in Dense Countries`,`nations`.`nation_name` AS
`nation_name`,`national_risk_factors`.`density` AS `density` from (((`diseases`
join `pandemics` on((`diseases`.`disease_id` = `pandemics`.`disease_id`))) join
`national_risk_factors` on((`pandemics`.`pandemic_id` =
`national_risk_factors`.`pandemic_id`))) join `nations`
on((`national_risk_factors`.`nation_id` = `nations`.`nation_id`))) where
`pandemics`.`pandemic_id` in (select `pandemics`.`pandemic_id` from (`pandemics`
join `national_risk_factors` on((`pandemics`.`pandemic_id` =
`national_risk_factors`.`pandemic_id`))) where (`national_risk_factors`.`density` >
(select avg(`national_risk_factors`.`density`) from `national_risk_factors`))) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `multiple_pandemics`
--
/*!50001 DROP VIEW IF EXISTS `multiple_pandemics`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `multiple_pandemics` AS select `national_risk_factors`.`nation_id` AS
`nation_id`,`nations`.`nation_name` AS
`nation_name`,count(`national_risk_factors`.`pandemic_id`) AS `number of pandemics`
from (`national_risk_factors` join `nations`
on((`national_risk_factors`.`nation_id` = `nations`.`nation_id`))) group by
`national_risk_factors`.`nation_id` having
(count(`national_risk_factors`.`pandemic_id`) > 1) order by
count(`national_risk_factors`.`pandemic_id`) desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `socioecon_risk`
--
/*!50001 DROP VIEW IF EXISTS `socioecon_risk`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `socioecon_risk` AS select `pandemics`.`pandemic_name` AS
`pandemic_name`,`sg`.`socioeconomic_name` AS `socioeconomic_name` from
((`pandemics` join `individual_risk_factors` `irf` on((`pandemics`.`pandemic_id` =
`irf`.`pandemic_id`))) join `socioeconomic_group` `sg` on((`irf`.`socioeconomic_id`
= `sg`.`socioeconomic_group_id`))) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `total_cost`
--
/*!50001 DROP VIEW IF EXISTS `total_cost`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_cost` AS select `government_response`.`pandemic_id` AS
`pandemic_id`,`pandemics`.`pandemic_name` AS
`pandemic_name`,sum(`government_response`.`money_spent_millions`) AS `total_amount`
from (`government_response` join `pandemics`
on((`government_response`.`pandemic_id` = `pandemics`.`pandemic_id`))) group by
`government_response`.`pandemic_id`,`pandemics`.`pandemic_name` order by
`total_amount` desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `twentieth_century`
--
/*!50001 DROP VIEW IF EXISTS `twentieth_century`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `twentieth_century` AS select `pandemics`.`pandemic_id` AS
`pandemic_id`,`pandemics`.`pandemic_name` AS
`pandemic_name`,`pandemics`.`start_year` AS `start_year`,`pandemics`.`end_year` AS
`end_year` from `pandemics` where ((`pandemics`.`start_year` like '19%') and
(`pandemics`.`end_year` like '19%')) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2022-12-12 23:04:12
