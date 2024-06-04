CREATE DATABASE  IF NOT EXISTS `klei` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `klei`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: klei
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add customer',8,'add_customer'),(30,'Can change customer',8,'change_customer'),(31,'Can delete customer',8,'delete_customer'),(32,'Can view customer',8,'view_customer'),(33,'Can add profile',9,'add_profile'),(34,'Can change profile',9,'change_profile'),(35,'Can delete profile',9,'delete_profile'),(36,'Can view profile',9,'view_profile'),(37,'Can add user profile',10,'add_userprofile'),(38,'Can change user profile',10,'change_userprofile'),(39,'Can delete user profile',10,'delete_userprofile'),(40,'Can view user profile',10,'view_userprofile'),(41,'Can add order detail',11,'add_orderdetail'),(42,'Can change order detail',11,'change_orderdetail'),(43,'Can delete order detail',11,'delete_orderdetail'),(44,'Can view order detail',11,'view_orderdetail'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order'),(49,'Can add cart',13,'add_cart'),(50,'Can change cart',13,'change_cart'),(51,'Can delete cart',13,'delete_cart'),(52,'Can view cart',13,'view_cart'),(53,'Can add shipping address',14,'add_shippingaddress'),(54,'Can change shipping address',14,'change_shippingaddress'),(55,'Can delete shipping address',14,'delete_shippingaddress'),(56,'Can view shipping address',14,'view_shippingaddress');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$600000$EuddhMqiq01rswCFkg3693$51mbvzP8zAa/BhEPnzOoDKoI0j5DllrpbIUCrSekOmw=','2024-06-04 09:15:15.222426',1,'tridung','Dũng','Trí','tridung@gmail.com',1,1,'2024-04-30 15:39:17.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,3,1),(2,3,2),(3,3,3),(4,3,4),(5,3,5),(6,3,6),(7,3,7),(8,3,8),(9,3,9),(10,3,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,3,18),(19,3,19),(20,3,20),(21,3,21),(22,3,22),(23,3,23),(24,3,24),(25,3,25),(26,3,26),(27,3,27),(28,3,28),(29,3,29),(30,3,30),(31,3,31),(32,3,32),(33,3,33),(34,3,34),(35,3,35),(36,3,36),(37,3,37),(38,3,38),(39,3,39),(40,3,40),(41,3,41),(42,3,42),(43,3,43),(44,3,44),(45,3,45),(46,3,46),(47,3,47),(48,3,48),(49,3,49),(50,3,50),(51,3,51),(52,3,52),(53,3,53),(54,3,54),(55,3,55),(56,3,56);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_app_cart`
--

DROP TABLE IF EXISTS `cart_app_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_app_cart` (
  `item_id` int NOT NULL,
  `quantity` int NOT NULL,
  `customer_id` bigint NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `cart_app_cart_customer_id_d4e80bee_fk_profile_app_userprofile_id` (`customer_id`),
  KEY `cart_app_cart_product_id_49e50284_fk_shop_app_product_product_id` (`product_id`),
  CONSTRAINT `cart_app_cart_customer_id_d4e80bee_fk_profile_app_userprofile_id` FOREIGN KEY (`customer_id`) REFERENCES `profile_app_userprofile` (`id`),
  CONSTRAINT `cart_app_cart_product_id_49e50284_fk_shop_app_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_app_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_app_cart`
--

LOCK TABLES `cart_app_cart` WRITE;
/*!40000 ALTER TABLE `cart_app_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_app_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_app_shippingaddress`
--

DROP TABLE IF EXISTS `checkout_app_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout_app_shippingaddress` (
  `shipping_id` int NOT NULL AUTO_INCREMENT,
  `shipping_fullname` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_address1` varchar(255) DEFAULT NULL,
  `shipping_address2` varchar(255) DEFAULT NULL,
  `shipping_ward` varchar(255) DEFAULT NULL,
  `shipping_district` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`shipping_id`),
  UNIQUE KEY `order_id` (`order_id`),
  CONSTRAINT `checkout_app_shippin_order_id_eb503da5_fk_order_app` FOREIGN KEY (`order_id`) REFERENCES `order_app_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_app_shippingaddress`
--

LOCK TABLES `checkout_app_shippingaddress` WRITE;
/*!40000 ALTER TABLE `checkout_app_shippingaddress` DISABLE KEYS */;
INSERT INTO `checkout_app_shippingaddress` VALUES (4,'s','tranductridung0103@gmail.com','tesst','test2','11','11','hcm',1);
/*!40000 ALTER TABLE `checkout_app_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (3,'2024-05-01 04:12:22.106000','4','hongphuong@123',1,'[{\"added\": {}}]',4,3),(4,'2024-05-01 04:13:11.765336','4','hongphuong@123',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,3),(5,'2024-05-01 04:15:37.436868','4','hongphuong@123',3,'',4,3),(6,'2024-05-01 04:18:53.712752','1','1',1,'[{\"added\": {}}]',7,3),(7,'2024-05-01 04:19:40.095527','2','2',1,'[{\"added\": {}}]',7,3),(8,'2024-05-01 04:35:03.779703','1','1',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(9,'2024-05-01 04:36:11.819779','1','1',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(10,'2024-05-01 04:36:59.589006','1','1',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(11,'2024-05-01 04:53:58.287459','1','1',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(12,'2024-05-01 04:55:39.894272','3','3',1,'[{\"added\": {}}]',7,3),(13,'2024-05-01 04:56:20.701400','4','4',1,'[{\"added\": {}}]',7,3),(14,'2024-05-01 04:56:24.165912','4','4',2,'[]',7,3),(15,'2024-05-01 04:56:50.442166','5','5',1,'[{\"added\": {}}]',7,3),(16,'2024-05-01 04:57:10.609301','6','6',1,'[{\"added\": {}}]',7,3),(17,'2024-05-01 04:57:31.324143','7','7',1,'[{\"added\": {}}]',7,3),(18,'2024-05-01 04:57:46.557930','8','8',1,'[{\"added\": {}}]',7,3),(19,'2024-05-01 04:59:40.480775','3','3',2,'[]',7,3),(20,'2024-05-01 15:42:50.111456','8','8',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(21,'2024-05-01 15:42:56.468740','7','7',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(22,'2024-05-01 15:43:01.545219','6','6',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(23,'2024-05-01 15:43:05.712607','5','5',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(24,'2024-05-01 15:43:09.998767','4','4',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(25,'2024-05-01 15:43:16.553906','3','3',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(26,'2024-05-01 15:43:20.624239','2','2',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(27,'2024-05-01 15:43:24.389748','1','1',2,'[{\"changed\": {\"fields\": [\"Img url\"]}}]',7,3),(28,'2024-05-01 15:45:27.163339','1','1',2,'[{\"changed\": {\"fields\": [\"Img detail url\"]}}]',7,3),(29,'2024-05-01 15:45:37.477565','2','2',2,'[{\"changed\": {\"fields\": [\"Img detail url\"]}}]',7,3),(30,'2024-05-02 15:06:52.529525','5','user',1,'[{\"added\": {}}]',4,3),(31,'2024-05-02 15:07:12.410918','5','user',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,3),(32,'2024-05-03 15:29:15.277944','6','test',3,'',4,3),(33,'2024-05-03 15:29:15.279100','5','user',3,'',4,3),(34,'2024-05-03 15:29:33.516775','7','test',1,'[{\"added\": {}}]',4,3),(35,'2024-05-03 15:29:50.571532','7','test',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,3),(36,'2024-05-03 15:30:09.818198','1','UserProfile object (1)',1,'[{\"added\": {}}]',10,3),(37,'2024-05-03 15:40:56.080797','2','UserProfile object (2)',1,'[{\"added\": {}}]',10,3),(38,'2024-05-03 15:46:52.729552','3','tridung',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,3),(39,'2024-05-04 03:31:01.388503','11','abc',3,'',4,3),(40,'2024-05-04 03:31:01.389503','9','haha',3,'',4,3),(41,'2024-05-04 03:31:01.391270','10','hahaha',3,'',4,3),(42,'2024-05-04 03:31:01.392097','8','hehe',3,'',4,3),(43,'2024-05-04 03:31:01.394108','12','kaka',3,'',4,3),(44,'2024-05-04 03:31:01.395135','7','test',3,'',4,3),(45,'2024-05-04 03:39:16.879138','13','haha',3,'',4,3),(46,'2024-05-04 03:39:16.881134','14','hehe',3,'',4,3),(47,'2024-05-04 03:39:16.882135','15','kaka',3,'',4,3),(48,'2024-05-04 04:45:33.621443','3','UserProfile object (3)',3,'',10,3),(49,'2024-05-04 05:20:08.215366','21','abc',3,'',4,3),(50,'2024-05-04 05:20:08.216512','16','haha',3,'',4,3),(51,'2024-05-04 05:20:08.218524','17','hehe',3,'',4,3),(52,'2024-05-04 05:20:08.219524','19','hihi',3,'',4,3),(53,'2024-05-04 05:20:08.220526','20','hoho',3,'',4,3),(54,'2024-05-04 05:20:08.221549','18','huhu',3,'',4,3),(55,'2024-05-04 05:36:50.322020','23','hoho',3,'',4,3),(56,'2024-05-04 05:36:50.323023','22','huhu',3,'',4,3),(57,'2024-05-04 05:40:54.847054','24','haha',3,'',4,3),(58,'2024-05-04 13:27:08.884203','28','abc1',3,'',4,3),(59,'2024-05-04 13:27:08.891880','25','haha',3,'',4,3),(60,'2024-05-04 13:27:08.892882','26','hihi',3,'',4,3),(61,'2024-05-04 13:27:08.893878','27','kaka',3,'',4,3),(62,'2024-05-04 13:32:39.506289','29','haha',3,'',4,3),(63,'2024-05-04 13:32:39.514901','30','hehe',3,'',4,3),(64,'2024-05-04 13:32:39.515900','31','hoho',3,'',4,3),(65,'2024-05-04 13:47:43.513288','8','UserProfile object (8)',2,'[{\"changed\": {\"fields\": [\"Dob\"]}}]',10,3),(66,'2024-05-04 15:21:43.395719','32','haha',3,'',4,3),(67,'2024-05-04 15:21:43.396771','33','hehe',3,'',4,3),(68,'2024-05-04 17:49:44.749094','34','haha',3,'',4,3),(69,'2024-05-04 17:49:44.751480','35','hehe',3,'',4,3),(70,'2024-05-06 07:36:51.348738','36','user',3,'',4,3),(71,'2024-05-13 08:41:21.927709','1','1',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(72,'2024-05-13 08:41:33.919626','1','1',2,'[]',7,3),(73,'2024-05-13 08:41:51.932647','2','2',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(74,'2024-05-13 08:42:02.430491','3','3',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(75,'2024-05-13 08:42:14.332365','4','4',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(76,'2024-05-13 08:42:24.413473','5','5',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(77,'2024-05-13 08:42:35.208866','6','6',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(78,'2024-05-13 08:42:42.815162','7','7',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(79,'2024-05-13 16:57:22.665965','1','1 Cà phê nguyên chất Smooth Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(80,'2024-05-13 16:57:50.425812','7','7 Cà phê nguyên chất Intense Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(81,'2024-05-13 16:58:13.595073','6','6 Cà phê nguyên chất Bold Kleikhan',2,'[{\"changed\": {\"fields\": [\"Product name\", \"Description\"]}}]',7,3),(82,'2024-05-13 16:58:30.893688','5','5 Cà phê nguyên chất Mellow Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(83,'2024-05-13 16:58:41.449400','4','4 Cà phê nguyên chất Soft Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(84,'2024-05-13 16:58:56.429424','3','3 Cà phê nguyên chất Lingering Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(85,'2024-05-13 16:59:13.176839','2','2 Cà phê nguyên chất Delight Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(86,'2024-05-13 16:59:41.411204','1','1 Cà phê nguyên chất Smooth Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(87,'2024-05-13 17:04:14.257991','1','1 Cà phê nguyên chất Smooth Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(88,'2024-05-13 17:04:25.830669','2','2 Cà phê nguyên chất Delight Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(89,'2024-05-13 17:04:34.138186','3','3 Cà phê nguyên chất Lingering Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(90,'2024-05-13 17:04:41.951572','4','4 Cà phê nguyên chất Soft Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(91,'2024-05-13 17:05:05.460170','6','6 Cà phê nguyên chất Bold Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(92,'2024-05-13 17:05:15.984596','5','5 Cà phê nguyên chất Mellow Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(93,'2024-05-13 17:05:22.672863','7','7 Cà phê nguyên chất Intense Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(94,'2024-05-13 17:05:45.459781','8','8 Cà phê nguyên chất Bright Kleikhan',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',7,3),(95,'2024-05-25 03:19:19.510618','1','Order object (1)',1,'[{\"added\": {}}]',12,3),(96,'2024-05-25 03:24:25.083208','2','Order object (2)',1,'[{\"added\": {}}]',12,3),(97,'2024-05-25 03:44:41.280097','1','Order object (1)',1,'[{\"added\": {}}]',12,3),(98,'2024-05-25 03:44:51.653021','2','Order object (2)',1,'[{\"added\": {}}]',12,3),(99,'2024-05-25 03:45:02.110496','3','Order object (3)',1,'[{\"added\": {}}]',12,3),(100,'2024-05-25 03:49:20.831527','4','Order object (4)',1,'[{\"added\": {}}]',12,3),(101,'2024-05-25 04:23:18.525590','1','Order object (1)',1,'[{\"added\": {}}]',12,3),(102,'2024-05-25 04:23:22.282424','2','Order object (2)',1,'[{\"added\": {}}]',12,3),(103,'2024-05-25 04:23:25.361833','3','Order object (3)',1,'[{\"added\": {}}]',12,3),(104,'2024-05-25 04:23:29.804217','4','Order object (4)',1,'[{\"added\": {}}]',12,3),(105,'2024-05-25 04:24:27.180407','1','Shipping Address - Order object (1)',1,'[{\"added\": {}}]',14,3),(106,'2024-05-25 04:24:32.212523','1','Shipping Address - Order object (1)',2,'[]',14,3),(107,'2024-05-25 04:24:40.433948','2','Shipping Address - Order object (2)',1,'[{\"added\": {}}]',14,3),(108,'2024-05-25 04:24:45.002870','3','Shipping Address - Order object (3)',1,'[{\"added\": {}}]',14,3),(109,'2024-05-25 04:24:49.849995','4','Shipping Address - Order object (4)',1,'[{\"added\": {}}]',14,3),(110,'2024-05-25 04:25:09.463224','1','OrderDetail object (1)',1,'[{\"added\": {}}]',11,3),(111,'2024-05-25 04:25:23.293748','2','OrderDetail object (2)',1,'[{\"added\": {}}]',11,3),(112,'2024-05-25 04:25:27.211205','3','OrderDetail object (3)',1,'[{\"added\": {}}]',11,3),(113,'2024-05-25 04:25:31.190078','4','OrderDetail object (4)',1,'[{\"added\": {}}]',11,3),(114,'2024-05-25 04:25:35.695208','5','OrderDetail object (5)',1,'[{\"added\": {}}]',11,3),(115,'2024-05-25 04:40:47.193440','4','Order object (4)',3,'',12,3),(116,'2024-05-25 04:40:47.194491','3','Order object (3)',3,'',12,3),(117,'2024-05-25 04:40:47.196503','2','Order object (2)',3,'',12,3),(118,'2024-05-25 04:40:47.197475','1','Order object (1)',3,'',12,3),(119,'2024-05-25 14:18:16.885735','5','Order object (5)',3,'',12,3),(120,'2024-05-25 14:18:16.886736','4','Order object (4)',3,'',12,3),(121,'2024-05-25 14:18:16.888736','3','Order object (3)',3,'',12,3),(122,'2024-05-25 14:18:16.889735','2','Order object (2)',3,'',12,3),(123,'2024-05-25 14:18:16.890735','1','Order object (1)',3,'',12,3),(124,'2024-05-25 14:30:40.283995','7','Order object (7)',3,'',12,3),(125,'2024-05-25 14:30:40.285997','6','Order object (6)',3,'',12,3),(126,'2024-05-25 14:58:30.643986','8','Order object (8)',3,'',12,3),(127,'2024-06-04 02:02:19.686051','3','tridung',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,3),(128,'2024-06-04 03:26:38.190323','42','hai',1,'[{\"added\": {}}]',4,3),(129,'2024-06-04 03:26:49.467833','42','hai',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,3),(130,'2024-06-04 03:27:05.829830','17','ha ha',1,'[{\"added\": {}}]',10,3),(131,'2024-06-04 03:27:25.621176','41','ac',3,'',4,3),(132,'2024-06-04 03:27:25.621981','37','haha',3,'',4,3),(133,'2024-06-04 03:27:25.622994','42','hai',3,'',4,3),(134,'2024-06-04 03:27:25.623992','38','hihi',3,'',4,3),(135,'2024-06-04 03:27:25.625993','40','hoho',3,'',4,3),(136,'2024-06-04 03:27:25.627018','39','huhu',3,'',4,3),(137,'2024-06-04 03:40:47.297306','8','Trí Dũng',2,'[{\"changed\": {\"fields\": [\"Bank card info\"]}}]',10,3),(138,'2024-06-04 03:43:17.206898','43','haha',3,'',4,3),(139,'2024-06-04 03:43:17.208470','44','hihi',3,'',4,3),(140,'2024-06-04 03:43:17.209481','45','huu',3,'',4,3),(141,'2024-06-04 03:43:17.210484','46','kaka',3,'',4,3),(142,'2024-06-04 03:43:17.211485','47','kiki',3,'',4,3),(143,'2024-06-04 09:42:57.559927','3','Shipping Address of Order 3',3,'',14,3),(144,'2024-06-04 09:42:57.561618','2','Shipping Address of Order 2',3,'',14,3),(145,'2024-06-04 09:42:57.562630','1','Shipping Address of Order 1',3,'',14,3),(146,'2024-06-04 09:44:03.254945','3','Order 3 of tridung',3,'',12,3),(147,'2024-06-04 09:44:03.262880','2','Order 2 of tridung',3,'',12,3),(148,'2024-06-04 09:44:03.263654','1','Order 1 of tridung',3,'',12,3),(149,'2024-06-04 09:56:31.641748','8','Trí Dũng',3,'',10,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'cart_app','cart'),(14,'checkout_app','shippingaddress'),(5,'contenttypes','contenttype'),(12,'order_app','order'),(11,'order_app','orderdetail'),(9,'profile_app','profile'),(10,'profile_app','userprofile'),(6,'sessions','session'),(7,'shop_app','product'),(8,'user_app','customer');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-04-29 03:23:56.163887'),(2,'auth','0001_initial','2024-04-29 03:23:56.535525'),(3,'admin','0001_initial','2024-04-29 03:23:56.622165'),(4,'admin','0002_logentry_remove_auto_add','2024-04-29 03:23:56.627239'),(5,'admin','0003_logentry_add_action_flag_choices','2024-04-29 03:23:56.634189'),(6,'contenttypes','0002_remove_content_type_name','2024-04-29 03:23:56.688459'),(7,'auth','0002_alter_permission_name_max_length','2024-04-29 03:23:56.732416'),(8,'auth','0003_alter_user_email_max_length','2024-04-29 03:23:56.743285'),(9,'auth','0004_alter_user_username_opts','2024-04-29 03:23:56.768400'),(10,'auth','0005_alter_user_last_login_null','2024-04-29 03:23:56.813385'),(11,'auth','0006_require_contenttypes_0002','2024-04-29 03:23:56.818745'),(12,'auth','0007_alter_validators_add_error_messages','2024-04-29 03:23:56.824033'),(13,'auth','0008_alter_user_username_max_length','2024-04-29 03:23:56.867925'),(14,'auth','0009_alter_user_last_name_max_length','2024-04-29 03:23:56.907576'),(15,'auth','0010_alter_group_name_max_length','2024-04-29 03:23:56.924350'),(16,'auth','0011_update_proxy_permissions','2024-04-29 03:23:56.931479'),(17,'auth','0012_alter_user_first_name_max_length','2024-04-29 03:23:56.977032'),(18,'sessions','0001_initial','2024-04-29 03:23:57.003091'),(19,'shop_app','0001_initial','2024-04-29 03:23:57.017288'),(20,'shop_app','0002_alter_product_product_id','2024-04-29 03:23:57.047097'),(21,'shop_app','0003_product_component','2024-04-29 03:23:57.066397'),(22,'shop_app','0004_remove_product_component_product_arabica_and_more','2024-04-29 03:23:57.115917'),(23,'shop_app','0005_alter_product_product_id','2024-04-29 03:23:57.138870'),(24,'shop_app','0006_product_slug','2024-04-29 03:23:57.164509'),(25,'shop_app','0007_remove_product_category_id_and_more','2024-04-29 03:23:57.183000'),(26,'user_app','0001_initial','2024-04-30 14:47:47.799100'),(27,'user_app','0002_delete_customer','2024-04-30 15:39:03.128332'),(28,'user_app','0003_initial','2024-04-30 15:39:03.187783'),(29,'profile_app','0001_initial','2024-05-01 03:00:09.566422'),(30,'profile_app','0002_userprofile_delete_profile','2024-05-01 03:35:29.814828'),(31,'order_app','0001_initial','2024-05-01 03:35:29.944526'),(32,'cart_app','0001_initial','2024-05-01 03:40:48.927278'),(33,'profile_app','0003_userprofile_gender','2024-05-01 04:09:04.011131'),(34,'profile_app','0004_remove_userprofile_first_name_and_more','2024-05-01 15:45:08.952452'),(35,'shop_app','0008_product_img_detail_url','2024-05-01 15:45:08.969450'),(36,'profile_app','0005_alter_userprofile_address_alter_userprofile_dob_and_more','2024-05-04 13:30:21.111252'),(37,'profile_app','0006_alter_userprofile_gender','2024-05-04 16:08:49.472707'),(38,'shop_app','0009_product_description','2024-05-13 08:40:45.521668'),(39,'profile_app','0007_userprofile_old_cart','2024-05-19 14:37:53.761405'),(40,'checkout_app','0001_initial','2024-05-24 15:18:35.296572'),(41,'checkout_app','0002_rename_address1_shippingaddress_shipping_address1_and_more','2024-05-24 15:26:25.267091'),(42,'checkout_app','0003_rename_shipping_dictrict_shippingaddress_shipping_district_and_more','2024-05-24 15:53:47.408695'),(43,'checkout_app','0004_delete_shippingaddress','2024-05-24 17:14:21.174480'),(44,'order_app','0002_rename_customer_order_customer_id_and_more','2024-05-24 17:14:21.441666'),(45,'checkout_app','0005_initial','2024-05-24 17:14:43.811633'),(46,'checkout_app','0006_remove_shippingaddress_order_id','2024-05-25 03:43:01.216641'),(47,'order_app','0003_remove_orderdetail_order_id_and_more','2024-05-25 03:43:01.304701'),(48,'order_app','0004_initial','2024-05-25 03:43:28.265938'),(49,'checkout_app','0007_delete_shippingaddress','2024-05-25 04:22:07.164986'),(50,'order_app','0005_remove_orderdetail_order_id_and_more','2024-05-25 04:22:07.259329'),(51,'order_app','0006_initial','2024-05-25 04:22:40.623873'),(52,'checkout_app','0008_initial','2024-05-25 04:22:40.679142'),(53,'order_app','0007_delete_orderdetail','2024-05-25 04:40:02.101432'),(54,'order_app','0008_orderdetail','2024-05-25 04:40:14.325920'),(55,'order_app','0009_rename_total_amount_order_total','2024-05-25 13:06:45.822924'),(56,'checkout_app','0009_delete_shippingaddress','2024-05-25 13:11:08.405191'),(57,'order_app','0010_remove_orderdetail_order_remove_orderdetail_product_and_more','2024-05-25 13:11:08.496490'),(58,'order_app','0011_initial','2024-05-25 13:12:10.892771'),(59,'checkout_app','0010_initial','2024-05-25 13:12:10.947297'),(60,'checkout_app','0011_delete_shippingaddress','2024-05-25 15:36:47.478010'),(61,'order_app','0012_remove_order_id_order_order_id','2024-05-25 16:05:19.144554'),(62,'order_app','0013_remove_orderdetail_order_remove_orderdetail_product_and_more','2024-05-25 16:05:19.234046'),(63,'order_app','0014_initial','2024-05-25 16:05:19.366078'),(64,'checkout_app','0012_initial','2024-05-25 16:05:19.377808'),(65,'checkout_app','0013_initial','2024-05-25 16:05:19.415469'),(66,'checkout_app','0014_delete_shippingaddress','2024-05-25 16:05:19.424781'),(67,'order_app','0015_alter_orderdetail_order','2024-05-25 16:05:19.433918'),(68,'order_app','0016_remove_orderdetail_order_remove_orderdetail_product_and_more','2024-05-25 16:05:19.523259'),(69,'order_app','0017_initial','2024-05-25 16:07:55.391573'),(70,'checkout_app','0015_initial','2024-05-25 16:07:55.402910'),(71,'checkout_app','0016_initial','2024-05-25 16:07:55.440671'),(72,'shop_app','0010_alter_product_price','2024-05-26 08:34:31.874638'),(73,'shop_app','0011_alter_product_price','2024-05-26 08:37:31.585602'),(74,'profile_app','0008_userprofile_bank_card_info','2024-06-04 03:10:08.128604'),(75,'profile_app','0009_alter_userprofile_bank_card_info','2024-06-04 03:32:43.887123'),(76,'order_app','0018_alter_orderdetail_subtotal','2024-06-04 04:50:10.469318'),(77,'profile_app','0010_remove_userprofile_bank_card_info','2024-06-04 04:50:10.498457'),(78,'order_app','0019_alter_order_point_alter_order_total','2024-06-04 04:51:24.946197'),(79,'order_app','0020_rename_order_orderdetail_order_id_and_more','2024-06-04 09:41:26.597194'),(80,'order_app','0021_rename_order_id_orderdetail_order_and_more','2024-06-04 09:43:52.729565'),(81,'checkout_app','0017_remove_shippingaddress_order','2024-06-04 10:05:26.175228'),(82,'order_app','0022_remove_orderdetail_order_remove_orderdetail_product_and_more','2024-06-04 10:05:26.275987'),(83,'order_app','0023_initial','2024-06-04 10:08:46.079063'),(84,'checkout_app','0018_shippingaddress_order','2024-06-04 10:08:46.125318');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1g2j5q2kthlf7zxbonwe7lrgg1no2459','eyJzZXNzaW9uX2tleSI6eyI4IjoxLCIyIjoxLCIxIjozLCI0IjoxLCI1IjoxfX0:1s6BqH:zW8qkb3le8PgpaBW1nr1BvT4Zt0_hLUloaZXTOA2bJ0','2024-05-26 16:14:29.368608'),('1pm0jliyimxoex3x8zf035nsjkcoa9oy','eyJzZXNzaW9uX2tleSI6e319:1sEAFQ:vxkZhK3l6SOL1L3rJsv2UPO7CB_sJbAAj7UDuozJZlw','2024-06-17 16:09:24.778481'),('5859mbx7t2nwa8wjn59m0re5tg7xt6gp','.eJxVjMEOwiAQRP-FsyHZAkI9evcbyC67SNXQpLQn479Lkx50jjNv3ltF3NYStyZLnFhdFKjTb0eYnlL3gR9Y77NOc12XifSO6GNt-jazvK4H-yco2Ep_25y9kM_W9PgRKTgjzM4RIXg5d5OBIYkNDizbxA4RXBqCWBADo_p8Af0xOFk:1s1RpS:cpZ78CTC2cQIaEILzp4HY6DAj4JTTD7KOR_VY-eGa-8','2024-05-13 14:18:02.899877'),('6fh6aiou2u67hoedpnpl3vghfye5d7g4','eyJzZXNzaW9uX2tleSI6e319:1sEA8J:Aas-6h0aUSmoDHkqQbKjC5JAKAAdNMVTdIJ5jVeEGgQ','2024-06-17 16:02:03.400768'),('6npyng2q8xh8nt0oan5m1ko4x5kdya8a','eyJzZXNzaW9uX2tleSI6e319:1sE9zb:mlhgaguwv3r1c6nLb3reGH_y8v_wEoZHpTbkdbwyea0','2024-06-17 15:53:03.761227'),('81376oimnked19auxtco1s1s6tufkeay','eyJzZXNzaW9uX2tleSI6e319:1sEAFB:qU7_BfPLMUnLH6fIY2X6P9vRaylLMgSR56JY41uivXA','2024-06-17 16:09:09.972776'),('du7lyew8tqivip0afggryaij3coyxu3k','eyJzZXNzaW9uX2tleSI6eyIzIjozLCIyIjozLCI4IjoxLCI3IjoxLCI0IjoyfX0:1s621Q:5jvYRQcspYM7zj-IQMJqPzWkJFLbOe3sCx0u8QnatuA','2024-05-26 05:45:20.995813'),('eiabdrljuyux66amxk5yqsrd6um2ky82','.eJxVjEEOwiAURO_C2hAo-Kku3XsGwoePxRowpV2Ypne3JF3oLGYxb_JWZt0yD3apNNkU2JUpdvrd0PmRcgPh6fKjcF_yPCXk7cIPWvm9BHrdju-fYHB1aFptzjp00ntQ0nkDZMAABowXUgSq72IA1AhCCq1QIJig-qgjSAmu97u0Uq2pZDvSh11XJlu9p-Rp10vRwoVg27Z9ARQ_RB0:1s5S8T:C8aljEgeLjUhn29V2O8qLrZheDzP0qfdDiv51cWx6kA','2024-05-24 15:26:13.011821'),('fmccydd7rxq3obav8fl96q1085s0zr1l','.eJxVjkEOgyAQRe_CuiEidKAuu-8ZCMMM1dpAIrpojHevJi7a7X8vL38VPixz75fKkx9IdEKLy--GIY6cD0CvkJ9FxpLnaUB5KPKkVT4K8ft-un-BPtT-yBp7NdSqGEGrEC2wBQtImG6sGbRrEwEahEY1RmODYEm7ZBIoBcHFPVq51qFkP_JHdOt-tHPb9gX1dj7b:1sELso:_F95rF4rwIjwoKq_3vWjKE_zKJ4e5zFUEGOGDQLUq8g','2024-06-18 04:34:50.828038'),('ge9yizhnrq4wwlwyi5pvfoxra8d5tssv','.eJxVjEEKgzAQAP-y5xKMSTfWY-99Q8hmN9VaEjB6KOLfi-DF68wwG1SpdSzZT_KDfttv4MO6DH6tMvuRoQcDF0YhTpIPwZ-Q30XFkpd5JHUk6rRVvQrL93m2l8EQ6nBsrbtbbnWMaHSIDsWhQ2JKDzGCpmsTI1nCRjfWUEPo2HTJJtQaQxdh_wNLyT3y:1sEPtg:jigMSxdSHJKgjLnFinYpQ9zOuB40sCkEhOSvKUaLXBk','2024-06-18 08:52:00.972963'),('hlwpx4oe2km6v2ic92p9kbmfozebrma1','.eJxVjMsOgyAQAP9lz4bIo4vl2Hu_gbCwVGuDieihMf57a-LF68xkNqhc6zAVP_IX3AYKnGpAg5N7Az6sS-_XyrMfErg_vjAKceRyiPQO5TWJOJVlHkgciThtFc8p8edxtpdBH2p_bI29maRkjKhliBbZokVKlO-sGXWnckIyhK1sjaaW0CbdZZNRSgxdhP0H59Y_4g:1sAvLy:A0WoID9iG3YBZmLZDc0jpfPCqJDLuWcCHqYtPmZAiCk','2024-06-08 17:38:46.157790'),('ijteokspg3011u1euaoa5wizbbp3ki2w','eyJzZXNzaW9uX2tleSI6e319:1sEA3o:QQjeh2HezCqEWOtxMwPeoI7h6c1IVxuOD3fPZBFOr30','2024-06-17 15:57:24.090965'),('kpbtns7h568o3zsljopsx0p30z7mrudj','eyJzZXNzaW9uX2tleSI6e319:1s8iC3:i6xF-m55IED-dhO7vaunjyKRfWbaJMWE-JGg3BtgAIk','2024-06-02 15:11:23.605174'),('mspyw9jwsk7gankammu6nmeagovmxf8s','.eJyrVipOLS7OzM-Lz06tVLKqVjIGEXmJualKVkB2rY6SKZKAKUjACEnASKm2thYA2dkUMg:1s5U23:pcPL5ZjvxF8fYkWWUJkwDmQXF9u9iTKUlxOFusLU3EY','2024-05-24 17:27:43.352922'),('nyvdhk2785hfsgzh45p8e5mz1ychijdw','eyJzZXNzaW9uX2tleSI6e319:1s8iCr:1ADpzTp9gcfOWBdqUyCriTwuzmFnsKuax6wNs8h6AZ4','2024-06-02 15:12:13.013723'),('ogvnryeqai6nmwenweipbjwqp3gjnmk3','.eJxVzLFuwyAQBuBXQcyVBYYcNGM7Vp26VrIOOAfXCVTBHqLI796QZiDL6fT9d_-VFyplymmY6cL3Vy7rSHgivufv36sQJNhvvC_I0mG9_K-J-RtKwt3Cvk45L5F9HGmaIya-vfC-aekr2AZsBdOAqaAaUBWgAaigG9B8u8mA6xKHtdB5mML978kc-plSDcIPpkPufE7LeXJdPekeaek-c6Dj2-P2qSBiibVWm50OvfQelERvgAwYcMGNr6QIlO3HAE47EFJo5YQDE5Qd9QhSAlrPtz-VJW8T:1s5Ssq:puyWPXIKwT_EmCwM85C-7QOzJXE1ZWJXgrzjFvcAXWw','2024-05-24 16:14:08.347705'),('pxw9wjy18nkcwmlvzbwge10matfk7pht','.eJxVjEEOwiAQAP_C2RDo4oIevfcNhGVBqgaS0p6MfzckPeh1ZjJv4cO-Fb_3tPqFxVWAOP0yCvGZ6hD8CPXeZGx1WxeSI5GH7XJunF63o_0blNDL2Bp7NjzpGBF0iBaTRYvElC8JEoKbMiMZQqWVAVKElsFlk1FrDC6KzxfZijek:1s1paN:4wYp9_6K_s6gwpEzO_e06wm8LeF2buNeh8zSgtrqNEM','2024-05-14 15:40:03.991998'),('qyzybp8uv4fh6i6b6m3rd1jv5oo7g8q6','eyJzZXNzaW9uX2tleSI6e319:1sEAAP:IpwksszK9aEvfIMjgqiGQzMiWP68NjrxcrZhJ9x53Zs','2024-06-17 16:04:13.001637'),('tbh3tw96xiyrdnfnufjd9h1wendm9jpk','eyJzZXNzaW9uX2tleSI6e319:1sEAGq:66MWtdWaDnOeDzVqXvR1950tS77b_nOC2M7rUH358UU','2024-06-17 16:10:52.583217'),('tg1ohzsi6alwddh9a8s11bdyo2a0f6ob','.eJxVjEEOwiAQAP_C2RDo4oIevfcNhGVBqgaS0p6MfzckPeh1ZjJv4cO-Fb_3tPqFxVWAOP0yCvGZ6hD8CPXeZGx1WxeSI5GH7XJunF63o_0blNDL2Bp7NjzpGBF0iBaTRYvElC8JEoKbMiMZQqWVAVKElsFlk1FrDC6KzxfZijek:1s209V:k_cjyP1LE4XWHhLXWhV6AhfmkQryexM6_s_H_C3Z0VY','2024-05-15 02:57:01.756668'),('tt8s9cabnu8ig803d70tqj7or1sehuiw','eyJzZXNzaW9uX2tleSI6eyIxIjozLCIyIjozfX0:1s5qSE:o0TIVIzs2ZoBhCkkUKjF9hQcvjfKCiiVErFmYunDhDw','2024-05-25 17:24:14.879013'),('wacerx4n42m98obxulcwy1ywtg7obuo4','eyJzZXNzaW9uX2tleSI6eyIyIjozLCIzIjoyMiwiNSI6NCwiNiI6MX19:1s5plF:R3Pemlm8Fh_cQawkTfpGzZB9wxS9XUcs4VDzq5Kji_o','2024-05-25 16:39:49.279215'),('zepbzo7z6tqn34729lv0y0mvs8luayvu','.eJxVjEEKgzAQAP-y5xKMSTfWY-99Q8hmN9VaEjB6KOLfi-DF68wwG1SpdSzZT_KDfttv4MO6DH6tMvuRoQcDF0YhTpIPwZ-Q30XFkpd5JHUk6rRVvQrL93m2l8EQ6nBsrbtbbnWMaHSIDsWhQ2JKDzGCpmsTI1nCRjfWUEPo2HTJJtQaQxdh_wNLyT3y:1sERAc:KkqdEA8zmFjMfspCfy2BZoWgDLKVx21pP_ET1cLHVkQ','2024-06-18 10:13:34.378341'),('zzjkg74eff4nmr7l2nj457xwfm8fm9o7','.eJxVjEEKgzAQAP-y5xKMSTfWY-99Q8hmN9VaEjB6KOLfi-DF68wwG1SpdSzZT_KDfttv4MO6DH6tMvuRoQcDF0YhTpIPwZ-Q30XFkpd5JHUk6rRVvQrL93m2l8EQ6nBsrbtbbnWMaHSIDsWhQ2JKDzGCpmsTI1nCRjfWUEPo2HTJJtQaQxdh_wNLyT3y:1sCKm2:wOrh3FVXTQ0auh8ylsB_SGGWZwDG1jdL59t8mA2q1I0','2024-06-12 14:59:30.040403');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_app_order`
--

DROP TABLE IF EXISTS `order_app_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_app_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `quantity` int NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `point` decimal(10,0) NOT NULL,
  `status` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_app_order_user_id_f1814784_fk_auth_user_id` (`user_id`),
  CONSTRAINT `order_app_order_user_id_f1814784_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_app_order`
--

LOCK TABLES `order_app_order` WRITE;
/*!40000 ALTER TABLE `order_app_order` DISABLE KEYS */;
INSERT INTO `order_app_order` VALUES (1,'2024-06-04',3,300000,30000,'OK',3);
/*!40000 ALTER TABLE `order_app_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_app_orderdetail`
--

DROP TABLE IF EXISTS `order_app_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_app_orderdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_app_orderdetail_order_id_769c5fe3_fk_order_app_order_id` (`order_id`),
  KEY `order_app_orderdetai_product_id_5bf5be22_fk_shop_app_` (`product_id`),
  CONSTRAINT `order_app_orderdetai_product_id_5bf5be22_fk_shop_app_` FOREIGN KEY (`product_id`) REFERENCES `shop_app_product` (`product_id`),
  CONSTRAINT `order_app_orderdetail_order_id_769c5fe3_fk_order_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_app_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_app_orderdetail`
--

LOCK TABLES `order_app_orderdetail` WRITE;
/*!40000 ALTER TABLE `order_app_orderdetail` DISABLE KEYS */;
INSERT INTO `order_app_orderdetail` VALUES (1,2,200000,1,2),(2,1,100000,1,3);
/*!40000 ALTER TABLE `order_app_orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_app_userprofile`
--

DROP TABLE IF EXISTS `profile_app_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile_app_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dob` date DEFAULT NULL,
  `address` longtext,
  `phone` varchar(20) DEFAULT NULL,
  `user_id` int NOT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `old_cart` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_app_userprofile_user_id_aa6492b1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `profile_app_userprofile_user_id_aa6492b1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_app_userprofile`
--

LOCK TABLES `profile_app_userprofile` WRITE;
/*!40000 ALTER TABLE `profile_app_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_app_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_app_product`
--

DROP TABLE IF EXISTS `shop_app_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_app_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `stock_quantity` int NOT NULL,
  `img_url` longtext,
  `Arabica` tinyint(1) NOT NULL,
  `Culi` tinyint(1) NOT NULL,
  `Robusta` tinyint(1) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `img_detail_url` longtext,
  `description` longtext,
  PRIMARY KEY (`product_id`),
  KEY `shop_app_product_slug_f5aff027` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_app_product`
--

LOCK TABLES `shop_app_product` WRITE;
/*!40000 ALTER TABLE `shop_app_product` DISABLE KEYS */;
INSERT INTO `shop_app_product` VALUES (1,'Cà phê nguyên chất Smooth Kleikhan',100000,10,'Smooth.jpg',1,0,1,'ca-phe-nguyen-chat-smooth-kleikhan','Smooth detail.jpg','Đặc trưng: Đậm đà, cân bằng. Ngũ cốc, chua nhẹ. Hương gỗ, thơm đất. Hương hoa cỏ, trái cây.\r\n\r\nPhù hợp người có gu vừa phải và hậu vị sâu lắng, độc đáo'),(2,'Cà phê nguyên chất Delight Kleikhan',100000,10,'Delight.jpg',1,0,0,'ca-phe-nguyen-chat-delight-kleikhan','Delight detail.jpg','Đặc trưng: Đắng ít, ngọt, chua nhẹ. Hương thơm đặc trưng. Thơm đất, gỗ, hạt dẻ. Trái cây khô phơi nắng.\r\n\r\nPhù hợp với người có gu nhẹ và hấp dẫn.'),(3,'Cà phê nguyên chất Lingering Kleikhan',100000,10,'Lingering.jpg',0,1,0,'ca-phe-nguyen-chat-lingering-kleikhan','Lingering detail.jpg','Đặc trưng: Đắng mạnh và đậm đà. Quả hạt, body dày. Sánh mịn, thơm đất. Vani và chocolate.\r\n\r\nPhù hợp với người có gu đắng, sâu sắc và thú vị'),(4,'Cà phê nguyên chất Soft Kleikhan',100000,10,'Soft.jpg',0,1,1,'ca-phe-nguyen-chat-soft-kleikhan','Soft detail.jpg','Đặc trưng: Đắng mạnh, đậm đà. Quả hạt, body dày. Sánh mịn, thơm đất. Vani và chocolate\r\n\r\nPhù hợp với người có gu đắng, hậu vị dài và sâu lắng.'),(5,'Cà phê nguyên chất Mellow Kleikhan',100000,10,'Mellow.jpg',1,1,1,'ca-phe-nguyen-chat-mellow-kleikhan','Mellow detail.jpg','Đặc trưng: Đắng vừa, thanh mát. Ngọt và chua nhẹ. Hương gỗ, đất, hạt dẻ. Hương thơm đặc trưng.\r\n\r\nPhù hợp với người có gu nhẹ và tinh tế, tỉ mỉ và kỹ lưỡng'),(6,'Cà phê nguyên chất Bold Kleikhan',100000,10,'Bold.jpg',1,0,1,'ca-phe-nguyen-chat-boldkleikhan','Bold detail.jpg','Đặc trưng: Đắng và béo nhẹ. Quả hạt. Thơm đất. Chocolate\r\n\r\nPhù hợp với người có gu đắng và đầy năng lượng.'),(7,'Cà phê nguyên chất Intense Kleikhan',100000,10,'Intense.jpg',0,0,1,'ca-phe-nguyen-chat-intense-kleikhan','Intense detail.jpg','Đặc trưng: Đắng đậm và chát. Hương gỗ nhẹ. Thơm đất. Ngũ cốc.\r\nPhù hợp cho những người có gu đắng, đậm đà.'),(8,'Cà phê nguyên chất Bright Kleikhan',100000,10,'Bright.jpg',1,0,1,'ca-phe-nguyen-chat-bright-kleikhan','Bright detail.jpg','Đặc trưng: Đắng ít, thanh mát. Ngọt và chua nhẹ. Hương gỗ, đất, hạt dẻ. Hương thơm đặc trưng.\r\nPhù hợp với người có gu nhẹ và tươi mát.');
/*!40000 ALTER TABLE `shop_app_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_app_customer`
--

DROP TABLE IF EXISTS `user_app_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_app_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` longtext,
  `phone` varchar(20) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_app_customer_user_id_af76c9b2_fk_auth_user_id` (`user_id`),
  CONSTRAINT `user_app_customer_user_id_af76c9b2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_app_customer`
--

LOCK TABLES `user_app_customer` WRITE;
/*!40000 ALTER TABLE `user_app_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_app_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-04 17:22:33
