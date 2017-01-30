# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: dms-dev-rds.cnnigswdzjoz.us-east-1.rds.amazonaws.com (MySQL 5.6.10)
# Database: bgdb_dev
# Generation Time: 2017-01-27 23:05:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bgea_ds_transmit_dmag_subs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bgea_ds_transmit_dmag_subs`;

CREATE TABLE `bgea_ds_transmit_dmag_subs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_answer_id` int(11) DEFAULT NULL,
  `price_code` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `is_gift` int(11) DEFAULT NULL,
  `recipient_first_name` varchar(45) DEFAULT NULL,
  `recipient_last_name` varchar(45) DEFAULT NULL,
  `recipient_address` varchar(100) DEFAULT NULL,
  `recipient_address_2` varchar(45) DEFAULT NULL,
  `recipient_city` varchar(45) DEFAULT NULL,
  `recipient_state` varchar(45) DEFAULT NULL,
  `recipient_postal_code` varchar(45) DEFAULT NULL,
  `recipient_country` varchar(45) DEFAULT NULL,
  `recipient_email_address` varchar(100) DEFAULT NULL,
  `redemption_code` varchar(45) DEFAULT NULL,
  `promo_code` varchar(45) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `bgea_ds_transmit_dmag_subs` WRITE;
/*!40000 ALTER TABLE `bgea_ds_transmit_dmag_subs` DISABLE KEYS */;

INSERT INTO `bgea_ds_transmit_dmag_subs` (`id`, `common_answer_id`, `price_code`, `price`, `is_gift`, `recipient_first_name`, `recipient_last_name`, `recipient_address`, `recipient_address_2`, `recipient_city`, `recipient_state`, `recipient_postal_code`, `recipient_country`, `recipient_email_address`, `redemption_code`, `promo_code`, `date_created`)
VALUES
	(24779,776442,'',0,0,'','','','','','','','','','',NULL,'2016-06-07 11:53:36'),
	(24780,776443,'MAG15',15,0,'test','test','testt','','testt','AR','21313','US','cmorgan@bgea.org','',NULL,'2016-06-07 11:56:26'),
	(24781,776443,'SUPP',0,0,'test','test','testt','','testt','AR','21313','US','cmorgan@bgea.org','',NULL,'2016-06-07 11:56:26'),
	(24782,573853,'',0,0,'','','','','','','','','','',NULL,'2016-06-16 13:28:19'),
	(24783,776445,'TWOYEAR',25,0,'Test','Tester','123 Test St.','','Somewhere','IA','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:38:44'),
	(24784,776445,'SUPP22',0,0,'Test','Tester','123 Test St.','','Somewhere','IA','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:38:44'),
	(24785,776446,'TWOYEAR',25,0,'Test','Tester','123 Test St.','Apt. 400','Somewhere','CT','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:46:30'),
	(24786,776446,'SUPP22',0,0,'Test','Tester','123 Test St.','Apt. 400','Somewhere','CT','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:46:30'),
	(24787,776447,'TWOYEAR',25,0,'Test','Tester','123 Test St.','Apt. 215','Somewhere','HI','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:48:39'),
	(24788,776447,'SUPP22',0,0,'Test','Tester','123 Test St.','Apt. 215','Somewhere','HI','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:48:39'),
	(24789,776448,'TWOYEAR',25,0,'Test','Tester','123 Test St.','Apt. 4001','Somewhere','CO','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:50:30'),
	(24790,776448,'SUPP22',0,0,'Test','Tester','123 Test St.','Apt. 4001','Somewhere','CO','10045','US','scook@bgea.org','',NULL,'2016-06-16 13:50:30'),
	(24791,776449,'TWOYEAR',25,0,'test','test','testt','asdfasafdsas','testt','AK','213132','US','cmorgan@bgea.org','',NULL,'2016-06-16 14:31:08'),
	(24792,776449,'SUPP22',0,0,'test','test','testt','asdfasafdsas','testt','AK','213132','US','cmorgan@bgea.org','',NULL,'2016-06-16 14:31:08'),
	(24793,776466,'MAG15',15,0,'Tester','Test','123 Test St.','Test-DMAG-final-in-dev-IE-2016-06-24-V1','Somewhere','CA','90001','US','djohnson@bgea.org','',NULL,'2016-06-24 21:30:00'),
	(24794,776706,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'2016-09-15 18:59:16'),
	(24795,776638,'TWOYEAR',25,0,'Tester','Test','123 Test St.','Test-WP-upg-DMAG-S25-IE-2016-09-27','Somewhere','CA','90001','US','djohnson@bgea.org','',NULL,'2016-09-27 18:43:18'),
	(24796,776674,'TWOYEAR',25,0,'Tester','Test','123 Test St.','Test-WP-upg-DMAG-S25-IE-2016-10-17','Somewhere','CA','90001','US','djohnson@bgea.org','',NULL,'2016-10-17 14:44:14'),
	(24797,776675,'TWOYEAR',25,1,'gift-first-name','gift-last-name','gift-street-address','gift-street-address-line-2','gift-city','NC','gift-zip','US','danesjohnson@gmail.com','',NULL,'2016-10-17 15:24:36'),
	(24802,776778,'TWOYEAR',25,0,'Steve','Cook','1 Main St','','San Jose','CA','95131','US','itekcorp@gmail.com','',NULL,'2016-10-21 13:27:21'),
	(24803,776782,'MAG15',15,0,'Steve','Cook','1 Main St','','San Jose','CA','95131','US','itekcorp@gmail.com','',NULL,'2016-10-21 16:54:35'),
	(24804,776801,'MAG15',15,0,'Test','Tester','123 Test St.','','Chicago','CA','10045','US','scook@bgea.org','',NULL,'2016-11-18 15:49:35'),
	(24805,776802,'TWOYEAR',25,1,'Abe','Herbert','123','','Sanford','NC','27330','US','eherbert@bgea.org','',NULL,'2016-11-18 15:50:34'),
	(24806,776803,'TWOYEAR',25,0,'Edward ','Herbert','address','','Charlotte','MA','28216','US','abeh78@gmail.com','',NULL,'2016-11-18 15:52:24'),
	(24807,776804,'TWOYEAR',25,0,'Abe','Herbert','123 Fake St','','Charlotte','NC','28216','US','eherbert@bgea.org','',NULL,'2016-11-18 21:32:51'),
	(24808,776805,'INTL2',53,0,'Abe','Herbert','123 Fake St','','Charlotte','','28216','GB','eherbert@bgea.org','',NULL,'2016-11-18 21:33:44'),
	(24809,776806,'INTL2',53,0,'Abe','Herbert','123 Fake St','','Somewhere','NU','123456','DZ','eherbert@bgea.org','',NULL,'2016-11-21 15:16:55'),
	(24810,776857,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'2016-12-05 16:19:33'),
	(24811,776858,'MAG15',10,0,'Steve','Cook','1 Main St','','San Jose','CA','95131','US','itekcorp@gmail.com','',NULL,'2016-12-05 16:29:46'),
	(24816,776860,'MAG15',10,0,'facilitator','account','1 Main St','','San Jose','CA','95131','US','steve-facilitator@equitas.cc','',NULL,'2016-12-06 20:42:23'),
	(24817,776861,'MAG15',10,1,'Rachel','Cramer','1 Main','','Charlotte','NC','28202','US','rachel@cramer.com','',NULL,'2016-12-06 20:47:12'),
	(24818,776874,'MAG15',10,0,'Steve','Cook','1 Main St','','San Jose','CA','95131','US','scook@bgea.org','',NULL,'2016-12-13 17:30:46'),
	(24819,776901,'MAG15',10,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','',NULL,'2016-12-16 16:29:30'),
	(24820,776906,'MAG15',10,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','',NULL,'2016-12-16 21:03:41'),
	(24821,776945,'MAG15',15,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','',NULL,'2016-12-29 19:29:56'),
	(24822,776950,'MAG15',15,0,'Steve','Cook','1 Main St','','San Jose','CA','95131','US','scook@bgea.org','',NULL,'2017-01-03 16:35:26'),
	(24823,776953,'MAG15',15,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','',NULL,'2017-01-03 17:34:55'),
	(24825,776974,'MAG15',15,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','',NULL,'2017-01-06 14:42:11'),
	(24827,776998,'MAG15',15,0,'Test','Tester','300 W 5th St','','Charlotte','NC','28202-1668','US','scook@bgea.org','',NULL,'2017-01-11 14:50:01'),
	(24828,776999,'MAG15',10,0,'Test','Tester','300 W 5th St','','Charlotte','NC','28202-1668','US','scook@bgea.org','',NULL,'2017-01-11 14:52:52'),
	(24829,777018,'MAG15',10,0,'Steve','Cook','1 Main St','','San Jose','CA','95131','US','scook@bgea.org','',NULL,'2017-01-11 19:01:12'),
	(24830,777025,'MAG15',15,0,'Test','Tester','300 W 5th St','','Charlotte','NC','28202-1668','US','scook@bgea.org','',NULL,'2017-01-11 19:46:18'),
	(24833,777031,'MAG15',10,0,'Test','Tester','300 W 5th St','','Charlotte','NC','28202-1668','US','scook@bgea.org','',NULL,'2017-01-11 21:39:34'),
	(24836,777046,'MAG15',10,0,'Tester','Test','4350 Westmont Dr','Test-Promo-No-Gift-Ie-2017-01-12','Charlotte','NC','28217-1001','US','djohnson@bgea.org','',NULL,'2017-01-12 22:57:43'),
	(24837,777047,'MAG15',10,0,'gift first name','gift last name',NULL,NULL,'gift city','NC','29715','US','danesjohnson@gmail.com','',NULL,'2017-01-12 23:27:39'),
	(24838,777048,'MAG15',15,0,'Tester','Test','4350 Westmont Dr','Test-Promo-No-Promo-Ie-2017-01-12','Charlotte','NC','28217-1001','US','djohnson@bgea.org','',NULL,'2017-01-12 23:56:32'),
	(24839,777050,'MAG15',10,0,'Tester','Test Source-asdfdmag','1 Porters Cove Rd','Test-Promo-No-Gift-Ie-2017-01-12','Asheville','NC','28805-2834','US','djohnson@bgea.org','',NULL,'2017-01-13 00:12:28'),
	(24840,777051,'MAG15',10,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','',NULL,'2017-01-13 00:16:40'),
	(24841,777052,'MAG15',15,0,'Gift First','Gift Last',NULL,NULL,'Gift City','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 13:22:44'),
	(24844,777053,'MAG15',10,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','',NULL,'2017-01-13 14:24:39'),
	(24845,777054,'MAG15',15,1,'Gift','Giftee','1323 Test Ave.','','Charlotte','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 15:04:42'),
	(24846,777056,'MAG15',15,0,'Gift First Test-100','Gift Last','300 W. 5th St.','','Gift City','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 15:11:32'),
	(24847,777057,'MAG15',10,0,'Gift First','Gift Last','300 W. 5th St.','','Gift City','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 15:13:26'),
	(24848,777058,'MAG15',10,1,'gift first name','gift last name','gift street address 1','gift street address line 2','gift city','SC','29715','US','danesjohnson@gmail.com','',NULL,'2017-01-13 15:28:32'),
	(24849,777059,'MAG15',10,0,'Gift First','Gift Last','300 W. 5th St.','','Gift City','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 15:29:59'),
	(24850,777060,'MAG15',10,0,'Gift First 101','Gift Last','300 W. 5th St.','','Gift City','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 15:32:19'),
	(24851,777061,'MAG15',10,0,'Tester','Test CC','622 Dewey Ct','Test-Promo-No-Gift-Saf-2017-01-13','Fort Mill','SC','29715-7003','US','danesjohnson@gmail.com','',NULL,'2017-01-13 15:49:36'),
	(24852,777062,'MAG15',10,1,'Gift First','Gift Last','300 W. 5th St.','','Gift City','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 15:58:33'),
	(24853,777063,'MAG15',15,1,'Gift First 201','Gift Last','300 W. 5th St.','','Gift City','NC','28202','US','scook@bgea.org','',NULL,'2017-01-13 16:00:38'),
	(24855,777064,'MAG15',10,0,'Test','Tester','300 W 5th St','','Charlotte','NC','28202-1668','US','scook@bgea.org','','Promo10','2017-01-13 17:08:16'),
	(24856,777083,'MAG15',10,1,'gift first name','gift last name','gift street address','gift street address line 2','gift city','GA','28217','US','danesjohnson@gmail.com','','promo10','2017-01-13 21:16:03'),
	(24857,777086,'MAG15',15,1,'gift first name','gift last name','gift street address','gift street address line 2','gift city','GA','28217','US','danesjohnson@gmail.com','','','2017-01-13 21:22:49'),
	(24858,777087,'MAG15',15,0,'Tester','Test','622 Dewey Ct','Test-Promo-Bad-Promo-Ie-2017-01-13','Fort Mill','SC','29715-7003','US','djohnson@bgea.org','','badpromo','2017-01-13 21:35:09'),
	(24874,777100,'MAG15',10,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','','promo10','2017-01-17 17:32:53'),
	(24875,777103,'MAG15',10,0,'Tester','Test','1 Porters Cove Rd','','Asheville','NC','28805-2834','US','djohnson@bgea.org','','promo10','2017-01-17 18:11:54'),
	(24876,777104,'MAG15',10,0,'Tester','Test','1 Porters Cove Rd','Reg Cc With Bg171subg','Asheville','NC','28805-2834','US','djohnson@bgea.org','','promo10','2017-01-17 18:15:57'),
	(24877,777106,'MAG15',15,0,'Steve','Cook','1 Main St','','San Jose','CA','95131','US','itekcorp@gmail.com','','','2017-01-17 19:09:18'),
	(24878,777107,'MAG15',10,0,'Test','Tester','300 W 5th St','','Charlotte','NC','28202-1668','US','scook@bgea.org','','promo10','2017-01-17 19:10:39'),
	(24879,777110,'MAG15',10,0,'Steve','Cook','1 Main St','Apt 100','San Jose','CA','95131','US','scook@bgea.org','','Promo10','2017-01-17 19:42:00'),
	(24880,777118,'MAG15',10,0,'Steve','Cook','1 Main St','Apt 100','San Jose','CA','95131','US','scook@bgea.org','','promo10','2017-01-17 20:18:00'),
	(24881,777120,'TWOYEAR',25,1,'Gift First','Gift Last','300 W. 5th St.','','Gift City','NC','28202','US','scook@bgea.org','','','2017-01-17 20:35:21'),
	(24882,777132,'MAG15',10,0,'Dane BGEA','Sandbox PayPal acct','good bill city-st-zip 1','good bill city-st-zip 2','FORT MILL','SC','29715','US','djohnson@bgea.org','','pRomo10','2017-01-17 21:34:46'),
	(24883,777133,'MAG15',10,1,'Gift First Name','Gift Last Name','gift street address','gift street address line 2','gift city','GA','29715','US','danesjohnson@gmail.com','','pRomo10','2017-01-17 21:48:26');

/*!40000 ALTER TABLE `bgea_ds_transmit_dmag_subs` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
