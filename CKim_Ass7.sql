-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `categoryId` int NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `readNow` tinyint DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  KEY `fk_book_category` (`categoryId`),
  CONSTRAINT `fk_book_category` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,'The Women','Kristen Hannah',12.99,'the-women',0),(2,1,'Yellowface','R. F. Kuang',11.99,'yellowface',1),(3,1,'The Husbands','Holly Gramazio',17.62,'the-husbands',1),(4,1,'The Hearing Test','Eliza Barry Callahan',13.99,'the-hearing-test',0),(5,2,'I Cheerfully Refuse','Leif Enger',9.99,'i-cheerfully-refuse',1),(6,2,'The Night and Its Moon','Piper Cj',11.00,'night-and-moon',1),(7,2,'Iron Flame','Rebecca Yarros',12.54,'iron-flame',0),(8,2,'The House in the Cerulean','Tj Klune',10.32,'house-in-sea',0),(9,3,'The Art of Spirited Away','Hayao Miyazaki',14.54,'spirited-away',0),(10,3,'Who\'s Afraid of Gender?','Judith Butler',32.00,'afraid-of-gender',1),(11,3,'Braiding Sweetgrass','Robin Wall Kimmerer',13.67,'braiding-sweetgrass',0),(12,3,'One Way Back: A Memoir','Christine Blasey Ford',11.99,'one-way-back',1),(13,4,'The Forest of Stolen Girls','June Hur',12.99,'forest-of-girls',0),(14,4,'Slay','Brittney Morris',19.85,'slay',0),(15,4,'The Summer Book','Tove Jansson',20.00,'summer-book',0),(16,4,'Howl\'s Moving Castle','Diana Wynne Jones',18.75,'howl-moving-castle',1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Fiction'),(2,'Fantasy'),(3,'Nonfiction'),(4,'Young Adult');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18 22:17:18
