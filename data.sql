-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` varchar(255) NOT NULL,
  `status` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('DIWALI25',0),('FIRST30',0);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (9),(9),(9),(9),(9);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_main`
--

DROP TABLE IF EXISTS `order_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_main` (
  `order_id` bigint NOT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `order_amount` decimal(19,2) NOT NULL,
  `order_status` int NOT NULL DEFAULT '0',
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_main`
--

LOCK TABLES `order_main` WRITE;
/*!40000 ALTER TABLE `order_main` DISABLE KEYS */;
INSERT INTO `order_main` VALUES (5,' ','parthshukla@email.com','Parth Shukla','4567891234','2022-08-20 12:38:43.059787',5196.00,0,'2022-08-20 12:38:43.059787'),(7,' ','parthshukla@email.com','Parth Shukla','4567891234','2022-08-20 12:39:32.155046',50000.00,0,'2022-08-20 12:39:32.155046');
/*!40000 ALTER TABLE `order_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_type` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `UK_6kq6iveuim6wd90cxo5bksumw` (`category_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1001,'Shop Living Room',0,'2022-03-09 23:03:26.000000','2022-03-10 00:15:27.000000'),(1002,'Shop Bed Room',1,'2022-03-10 00:26:05.000000','2022-03-10 00:26:05.000000'),(1003,'Shop Dining Room',2,'2022-03-10 00:15:02.000000','2022-03-10 00:15:21.000000'),(1004,'Shop Study Room',3,'2022-03-10 01:01:09.000000','2022-03-10 01:01:09.000000'),(1005,'Home Electronics',4,'2022-03-10 00:26:05.000000','2022-03-10 00:26:05.000000');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_in_order`
--

DROP TABLE IF EXISTS `product_in_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_in_order` (
  `id` bigint NOT NULL,
  `category_type` int NOT NULL,
  `count` int DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_stock` int DEFAULT NULL,
  `cart_user_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhnivo3fl2qtco3ulm4mq0mbr5` (`cart_user_id`),
  KEY `FKt0sfj3ffasrift1c4lv3ra85e` (`order_id`),
  CONSTRAINT `FKhnivo3fl2qtco3ulm4mq0mbr5` FOREIGN KEY (`cart_user_id`) REFERENCES `cart` (`user_id`),
  CONSTRAINT `FKt0sfj3ffasrift1c4lv3ra85e` FOREIGN KEY (`order_id`) REFERENCES `order_main` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_in_order`
--

LOCK TABLES `product_in_order` WRITE;
/*!40000 ALTER TABLE `product_in_order` DISABLE KEYS */;
INSERT INTO `product_in_order` VALUES (4,4,4,'Longway Creta 1200mm/48 inch with remote High Speed Anti-dust Decorative 5 Star Rated Ceiling Fan 400 RPM','https://images.unsplash.com/photo-1581153691064-8d0ec09725b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2VpbGluZyUyMGZhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60','HE01','Fan',1299.00,200,NULL,5),(6,0,10,'Tables That Do More Than Serve!','https://images.unsplash.com/photo-1498804103079-a6351b050096?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60','SLR02','Coffee tables',5000.00,300,NULL,7);
/*!40000 ALTER TABLE `product_in_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `product_id` varchar(255) NOT NULL,
  `category_type` int DEFAULT '0',
  `create_time` datetime(6) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_status` int DEFAULT '0',
  `product_stock` int NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES ('HE01',4,'2022-03-10 10:37:39.000000','Longway Creta 1200mm/48 inch with remote High Speed Anti-dust Decorative 5 Star Rated Ceiling Fan 400 RPM','https://images.unsplash.com/photo-1581153691064-8d0ec09725b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2VpbGluZyUyMGZhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60','Fan',1299.00,0,196,'2022-08-20 12:38:43.077000'),('HE02',4,'2022-03-10 10:37:39.000000','Samsungs new fridge 674 Litre Side-by-Side Refrigerator, Matt Black GC-X257CQES','https://images.unsplash.com/photo-1584568694244-14fbdf83bd30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZnJpZGdlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60','Fridge',122500.00,1,200,'2022-03-10 19:42:02.000000'),('HE03',4,'2022-03-10 10:37:39.000000','Big Capacity(12kg) Energy Efficiency (A+++-40%) ,6 Motion Direct Drive, Inverter Direct Drive, (Less noise andvibration, 10-Year MotorWarranty, 22-Year VDE Certification),TrueSteam™,Smart Diagnosis™','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV_g4jH3EN8CNV-bXgtdthe1YI_rdRlyAvnQ&usqp=CAU','Washing machine',41000.00,1,200,'2022-03-10 19:42:02.000000'),('SBR01',1,'2022-03-10 12:11:51.000000','Adolph Bed With Side Storage','https://www.ikea.com/in/en/images/products/gladstad-upholstered-bed-frame-kabusa-light-grey__0984348_pe816238_s5.jpg?f=xxs','Bed',12000.00,0,108,'2022-07-09 14:36:20.000000'),('SBR02',1,'2022-03-10 06:44:25.000000','Wakefit Orthopaedic Memory Foam Mattress (78*72*6inch) / (198.1*182.9*15.2cm)','https://www.ikea.com/in/en/images/products/agotnes-foam-mattress-firm-light-blue__0986609_pe818096_s5.jpg?f=xxs','Mattress',9999.00,0,6,'2022-07-10 13:43:23.000000'),('SBR03',1,'2022-03-10 10:39:29.000000','cotton check silk bedsheet ,6ft x 6ft','https://www.ikea.com/in/en/images/products/lattjo-flat-sheet-and-pillowcase-animal-multicolour__0753055_pe747561_s5.jpg?f=xxs','Bed Sheets',999.00,0,199,'2022-03-10 10:39:32.000000'),('SDR01',2,'2022-03-10 10:40:35.000000','Wooden table 3/4','https://images.unsplash.com/photo-1615066390971-03e4e1c36ddf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZGluaW5nJTIwdGFibGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60','Dining table',899.00,0,199,'2022-03-10 10:40:35.000000'),('SDR02',2,'2022-03-10 12:08:17.000000','floral prited cloth','https://images.unsplash.com/photo-1579101403194-24b242aa56e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGFibGUlMjBjbG90aHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60','Table cloth',566.00,0,200,'2022-07-10 13:43:23.000000'),('SDR03',2,'2022-03-10 12:15:05.000000','2 inches thick mat with hot pot holder','https://media.istockphoto.com/photos/handmade-round-woven-placemat-placed-on-a-white-background-picture-id1353370234?b=1&k=20&m=1353370234&s=170667a&w=0&h=re0aOAhDckkSpD19y2wNflzzVAya--G6DYQ-e6ujo9g=','Dining table mat',399.00,0,57,'2022-03-10 12:15:10.000000'),('SLR01',0,'2022-03-10 10:37:39.000000','Cherish each moment in comfort','https://www.ikea.com/in/en/images/products/landskrona-2-seat-sofa-gunnared-light-green-metal__0602104_pe680173_s5.jpg?f=xxs','Two-seat sofas',20000.00,1,200,'2022-03-10 19:42:02.000000'),('SLR02',0,'2022-03-10 12:12:46.000000','Tables That Do More Than Serve!','https://www.ikea.com/in/en/images/products/tofteryd-coffee-table-high-gloss-white__0115198_pe268420_s5.jpg?f=xxs','Coffee tables',5000.00,0,290,'2022-08-20 12:39:32.164000'),('SLR03',0,'2022-03-10 06:51:03.000000','Bring the cinema home','https://www.ikea.com/in/en/images/products/billy-brimnes-tv-storage-combination-white__0943364_pe796892_s5.jpg?f=xxs','TV & media storage',15000.00,0,100,'2018-03-10 12:04:13.000000'),('SLR04',0,'2022-03-10 10:35:43.000000','Curtains to help you sleep better','https://www.ikea.com/in/en/images/products/buskmaetare-curtains-1-pair-leaf-patterned-green__0964986_pe809309_s5.jpg?f=xxs','Curtains',2000.00,0,194,'2022-07-10 13:50:11.000000'),('SLR05',0,'2022-03-10 12:09:41.000000','Decorative lighting','https://www.ikea.com/in/en/images/products/storhaga-led-table-lamp-dimmable-outdoor-black__0763153_pe752459_s5.jpg?f=xxs','LED lanterns',10.00,0,109,'2022-03-10 12:09:41.000000'),('SSR01',3,'2022-03-10 12:16:44.000000','Acer Aspire 5 Thin & Light Laptop Intel Core i5 11th Gen (Windows 11 Home/MS Office /8GB/512GB SSD) A514-54 with 35.5cm (14\") Full HD Display with Backlit Keyboard/1.45 kgs','https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGFwdG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60','Laptop',52999.00,0,22,'2022-03-10 12:16:44.000000'),('SSR02',3,'2022-03-10 10:37:39.000000','Twain Free Standing Engineered Wood Study Table In Cherry Melamine Finish','https://images.unsplash.com/photo-1611269154421-4e27233ac5c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZGVza3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60','Study Table',799.00,1,200,'2022-03-10 19:42:02.000000'),('SSR03',3,'2022-03-10 10:37:39.000000','Linsay Ergonomic Chair','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_ilyDbjn5akYxD0v2ZJBZ1C2BN00Kv8r5qA&usqp=CAU','Study Chair',20099.00,1,200,'2022-03-10 19:42:02.000000'),('SSR04',3,'2022-03-10 10:37:39.000000','Solid wooden book shelf','https://www.ikea.com/in/en/images/products/billy-bookcase-combination-crnr-solution-white__0979439_pe814538_s5.jpg?f=xxs','Bookshelves',10000.00,1,200,'2022-03-10 19:42:02.000000');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','BDAA Plot no ','sid@gmail.com','Sid','$2a$10$H4sjt1sqLbCpsOVt/a8thOCpm0dWVTCdGaFUrhyMkfbMfhfU8PaYe','1234567894','ROLE_MANAGER'),(2,_binary '','abcd apart','dummy@email.com','Dummy','$2a$10$SoLWU.SNzqOTdGP9IBrhD.YKvDneB/d2RNSWY6U/PodpaZ/.6lXRq','1212122323','ROLE_CUSTOMER'),(3,_binary '',' ','parthshukla@email.com','Parth Shukla','$2a$10$Lqz53zmTbfn4PRENxABXO.1ZNdUzCdogbxJ2dXt2FKohPBFoM/QCG','4567891234','ROLE_CUSTOMER'),(101,_binary '','32-1-2 Hyderabad','admin@email.com','Admin','$2a$10$NBf.IlOMLBCYA96oMPN33.uakqdM4x1nBb.qA89NL3ttzPEI.tUfu','8923493456','ROLE_MANAGER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKklfv8svemdde0od1rs6mgstb` (`product_id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`),
  CONSTRAINT `FKklfv8svemdde0od1rs6mgstb` FOREIGN KEY (`product_id`) REFERENCES `product_info` (`product_id`),
  CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (8,'2022-08-24 16:31:39.922000','SLR02',3);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-25 12:11:21
