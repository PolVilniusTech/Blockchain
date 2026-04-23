-- MariaDB dump 10.19  Distrib 10.11.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.11.16-MariaDB-ubu2404-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

---
--- Current Database: `test`
---

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_lithuanian_ci;

USE `test`;

---
--- Current User: 'test'@'localhost'
---

CREATE USER 'test'@'localhost' IDENTIFIED BY 'password';
GRANT USAGE ON *.* TO 'test'@'localhost';
GRANT ALL PRIVILEGES ON `test`.* TO 'test'@'localhost';
FLUSH PRIVILEGES;

---
--- Table structure for table `blockchain`
---

DROP TABLE IF EXISTS `blockchain`;
/*!40101 SET @saved_cs_client	= @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `blockchain` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, 
  `message` char(255) NOT NULL, 
  `timestamp` char(26) NOT NULL, 
  `proof` bigint(18) UNSIGNED NOT NULL, 
  `hash` char(64) NOT NULL, 
  `previous_hash` char(64) NOT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARACTER SET='utf8' COLLATE='utf8_lithuanian_ci' COMMENT='Stores data for electronic operations.';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-23	7:41:41  