-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_marketplace
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `accounts_customer`
--

DROP TABLE IF EXISTS `accounts_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `person_id` (`person_id`),
  CONSTRAINT `accounts_customer_person_id_5b7e37ab_fk_accounts_` FOREIGN KEY (`person_id`) REFERENCES `accounts_person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_customer`
--

LOCK TABLES `accounts_customer` WRITE;
/*!40000 ALTER TABLE `accounts_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_person`
--

DROP TABLE IF EXISTS `accounts_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `accounts_person_user_id_96c4d2e9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_person`
--

LOCK TABLES `accounts_person` WRITE;
/*!40000 ALTER TABLE `accounts_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_vendor`
--

DROP TABLE IF EXISTS `accounts_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_vendor` (
  `vendor_id` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(150) NOT NULL,
  `person_id` int NOT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `person_id` (`person_id`),
  CONSTRAINT `accounts_vendor_person_id_09c4f9ce_fk_accounts_person_person_id` FOREIGN KEY (`person_id`) REFERENCES `accounts_person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_vendor`
--

LOCK TABLES `accounts_vendor` WRITE;
/*!40000 ALTER TABLE `accounts_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_vendor` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Person',8,'add_person'),(26,'Can change Person',8,'change_person'),(27,'Can delete Person',8,'delete_person'),(28,'Can view Person',8,'view_person'),(29,'Can add Customer',7,'add_customer'),(30,'Can change Customer',7,'change_customer'),(31,'Can delete Customer',7,'delete_customer'),(32,'Can view Customer',7,'view_customer'),(33,'Can add Vendor',9,'add_vendor'),(34,'Can change Vendor',9,'change_vendor'),(35,'Can delete Vendor',9,'delete_vendor'),(36,'Can view Vendor',9,'view_vendor'),(37,'Can add category',10,'add_category'),(38,'Can change category',10,'change_category'),(39,'Can delete category',10,'delete_category'),(40,'Can view category',10,'view_category'),(41,'Can add product',12,'add_product'),(42,'Can change product',12,'change_product'),(43,'Can delete product',12,'delete_product'),(44,'Can view product',12,'view_product'),(45,'Can add discount',11,'add_discount'),(46,'Can change discount',11,'change_discount'),(47,'Can delete discount',11,'delete_discount'),(48,'Can view discount',11,'view_discount'),(49,'Can add review',13,'add_review'),(50,'Can change review',13,'change_review'),(51,'Can delete review',13,'delete_review'),(52,'Can view review',13,'view_review'),(53,'Can add Cart',14,'add_cart'),(54,'Can change Cart',14,'change_cart'),(55,'Can delete Cart',14,'delete_cart'),(56,'Can view Cart',14,'view_cart'),(57,'Can add Cart Item',15,'add_cartitem'),(58,'Can change Cart Item',15,'change_cartitem'),(59,'Can delete Cart Item',15,'delete_cartitem'),(60,'Can view Cart Item',15,'view_cartitem'),(61,'Can add order',16,'add_order'),(62,'Can change order',16,'change_order'),(63,'Can delete order',16,'delete_order'),(64,'Can view order',16,'view_order'),(65,'Can add warehouse',18,'add_warehouse'),(66,'Can change warehouse',18,'change_warehouse'),(67,'Can delete warehouse',18,'delete_warehouse'),(68,'Can view warehouse',18,'view_warehouse'),(69,'Can add inventory',17,'add_inventory'),(70,'Can change inventory',17,'change_inventory'),(71,'Can delete inventory',17,'delete_inventory'),(72,'Can view inventory',17,'view_inventory'),(73,'Can add payment',19,'add_payment'),(74,'Can change payment',19,'change_payment'),(75,'Can delete payment',19,'delete_payment'),(76,'Can view payment',19,'view_payment'),(77,'Can add shipment',20,'add_shipment'),(78,'Can change shipment',20,'change_shipment'),(79,'Can delete shipment',20,'delete_shipment'),(80,'Can view shipment',20,'view_shipment'),(81,'Can add order item',21,'add_orderitem'),(82,'Can change order item',21,'change_orderitem'),(83,'Can delete order item',21,'delete_orderitem'),(84,'Can view order item',21,'view_orderitem'),(85,'Can add order item',22,'add_orderitem'),(86,'Can change order item',22,'change_orderitem'),(87,'Can delete order item',22,'delete_orderitem'),(88,'Can view order item',22,'view_orderitem'),(89,'Can add payment',23,'add_payment'),(90,'Can change payment',23,'change_payment'),(91,'Can delete payment',23,'delete_payment'),(92,'Can view payment',23,'view_payment'),(93,'Can add shipment',24,'add_shipment'),(94,'Can change shipment',24,'change_shipment'),(95,'Can delete shipment',24,'delete_shipment'),(96,'Can view shipment',24,'view_shipment');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$dVscXCoGDsCUcIzYX4P5px$gLptms3UDkkv9Sg2CdJtmI6nDV0bM31dBDuuHQpOJeY=','2026-05-28 04:47:09.279086',1,'admin','','','',1,1,'2026-05-28 04:39:48.984204');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  UNIQUE KEY `customer_id` (`customer_id`),
  CONSTRAINT `cart_cart_customer_id_bbe4c408_fk_accounts_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cartitem`
--

DROP TABLE IF EXISTS `cart_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cartitem` (
  `cart_item_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `added_at` datetime(6) NOT NULL,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`cart_item_id`),
  UNIQUE KEY `cart_cartitem_cart_id_product_id_53cce7c3_uniq` (`cart_id`,`product_id`),
  KEY `cart_cartitem_product_id_b24e265a_fk_products_product_product_id` (`product_id`),
  CONSTRAINT `cart_cartitem_cart_id_370ad265_fk_cart_cart_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`cart_id`),
  CONSTRAINT `cart_cartitem_product_id_b24e265a_fk_products_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`product_id`),
  CONSTRAINT `cart_cartitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cartitem`
--

LOCK TABLES `cart_cartitem` WRITE;
/*!40000 ALTER TABLE `cart_cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_category`
--

DROP TABLE IF EXISTS `categories_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_category`
--

LOCK TABLES `categories_category` WRITE;
/*!40000 ALTER TABLE `categories_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_category` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'accounts','customer'),(8,'accounts','person'),(9,'accounts','vendor'),(1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(14,'cart','cart'),(15,'cart','cartitem'),(10,'categories','category'),(5,'contenttypes','contenttype'),(17,'inventory','inventory'),(18,'inventory','warehouse'),(21,'orderitem','orderitem'),(16,'orders','order'),(22,'orders','orderitem'),(23,'orders','payment'),(24,'orders','shipment'),(19,'payment','payment'),(11,'products','discount'),(12,'products','product'),(13,'reviews','review'),(6,'sessions','session'),(20,'shipment','shipment');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-05-23 02:21:09.474202'),(2,'auth','0001_initial','2026-05-23 02:21:10.288909'),(3,'accounts','0001_initial','2026-05-23 02:21:10.505201'),(4,'accounts','0002_person_user','2026-05-23 02:21:10.583882'),(5,'admin','0001_initial','2026-05-23 02:21:10.755689'),(6,'admin','0002_logentry_remove_auto_add','2026-05-23 02:21:10.766226'),(7,'admin','0003_logentry_add_action_flag_choices','2026-05-23 02:21:10.780301'),(8,'contenttypes','0002_remove_content_type_name','2026-05-23 02:21:10.920357'),(9,'auth','0002_alter_permission_name_max_length','2026-05-23 02:21:10.986907'),(10,'auth','0003_alter_user_email_max_length','2026-05-23 02:21:11.010887'),(11,'auth','0004_alter_user_username_opts','2026-05-23 02:21:11.019693'),(12,'auth','0005_alter_user_last_login_null','2026-05-23 02:21:11.093129'),(13,'auth','0006_require_contenttypes_0002','2026-05-23 02:21:11.096546'),(14,'auth','0007_alter_validators_add_error_messages','2026-05-23 02:21:11.103049'),(15,'auth','0008_alter_user_username_max_length','2026-05-23 02:21:11.194998'),(16,'auth','0009_alter_user_last_name_max_length','2026-05-23 02:21:11.266535'),(17,'auth','0010_alter_group_name_max_length','2026-05-23 02:21:11.290526'),(18,'auth','0011_update_proxy_permissions','2026-05-23 02:21:11.298399'),(19,'auth','0012_alter_user_first_name_max_length','2026-05-23 02:21:11.379360'),(20,'categories','0001_initial','2026-05-23 02:21:11.418224'),(21,'products','0001_initial','2026-05-23 02:21:11.690331'),(22,'cart','0001_initial','2026-05-23 02:21:12.019632'),(23,'inventory','0001_initial','2026-05-23 02:21:12.261908'),(24,'orders','0001_initial','2026-05-23 02:21:12.781309'),(25,'orders','0002_alter_order_options_alter_orderitem_options_and_more','2026-05-23 02:21:13.121660'),(26,'orders','0003_alter_order_platform','2026-05-23 02:21:13.339299'),(27,'orders','0004_remove_platform_add_discount','2026-05-23 02:21:13.620009'),(28,'reviews','0001_initial','2026-05-23 02:21:13.806911'),(29,'reviews','0002_alter_review_customer','2026-05-23 02:21:13.919074'),(30,'sessions','0001_initial','2026-05-23 02:21:13.964830'),(31,'orders','0005 payment onetomany methods','2026-05-23 03:58:33.859290'),(32,'orders','0006_payment_is_paid','2026-05-23 03:58:33.910444'),(33,'orders','0007_payment_status_field','2026-05-23 04:25:21.047166'),(34,'orderitem','0001_initial','2026-05-23 05:06:14.913068'),(35,'payment','0001_initial','2026-05-23 05:06:15.034184'),(36,'shipment','0001_initial','2026-05-23 05:06:15.153504'),(37,'products','0002_product_vendor','2026-05-28 02:23:51.494336'),(38,'shipment','0002_sync_order_status_from_shipments','2026-05-28 05:26:37.079086');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_inventory`
--

DROP TABLE IF EXISTS `inventory_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_inventory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stock_level` int NOT NULL,
  `reorder_threshold` int NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  `product_id` int NOT NULL,
  `warehouse_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_id` (`product_id`),
  KEY `inventory_inventory_warehouse_id_fadd9d8c_fk_inventory` (`warehouse_id`),
  CONSTRAINT `inventory_inventory_product_id_5b835926_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`product_id`),
  CONSTRAINT `inventory_inventory_warehouse_id_fadd9d8c_fk_inventory` FOREIGN KEY (`warehouse_id`) REFERENCES `inventory_warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_inventory`
--

LOCK TABLES `inventory_inventory` WRITE;
/*!40000 ALTER TABLE `inventory_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_warehouse`
--

DROP TABLE IF EXISTS `inventory_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_warehouse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` longtext NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_warehouse`
--

LOCK TABLES `inventory_warehouse` WRITE;
/*!40000 ALTER TABLE `inventory_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem_orderitem`
--

DROP TABLE IF EXISTS `orderitem_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderitem_orderitem_order_id_a46b52e8_fk_orders_order_id` (`order_id`),
  KEY `orderitem_orderitem_product_id_8239fd27_fk_products_` (`product_id`),
  CONSTRAINT `orderitem_orderitem_order_id_a46b52e8_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `orderitem_orderitem_product_id_8239fd27_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`product_id`),
  CONSTRAINT `orderitem_orderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem_orderitem`
--

LOCK TABLES `orderitem_orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem_orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitem_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` datetime(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `customer_id` int NOT NULL,
  `discount_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_customer_id_0b76f6a4_fk_accounts_` (`customer_id`),
  KEY `orders_order_discount_id_d473d3ca_fk_products_` (`discount_id`),
  CONSTRAINT `orders_order_customer_id_0b76f6a4_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `orders_order_discount_id_d473d3ca_fk_products_` FOREIGN KEY (`discount_id`) REFERENCES `products_discount` (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_payment`
--

DROP TABLE IF EXISTS `payment_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_date` datetime(6) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_payment_order_id_22b45881_fk_orders_order_id` (`order_id`),
  CONSTRAINT `payment_payment_order_id_22b45881_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_payment`
--

LOCK TABLES `payment_payment` WRITE;
/*!40000 ALTER TABLE `payment_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_discount`
--

DROP TABLE IF EXISTS `products_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_discount` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_discount`
--

LOCK TABLES `products_discount` WRITE;
/*!40000 ALTER TABLE `products_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_discount_products`
--

DROP TABLE IF EXISTS `products_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_discount_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_discount_products_discount_id_product_id_10829a50_uniq` (`discount_id`,`product_id`),
  KEY `products_discount_pr_product_id_b3e04cba_fk_products_` (`product_id`),
  CONSTRAINT `products_discount_pr_discount_id_733552ed_fk_products_` FOREIGN KEY (`discount_id`) REFERENCES `products_discount` (`discount_id`),
  CONSTRAINT `products_discount_pr_product_id_b3e04cba_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_discount_products`
--

LOCK TABLES `products_discount_products` WRITE;
/*!40000 ALTER TABLE `products_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_qty` int NOT NULL,
  `category_id` int NOT NULL,
  `vendor_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `products_product_category_id_9b594869_fk_categorie` (`category_id`),
  KEY `products_product_vendor_id_4c43277c_fk_accounts_vendor_vendor_id` (`vendor_id`),
  CONSTRAINT `products_product_category_id_9b594869_fk_categorie` FOREIGN KEY (`category_id`) REFERENCES `categories_category` (`category_id`),
  CONSTRAINT `products_product_vendor_id_4c43277c_fk_accounts_vendor_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `accounts_vendor` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_review`
--

DROP TABLE IF EXISTS `reviews_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews_review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `comment` longtext NOT NULL,
  `review_date` datetime(6) NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `reviews_review_customer_id_product_id_67ccf9b3_uniq` (`customer_id`,`product_id`),
  KEY `reviews_review_product_id_ce2fa4c6_fk_products_` (`product_id`),
  CONSTRAINT `reviews_review_customer_id_17e79eab_fk_accounts_` FOREIGN KEY (`customer_id`) REFERENCES `accounts_customer` (`customer_id`),
  CONSTRAINT `reviews_review_product_id_ce2fa4c6_fk_products_` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_review`
--

LOCK TABLES `reviews_review` WRITE;
/*!40000 ALTER TABLE `reviews_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_shipment`
--

DROP TABLE IF EXISTS `shipment_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment_shipment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shipment_date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `delivery_address` longtext NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shipment_shipment_order_id_fffa0573_fk_orders_order_id` (`order_id`),
  CONSTRAINT `shipment_shipment_order_id_fffa0573_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_shipment`
--

LOCK TABLES `shipment_shipment` WRITE;
/*!40000 ALTER TABLE `shipment_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_shipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-28 14:12:22
