-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: mscba02    Database: team9
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `activity_bookings`
--

DROP TABLE IF EXISTS `activity_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_bookings` (
  `activity_booking_id` varchar(10) NOT NULL,
  `member_id` int DEFAULT NULL,
  `class_id` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `mode_of_booking` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`activity_booking_id`),
  KEY `fk_activity_bookings_member_id` (`member_id`),
  KEY `fk_activity_bookings_class_id` (`class_id`),
  CONSTRAINT `fk_activity_bookings_class_id` FOREIGN KEY (`class_id`) REFERENCES `class_activities` (`class_id`),
  CONSTRAINT `fk_activity_bookings_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_bookings`
--

LOCK TABLES `activity_bookings` WRITE;
/*!40000 ALTER TABLE `activity_bookings` DISABLE KEYS */;
INSERT INTO `activity_bookings` VALUES ('AB01',1,'S03','2022-10-01','online'),('AB02',47,'R11','2022-10-01','online'),('AB03',43,'G12','2022-10-01','in_person'),('AB04',68,'R11','2022-10-01','in_person'),('AB05',67,'B18','2022-10-01','in_person'),('AB06',34,'K13','2022-10-01','in_person'),('AB07',43,'BM1','2022-10-01','in_person'),('AB08',80,'B04','2022-10-01','in_person'),('AB09',39,'G06','2022-10-01','online'),('AB10',59,'A09','2022-10-01','online'),('AB100',25,'S07','2022-10-14','online'),('AB101',100,'G12','2022-10-14','online'),('AB102',78,'G06','2022-10-14','online'),('AB103',26,'B08','2022-10-15','online'),('AB104',89,'B08','2022-10-15','in_person'),('AB105',89,'S07','2022-10-15','online'),('AB106',27,'A09','2022-10-16','in_person'),('AB107',9,'B08','2022-10-16','online'),('AB108',28,'C10','2022-10-17','in_person'),('AB109',67,'A09','2022-10-17','online'),('AB11',2,'B04','2022-10-02','in_person'),('AB110',29,'R11','2022-10-18','online'),('AB111',13,'C10','2022-10-18','online'),('AB112',31,'G12','2022-10-19','in_person'),('AB113',70,'S07','2022-10-19','in_person'),('AB114',14,'R11','2022-10-19','in_person'),('AB115',14,'A09','2022-10-19','online'),('AB116',34,'K13','2022-10-20','in_person'),('AB117',74,'C10','2022-10-20','online'),('AB118',2,'G12','2022-10-20','online'),('AB119',8,'C10','2022-10-20','in_person'),('AB12',48,'S03','2022-10-02','in_person'),('AB120',76,'Y14','2022-10-20','in_person'),('AB121',25,'B04','2022-10-20','online'),('AB122',35,'Y14','2022-10-21','online'),('AB123',53,'D02','2022-10-21','in_person'),('AB124',3,'K13','2022-10-21','online'),('AB125',58,'R11','2022-10-21','in_person'),('AB126',80,'P15','2022-10-21','in_person'),('AB127',63,'P05','2022-10-21','in_person'),('AB128',36,'P15','2022-10-22','in_person'),('AB129',89,'S03','2022-10-22','in_person'),('AB13',90,'K13','2022-10-02','online'),('AB130',4,'Y14','2022-10-22','online'),('AB131',25,'G12','2022-10-22','online'),('AB132',33,'BC16','2022-10-22','online'),('AB133',32,'BC16','2022-10-23','in_person'),('AB134',67,'B04','2022-10-23','in_person'),('AB135',5,'P15','2022-10-23','in_person'),('AB136',63,'K13','2022-10-23','in_person'),('AB137',42,'S17','2022-10-23','in_person'),('AB138',32,'S17','2022-10-24','online'),('AB139',89,'P05','2022-10-24','in_person'),('AB14',69,'S03','2022-10-02','in_person'),('AB140',13,'BC16','2022-10-24','in_person'),('AB141',66,'Y14','2022-10-24','in_person'),('AB142',80,'P05','2022-10-24','online'),('AB143',31,'B18','2022-10-25','in_person'),('AB144',13,'G06','2022-10-25','online'),('AB145',9,'S17','2022-10-25','online'),('AB146',39,'P15','2022-10-25','online'),('AB147',93,'G06','2022-10-25','online'),('AB148',39,'PS19','2022-10-26','in_person'),('AB149',17,'S07','2022-10-26','in_person'),('AB15',78,'PS19','2022-10-02','in_person'),('AB150',98,'S07','2022-10-26','online'),('AB151',4,'LT20','2022-10-27','online'),('AB152',19,'B08','2022-10-27','online'),('AB153',58,'D02','2022-10-27','online'),('AB154',82,'B08','2022-10-27','in_person'),('AB155',35,'G12','2022-10-27','online'),('AB156',30,'BM1','2022-10-28','in_person'),('AB157',15,'A09','2022-10-28','online'),('AB158',22,'G12','2022-10-28','online'),('AB159',25,'S03','2022-10-28','online'),('AB16',15,'R11','2022-10-02','online'),('AB160',15,'A09','2022-10-28','in_person'),('AB161',45,'Y14','2022-10-29','online'),('AB162',19,'C10','2022-10-29','online'),('AB163',77,'B08','2022-10-29','online'),('AB164',63,'B04','2022-10-29','in_person'),('AB165',14,'C10','2022-10-29','online'),('AB166',46,'K13','2022-10-30','online'),('AB168',7,'S07','2022-10-30','in_person'),('AB169',66,'P05','2022-10-30','in_person'),('AB17',52,'Y14','2022-10-02','online'),('AB170',8,'D02','2022-10-30','online'),('AB171',14,'A09','2022-11-01','online'),('AB172',17,'C10','2022-11-01','in_person'),('AB173',33,'C10','2022-11-01','online'),('AB174',42,'Y14','2022-11-01','online'),('AB175',49,'P05','2022-11-01','online'),('AB176',80,'B18','2022-11-01','in_person'),('AB177',82,'S07','2022-11-01','in_person'),('AB178',84,'K13','2022-11-01','online'),('AB179',88,'G06','2022-11-01','in_person'),('AB18',93,'P05','2022-10-02','in_person'),('AB180',93,'Y14','2022-11-01','in_person'),('AB181',98,'BM1','2022-11-01','online'),('AB182',98,'K13','2022-11-01','online'),('AB183',8,'R11','2022-11-02','in_person'),('AB184',14,'R11','2022-11-02','online'),('AB185',25,'D02','2022-11-02','online'),('AB186',56,'BM1','2022-11-02','in_person'),('AB187',58,'Y14','2022-11-02','online'),('AB188',63,'G06','2022-11-02','online'),('AB189',66,'S03','2022-11-02','in_person'),('AB19',34,'S07','2022-10-02','in_person'),('AB190',71,'C10','2022-11-02','in_person'),('AB191',80,'S07','2022-11-02','online'),('AB192',85,'D02','2022-11-02','in_person'),('AB193',88,'G06','2022-11-02','online'),('AB194',31,'K13','2022-11-03','in_person'),('AB195',63,'S17','2022-11-03','online'),('AB196',73,'S17','2022-11-03','online'),('AB197',76,'BM1','2022-11-03','in_person'),('AB198',82,'D02','2022-11-03','online'),('AB199',86,'BC16','2022-11-03','in_person'),('AB20',69,'C10','2022-10-02','in_person'),('AB200',89,'LT20','2022-11-03','online'),('AB201',90,'B08','2022-11-03','in_person'),('AB202',98,'K13','2022-11-03','in_person'),('AB203',13,'P05','2022-11-04','online'),('AB204',14,'A09','2022-11-04','in_person'),('AB205',22,'G06','2022-11-04','online'),('AB206',33,'G12','2022-11-04','in_person'),('AB207',49,'B04','2022-11-04','in_person'),('AB208',52,'BC16','2022-11-04','online'),('AB209',62,'S03','2022-11-04','online'),('AB21',1,'P05','2022-10-03','online'),('AB210',8,'R11','2022-11-05','in_person'),('AB211',33,'G12','2022-11-05','online'),('AB212',66,'S07','2022-11-05','online'),('AB213',83,'A09','2022-11-05','in_person'),('AB214',86,'R11','2022-11-05','in_person'),('AB215',6,'PS19','2022-11-06','in_person'),('AB216',26,'S17','2022-11-06','in_person'),('AB217',54,'K13','2022-11-06','online'),('AB218',54,'G12','2022-11-06','in_person'),('AB219',80,'S07','2022-11-06','in_person'),('AB22',49,'BC16','2022-10-03','in_person'),('AB220',98,'K13','2022-11-06','online'),('AB221',14,'B18','2022-11-07','online'),('AB222',16,'P15','2022-11-07','in_person'),('AB223',17,'C10','2022-11-07','online'),('AB224',39,'G12','2022-11-07','in_person'),('AB225',1,'D02','2022-11-08','online'),('AB226',61,'S17','2022-11-08','online'),('AB227',6,'PS19','2022-11-09','in_person'),('AB228',14,'B18','2022-11-09','in_person'),('AB229',39,'G12','2022-11-09','online'),('AB23',89,'Y14','2022-10-03','in_person'),('AB230',61,'S17','2022-11-09','online'),('AB231',34,'B08','2022-11-10','in_person'),('AB232',84,'K13','2022-11-10','in_person'),('AB233',15,'S07','2022-11-11','in_person'),('AB234',15,'K13','2022-11-11','in_person'),('AB235',57,'BM1','2022-11-12','online'),('AB236',10,'LT20','2022-11-13','in_person'),('AB237',22,'Y14','2022-11-13','online'),('AB238',77,'K13','2022-11-14','online'),('AB239',7,'R11','2022-11-15','online'),('AB24',59,'B04','2022-10-03','in_person'),('AB240',34,'B08','2022-11-16','in_person'),('AB241',17,'BM1','2022-11-17','in_person'),('AB242',66,'S07','2022-11-17','online'),('AB243',65,'S17','2022-11-18','in_person'),('AB244',55,'LT20','2022-11-19','online'),('AB245',28,'P05','2022-11-20','in_person'),('AB246',22,'B08','2022-11-23','online'),('AB247',17,'R11','2022-11-24','in_person'),('AB248',15,'S07','2022-11-26','online'),('AB249',77,'K13','2022-11-26','online'),('AB25',49,'LT20','2022-10-03','online'),('AB250',7,'R11','2022-11-27','in_person'),('AB251',43,'S03','2022-11-28','in_person'),('AB252',57,'BM1','2022-11-28','in_person'),('AB253',52,'BC16','2022-11-29','online'),('AB254',54,'G12','2022-11-30','in_person'),('AB255',86,'R11','2022-11-30','in_person'),('AB26',57,'S03','2022-10-03','online'),('AB27',86,'K13','2022-10-03','in_person'),('AB28',98,'G06','2022-10-03','in_person'),('AB29',15,'B08','2022-10-03','in_person'),('AB30',60,'R11','2022-10-03','online'),('AB31',2,'G06','2022-10-04','online'),('AB32',5,'R11','2022-10-04','online'),('AB33',70,'P15','2022-10-04','in_person'),('AB34',69,'P05','2022-10-04','online'),('AB35',88,'S07','2022-10-04','in_person'),('AB36',28,'B04','2022-10-04','online'),('AB37',33,'R11','2022-10-04','in_person'),('AB38',82,'S07','2022-10-04','in_person'),('AB39',57,'A09','2022-10-04','online'),('AB40',68,'S07','2022-10-04','in_person'),('AB41',78,'G12','2022-10-04','online'),('AB42',3,'S07','2022-10-05','online'),('AB43',70,'G12','2022-10-05','in_person'),('AB44',78,'K13','2022-10-05','online'),('AB45',60,'G06','2022-10-05','in_person'),('AB46',84,'C10','2022-10-05','online'),('AB47',17,'P05','2022-10-05','in_person'),('AB48',42,'S03','2022-10-05','online'),('AB49',15,'B08','2022-10-05','online'),('AB50',28,'C10','2022-10-05','in_person'),('AB51',69,'B08','2022-10-05','in_person'),('AB52',60,'K13','2022-10-05','online'),('AB53',3,'B08','2022-10-06','in_person'),('AB54',71,'C10','2022-10-06','in_person'),('AB55',78,'S07','2022-10-06','in_person'),('AB56',33,'D02','2022-10-06','online'),('AB57',65,'G06','2022-10-06','in_person'),('AB58',14,'A09','2022-10-06','in_person'),('AB59',17,'R11','2022-10-06','in_person'),('AB60',49,'C10','2022-10-06','in_person'),('AB61',4,'A09','2022-10-07','in_person'),('AB62',71,'S07','2022-10-07','online'),('AB63',60,'B08','2022-10-07','online'),('AB64',42,'S03','2022-10-07','online'),('AB65',55,'S07','2022-10-07','online'),('AB66',8,'C10','2022-10-07','online'),('AB67',65,'G12','2022-10-07','in_person'),('AB68',40,'R11','2022-10-07','in_person'),('AB69',5,'C10','2022-10-08','online'),('AB70',71,'K13','2022-10-08','in_person'),('AB71',49,'A09','2022-10-08','in_person'),('AB72',80,'B04','2022-10-08','in_person'),('AB73',76,'B08','2022-10-08','in_person'),('AB74',55,'K13','2022-10-08','online'),('AB75',58,'S03','2022-10-08','online'),('AB76',78,'G06','2022-10-08','online'),('AB77',6,'D02','2022-10-09','in_person'),('AB78',74,'G12','2022-10-09','online'),('AB79',40,'C10','2022-10-09','online'),('AB80',93,'P05','2022-10-09','in_person'),('AB81',80,'A09','2022-10-09','in_person'),('AB82',7,'S03','2022-10-10','in_person'),('AB83',75,'S07','2022-10-10','online'),('AB84',35,'D02','2022-10-10','online'),('AB85',98,'G06','2022-10-10','online'),('AB86',42,'PS19','2022-10-10','online'),('AB87',8,'B04','2022-10-11','online'),('AB88',78,'PS19','2022-10-11','online'),('AB89',67,'S03','2022-10-11','online'),('AB90',82,'S07','2022-10-11','in_person'),('AB91',22,'B18','2022-10-11','in_person'),('AB92',1,'P05','2022-10-12','in_person'),('AB93',89,'B18','2022-10-12','in_person'),('AB94',52,'B04','2022-10-12','in_person'),('AB95',15,'B08','2022-10-12','in_person'),('AB96',17,'S17','2022-10-12','online'),('AB97',23,'G06','2022-10-13','online'),('AB98',56,'S17','2022-10-13','in_person'),('AB99',89,'P05','2022-10-13','in_person');
/*!40000 ALTER TABLE `activity_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` varchar(10) NOT NULL,
  `activity_booking_id` varchar(10) DEFAULT NULL,
  `attendance_status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('ATT01','AB01','yes','2022-10-01'),('ATT02','AB02','no','2022-10-01'),('ATT03','AB03','no','2022-10-01'),('ATT04','AB04','yes','2022-10-01'),('ATT05','AB05','yes','2022-10-01'),('ATT06','AB06','yes','2022-10-01'),('ATT07','AB07','yes','2022-10-01'),('ATT08','AB08','yes','2022-10-01'),('ATT09','AB09','yes','2022-10-01'),('ATT10','AB10','no','2022-10-01'),('ATT100','AB100','no','2022-10-14'),('ATT101','AB101','no','2022-10-14'),('ATT102','AB102','no','2022-10-14'),('ATT103','AB103','no','2022-10-15'),('ATT104','AB104','no','2022-10-15'),('ATT105','AB105','no','2022-10-15'),('ATT106','AB106','no','2022-10-16'),('ATT107','AB107','no','2022-10-16'),('ATT108','AB108','yes','2022-10-17'),('ATT109','AB109','yes','2022-10-17'),('ATT11','AB11','no','2022-10-02'),('ATT110','AB110','yes','2022-10-18'),('ATT111','AB111','yes','2022-10-18'),('ATT112','AB112','yes','2022-10-19'),('ATT113','AB113','yes','2022-10-19'),('ATT114','AB114','yes','2022-10-19'),('ATT115','AB115','yes','2022-10-19'),('ATT116','AB116','yes','2022-10-20'),('ATT117','AB117','yes','2022-10-20'),('ATT118','AB118','yes','2022-10-20'),('ATT119','AB119','yes','2022-10-20'),('ATT12','AB12','yes','2022-10-02'),('ATT120','AB120','yes','2022-10-20'),('ATT121','AB121','no','2022-10-20'),('ATT122','AB122','no','2022-10-21'),('ATT123','AB123','no','2022-10-21'),('ATT124','AB124','no','2022-10-21'),('ATT125','AB125','no','2022-10-21'),('ATT126','AB126','no','2022-10-21'),('ATT127','AB127','yes','2022-10-21'),('ATT128','AB128','yes','2022-10-22'),('ATT129','AB129','yes','2022-10-22'),('ATT13','AB13','no','2022-10-02'),('ATT130','AB130','yes','2022-10-22'),('ATT131','AB131','yes','2022-10-22'),('ATT132','AB132','yes','2022-10-22'),('ATT133','AB133','yes','2022-10-23'),('ATT134','AB134','yes','2022-10-23'),('ATT135','AB135','yes','2022-10-23'),('ATT136','AB136','yes','2022-10-23'),('ATT137','AB137','yes','2022-10-23'),('ATT138','AB138','yes','2022-10-24'),('ATT139','AB139','yes','2022-10-24'),('ATT14','AB14','yes','2022-10-02'),('ATT140','AB140','yes','2022-10-24'),('ATT141','AB141','no','2022-10-24'),('ATT142','AB142','no','2022-10-24'),('ATT143','AB143','no','2022-10-25'),('ATT144','AB144','no','2022-10-25'),('ATT145','AB145','no','2022-10-25'),('ATT146','AB146','no','2022-10-25'),('ATT147','AB147','yes','2022-10-25'),('ATT148','AB148','yes','2022-10-26'),('ATT149','AB149','yes','2022-10-26'),('ATT15','AB15','yes','2022-10-02'),('ATT150','AB150','yes','2022-10-26'),('ATT151','AB151','yes','2022-10-27'),('ATT152','AB152','yes','2022-10-27'),('ATT153','AB153','yes','2022-10-27'),('ATT154','AB154','yes','2022-10-27'),('ATT155','AB155','yes','2022-10-27'),('ATT156','AB156','yes','2022-10-28'),('ATT157','AB157','yes','2022-10-28'),('ATT158','AB158','yes','2022-10-28'),('ATT159','AB159','yes','2022-10-28'),('ATT16','AB16','yes','2022-10-02'),('ATT160','AB160','yes','2022-10-28'),('ATT161','AB161','yes','2022-10-29'),('ATT162','AB162','no','2022-10-29'),('ATT163','AB163','no','2022-10-29'),('ATT164','AB164','no','2022-10-29'),('ATT165','AB165','no','2022-10-29'),('ATT166','AB166','no','2022-10-30'),('ATT167','AB167','yes','2022-10-30'),('ATT168','AB168','yes','2022-10-30'),('ATT169','AB169','yes','2022-10-30'),('ATT17','AB17','no','2022-10-02'),('ATT170','AB170','yes','2022-10-30'),('ATT171','AB171','yes','2022-11-01'),('ATT172','AB172','yes','2022-11-01'),('ATT173','AB173','yes','2022-11-01'),('ATT174','AB174','yes','2022-11-01'),('ATT175','AB175','yes','2022-11-01'),('ATT176','AB176','no','2022-11-01'),('ATT177','AB177','yes','2022-11-01'),('ATT178','AB178','no','2022-11-01'),('ATT179','AB179','no','2022-11-01'),('ATT18','AB18','no','2022-10-02'),('ATT180','AB180','yes','2022-11-01'),('ATT181','AB181','no','2022-11-01'),('ATT182','AB182','no','2022-11-01'),('ATT183','AB183','yes','2022-11-02'),('ATT184','AB184','no','2022-11-02'),('ATT185','AB185','no','2022-11-02'),('ATT186','AB186','yes','2022-11-02'),('ATT187','AB187','yes','2022-11-02'),('ATT188','AB188','yes','2022-11-02'),('ATT189','AB189','yes','2022-11-02'),('ATT19','AB19','no','2022-10-02'),('ATT190','AB190','yes','2022-11-02'),('ATT191','AB191','yes','2022-11-02'),('ATT192','AB192','no','2022-11-02'),('ATT193','AB193','yes','2022-11-02'),('ATT194','AB194','no','2022-11-03'),('ATT195','AB195','no','2022-11-03'),('ATT196','AB196','yes','2022-11-03'),('ATT197','AB197','no','2022-11-03'),('ATT198','AB198','no','2022-11-03'),('ATT199','AB199','yes','2022-11-03'),('ATT20','AB20','yes','2022-10-02'),('ATT200','AB200','no','2022-11-03'),('ATT201','AB201','no','2022-11-03'),('ATT202','AB202','yes','2022-11-03'),('ATT203','AB203','yes','2022-11-04'),('ATT204','AB204','no','2022-11-04'),('ATT205','AB205','yes','2022-11-04'),('ATT206','AB206','yes','2022-11-04'),('ATT207','AB207','yes','2022-11-04'),('ATT208','AB208','yes','2022-11-04'),('ATT209','AB209','no','2022-11-04'),('ATT21','AB21','yes','2022-10-03'),('ATT210','AB210','yes','2022-11-05'),('ATT211','AB211','no','2022-11-05'),('ATT212','AB212','yes','2022-11-05'),('ATT213','AB213','no','2022-11-05'),('ATT214','AB214','no','2022-11-05'),('ATT215','AB215','yes','2022-11-06'),('ATT216','AB216','yes','2022-11-06'),('ATT217','AB217','no','2022-11-06'),('ATT218','AB218','yes','2022-11-06'),('ATT219','AB219','yes','2022-11-06'),('ATT22','AB22','yes','2022-10-03'),('ATT220','AB220','yes','2022-11-06'),('ATT221','AB221','yes','2022-11-07'),('ATT222','AB222','yes','2022-11-07'),('ATT223','AB223','yes','2022-11-07'),('ATT224','AB224','yes','2022-11-07'),('ATT225','AB225','yes','2022-11-08'),('ATT226','AB226','yes','2022-11-08'),('ATT227','AB227','yes','2022-11-09'),('ATT228','AB228','no','2022-11-09'),('ATT229','AB229','no','2022-11-09'),('ATT23','AB23','yes','2022-10-03'),('ATT230','AB230','no','2022-11-09'),('ATT231','AB231','no','2022-11-10'),('ATT232','AB232','no','2022-11-10'),('ATT233','AB233','no','2022-11-11'),('ATT234','AB234','yes','2022-11-11'),('ATT235','AB235','no','2022-11-12'),('ATT236','AB236','no','2022-11-13'),('ATT237','AB237','yes','2022-11-13'),('ATT238','AB238','yes','2022-11-14'),('ATT239','AB239','yes','2022-11-15'),('ATT24','AB24','yes','2022-10-03'),('ATT240','AB240','yes','2022-11-16'),('ATT241','AB241','yes','2022-11-17'),('ATT242','AB242','yes','2022-11-17'),('ATT243','AB243','no','2022-11-18'),('ATT244','AB244','no','2022-11-19'),('ATT245','AB245','yes','2022-11-20'),('ATT246','AB246','no','2022-11-23'),('ATT247','AB247','yes','2022-11-24'),('ATT248','AB248','yes','2022-11-26'),('ATT249','AB249','yes','2022-11-26'),('ATT25','AB25','yes','2022-10-03'),('ATT250','AB250','no','2022-11-27'),('ATT251','AB251','no','2022-11-28'),('ATT252','AB252','no','2022-11-28'),('ATT253','AB253','yes','2022-11-29'),('ATT254','AB254','yes','2022-11-30'),('ATT255','AB255','yes','2022-11-30'),('ATT26','AB26','yes','2022-10-03'),('ATT27','AB27','yes','2022-10-03'),('ATT28','AB28','yes','2022-10-03'),('ATT29','AB29','no','2022-10-03'),('ATT30','AB30','no','2022-10-03'),('ATT31','AB31','no','2022-10-04'),('ATT32','AB32','no','2022-10-04'),('ATT33','AB33','no','2022-10-04'),('ATT34','AB34','yes','2022-10-04'),('ATT35','AB35','yes','2022-10-04'),('ATT36','AB36','yes','2022-10-04'),('ATT37','AB37','yes','2022-10-04'),('ATT38','AB38','yes','2022-10-04'),('ATT39','AB39','yes','2022-10-04'),('ATT40','AB40','yes','2022-10-04'),('ATT41','AB41','yes','2022-10-04'),('ATT42','AB42','yes','2022-10-05'),('ATT43','AB43','no','2022-10-05'),('ATT44','AB44','yes','2022-10-05'),('ATT45','AB45','no','2022-10-05'),('ATT46','AB46','no','2022-10-05'),('ATT47','AB47','yes','2022-10-05'),('ATT48','AB48','no','2022-10-05'),('ATT49','AB49','no','2022-10-05'),('ATT50','AB50','yes','2022-10-05'),('ATT51','AB51','no','2022-10-05'),('ATT52','AB52','no','2022-10-05'),('ATT53','AB53','yes','2022-10-06'),('ATT54','AB54','yes','2022-10-06'),('ATT55','AB55','yes','2022-10-06'),('ATT56','AB56','yes','2022-10-06'),('ATT57','AB57','yes','2022-10-06'),('ATT58','AB58','yes','2022-10-06'),('ATT59','AB59','no','2022-10-06'),('ATT60','AB60','yes','2022-10-06'),('ATT61','AB61','no','2022-10-07'),('ATT62','AB62','no','2022-10-07'),('ATT63','AB63','yes','2022-10-07'),('ATT64','AB64','no','2022-10-07'),('ATT65','AB65','no','2022-10-07'),('ATT66','AB66','yes','2022-10-07'),('ATT67','AB67','no','2022-10-07'),('ATT68','AB68','no','2022-10-07'),('ATT69','AB69','yes','2022-10-08'),('ATT70','AB70','yes','2022-10-08'),('ATT71','AB71','no','2022-10-08'),('ATT72','AB72','yes','2022-10-08'),('ATT73','AB73','yes','2022-10-08'),('ATT74','AB74','yes','2022-10-08'),('ATT75','AB75','no','2022-10-08'),('ATT76','AB76','yes','2022-10-08'),('ATT77','AB77','yes','2022-10-09'),('ATT78','AB78','yes','2022-10-09'),('ATT79','AB79','yes','2022-10-09'),('ATT80','AB80','no','2022-10-09'),('ATT81','AB81','yes','2022-10-09'),('ATT82','AB82','no','2022-10-10'),('ATT83','AB83','yes','2022-10-10'),('ATT84','AB84','no','2022-10-10'),('ATT85','AB85','no','2022-10-10'),('ATT86','AB86','yes','2022-10-10'),('ATT87','AB87','yes','2022-10-11'),('ATT88','AB88','no','2022-10-11'),('ATT89','AB89','yes','2022-10-11'),('ATT90','AB90','yes','2022-10-11'),('ATT91','AB91','yes','2022-10-11'),('ATT92','AB92','yes','2022-10-12'),('ATT93','AB93','yes','2022-10-12'),('ATT94','AB94','yes','2022-10-12'),('ATT95','AB95','yes','2022-10-12'),('ATT96','AB96','yes','2022-10-12'),('ATT97','AB97','yes','2022-10-13'),('ATT98','AB98','yes','2022-10-13'),('ATT99','AB99','no','2022-10-13');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_activities`
--

DROP TABLE IF EXISTS `class_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_activities` (
  `class_id` varchar(10) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `instructor_id` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `member_cost` int DEFAULT NULL,
  `guest_cost` int DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `fk_class_activities_instructor_id` (`instructor_id`),
  CONSTRAINT `fk_class_activities_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_activities`
--

LOCK TABLES `class_activities` WRITE;
/*!40000 ALTER TABLE `class_activities` DISABLE KEYS */;
INSERT INTO `class_activities` VALUES ('A09','Art class',7,1,6,8),('B04','Basketball',6,3,5,6),('B08','Baking class',8,2,4,9),('B18','Bible class',18,3,7,7),('BC16','Bingo class',17,2,5,8),('BM1','Badminton',9,2,5,11),('C10','Computer class',4,3,7,11),('D02','Dance ',2,3,2,9),('G06','Guitar class',5,4,4,8),('G12','Gym class',12,2,7,10),('K13','Karate class',11,1,3,5),('LT20','Lawn tennis',19,1,5,10),('P05','Piano class',1,1,7,10),('P15','Photography class',20,3,5,8),('PS19','Pool and Snooker',16,1,5,6),('R11','Reading class',14,2,2,5),('S03','Swimming',3,4,6,11),('S07','Soccer class',10,1,6,8),('S17','Saxophone class',15,2,6,9),('Y14','Yoga class',13,1,2,8);
/*!40000 ALTER TABLE `class_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `instructor_id` int NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Dominica','Portinari','27 Glacier Hill Avenue','1994-10-13','Female'),(2,'Lemuel','Gianolini','9801 Saint Paul Alley','1999-11-23','Male'),(3,'Kalindi','Darnbrough','2 Ohio Pass','1990-07-03','Female'),(4,'Iain','Noades','2 Forest Run Center','1994-10-19','Male'),(5,'Garold','Gillingham','55980 Golf Course Place','1994-07-07','Male'),(6,'Sybyl','Boyne','154 Lunder Parkway','1993-05-08','Female'),(7,'Xerxes','Petrishchev','10 Grim Hill','1999-03-09','Male'),(8,'Lorilyn','Weathers','832 Marcy Center','1999-11-05','Male'),(9,'Peirce','Eckels','113 Luster Plaza','1991-03-03','Male'),(10,'Kathy','Heatherington','3 Ramsey Road','1997-07-13','Female'),(11,'Alfreda','Lambertazzi','18990 Erie Terrace','1996-12-26','Female'),(12,'Thekla','Shutler','725 Brickson Park Court','1990-06-24','Female'),(13,'Karalee','Sumpner','32 Bellgrove Drive','1996-11-12','Female'),(14,'Morlee','Simecek','08 Ludington Plaza','1994-08-16','Male'),(15,'Lyn','Mulder','02 Stephen Drive','1999-10-11','Male'),(16,'Eldin','Wordesworth','22912 Morrow Parkway','1995-12-12','Male'),(17,'Teressa','Leghorn','78 Hallows Lane','1998-08-15','Female'),(18,'Monique','Grigorkin','2 Carberry Center','1998-04-06','Female'),(19,'Zechariah','Priddie','58043 Manley Hill','1995-05-23','Male'),(20,'Torre','Gatley','42 Memorial Lane','1995-06-19','Male');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` int NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Gard','Beining','5 Delladonna Center','UB8 3QG','607-464-9897','1994-05-08','Female'),(2,'Ned','Aldrin','7 Dennis Terrace','UB10 0QR','869-225-3575','1993-06-05','Female'),(3,'Caressa','Mebes','6 Golf Hill','UB9 5JJ','536-520-2843','1996-06-21','Female'),(4,'Bertie','Girvan','2849 Knutson Circle','UB8 3JU','916-777-9886','1986-03-22','Male'),(5,'Silvie','Blazewicz','796 Schurz Parkway','UB8 3DA','550-687-3847','1981-04-30','Female'),(6,'Kinsley','Fuidge','199 Spohn Alley','UB10 8RR','791-573-1450','1981-09-10','Male'),(7,'Fulvia','Winder','1697 Esker Crossing','UB6 0JX','304-601-0161','1982-01-17','Male'),(8,'Emeline','Winterscale','095 Basil Circle','UB5 6WT','308-447-3919','1992-07-22','Female'),(9,'Hally','Thraves','3323 Hallows Lane','UB7 9AQ','766-541-4133','1981-01-29','Female'),(10,'Jarret','Redmell','988 Dapin Terrace','UB3 2BJ','263-777-6715','1982-08-09','Male'),(11,'Crissy','Betjeman','29 Nova Road','UB6 8SF','216-917-0529','1980-06-26','Male'),(12,'Aura','Hanhart','5658 Pennsylvania Crossing','UB1 3QR','908-140-9630','1982-07-30','Female'),(13,'Mason','Kendrick','761 Ridge Oak Park','UB3 3AG','332-310-6001','1999-10-29','Male'),(14,'Eldredge','Ord','9518 Bay Crossing','UB5 5AR','490-758-3377','1980-06-16','Male'),(15,'Odo','Dormand','6 Hermina Crossing','UB1 3ND','219-830-7143','1980-06-16','Female'),(16,'Adolphe','Dietsche','57903 Burrows Plaza','UB7 9AF','717-281-5255','1985-11-23','Male'),(17,'Junina','Peagrim','4653 Debra Parkway','UB2 4EZ','454-493-7475','1996-07-21','Male'),(18,'Dyanne','Van Der Weedenburg','00712 7th Park','UB10 0YD','485-999-8925','1982-10-17','Male'),(19,'Giselle','Peron','2053 Buena Vista Point','UB2 5TX','216-860-3645','1989-05-05','Female'),(20,'Sarena','Gormally','367 Mcbride Street','UB6 8TH','647-301-6511','1985-06-29','Female'),(21,'Rosemary','Coit','5 International Center','UB4 8EN','544-918-5964','1986-07-17','Female'),(22,'Sayer','Besson','486 Scofield Parkway','UB8 3FN','446-382-6429','1993-06-12','Female'),(23,'Nappy','Dimitrijevic','8478 Scofield Pass','UB5 4PL','530-259-4692','1985-11-17','Female'),(24,'Vaclav','Lago','3280 Sommers Alley','UB4 9DG','233-997-7705','1980-03-24','Male'),(25,'Gram','Cozzi','77 Ohio Road','UB3 3DE','353-807-9468','1983-08-08','Female'),(26,'Eryn','Bartalin','422 Ohio Alley','UB2 5ST','389-389-4517','1999-02-27','Female'),(27,'Elmore','Ettels','39485 Hazelcrest Center','UB4 8RP','189-307-3100','1981-07-26','Male'),(28,'Murry','Winchurch','2 Kenwood Avenue','UB4 8EU','761-717-4299','1981-09-22','Female'),(29,'Archibald','Halvosen','4 Dayton Center','UB7 0DJ','827-519-1326','1983-12-22','Female'),(30,'Janie','Baton','98 Bobwhite Hill','UB8 3NE','469-506-3946','1988-07-21','Male'),(31,'Arline','Josephoff','6 Golden Leaf Street','UB7 9DE','374-829-5587','1983-10-09','Male'),(32,'Pierre','Portman','6144 Transport Point','UB3 2SP','110-968-5844','1998-11-08','Female'),(33,'Yvette','Gheorghe','545 Banding Parkway','UB2 5DX','137-927-4797','1993-08-24','Female'),(34,'Aubrey','Dutton','2244 Valley Edge Trail','UB4 8AD','360-498-5582','1993-11-25','Female'),(35,'Selie','Catonne','41 Jana Parkway','UB8 3LJ','912-826-8571','1985-04-24','Female'),(36,'Lance','Mound','45806 Barnett Hill','UB8 2LF','461-149-5193','1988-12-28','Female'),(37,'Bernie','Mulcahy','69 Warbler Trail','UB3 5EL','196-997-8099','1984-10-22','Female'),(38,'Jeanelle','Taylorson','229 Corben Place','UB6 8RZ','994-711-1143','1997-09-26','Female'),(39,'Sebastiano','Henworth','82282 Schurz Road','UB4 9DQ','357-118-9244','1981-04-29','Male'),(40,'Baxie','Vickress','5 Browning Drive','UB7 8HF','557-121-1505','1983-09-21','Female'),(41,'Waldemar','Montford','27632 Forster Trail','UB8 2YH','748-419-5573','1985-01-15','Female'),(42,'Tandy','Baulch','9451 Village Green Way','UB6 7EL','111-172-9864','1990-01-08','Male'),(43,'Virge','Rattry','74854 Buena Vista Alley','UB10 8LQ','905-989-6426','1980-11-06','Female'),(44,'Gibby','Lound','45863 Anniversary Road','UB6 7HZ','189-836-3100','1987-01-04','Male'),(45,'Kyle','Walliker','78 Manley Crossing','UB9 5NB','194-887-1507','1991-02-10','Female'),(46,'Rolfe','Maharey','0 Calypso Trail','UB1 2PY','178-417-2121','1994-03-07','Male'),(47,'Dorolice','Grundon','8946 Anzinger Drive','UB5 6YW','558-878-2441','1990-06-21','Female'),(48,'Gerard','Mary','12 Prairieview Plaza','UB1 1DR','291-106-2097','1998-05-19','Male'),(49,'Henriette','Witherow','09207 Granby Hill','UB10 8QD','402-551-1312','1989-05-29','Female'),(50,'Bev','Yoselevitch','58604 Evergreen Court','UB8 1RJ','291-621-0880','1981-07-10','Female'),(51,'Devan','Wince','2993 Karstens Lane','UB4 0AH','113-533-1194','1995-09-02','Female'),(52,'Klara','Smallthwaite','6 Quincy Lane','UB3 4LD','181-347-2524','1999-12-31','Male'),(53,'Clayborne','Haxley','5 Garrison Parkway','UB5 6DE','897-788-7107','1980-11-14','Female'),(54,'Klaus','Turton','9323 Hazelcrest Alley','UB8 2RQ','662-494-3024','1997-03-19','Female'),(55,'Joellyn','Cordingly','774 Swallow Hill','UB4 9LS','485-860-2514','1995-12-24','Male'),(56,'Corilla','Unsworth','0 Independence Street','UB8 3TT','517-399-9941','1983-11-19','Female'),(57,'Jo-anne','Emmitt','495 Del Mar Circle','UB4 9BY','215-681-3800','1996-02-10','Male'),(58,'Carly','Rubinshtein','14 Veith Drive','UB7 9DB','154-683-3875','1985-04-14','Female'),(59,'Brenden','Polley','8272 Fair Oaks Avenue','UB5 5EY','974-891-1251','1995-01-26','Female'),(60,'Winne','Collinwood','10 Old Gate Street','UB5 6DB','414-670-5266','1982-12-29','Male'),(61,'Arlan','Fraanchyonok','26 Continental Street','UB3 5HT','185-376-7933','1998-07-05','Female'),(62,'Leontyne','Goby','328 Maple Wood Terrace','UB8 3UJ','714-939-2738','1989-04-29','Female'),(63,'Lionello','Tomovic','85 Glendale Crossing','UB3 2RB','480-671-1829','1984-07-04','Female'),(64,'Nicolette','Mathiot','35477 Heath Center','UB7 8AG','611-718-4119','1991-03-10','Female'),(65,'Antonin','Wimbridge','86 East Way','UB1 3BQ','473-798-1003','1983-05-14','Female'),(66,'Britni','McOnie','67 Tony Point','UB7 9DU','608-456-1732','1981-04-02','Female'),(67,'Hamlin','Aloshikin','341 Linden Drive','UB8 2FR','939-732-6805','1981-09-10','Male'),(68,'Alexis','Botcherby','99624 Sunbrook Plaza','UB9 6HT','320-976-2314','1981-12-11','Male'),(69,'Nappy','Symon','583 Sage Plaza','UB5 6TQ','304-912-4489','1990-04-30','Male'),(70,'Fayth','Guierre','6857 Anzinger Avenue','UB4 9QP','466-263-2898','1992-03-21','Male'),(71,'Antoine','Poltone','9917 2nd Crossing','UB4 8ND','737-314-0659','1981-12-29','Male'),(72,'Parsifal','Rosoni','4068 Eagan Plaza','UB2 5PL','612-906-4991','1981-12-29','Male'),(73,'Idalia','Pleace','11290 Transport Junction','UB3 4QX','980-876-3258','1987-04-22','Female'),(74,'Tripp','Seeley','35 Coleman Lane','UB8 1PW','242-208-3030','1995-11-09','Female'),(75,'Sebastian','Byron','883 Moland Trail','UB1 3LZ','709-937-9715','1984-02-16','Female'),(76,'Oran','Haywood','05173 Bay Alley','UB3 1PR','248-938-3020','1991-12-31','Female'),(77,'Alta','Pentony','37703 Reindahl Plaza','UB9 4HW','351-794-3555','1993-11-05','Male'),(78,'Killie','Cromar','72114 Sullivan Way','UB7 7ER','666-269-7935','1992-03-07','Female'),(79,'Ilse','Curman','946 Hanover Terrace','UB2 5AG','944-649-3259','1983-06-03','Male'),(80,'Hakim','Denham','85299 Pepper Wood Plaza','UB6 9ES','776-132-3511','1992-03-19','Male'),(81,'Filmer','Whytock','0485 Bluestem Avenue','UB3 1AQ','400-624-6019','1992-03-19','Female'),(82,'Zahara','De Beneditti','6676 Scott Park','UB3 4EN','892-941-3936','1993-11-14','Female'),(83,'Perri','Rickis','53 Washington Street','UB4 0RH','346-826-5916','1984-07-28','Male'),(84,'Henrieta','Casterton','67 Schiller Pass','UB7 7DD','223-368-9218','1986-02-11','Male'),(85,'Meryl','Bysh','972 Comanche Circle','UB2 5AU','573-357-2370','1982-09-18','Female'),(86,'Caterina','Laurent','31065 Merchant Avenue','UB8 1JP','652-399-6238','1987-01-16','Female'),(87,'Sissy','Pattisson','06 Pine View Plaza','UB4 8NQ','221-734-1982','1984-09-10','Female'),(88,'Melinde','Schnitter','75 Arkansas Junction','UB5 6QR','917-401-9365','1992-08-19','Female'),(89,'Charis','Sunter','12 Beilfuss Avenue','UB6 0TB','235-939-8137','1996-11-13','Female'),(90,'Nance','Eayrs','7 Artisan Terrace','UB1 2XT','553-613-6852','1988-07-29','Male'),(91,'Lynnelle','Pfeiffer','166 Troy Alley','UB4 0AS','707-162-0062','1991-09-19','Female'),(92,'Emmit','Stowgill','2 Vera Hill','UB3 2DB','223-657-9078','1996-01-22','Female'),(93,'Cleve','Burness','0 Farmco Crossing','UB5 5SH','556-304-5566','1991-06-28','Male'),(94,'Tamera','Seiter','7508 Erie Street','UB10 9AD','502-462-0734','1993-01-20','Female'),(95,'Ogden','Pionter','050 Bashford Parkway','UB4 8RD','839-550-4658','1988-10-21','Male'),(96,'Hewet','Castagne','99 Waxwing Hill','UB7 8AA','682-501-2777','1999-09-12','Male'),(97,'Jasper','McAvaddy','63536 Mcguire Drive','UB6 9BA','516-686-0390','1993-01-18','Male'),(98,'Matty','Reburn','84 Oxford Hill','UB6 0UX','912-509-7494','1981-01-14','Female'),(99,'Ebonee','Lupson','03 Mandrake Terrace','UB3 4PB','476-403-0245','1980-01-13','Female'),(100,'Mano','Pentlow','0111 Delaware Street','UB5 5LH','202-238-1932','1998-07-07','Male');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_of_class`
--

DROP TABLE IF EXISTS `membership_of_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_of_class` (
  `member_id` int DEFAULT NULL,
  `class_id` varchar(10) DEFAULT NULL,
  KEY `fk_membership_of_class_member_id` (`member_id`),
  KEY `fk_membership_of_class_class_id` (`class_id`),
  CONSTRAINT `fk_membership_of_class_class_id` FOREIGN KEY (`class_id`) REFERENCES `class_activities` (`class_id`),
  CONSTRAINT `fk_membership_of_class_member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_of_class`
--

LOCK TABLES `membership_of_class` WRITE;
/*!40000 ALTER TABLE `membership_of_class` DISABLE KEYS */;
INSERT INTO `membership_of_class` VALUES (47,'D02'),(10,'B04'),(19,'C10'),(30,'A09'),(65,'BM1'),(14,'R11'),(54,'K13'),(98,'G12'),(98,'Y14'),(73,'S17'),(16,'P15'),(1,'B18'),(39,'S17'),(100,'K13'),(49,'P05'),(88,'G06'),(84,'K13'),(33,'C10'),(42,'Y14'),(80,'B18'),(93,'Y14'),(98,'BM1'),(82,'S07'),(15,'K13'),(14,'A09'),(8,'R11'),(58,'Y14'),(25,'D02'),(63,'G06'),(66,'S03'),(85,'D02'),(98,'K13'),(71,'C10'),(76,'BM1'),(89,'LT20'),(31,'K13'),(86,'BC16'),(63,'S17'),(56,'BM1'),(90,'B08'),(82,'D02'),(49,'B04'),(62,'S03'),(13,'P05'),(22,'G06'),(83,'A09'),(26,'S17'),(52,'BC16'),(86,'R11'),(54,'G12'),(17,'C10'),(80,'S07'),(98,'K13'),(33,'G12'),(66,'S07'),(6,'PS19'),(14,'B18'),(61,'S17'),(39,'G12'),(34,'B08'),(15,'S07'),(57,'BM1'),(28,'P05'),(88,'S17'),(80,'A09'),(86,'C10'),(53,'A09'),(83,'K13'),(58,'B18'),(45,'Y14'),(10,'LT20'),(98,'BC16'),(90,'P15'),(44,'B18'),(13,'PS19'),(25,'S17'),(8,'A09'),(14,'R11'),(31,'P15'),(17,'Y14'),(63,'LT20'),(21,'P15'),(56,'D02'),(8,'B04'),(30,'G06'),(68,'G12'),(99,'A09'),(10,'B18'),(73,'Y14'),(5,'S07'),(91,'Y14'),(18,'G12'),(66,'K13'),(45,'A09'),(19,'G06'),(53,'B04'),(35,'P05'),(41,'A09'),(95,'B18'),(14,'P15'),(48,'BM1'),(7,'G12'),(97,'R11'),(26,'B08'),(94,'S17'),(21,'D02'),(40,'B04'),(6,'B08'),(96,'G12'),(93,'Y14'),(19,'K13'),(99,'S17'),(42,'PS19'),(42,'S17'),(12,'G12'),(6,'R11'),(13,'B18'),(33,'LT20'),(14,'P15'),(92,'S17'),(27,'PS19'),(77,'D02'),(16,'S17'),(29,'D02'),(50,'BM1'),(16,'A09'),(20,'S07'),(56,'BM1'),(46,'G06'),(72,'LT20'),(5,'B18'),(61,'LT20'),(80,'R11'),(72,'B18'),(53,'S17'),(40,'S07'),(73,'D02'),(17,'BM1'),(65,'S17'),(55,'LT20'),(76,'G12'),(80,'S17'),(42,'B04'),(22,'B08'),(17,'R11'),(22,'Y14'),(77,'K13'),(7,'R11'),(43,'S03');
/*!40000 ALTER TABLE `membership_of_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` varchar(10) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES ('R1','Studio 1',20),('R2','Swimming Pool ',40),('R3','multipurpose court',35),('R4','Studio 2',30),('R5','Studio 3',50),('R6','Studio 4',25),('R7','kitchen',20);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_booking`
--

DROP TABLE IF EXISTS `room_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_booking` (
  `room_booking_id` varchar(10) NOT NULL,
  `class_id` varchar(10) DEFAULT NULL,
  `room_id` varchar(10) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  PRIMARY KEY (`room_booking_id`),
  KEY `fk_room_booking_class_id` (`class_id`),
  KEY `fk_room_booking_room_id` (`room_id`),
  CONSTRAINT `fk_room_booking_class_id` FOREIGN KEY (`class_id`) REFERENCES `class_activities` (`class_id`),
  CONSTRAINT `fk_room_booking_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_booking`
--

LOCK TABLES `room_booking` WRITE;
/*!40000 ALTER TABLE `room_booking` DISABLE KEYS */;
INSERT INTO `room_booking` VALUES ('RB01','S03','R2','2022-10-01'),('RB02','G12','R1','2022-10-01'),('RB03','R11','R5','2022-10-01'),('RB04','B18','R6','2022-10-01'),('RB05','K13','R1','2022-10-01'),('RB06','BM1','R3','2022-10-01'),('RB07','B04','R3','2022-10-01'),('RB08','G06','R5','2022-10-01'),('RB09','A09','R4','2022-10-01'),('RB10','B04','R3','2022-10-02'),('RB100','G12','R1','2022-10-19'),('RB101','S07','R3','2022-10-19'),('RB102','R11','R5','2022-10-19'),('RB103','A09','R4','2022-10-19'),('RB104','K13','R1','2022-10-20'),('RB105','C10','R5','2022-10-20'),('RB106','G12','R1','2022-10-20'),('RB107','Y14','R1','2022-10-20'),('RB108','B04','R3','2022-10-20'),('RB109','Y14','R1','2022-10-21'),('RB11','K13','R1','2022-10-02'),('RB110','D02','R4','2022-10-21'),('RB111','K13','R1','2022-10-21'),('RB112','R11','R5','2022-10-21'),('RB113','P15','R4','2022-10-21'),('RB114','P05','R4','2022-10-21'),('RB115','P15','R4','2022-10-22'),('RB116','S03','R2','2022-10-22'),('RB117','Y14','R1','2022-10-22'),('RB118','G12','R1','2022-10-22'),('RB119','BC16','R6','2022-10-22'),('RB12','S03','R2','2022-10-02'),('RB120','BC16','R6','2022-10-23'),('RB121','B04','R3','2022-10-23'),('RB122','P15','R4','2022-10-23'),('RB123','K13','R1','2022-10-23'),('RB124','S17','R4','2022-10-23'),('RB125','S17','R4','2022-10-24'),('RB126','BC16','R6','2022-10-24'),('RB127','Y14','R1','2022-10-24'),('RB128','P05','R4','2022-10-24'),('RB129','B18','R6','2022-10-25'),('RB13','PS19','R6','2022-10-02'),('RB130','G06','R5','2022-10-25'),('RB131','S17','R4','2022-10-25'),('RB132','P15','R4','2022-10-25'),('RB133','G06','R5','2022-10-25'),('RB134','PS19','R6','2022-10-26'),('RB135','S07','R3','2022-10-26'),('RB136','LT20','R3','2022-10-27'),('RB137','B08','R7','2022-10-27'),('RB138','D02','R4','2022-10-27'),('RB139','G12','R1','2022-10-27'),('RB14','R11','R5','2022-10-02'),('RB140','BM1','R3','2022-10-28'),('RB141','A09','R4','2022-10-28'),('RB142','G12','R1','2022-10-28'),('RB143','S03','R2','2022-10-28'),('RB144','Y14','R1','2022-10-29'),('RB145','C10','R5','2022-10-29'),('RB146','B08','R7','2022-10-29'),('RB147','B04','R3','2022-10-29'),('RB148','K13','R1','2022-10-30'),('RB149','R11','R5','2022-10-30'),('RB15','Y14','R1','2022-10-02'),('RB150','S07','R3','2022-10-30'),('RB151','P05','R4','2022-10-30'),('RB152','D02','R4','2022-10-30'),('RB153','A09','R4','2022-11-01'),('RB154','C10','R5','2022-11-01'),('RB155','P05','R4','2022-11-01'),('RB156','B18','R6','2022-11-01'),('RB157','S07','R3','2022-11-01'),('RB158','G06','R5','2022-11-01'),('RB159','Y14','R1','2022-11-01'),('RB16','P05','R4','2022-10-02'),('RB160','BM1','R3','2022-11-01'),('RB161','K13','R1','2022-11-01'),('RB162','R11','R5','2022-11-02'),('RB163','BM1','R3','2022-11-02'),('RB164','Y14','R1','2022-11-02'),('RB165','S03','R2','2022-11-02'),('RB166','C10','R5','2022-11-02'),('RB167','S07','R3','2022-11-02'),('RB168','D02','R4','2022-11-02'),('RB169','G06','R5','2022-11-02'),('RB17','S07','R3','2022-10-02'),('RB170','S17','R4','2022-11-03'),('RB171','BM1','R3','2022-11-03'),('RB172','D02','R4','2022-11-03'),('RB173','BC16','R6','2022-11-03'),('RB174','LT20','R3','2022-11-03'),('RB175','B08','R7','2022-11-03'),('RB176','K13','R1','2022-11-03'),('RB177','P05','R4','2022-11-04'),('RB178','A09','R4','2022-11-04'),('RB179','G06','R5','2022-11-04'),('RB18','C10','R5','2022-10-02'),('RB180','G12','R1','2022-11-04'),('RB181','B04','R3','2022-11-04'),('RB182','BC16','R6','2022-11-04'),('RB183','S03','R2','2022-11-04'),('RB184','R11','R5','2022-11-05'),('RB185','G12','R1','2022-11-05'),('RB186','S07','R3','2022-11-05'),('RB187','A09','R4','2022-11-05'),('RB188','PS19','R6','2022-11-06'),('RB189','S17','R4','2022-11-06'),('RB19','P05','R4','2022-10-03'),('RB190','K13','R1','2022-11-06'),('RB191','G12','R1','2022-11-06'),('RB192','S07','R3','2022-11-06'),('RB193','B18','R6','2022-11-07'),('RB194','P15','R4','2022-11-07'),('RB195','C10','R5','2022-11-07'),('RB196','G12','R1','2022-11-07'),('RB197','D02','R4','2022-11-08'),('RB198','S17','R4','2022-11-08'),('RB199','PS19','R6','2022-11-09'),('RB20','BC16','R6','2022-10-03'),('RB200','B18','R6','2022-11-09'),('RB201','G12','R1','2022-11-09'),('RB202','S17','R4','2022-11-09'),('RB203','B08','R7','2022-11-10'),('RB204','K13','R1','2022-11-10'),('RB205','S07','R3','2022-11-11'),('RB206','K13','R1','2022-11-11'),('RB207','BM1','R3','2022-11-12'),('RB208','LT20','R3','2022-11-13'),('RB209','Y14','R1','2022-11-13'),('RB21','Y14','R1','2022-10-03'),('RB210','K13','R1','2022-11-14'),('RB211','R11','R5','2022-11-15'),('RB212','B08','R7','2022-11-16'),('RB213','BM1','R3','2022-11-17'),('RB214','S07','R3','2022-11-17'),('RB215','S17','R4','2022-11-18'),('RB216','LT20','R3','2022-11-19'),('RB217','P05','R4','2022-11-20'),('RB218','B08','R7','2022-11-23'),('RB219','R11','R5','2022-11-24'),('RB22','B04','R3','2022-10-03'),('RB220','S07','R3','2022-11-26'),('RB221','K13','R1','2022-11-26'),('RB222','R11','R5','2022-11-27'),('RB223','S03','R2','2022-11-28'),('RB224','BM1','R3','2022-11-28'),('RB225','BC16','R6','2022-11-29'),('RB226','G12','R1','2022-11-30'),('RB227','R11','R5','2022-11-30'),('RB23','LT20','R3','2022-10-03'),('RB24','S03','R2','2022-10-03'),('RB25','K13','R1','2022-10-03'),('RB26','G06','R5','2022-10-03'),('RB27','B08','R7','2022-10-03'),('RB28','R11','R5','2022-10-03'),('RB29','G06','R5','2022-10-04'),('RB30','R11','R5','2022-10-04'),('RB31','P15','R4','2022-10-04'),('RB32','P05','R4','2022-10-04'),('RB33','B04','R3','2022-10-04'),('RB34','A09','R4','2022-10-04'),('RB35','S07','R3','2022-10-04'),('RB36','G12','R1','2022-10-04'),('RB37','S07','R3','2022-10-05'),('RB38','G12','R1','2022-10-05'),('RB39','G06','R5','2022-10-05'),('RB40','P05','R4','2022-10-05'),('RB41','S03','R2','2022-10-05'),('RB42','C10','R5','2022-10-05'),('RB43','B08','R7','2022-10-05'),('RB44','K13','R1','2022-10-05'),('RB45','B08','R7','2022-10-06'),('RB46','C10','R5','2022-10-06'),('RB47','S07','R3','2022-10-06'),('RB48','D02','R4','2022-10-06'),('RB49','G06','R5','2022-10-06'),('RB50','A09','R4','2022-10-06'),('RB51','R11','R5','2022-10-06'),('RB52','A09','R4','2022-10-07'),('RB53','B08','R7','2022-10-07'),('RB54','S03','R2','2022-10-07'),('RB55','S07','R3','2022-10-07'),('RB56','C10','R5','2022-10-07'),('RB57','G12','R1','2022-10-07'),('RB58','R11','R5','2022-10-07'),('RB59','C10','R5','2022-10-08'),('RB60','K13','R1','2022-10-08'),('RB61','A09','R4','2022-10-08'),('RB62','B04','R3','2022-10-08'),('RB63','B08','R7','2022-10-08'),('RB64','S03','R2','2022-10-08'),('RB65','G06','R5','2022-10-08'),('RB66','D02','R4','2022-10-09'),('RB67','G12','R1','2022-10-09'),('RB68','C10','R5','2022-10-09'),('RB69','P05','R4','2022-10-09'),('RB70','A09','R4','2022-10-09'),('RB71','S03','R2','2022-10-10'),('RB72','S07','R3','2022-10-10'),('RB73','D02','R4','2022-10-10'),('RB74','G06','R5','2022-10-10'),('RB75','PS19','R6','2022-10-10'),('RB76','B04','R3','2022-10-11'),('RB77','PS19','R6','2022-10-11'),('RB78','S03','R2','2022-10-11'),('RB79','S07','R3','2022-10-11'),('RB80','B18','R6','2022-10-11'),('RB81','P05','R4','2022-10-12'),('RB82','B18','R6','2022-10-12'),('RB83','B04','R3','2022-10-12'),('RB84','B08','R7','2022-10-12'),('RB85','S17','R4','2022-10-12'),('RB86','G06','R5','2022-10-13'),('RB87','S17','R4','2022-10-13'),('RB88','P05','R4','2022-10-13'),('RB89','S07','R3','2022-10-14'),('RB90','G12','R1','2022-10-14'),('RB91','G06','R5','2022-10-14'),('RB92','B08','R7','2022-10-15'),('RB93','S07','R3','2022-10-15'),('RB94','A09','R4','2022-10-16'),('RB95','B08','R7','2022-10-16'),('RB96','C10','R5','2022-10-17'),('RB97','A09','R4','2022-10-17'),('RB98','R11','R5','2022-10-18'),('RB99','C10','R5','2022-10-18');
/*!40000 ALTER TABLE `room_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'team9'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-04 17:17:51
