-- MySQL dump 10.13  Distrib 8.2.0, for macos13.5 (arm64)
--
-- Host: ucka.veleri.hr    Database: ipangos
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `voziloRentPZI`
--

DROP TABLE IF EXISTS `voziloRentPZI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voziloRentPZI` (
  `ID_vozila` int(5) NOT NULL AUTO_INCREMENT,
  `registracija` varchar(10) DEFAULT NULL,
  `proizvodac` varchar(20) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `godiste` varchar(10) DEFAULT NULL,
  `cijenaPodanu` int(10) DEFAULT NULL,
  `tipGoriva` varchar(10) DEFAULT NULL,
  `slika` varchar(300) DEFAULT NULL,
  `opis` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID_vozila`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voziloRentPZI`
--

LOCK TABLES `voziloRentPZI` WRITE;
/*!40000 ALTER TABLE `voziloRentPZI` DISABLE KEYS */;
INSERT INTO `voziloRentPZI` VALUES (1,'RI345PP','Maseratti','MC20','2022',150,'Benzin','https://banner2.cleanpng.com/20180328/vpq/kisspng-2012-bentley-continental-gtc-2018-bentley-continen-bentley-5abb4dfd896532.3899968215222246375628.jpg','Novi MC20 Cielo vozi u pratnji novog V6 Nettuno motora koji je debitirao u MC20 2020.\nUpravo predstavljeni MC20 Cielo nudi savršenu mješavinu sportskog duha i luksuza zahvaljujući\njedinstvenoj mogućnosti za ovaj segment – inovativnom staklenom krovu na uvlačenje. https://www.edmunds.com/maserati/mc20/2022/features-specs/'),(2,'ZG666SS','Bentley','Continental GT','2023',200,'Benzin','https://imgd.aeplcdn.com/664x374/n/cw/ec/108971/mc20-exterior-right-front-three-quarter-2.jpeg?isig=0&q=80','Sjedeći u Continental GT Speedu imate osjećaj da ste u savršeno krojenom, luksuznom odijelu, a osjeti dodira, vida i mirisa preplavljeni su kvalitetom.\nMotor W12 s 650 konjskih snaga od nule do 60 km/h dolazi za oko 3.1 sekundu, što je impresivno kad se uzme u obzir težina automobila od oko 1.950 kilograma.\nMjenjač s dvostrukom spojkom, osam brzina i automatskim prijenosom glatko se kreće kroz brzine, a kočnice automobil zaustavljaju u trenu. https://www.bentleymotors.com/en/models/continental-gt/continental-gt-speed.html'),(3,'RI772UR','Bugatti','Veyron','2012',250,'Benzin','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJasjsu0n7mEPvfsdMZ7D0QAuWljC-EjnxzvkR67in5IffrAALe7j0pphl7-zUfqxbhJI&usqp=CAU','Veyron pokreće Volkswagenov motor od 16 cilindara (dva motora od 8 cilindara spojena u jedan), 64 ventila i 1001 konjsku snagu. Motor hladi čak 10 hladnjaka.\nMjenjač je BorgWarner-ov sedmostupanjski poluautomatski DSG i omogućuje promjenu brzine za vrijeme od 8 milisekundi. https://en.wikipedia.org/wiki/Bugatti_Veyron#Specifications_(all_variants)'),(4,'ZG1950HS','Dodge','Challenger SRT Hellcat','2022',300,'Benzin','https://s3-prod.autonews.com/s3fs-public/OEM04_140529993_AR_-1_ITGFYLWHFTFD.jpg','za moćnog imena Dodge Challenger SRT Hellcat krije se i moćni stroj kojeg pokreće 6,2 litreni V8 motor s kompresorom koji razvija više od 600 konja.\nAmerički ljepotan koristi 20” kovane kotače u mat crnoj boji presvučene Pirelli P Zero Nero gumama ispod kojih se skrivaju ogromne, 390 milimetarske Brembo kočnice.\nhttps://carbuzz.com/cars/dodge/challenger-srt-hellcat/2023-dodge-challenger-srt-hellcat'),(5,'ST1987AR','Rimac','Nevera','2022',500,'Elektricni','https://web-cdn.rimac-automobili.com/wp-content/uploads/2021/05/30205149/GP-3.png','Osim što je prvi hrvatski serijski automobil, ovaj bolid je i najsnažniji te najbrže ubrzavajući homologirani serijski automobil ikada.\n 1914 KS i 2300 Nm okretnog momenta, ubrzanje do 100 km/h iz stajanja za 1,85 sekundi te najveća brzina od 412 km/h.'),(6,'RI225GZ','Porsche','Carrera S','2017',200,'Benzin','https://ptravelsclub.com/wp-content/uploads/sites/3/2018/12/porsche-transparent-5a21ec15bbd4e0.5928616415121725657694.jpg','ikona sportskih automobila s motorom postavljenim straga, sjedalima 2+2 i nenadmašivim performansama.\nDoživite Porscheov genetski kod u njegovom najčišćem obliku. Tipične Porsche performanse generira 3-litreni biturbo boxerski 6-cilindarski motor s 283 kW (385 KS) snage i 450 Nm okretnog momenta.\n'),(7,'RI2345F','Lamborghini','Huracan','2018',700,'Benzin','https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_gw/hero-banner/huracan/11_18_sto_lancio/Huracan_STO.png','Talijanski je proizvođač 2018. godine predstavio verziju staze Lamborghini Huracan LP640-4 Performante svijetu automobilista.\nIspod poklopca motora novitet dobiva atmosferski benzinski motor, koji je nakon određene modernizacije povećao snagu za 30 KS., 7-stupanjski robotski mjenjač, ​​\nkoji je već poznat za ovaj segment sportskih automobila, radi zajedno s jedinicom.'),(8,'RI666XX','McLaren','P1','2022',900,'Hibridni','https://www.guncelarabalar.com/wp-content/uploads/2022/06/P1.png','McLaren P1 je super sportski automobil sa više od 900 konjskih snaga, ubrzanje od samo 2,8 sekundi na 100 kilometara.\nAutomobil će biti pogonjen 3.8-litarskim V8 motorom sa maksimalnom snagom od 737 konjskih snaga i dodatnih 179 konjskih snaga kroz KERS-ov sistem za obnovu kinetičke energije koji se već koristi na F1 utrkama.\n'),(9,'RI2319RR','Ferrari','458 Italia','2016',400,'Benzin','https://picolio.auto123.com/16photo/ferrari/2016-ferrari-458-italia-speciale.png','Speciale je najaerodinamičniji cestovni Ferrari - ima posebno razvijena prednja i stražnja pokretna krilca, koja se automatski prilagođavaju te smanjuju otpor zraka i potisak prema tlu.\nFerrarijev 4,5-litreni V8 motor osnažen je sa 570 KS na 605 KS');
/*!40000 ALTER TABLE `voziloRentPZI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racunRentPZI`
--

DROP TABLE IF EXISTS `racunRentPZI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `racunRentPZI` (
  `ime` varchar(50) DEFAULT NULL,
  `ID_vozila` int(5) DEFAULT NULL,
  `brojDanaUNajmu` int(5) DEFAULT NULL,
  `ukupnaCijena` int(10) DEFAULT NULL,
  KEY `VKvozila` (`ID_vozila`),
  CONSTRAINT `VKvozila` FOREIGN KEY (`ID_vozila`) REFERENCES `voziloRentPZI` (`ID_vozila`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racunRentPZI`
--

LOCK TABLES `racunRentPZI` WRITE;
/*!40000 ALTER TABLE `racunRentPZI` DISABLE KEYS */;
INSERT INTO `racunRentPZI` VALUES ('mile',4,2,600),('pero peric',7,13,9100);
/*!40000 ALTER TABLE `racunRentPZI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `korisnikRentPZI`
--

DROP TABLE IF EXISTS `korisnikRentPZI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korisnikRentPZI` (
  `ID_korisnika` int(5) NOT NULL AUTO_INCREMENT,
  `ime` varchar(30) DEFAULT NULL,
  `prezime` varchar(50) DEFAULT NULL,
  `brojMob` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_korisnika`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnikRentPZI`
--

LOCK TABLES `korisnikRentPZI` WRITE;
/*!40000 ALTER TABLE `korisnikRentPZI` DISABLE KEYS */;
INSERT INTO `korisnikRentPZI` VALUES (2,'Ivor','Pangos','0912345678'),(3,'Patrik','DFukic','09123453435'),(13,'','',''),(14,'iv','or','0303033');
/*!40000 ALTER TABLE `korisnikRentPZI` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-16 11:24:47
