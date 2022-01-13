CREATE DATABASE  IF NOT EXISTS `bk` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bk`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: bk
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `addmember`
--

DROP TABLE IF EXISTS `addmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addmember` (
  `No` int NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Birthday` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mail` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addmember`
--

LOCK TABLES `addmember` WRITE;
/*!40000 ALTER TABLE `addmember` DISABLE KEYS */;
INSERT INTO `addmember` VALUES (1,'曾芃芃','2000-12-14','0984346426','h0984346426@gmail.com','桃園市中壢區中北路200號','10844137','137');
/*!40000 ALTER TABLE `addmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addpayment`
--

DROP TABLE IF EXISTS `addpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addpayment` (
  `NO` int NOT NULL,
  `firstname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addpayment`
--

LOCK TABLES `addpayment` WRITE;
/*!40000 ALTER TABLE `addpayment` DISABLE KEYS */;
INSERT INTO `addpayment` VALUES (1,'曾雨芃','h0984346426@gmail.com','桃園市中壢區中北路200號','0984346426');
/*!40000 ALTER TABLE `addpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addserver`
--

DROP TABLE IF EXISTS `addserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addserver` (
  `Id` varchar(65) NOT NULL,
  `Pwd` varchar(65) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addserver`
--

LOCK TABLES `addserver` WRITE;
/*!40000 ALTER TABLE `addserver` DISABLE KEYS */;
INSERT INTO `addserver` VALUES ('10844137','137');
/*!40000 ALTER TABLE `addserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('1234','1234');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `No` int NOT NULL AUTO_INCREMENT,
  `Id` varchar(4) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `image1` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `image3` varchar(200) DEFAULT NULL,
  `image4` varchar(200) DEFAULT NULL,
  `image5` varchar(200) DEFAULT NULL,
  `introduce` varchar(2000) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `size` varchar(8) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `stock` float DEFAULT NULL,
  `type` varchar(200) NOT NULL,
  `produces` varchar(200) NOT NULL,
  `standard` varchar(200) NOT NULL,
  `apply` varchar(200) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'p001','漂亮家居','beauty1.png','beauty2.png','beauty3.png','beauty4.png','beauty5.png','★Trends編輯精選：依編輯專業做最挑剔的精選推薦，並從設計角度，報導具有話題及引領最新、最潮流、最具話題的設計訊息。',139,'30 cm','無',100,'pot','《漂亮家居》1月號/2021 第239期刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  麥浩斯出版日期   :  2021/01/06','《漂亮家居》 1月號/2021 第239期(電子雜誌)','雜誌'),(2,'p002','漂亮家居','beauty1.png','beauty2.png','beauty3.png','beauty4.png','beauty5.png','★Trends編輯精選：依編輯專業做最挑剔的精選推薦，並從設計角度，報導具有話題及引領最新、最潮流、最具話題的設計訊息。',139,'30 cm','無',100,'pot','《漂亮家居》2月號/2021 第240期刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  麥浩斯出版日期   :  2021/02/04','《漂亮家居》 2月號/2021 第240期(電子雜誌)','雜誌'),(3,'p003','漂亮家居','beauty1.png','beauty2.png','beauty3.png','beauty4.png','beauty5.png','★Trends編輯精選：依編輯專業做最挑剔的精選推薦，並從設計角度，報導具有話題及引領最新、最潮流、最具話題的設計訊息。',139,'30 cm','無',100,'pot','《漂亮家居》3月號/2021 第241期刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  麥浩斯出版日期   :  2021/03/05','《漂亮家居》 3月號/2021 第241期 (電子雜誌)','雜誌'),(4,'p004','漂亮家居','beauty1.png','beauty2.png','beauty3.png','beauty4.png','beauty5.png','★Trends編輯精選：依編輯專業做最挑剔的精選推薦，並從設計角度，報導具有話題及引領最新、最潮流、最具話題的設計訊息。',139,'30 cm','無',100,'pot','《漂亮家居》4月號/2021 第242期刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  麥浩斯出版日期   :  2021/04/07','《漂亮家居》 4月號/2021 第242期 (電子雜誌)','雜誌'),(5,'p005','世界電影','movie1.png','movie2.png','movie3.png','movie4.png','movie5.png','Fashion Power！回顧2020‧放眼2021回首2020年，不只是韋伯字典選的年度單字「大流行」(pandemic)，更是那個被打在《時代》雜誌封面上的紅色大叉；在終於送走庚子年的現在，我們除了回顧過去一整年，同時也期待新的這一年能有全新氣象。',69,'22 cm','無',100,'pot','《世界電影》2021年1月號第624期 (電子雜誌)刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  世界電影出版日期   :  2021/01/04','《世界電影》 2021年1月號第624期 (電子雜誌)','電子書'),(6,'p006','世界電影','movie1.png','movie2.png','movie3.png','movie4.png','movie5.png','Fashion Power！回顧2020‧放眼2021回首2020年，不只是韋伯字典選的年度單字「大流行」(pandemic)，更是那個被打在《時代》雜誌封面上的紅色大叉；在終於送走庚子年的現在，我們除了回顧過去一整年，同時也期待新的這一年能有全新氣象。',69,'22 cm','無',100,'pot','《世界電影》2021年2月號第625期 (電子雜誌)刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  世界電影出版日期   :  2021/02/01','《世界電影》 2021年2月號第625期 (電子雜誌)','電子書'),(7,'p007','世界電影','movie1.png','movie2.png','movie3.png','movie4.png','movie5.png','Fashion Power！回顧2020‧放眼2021回首2020年，不只是韋伯字典選的年度單字「大流行」(pandemic)，更是那個被打在《時代》雜誌封面上的紅色大叉；在終於送走庚子年的現在，我們除了回顧過去一整年，同時也期待新的這一年能有全新氣象。',69,'22 cm','無',100,'pot','《世界電影》2021年4月號第627期 (電子雜誌)刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  世界電影出版日期   :  2021/04/06','《世界電影》 2021年4月號第627期 (電子雜誌)','電子書'),(8,'p008','世界電影','movie1.png','movie2.png','movie3.png','movie4.png','movie5.png','Fashion Power！回顧2020‧放眼2021回首2020年，不只是韋伯字典選的年度單字「大流行」(pandemic)，更是那個被打在《時代》雜誌封面上的紅色大叉；在終於送走庚子年的現在，我們除了回顧過去一整年，同時也期待新的這一年能有全新氣象。',69,'22 cm','無',100,'pot','《世界電影》2021年5月號第628期 (電子雜誌)刊  別 ： 月刊出版地區 ： 台灣語  言 ： 繁體中文出   版  社  :  世界電影出版日期   :  2021/05/10','《世界電影》 2021年5月號第628期 (電子雜誌)','電子書'),(9,'p009','室內interior','interior1.png','interior2.png','interior3.png','interior4.png','interior5.png','《室內interior》是一本綜觀設計、人文、美學的雜誌，1989年創刊至今，以精粹而具觀瞻的視野，透析了空間與設計的定位， 拉近台灣與世界的空間座標。雜誌內容選輯建築與空間作品的精彩實例。 當期焦點主題採用中英雙語呈現，詳述設計概念、佈局規劃、美學精神，無論本土意識、國際觀、小眾口味， 實驗性作品都能在此一平台競技。 《室內interior》除了精選原創設計作品，亦關懷文化與教育， 雜誌收錄內容觸及生活美學、時尚、藝術、人文、設計、觀點等議題， 同時擁有歐洲、美洲、亞洲等地的特約撰述和攝影專家， 提供當地之設計、建築、藝術、文化、工藝與科技等深度報導， 為讀者帶來多元視角，以及更豐富的閱讀思考。',190,'25 cm','無',100,'pot','《室內interior》2月號/2021 第329期刊  別 ： 季刊出版地區 ： 台灣','《室內interior》 2月號/2021 第329期','雜誌'),(10,'p010','室內interior','interior1.png','interior2.png','interior3.png','interior4.png','interior5.png','《室內interior》是一本綜觀設計、人文、美學的雜誌，1989年創刊至今，以精粹而具觀瞻的視野，透析了空間與設計的定位， 拉近台灣與世界的空間座標。雜誌內容選輯建築與空間作品的精彩實例。 當期焦點主題採用中英雙語呈現，詳述設計概念、佈局規劃、美學精神，無論本土意識、國際觀、小眾口味， 實驗性作品都能在此一平台競技。 《室內interior》除了精選原創設計作品，亦關懷文化與教育， 雜誌收錄內容觸及生活美學、時尚、藝術、人文、設計、觀點等議題， 同時擁有歐洲、美洲、亞洲等地的特約撰述和攝影專家， 提供當地之設計、建築、藝術、文化、工藝與科技等深度報導， 為讀者帶來多元視角，以及更豐富的閱讀思考。',190,'25 cm','無',100,'pot','《室內interior》3月號/2021 第330期刊  別 ： 季刊出版地區 ： 台灣','《室內interior》 2月號/2021 第330期','雜誌'),(11,'p011','室內interior','interior1.png','interior2.png','interior3.png','interior4.png','interior5.png','《室內interior》是一本綜觀設計、人文、美學的雜誌，1989年創刊至今，以精粹而具觀瞻的視野，透析了空間與設計的定位， 拉近台灣與世界的空間座標。雜誌內容選輯建築與空間作品的精彩實例。 當期焦點主題採用中英雙語呈現，詳述設計概念、佈局規劃、美學精神，無論本土意識、國際觀、小眾口味， 實驗性作品都能在此一平台競技。 《室內interior》除了精選原創設計作品，亦關懷文化與教育， 雜誌收錄內容觸及生活美學、時尚、藝術、人文、設計、觀點等議題， 同時擁有歐洲、美洲、亞洲等地的特約撰述和攝影專家， 提供當地之設計、建築、藝術、文化、工藝與科技等深度報導， 為讀者帶來多元視角，以及更豐富的閱讀思考。',190,'25 cm','無',100,'pot','《室內interior》3月號/2021 第331期刊  別 ： 季刊出版地區 ： 台灣','《室內interior》 2月號/2021 第331期','雜誌');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('123','123','123');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `帳號` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `密碼` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`帳號`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('10844137','137');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 21:38:03
