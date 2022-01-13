CREATE DATABASE  IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `store`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: store
-- ------------------------------------------------------
-- Server version	8.0.22

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
  `No` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Birthday` varchar(20) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Mail` varchar(65) NOT NULL,
  `Address` varchar(65) NOT NULL,
  `Id` varchar(65) NOT NULL,
  `Pwd` varchar(65) NOT NULL,
  `memberdate` date NOT NULL,
  PRIMARY KEY (`No`),
  UNIQUE KEY `Id` (`Id`),
  UNIQUE KEY `Pwd` (`Pwd`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addmember`
--

LOCK TABLES `addmember` WRITE;
/*!40000 ALTER TABLE `addmember` DISABLE KEYS */;
INSERT INTO `addmember` VALUES (1,'林小萱','2001-02-03','0911258958','Sherry123@gmail.com','桃園市中壢區中北路200號','20010203','203','2021-06-15'),(2,'姜小庭','2001-01-30','0968592350','Betty23@gmail.com','台北市大安區新北路150號','20010130','130','2021-06-15'),(3,'翁小媛','2001-03-03','0949856125','Coco12345@gmail.com','新竹市竹北區仁愛路100號','20010303','303','2021-06-15'),(4,'劉小淳','2001-05-06','0941258512','Helen5@gmail.com','桃園市平鎮區中北路350號','20010506','506','2021-06-16'),(5,'蔡依玲','2002-05-29','0945856125','Willy12345@gmail.com','新竹市竹北區仁愛路100號','20020529','529','2021-06-16'),(6,'周加侖','1995-08-05','0945289518','Fanny321@gmail.com','桃園市中壢區中北路350號','19950805','805','2021-06-17'),(7,'張君密','1986-06-09','0915258954','Ann45@gmail.com','台北市大安區大安路158號','19860609','609','2021-06-17'),(8,'周俊','1985-11-29','0958625365','Ann12345@gmail.com','台北市中正區中正路170號','19851129','129','2021-06-18'),(9,'林小澄','1985-10-15','0985485956','Luca13@gmail.com','桃園市平鎮區中央路180號','19851015','015','2021-06-18'),(10,'張哲凱','1985-05-11','0968594259','Jeance123@gmail.com','台北市中正區中山路200號','19850511','511','2021-06-19'),(11,'翁淑媛','2021-06-02','0912345678','smalluan@gmail.com','桃園市中壢區中北路180號','569','569','2021-06-20'),(12,'徐紫雲','2001-12-30','0989655895','small128@gmail.com','桃園市中壢區中北路150號','20011230','230','2021-06-20');
/*!40000 ALTER TABLE `addmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addpayment`
--

DROP TABLE IF EXISTS `addpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addpayment` (
  `No` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cardname` varchar(200) NOT NULL,
  `cardnumber` varchar(200) NOT NULL,
  `expmonth` varchar(12) NOT NULL,
  `expyear` varchar(12) NOT NULL,
  `cvv` varchar(12) NOT NULL,
  `paymentdate` date NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addpayment`
--

LOCK TABLES `addpayment` WRITE;
/*!40000 ALTER TABLE `addpayment` DISABLE KEYS */;
INSERT INTO `addpayment` VALUES (1,'林小萱','Sherry123@gmail.com','桃園市中壢區中北路200號','0911258958','林小萱','1111222233334444','10','2023','562','2021-06-18'),(2,'姜小庭','Betty23@gmail.com','台北市大安區新北路150號','0968592351','姜小庭','5555666677778888','2','2023','895','2021-06-18'),(3,'翁小媛','Coco12345@gmail.com','新竹市竹北區仁愛路100號','0949856125','翁小媛','1111555533338888','6','2023','789','2021-06-18'),(4,'劉小淳','Helen5@gmail.com','桃園市平鎮區中北路350號','0941258518','劉小淳','2222444466668888','9','2023','859','2021-06-18'),(5,'蔡依玲','Willy12345@gmail.com','新竹市竹北區仁愛路100號','0945856125','蔡依玲','1253895685475698','6','2023','785','2021-06-19'),(6,'周加侖','Fanny321@gmail.com','桃園市中壢區中北路350號','0945289518','周加侖','3625895425865968','8','2023','545','2021-06-19'),(7,'張君密','Ann45@gmail.com','台北市大安區大安路158號','0915258954','張君密','1235698545698569','9','2023','236','2021-06-19'),(8,'周俊','Ann12345@gmail.com','台北市中正區中正路170號','0958625365','周俊','1258589645878956','10','2023','452','2021-06-19'),(9,'林小澄','Luca13@gmail.com','桃園市平鎮區中央路180號','0985485956','林小澄','6932859756984521','5','2023','789','2021-06-19'),(10,'張哲凱','Jeance123@gmail.com','台北市中正區中山路200號','0968594259','林小萱','1254895636524859','5','2023','125','2021-06-20'),(11,'林小萱','Sherry123@gmail.com','桃園市中壢區中北路200號','0911258958','林小萱','1111222233334444','10','2023','562','2021-06-20'),(12,'翁淑媛','smalluan@gmail.com','桃園市中壢區中北路200號','0906920858','翁淑媛','452998566325','9','2023','236','2021-06-20'),(13,'翁淑媛','smalluan@gmail.com','桃園市中壢區中北路200號','0906920112','翁淑媛','895689568956','9','2023','123','2021-06-20'),(14,'翁淑媛','smalluan@gmail.com','桃園市中壢區中北路200號','0912345678','翁淑媛','125478965845','9','2023','1','2021-06-20'),(15,'徐紫雲','small128@gmail.com','桃園市中壢區中北路150號','0989655895','徐紫雲','125469852365','12','2023','596','2021-06-20');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addserver`
--

LOCK TABLES `addserver` WRITE;
/*!40000 ALTER TABLE `addserver` DISABLE KEYS */;
INSERT INTO `addserver` VALUES ('10844108','108'),('10844143','143'),('10844208','208'),('10844248','248');
/*!40000 ALTER TABLE `addserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `product` varchar(45) NOT NULL,
  `star` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `message` varchar(45) NOT NULL,
  `boarddate` date NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'林小萱','Sherry123@gmail.com','1','5','評價','非常好用','2021-06-18'),(2,'姜小庭','Betty23@gmail.com','1','5','評價','非常好看','2021-06-18'),(3,'翁小媛','Coco12345@gmail.com','1','5','評價','非常實用','2021-06-18'),(4,'劉小淳','Helen5@gmail.com','1','5','評價','非常漂亮','2021-06-18'),(5,'姜小庭','Betty23@gmail.com','4','5','評價','超級讚','2021-06-19'),(6,'周俊','Ann12345@gmail.com','2','5','評價','好評','2021-06-19'),(7,'張哲凱','Jeance123@gmail.com','5','5','評價','實用','2021-06-19'),(8,'周加侖','Fanny321@gmail.com','8','5','評價','很時尚','2021-06-20'),(9,'翁淑媛','smalluan@gmail.com','4','5','評論','5分','2021-06-20'),(10,'翁淑媛','smalluan@gmail.com','2','5','評價','5分','2021-06-20'),(11,'翁淑媛','smalluan@gmail.com','7','5','評價','5分','2021-06-20'),(12,'姜瑋庭','Betty23@gmail.com','3','5','評價','5','2021-06-20'),(13,'周俊','Ann12345@gmail.com','11','5','評價','實用','2021-06-20');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `No` int NOT NULL AUTO_INCREMENT,
  `Id` varchar(4) NOT NULL,
  `product` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `quentity` varchar(45) NOT NULL,
  `cartdate` date NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'p001','雙魚戲荷琺瑯鑄鐵媽咪鍋(加勒比海藍-鋼頭)','NT$ 13,000.00','22 cm','雙魚戲荷','1','2021-06-18'),(2,'p003','典藏琺瑯鑄鐵媽咪鍋(杏桃黃-鋼頭)','NT$ 15,000.00','26 cm','杏桃黃','3','2021-06-18'),(3,'p004','萬用窈窕琺瑯鑄鐵鍋(櫻桃紅-內鍋黑)','NT$ 9,200.00','20cm','沉靜黑','2','2021-06-18'),(4,'p007','琺瑯鑄鐵山茶花鍋(水漾藍) 鋼頭','NT$ 13,000.00','20cm','水漾藍','4','2021-06-18'),(5,'p008','珠光薔薇英式午茶杯(貝殼粉)','NT$ 980.00','280ml','珠光白','4','2021-06-18'),(6,'p010','珠光薔薇花瓶500ml (貝殼粉)','NT$ 1,480.00','500ml','珠光白','3','2021-06-18'),(7,'p012','深圓盤(悠然綠)','NT$ 1,280.00','20cm','悠然綠','5','2021-06-18'),(8,'p001','雙魚戲荷琺瑯鑄鐵媽咪鍋(加勒比海藍-鋼頭)','NT$ 13,000.00','22 cm','雙魚戲荷','8','2021-06-19'),(9,'p005','典藏琺瑯鑄鐵慢燉鍋','NT$ 15,000.00','22 cm','野莓金/貝殼粉','4','2021-06-19'),(10,'p008','珠光薔薇英式午茶杯(貝殼粉)','NT$ 980.00','280ml','珠光白','7','2021-06-19'),(11,'p001','雙魚戲荷琺瑯鑄鐵媽咪鍋(加勒比海藍-鋼頭)','NT$ 13,000.00','22 cm','雙魚戲荷','1','2021-06-19'),(12,'p002','典藏琺瑯鑄鐵圓鍋','NT$ 15,000.00','20 cm','野莓金','5','2021-06-19'),(13,'p003','典藏琺瑯鑄鐵媽咪鍋(杏桃黃-鋼頭)','NT$ 15,000.00','26 cm','杏桃黃','1','2021-06-19'),(14,'p003','典藏琺瑯鑄鐵媽咪鍋(杏桃黃-鋼頭)','NT$ 15,000.00','26 cm','杏桃黃','3','2021-06-19'),(15,'p011','韓式飯碗(悠然綠)','NT$ 880.00','350 ml','悠然綠','2','2021-06-20'),(16,'p011','韓式飯碗(悠然綠)','NT$ 880.00','350 ml','悠然綠','2','2021-06-20'),(17,'p019','不鏽鋼矽膠餐夾(沉靜黑)','NT$ 1,580.00','24cm','沉靜黑','2','2021-06-20'),(18,'p024','鍋把套(奇異果綠)','NT$ 980.00','F','櫻桃紅','1','2021-06-20');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cart_view`
--

DROP TABLE IF EXISTS `cart_view`;
/*!50001 DROP VIEW IF EXISTS `cart_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cart_view` AS SELECT 
 1 AS `No`,
 1 AS `Id`,
 1 AS `product`,
 1 AS `price`,
 1 AS `size`,
 1 AS `color`,
 1 AS `quentity`,
 1 AS `sum`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list` (
  `no` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `product` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `size` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `produce` varchar(300) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `src` varchar(150) NOT NULL,
  `stock` varchar(45) NOT NULL,
  `diameter` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `capacity` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `apply1` varchar(45) NOT NULL,
  `apply2` varchar(45) NOT NULL,
  `apply3` varchar(45) NOT NULL,
  `apply4` varchar(45) NOT NULL,
  `apply5` varchar(45) NOT NULL,
  `apply6` varchar(45) NOT NULL,
  `img1` varchar(45) NOT NULL,
  `img2` varchar(45) NOT NULL,
  `img3` varchar(45) NOT NULL,
  `color1` varchar(45) NOT NULL,
  `color2` varchar(45) NOT NULL,
  `add` varchar(45) NOT NULL,
  `sale` varchar(45) NOT NULL,
  `hotimg` varchar(45) NOT NULL,
  `src2` varchar(45) NOT NULL,
  `src3` varchar(45) NOT NULL,
  `src4` varchar(45) NOT NULL,
  `src5` varchar(45) NOT NULL,
  `Id` varchar(45) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'pot','雙魚戲荷琺瑯鑄鐵媽咪鍋(加勒比海藍-鋼頭)','NT$ 13,000.00','22 cm','雙魚戲荷','使用吉祥的荷花與鯉魚圖案，貼花皆由工藝師手工一步一步貼製，再高溫燒製固定顏色及花紋，完美展現品牌精湛的工藝技術與設計之美。','琺瑯鑄鐵媽咪鍋 22cm','asset/image/fire2.png','asset/image/pot1.jpg','100','直徑:22cm、(含柄)30.3cm','9.0cm、(含蓋)12.9cm','2.6L','3.4kg','瓦斯爐','電磁爐','烤箱','','','','asset/image/elec2.png','asset/image/hotbox2.png','','加勒比海藍','','v','97','asset/image/pot1-removebg-preview.png','asset/image/pot1-2.jpg','asset/image/pot1-3.jpg','asset/image/pot1-4.jpg','asset/image/pot1-5.jpg','p001'),(2,'pot','典藏琺瑯鑄鐵圓鍋','NT$ 15,000.00','20 cm','野莓金','●導熱迅速且均勻。<BR>●厚重的蓋子不易使蒸氣流失，鎖住美味及營養。<BR>●琺瑯容易清潔，色澤外型美觀亮麗。<BR>●耐高溫且適應各種烹調方式。','典藏琺瑯鑄鐵圓鍋 20cm','asset/image/fire2.png','asset/image/pot2.jpg','100','直徑:20cm、(含柄)28.5cm','9.5cm、(含蓋)14cm','2.4L','3.1kg','瓦斯爐','電磁爐','烤箱','洗碗機','','','asset/image/elec2.png','asset/image/hotbox2.png','asset/image/dishwasher.png','','','v','43','','asset/image/pot2.jpg','asset/image/pot2.jpg','asset/image/pot2.jpg','asset/image/berry_pink.jpg','p002'),(3,'pot','典藏琺瑯鑄鐵媽咪鍋(杏桃黃-鋼頭)','NT$ 15,000.00','26 cm','杏桃黃','優雅圓潤的外型及內鍋白色琺瑯的中式深底炒鍋。','典藏琺瑯鑄鐵媽咪鍋26cm(內鍋白色琺瑯)','asset/image/fire2.png','asset/image/pot3.jpg','100','直徑:26cm','10、(含蓋)15cm','4.1L','4.5kg','瓦斯爐','電磁爐','烤箱','洗碗機','','','asset/image/elec2.png','asset/image/hotbox2.png','asset/image/dishwasher.png','','','v','23','','asset/image/pot3-peachyellow.jpg','asset/image/pot3-peachyellow.jpg','asset/image/pot3-peachyellow.jpg','asset/image/peachyellow.png','p003'),(4,'pot','萬用窈窕琺瑯鑄鐵鍋(櫻桃紅-內鍋黑)','NT$ 9,200.00','20cm','沉靜黑','●深度的鍋身設計精緻小巧，煎煮炒炸都合適，鍋內深度仍確保足夠容量。<br>●瓷器內鍋蓋靈感源於日本土鍋，氣密及防溢效果佳。','萬用窈窕鑄鐵鍋 18【此賣場不含內鍋蓋】','asset/image/fire2.png','asset/image/pot4.jpg','100','直徑:17cm、(含柄)23cm','13cm、(含蓋)18cm','2L','2.7kg','瓦斯爐','電磁爐','烤箱','洗碗機','','','asset/image/elec2.png','asset/image/hotbox2.png','asset/image/dishwasher.png','櫻桃紅','海岸藍','v','13','','asset/image/pot4-black.jpg','asset/image/pot4-gray.jpg','asset/image/pot4-OceanBlue.jpg','asset/image/pot4-purple.jpg','p004'),(5,'pot','典藏琺瑯鑄鐵慢燉鍋','NT$ 15,000.00','22 cm','野莓金/貝殼粉','●導熱迅速且均勻。<BR>●厚重的蓋子不易使蒸氣流失，鎖住美味及營養。<BR>●琺瑯容易清潔，色澤外型美觀亮麗。<BR>●耐高溫且適應各種烹調方式。','典藏琺瑯鑄鐵慢燉鍋 22cm','asset/image/fire2.png','asset/image/pot5.jpg','100','直徑:22cm、(含柄)30cm','8cm、(含蓋)13cm','2.2L','3.3kg','瓦斯爐','電磁爐','烤箱','洗碗機','','','asset/image/elec2.png','asset/image/hotbox2.png','asset/image/dishwasher.png','貝殼粉','','v','45','','asset/image/pot5-berrypink.jpg','asset/image/pot5-shellpink.jpg','asset/image/berry_pink.jpg','asset/image/shellpink.png','p005'),(6,'pot','典藏琺瑯圓鐵鍋(火焰橘)鋼頭','NT$ 7,800.00','16cm','火焰橘/薄荷綠','●導熱迅速且均勻。<BR>●厚重的蓋子不易使蒸氣流失，鎖住美味及營養。<BR>●琺瑯容易清潔，色澤外型美觀亮麗。<BR>●耐高溫且適應各種烹調方式。','典藏琺瑯圓鐵鍋(火焰橘)鋼頭','asset/image/fire2.png','asset/image/pot6.jpg','100','直徑:16cm、(含柄)23cm','8cm、(含蓋)12.5cm','1.3L','2.2kg','瓦斯爐','電磁爐','烤箱','洗碗機','','','asset/image/elec2.png','asset/image/hotbox2.png','asset/image/dishwasher.png','薄荷綠','','v','21','','asset/image/pot6-fireorange.jpg','asset/image/pot6-mintgreen.jpg','asset/image/fireorange.jpg','asset/image/mintgreen.png','p006'),(7,'pot','琺瑯鑄鐵山茶花鍋(水漾藍) 鋼頭','NT$ 13,000.00','20cm','水漾藍','●山茶花造型，讓烹飪時彷彿置身在鳥語花香中。<br>●導熱迅速且均勻。 厚重的蓋子不易使蒸氣流失。<br>●鎖住美味及營養。 耐高溫且適應各種烹調方式。','琺瑯鑄鐵山茶花鍋(水漾藍) 鋼頭','asset/image/fire2.png','asset/image/pot7.jpg','100','直徑:20cm、(含柄)24cm','9cm、(含蓋)14cm','2L','3kg','瓦斯爐','電磁爐','烤箱','洗碗機','','','asset/image/elec2.png','asset/image/hotbox2.png','asset/image/dishwasher.png','','','v','56','','asset/image/pot7-waterblue.jpg','asset/image/pot7-waterblue.jpg','asset/image/pot7-waterblue.jpg','asset/image/waterblue.png','p007'),(8,'porcelain','珠光薔薇英式午茶杯(貝殼粉)','NT$ 980.00','280ml','珠光白','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','珠光薔薇英式午茶杯280ml','asset/image/microwave oven.png','asset/image/porcelain1.jpg','100','13*11*9cm','x','280ml','0.3kg','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','珠光粉','','v','99','asset/image/porcelain1-2-removebg-preview.png','asset/image/porcelain1-2.jpg','asset/image/porcelain1-3.jpg','asset/image/porcelain1-4.jpg','asset/image/pearlpink.png','p008'),(9,'porcelain','日式清酒壺組(一壺五杯)','NT$ 2,180.00','350 ml','櫻桃紅','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','日式清酒壺組','asset/image/microwave oven.png','asset/image/porcelain2.jpg','100','清酒杯：5.3x5.3x5.9cm(酒杯/個)','x','350 ml','x','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','火焰橘','閃亮黃','v','16','','asset/image/cherryred.png','asset/image/fireorange.jpg','asset/image/mintgreen.png','asset/image/shineyellow.png','p009'),(10,'porcelain','珠光薔薇花瓶500ml (貝殼粉)','NT$ 1,480.00','500ml','珠光白','●顏色多樣，隨意點綴餐廚空間。<br>●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。','珠光薔薇花瓶500ml','asset/image/microwave oven.png','asset/image/porcelain3.jpg','100','9*9*20cm','x','500ml','0.5kg','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','珠光粉','','v','24','','asset/image/porcelain3-2.jpg','asset/image/porcelain3-3.jpg','asset/image/porcelain3-4.jpg','asset/image/pearlpink.png','p010'),(11,'porcelain','韓式飯碗(悠然綠)','NT$ 880.00','350 ml','悠然綠','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','韓式飯碗 350ml','asset/image/microwave oven.png','asset/image/porcelain4.jpg','100','11.9×11.9×6.2cm','x','350ml','300g','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','櫻桃紅','薔薇粉','v','64','','asset/image/porcelain4-berryred.jpg','asset/image/porcelain4-cuttonwhite.jpg','asset/image/porcelain4-shineyellow.jpg','asset/image/porcelain4-rosepink.jpg','p011'),(12,'porcelain','深圓盤(悠然綠)','NT$ 1,280.00','20cm','悠然綠','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','深圓盤 20cm','asset/image/microwave oven.png','asset/image/porcelain5.jpg','100','20×20×5cm','x','x','680g','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','櫻桃紅','水手藍','v','28','','asset/image/porcelain5-berryred.jpg','asset/image/porcelain5-sailorblue.jpg','asset/image/porcelain5-rosepink.jpg','asset/image/porcelain5-shineyellow.jpg','p012'),(13,'porcelain','蛋蛋馬克杯(悠然綠)','NT$ 1,080.00','380 ml','悠然綠','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','蛋蛋馬克杯 380ml','asset/image/microwave oven.png','asset/image/porcelain6.jpg','100','12.3×9.2×9.7cm','x','380ml','350g','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','海岸藍','藍鈴紫','v','32','','asset/image/porcelain6-oceanblue.jpg','asset/image/porcelain6-purple.jpg','asset/image/porcelain6-rivergreen.jpg','asset/image/porcelain6-shellpink.jpg','p013'),(14,'porcelain','花蕾系列心型盤4入','NT$ 3,180.00','17cm','櫻桃紅','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','花蕾系列心型盤17cm-4入(櫻桃紅/雪花白/藍鈴紫/薔薇粉)','asset/image/microwave oven.png','asset/image/porcelain7.jpg','100','17×17×2cm(一入)','x','x','x','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','雪花白','藍鈴紫','v','66','','asset/image/cherryred.png','asset/image/pearlwhite.png','asset/image/purple.png','asset/image/rosepink.png','p014'),(15,'porcelain','新采和風系列湯匙2入(悠然綠)','NT$ 980.00','14cm','悠然綠','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','新采和風系列湯匙 2入','asset/image/microwave oven.png','asset/image/porcelain8.jpg','100','14cm×2','x','x','x','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','水漾藍','火焰橘','v','25','','asset/image/porcelain8-fireorange.jpg','asset/image/porcelain8-shellpink.jpg','asset/image/porcelain8-shineyellow.jpg','asset/image/porcelain8-waterblue.jpg','p015'),(16,'porcelain','花型盤附中式湯匙(海岸藍)','NT$ 1,380.00','16cm','櫻花粉','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。<br>●耐熱程度高達260℃，適合用於烤箱和微波爐。<br>●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。<br>●即使經常使用也不易吸取食物氣味。<br>●顏色多樣，隨意點綴餐廚空間。','瓷器花型盤16cm附中式湯匙','asset/image/microwave oven.png','asset/image/porcelain9.jpg','100','20×16×5cm(外盒)、16cm(花型盤)、14cm(湯匙)','x','x','0.52kg','微波爐','烤箱','洗碗機','冰箱','','','','','','海岸藍','藍鈴紫','v','58','','asset/image/porcelain9-oceanblue.jpg','asset/image/porcelain9-purple.jpg','asset/image/porcelain9-sakurapink.jpg','asset/image/porcelain9-shellpink.jpg','p016'),(17,'tool','法式隔熱墊(悠然綠)','NT$ 980.00','20cm','悠然綠','●100%食品級矽膠，無味高品質。<br>●可承受-40℃~250℃<br>●方便掛孔設計，更輕鬆收納於廚房掛鉤。<br>●具抗汙、隔熱及保護膜功能，易清洗。<br>●矽膠製用具配件可直接清洗或放置於洗碗機洗滌。','法式隔熱墊','asset/image/microwave oven.png','asset/image/tool1.jpg','100','20cm','0.6cm','x','x','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','櫻桃紅','','v','32','','asset/image/tool1-cherryred.jpg','asset/image/tool1-relaxgreen.jpg','asset/image/relaxgreen.png','asset/image/cherryred.png','p017'),(18,'tool','V鏟杓(悠然綠)','NT$ 880.00','30cm','悠然綠','●依照人體工學考量及研究而發展設計讓使用時更舒適。<br>●材質防止損壞廚具和器皿，適合用來取出蛋糕或甜品，或從瓶子刮出果醬，乾淨整潔。','V鏟杓','asset/image/microwave oven.png','asset/image/tool2.jpg','100','30cm','x','x','90g','微波爐','烤箱','洗碗機','冰箱','壓力鍋','蒸煮鍋','asset/image/hotbox2.png','asset/image/dishwasher.png','asset/image/refrigerator.png','雪花白','櫻桃紅','v','76','','asset/image/tool2-cherryred.jpg','asset/image/tool2-mintgreen.jpg','asset/image/tool2-relaxgreen.jpg','asset/image/tool2-snowwhite.jpg','p018'),(19,'tool','不鏽鋼矽膠餐夾(沉靜黑)','NT$ 1,580.00','24cm','沉靜黑','●100%食品級矽膠，無味高品質。<br>●可承受-40℃~250℃<br>●方便掛孔設計，更輕鬆收納於廚房掛鉤。<br>●具抗汙、隔熱及保護膜功能，易清洗。<br>●矽膠製用具配件可直接清洗或放置於洗碗機洗滌。','不鏽鋼矽膠餐夾 24cm','','asset/image/tool3.jpg','100','24cm','x','x','140g','','','','','','','','','','櫻桃紅','','v','95','asset/image/tool3-removebg-preview.png','asset/image/tool3-cherryred.jpg','asset/image/tool3-black.jpg','asset/image/cherryred.png','asset/image/black.png','p019'),(20,'tool','南瓜鏟(火焰橘)','NT$ 880.00','28 cm','火焰橘','廚房基本配備，適合用來翻炒料理，也方便用來測試醬汁的味道。','南瓜鏟 (火焰橘)','','asset/image/tool4.jpg','100','30cm','x','x','80g','','','','','','','','','','','','v','85','','asset/image/tool4-fireorange.jpg','asset/image/tool4-fireorange.jpg','asset/image/tool4-fireorange.jpg','asset/image/fireorange.jpg','p020'),(21,'tool','鍋耳防燙握把2入(薄荷綠)','NT$ 1,080.00','F','火焰橘','●100%食品級矽膠，無味高品質。<br>●可承受-40℃~250℃<br>●方便掛孔設計，更輕鬆收納於廚房掛鉤。<br>●具抗汙、隔熱及保護膜功能，易清洗。<br>●矽膠製用具配件可直接清洗或放置於洗碗機洗滌。','鍋耳防燙握把2入','','asset/image/tool5.jpg','100','12cm(長)、6cm(寬)','x','x','x','','','','','','','','','','薄荷綠','淡粉紫','v','43','','asset/image/tool5-fireorange.jpg','asset/image/tool5-lightpink.jpg','asset/image/tool5-lightpinkpurple.jpg','asset/image/tool5-shineyellow.jpg','p021'),(22,'tool','長形烤盤','NT$ 1,680.00','23 cm','沉靜黑','●全新產品系列以防沾黏塗層包覆高碳鋼材質，可輕鬆脫模。<br>●模具傳熱快且均勻，不會局部過熱。<br>●手把處嵌入耐熱矽膠易於拿握不割手，往返於烤箱時安全方便。','長形烤盤23cm','asset/image/hotbox2.png','asset/image/tool6.jpg','100','33x23x5cm','x','x','x','烤箱','','','','','','','','','','','v','66','','asset/image/tool6-originalblack.jpg','asset/image/tool6-originalblack.jpg','asset/image/tool6-originalblack.jpg','asset/image/black.png','p022'),(23,'tool','楓木砧板','NT$ 2,600.00','F','原木','●天然木紋，不管料理起司、麵包或燒肉盛盤，或與其他廚具亦容易配襯。<br>●採用來自氣候嚴寒的北美實心楓木，質地堅硬、耐久性佳。<br>●不易變形，表面防護更便於清洗收納。<br>●廚具採用天然木材製造，故每件廚具木紋和顏色或有不同。','楓木砧板','','asset/image/tool7.jpg','100','35.5cm(長)、21cm(寬)','2.2cm','x','x','','','','','','','','','','','','v','33','','asset/image/tool7-woods.jpg','asset/image/tool7-woods.jpg','asset/image/tool7-woods.jpg','asset/image/wood.png','p023'),(24,'tool','鍋把套(奇異果綠)','NT$ 980.00','F','櫻桃紅','●100%食品級矽膠，無味高品質。<br>●可承受-40℃~250℃<br>●方便掛孔設計，更輕鬆收納於廚房掛鉤。<br>●具抗汙、隔熱及保護膜功能，易清洗。<br>●矽膠製用具配件可直接清洗或放置於洗碗機洗滌。','鍋把套','','asset/image/tool8.jpg','100','16cm','x','x','x','','','','','','','','','','火焰橘','奇異果綠','v','22','','asset/image/tool8-cherryred.jpg','asset/image/tool8-fireprange.jpg','asset/image/tool8-kiwigreen.jpg','asset/image/tool8-cherryred.jpg','p024');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
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
  `introduce` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `size` varchar(8) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `stock` float DEFAULT NULL,
  `type` varchar(200) NOT NULL,
  `produces` varchar(200) NOT NULL,
  `standard` varchar(200) NOT NULL,
  `apply` varchar(200) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'p001','雙魚戲荷琺瑯鑄鐵媽咪鍋','porcelain01_1.jpg','porcelain01_2.jpg','porcelain01_3.jpg','porcelain01_4.jpg','sakura.png','使用吉祥的荷花與鯉魚圖案，貼花皆由工藝師手工一步一步貼製，再高溫燒製固定顏色及花紋，完美展現品牌精湛的工藝技術與設計之美。',13000,'22 cm','雙魚戲荷/加勒比海藍',100,'pot','使用吉祥的荷花與鯉魚圖案，貼花皆由工藝師手工一步一步貼製，再高溫燒製固定顏色及花紋，完美展現品牌精湛的工藝技術與設計之美。','品名：琺瑯鑄鐵媽咪鍋、22cm直徑(含柄)：22cm(30.3)cm、高度(含蓋)：9.0cm(12.9)cm、容量：2.6L、重量：3.4kg','瓦斯爐/電磁爐/烤箱'),(2,'p002','典藏琺瑯鑄鐵圓鍋','pot02_1.jpg','pot02_1.jpg','pot02_1.jpg','pot02_1.jpg','berry_pink.jpg','●導熱迅速且均勻。●厚重的蓋子不易使蒸氣流失，鎖住美味及營養。●琺瑯容易清潔，色澤外型美觀亮麗。●耐高溫且適應各種烹調方式。',15000,'20 cm','野莓金',100,'pot','●導熱迅速且均勻。●厚重的蓋子不易使蒸氣流失，鎖住美味及營養。●琺瑯容易清潔，色澤外型美觀亮麗。●耐高溫且適應各種烹調方式。','品名：典藏琺瑯鑄鐵圓鍋、20cm直徑(含柄)：20cm(28.5cm)、高度(含蓋)：9.5cm(14cm)、容量：2.4L、重量：3.1kg','瓦斯爐/電磁爐/烤箱/洗碗機'),(3,'p003','典藏琺瑯鑄鐵媽咪鍋(杏桃黃-鋼頭)','pot03_1.jpg','pot03_2.jpg','pot03_2.jpg','pot03_2.jpg','peachyellow.png','優雅圓潤的外型及內鍋白色琺瑯的中式深底炒鍋。',15000,'26 cm','杏桃黃',100,'pot','優雅圓潤的外型及內鍋白色琺瑯的中式深底炒鍋。','典藏琺瑯鑄鐵媽咪鍋26cm(內鍋白色琺瑯)、直徑：26cm、高度(含蓋)：10(15)cm、產地：法國材質：鑄鐵外覆琺瑯容量：4.1L、重量：4.5kg、份量：3-4人','瓦斯爐/電磁爐/烤箱/洗碗機'),(4,'p004','萬用窈窕琺瑯鑄鐵鍋(櫻桃紅-內鍋黑)','pot04_1.jpg','pot04_2.jpg','pot04_3.jpg','pot04_4.jpg','pot04_5.jpg','●深度的鍋身設計精緻小巧，煎煮炒炸都合適，鍋內深度仍確保足夠容量。●瓷器內鍋蓋靈感源於日本土鍋，氣密及防溢效果佳。',9200,'20 cm','沉靜黑/櫻桃紅/海岸藍/藍鈴紫/迷霧灰',100,'pot','●深度的鍋身設計精緻小巧，煎煮炒炸都合適，鍋內深度仍確保足夠容量。●瓷器內鍋蓋靈感源於日本土鍋，氣密及防溢效果佳。','【此賣場不含內鍋蓋】、品名：萬用窈窕鑄鐵鍋、18直徑(含柄)：17cm(23cm)、高度(含蓋)：13cm(18cm)、深：12.5cm、底部直徑：10.5cm、容量：2L、重量：2.7kg','瓦斯爐/電磁爐/烤箱/洗碗機'),(5,'p005','典藏琺瑯鑄鐵慢燉鍋','pot05_1.jpg','pot05_2.jpg','pot05_3.jpg','pot05_2.jpg','pot05_2.jpg','●深度的鍋身設計精緻小巧，煎煮炒炸都合適，鍋內深度仍確保足夠容量。●瓷器內鍋蓋靈感源於日本土鍋，氣密及防溢效果佳。',15000,'22 cm','野莓金/貝殼粉',100,'pot','●導熱迅速且均勻。●厚重的蓋子不易使蒸氣流失，鎖住美味及營養。●琺瑯容易清潔，色澤外型美觀亮麗。●耐高溫且適應各種烹調方式。','品名：典藏琺瑯鑄鐵慢燉鍋 22cm、直徑(含柄)：22cm(30cm)、高度(含蓋)：8cm(13cm)、容量：2.2L、重量：3.3kg','瓦斯爐/電磁爐/烤箱/洗碗機'),(6,'p006','典藏琺瑯圓鐵鍋(火焰橘)鋼頭','pot06_1.jpg','pot06_2.jpg','pot06_2.jpg','pot06_2.jpg','pot06_2.jpg','●深度的鍋身設計精緻小巧，煎煮炒炸都合適，鍋內深度仍確保足夠容量。●瓷器內鍋蓋靈感源於日本土鍋，氣密及防溢效果佳。',7800,'16 cm','火焰橘/薄荷綠',100,'pot','●導熱迅速且均勻。●厚重的蓋子不易使蒸氣流失，鎖住美味及營養。●琺瑯容易清潔，色澤外型美觀亮麗。●耐高溫且適應各種烹調方式。','品名：典藏琺瑯鑄鐵圓鍋 16cm、直徑(含柄)：16cm(23cm)、高度(含蓋)：8cm(12.5cm)、容量：1.3L、重量：2.2kg','瓦斯爐/電磁爐/烤箱/洗碗機'),(7,'p007','琺瑯鑄鐵山茶花鍋(水漾藍) 鋼頭','pot07_1.jpg','pot07_2.jpg','pot07_2.jpg','pot07_2.jpg','pot07_2.jpg','●山茶花造型，讓烹飪時彷彿置身在鳥語花香中。●導熱迅速且均勻。 厚重的蓋子不易使蒸氣流失。●鎖住美味及營養。 耐高溫且適應各種烹調方式。',13000,'20 cm','水漾藍',100,'pot','●山茶花造型，讓烹飪時彷彿置身在鳥語花香中。●導熱迅速且均勻。 厚重的蓋子不易使蒸氣流失。●鎖住美味及營養。 耐高溫且適應各種烹調方式。','品名：琺瑯鑄鐵山茶花鍋 20cm、直徑(含柄)：20cm(24cm)、高度(含蓋)：9cm(14cm)、容量：2L、重量：3kg','瓦斯爐/電磁爐/烤箱/洗碗機'),(8,'p008','珠光薔薇英式午茶杯(貝殼粉)','porcelain01_1.jpg','porcelain01_2.jpg','porcelain01_3.jpg','porcelain01_4.jpg','porcelain01_3.jpg','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。●耐熱程度高達260℃，適合用於烤箱和微波爐。●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。●即使經常使用也不易吸取食物氣味。●顏色多樣，隨意點綴餐廚空間',980,'280ml','珠光白/珠光粉',100,'pot','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。●耐熱程度高達260℃，適合用於烤箱和微波爐。●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。●即使經常使用也不易吸取食物氣味。●顏色多樣，隨意點綴餐廚空間','品名：珠光薔薇英式午茶杯280ml尺寸：13*11*9cm重量：0.3kg容量：280ml','微波爐/烤箱/洗碗機/冰箱/壓力鍋/蒸煮鍋'),(9,'p009','日式清酒壺組(一壺五杯)','porcelain02_1.jpg','porcelain02_1.jpg','porcelain02_1.jpg','porcelain02_1.jpg','porcelain01_3.jpg','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。●耐熱程度高達260℃，適合用於烤箱和微波爐。●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。●即使經常使用也不易吸取食物氣味。●顏色多樣，隨意點綴餐廚空間',2180,'350 ml','櫻桃紅/火焰橘/閃亮黃/薄荷綠/水手藍',100,'pot','●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。●耐熱程度高達260℃，適合用於烤箱和微波爐。●合乎食用安全的塗層，表面光滑，食物容易脫落，清洗方便。●即使經常使用也不易吸取食物氣味。●顏色多樣，隨意點綴餐廚空間','品名：日式清酒壺組●清酒壺：水手藍、容量：350ml●清酒杯：櫻桃紅、火焰橘、薄荷綠、水手藍、閃亮黃、尺寸：5.3x5.3x5.9cm(酒杯/個)','微波爐/烤箱/洗碗機/冰箱/壓力鍋/蒸煮鍋'),(10,'p010','珠光薔薇花瓶500ml (貝殼粉)','porcelain03_1.jpg','porcelain03_2.jpg','porcelain03_3.jpg','porcelain03_4.jpg','porcelain03_3.jpg','●顏色多樣，隨意點綴餐廚空間。●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。',1480,'280ml','珠光白/珠光粉',100,'pot','●顏色多樣，隨意點綴餐廚空間。●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。','品名：珠光薔薇花瓶500ml、尺寸：9*9*20cm、重量：0.5kg、容量：500ml','微波爐/烤箱/洗碗機/冰箱/壓力鍋/蒸煮鍋'),(11,'p011','鍋把套(奇異果綠)','tool8.jpg','','','','','●100%食品級矽膠，無味高品質。<br>●可承受-40℃~250℃<br>●方便掛孔設計，更輕鬆收納於廚房掛鉤。<br>●具抗汙、隔熱及保護膜功能，易清洗。<br>●矽膠製用具配件可直接清洗或放置於洗碗機洗滌。',980,'16cm','奇異果綠',100,'調理配件','●顏色多樣，隨意點綴餐廚空間。●高溫燒製，氣孔密度低，吸水率低，細膩光滑經久耐用。','品名：珠光薔薇花瓶500ml、尺寸：9*9*20cm、重量：0.5kg、容量：500ml','微波爐/烤箱/洗碗機/冰箱/壓力鍋/蒸煮鍋');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `cart_view`
--

/*!50001 DROP VIEW IF EXISTS `cart_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cart_view` AS select `cart`.`No` AS `No`,`cart`.`Id` AS `Id`,`cart`.`product` AS `product`,`cart`.`price` AS `price`,`cart`.`size` AS `size`,`cart`.`color` AS `color`,`cart`.`quentity` AS `quentity`,(`cart`.`price` * `cart`.`quentity`) AS `sum` from (`cart` join `list`) where (`cart`.`Id` = `list`.`Id`) group by `cart`.`No` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 18:21:51
