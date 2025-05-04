-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema child_trust
--

CREATE DATABASE IF NOT EXISTS child_trust;
USE child_trust;

--
-- Definition of table `childdetails`
--

DROP TABLE IF EXISTS `childdetails`;
CREATE TABLE `childdetails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `health` varchar(45) DEFAULT NULL,
  `instructions` varchar(45) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `govapprovalid` varchar(45) DEFAULT NULL,
  `medapprovalid` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `cid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childdetails`
--

/*!40000 ALTER TABLE `childdetails` DISABLE KEYS */;
INSERT INTO `childdetails` (`id`,`name`,`email`,`file`,`phone`,`health`,`instructions`,`amount`,`govapprovalid`,`medapprovalid`,`status`,`cid`) VALUES 
 (4,'ashokl','ashoik@gmail.com','111111.pdf','9852364','immunization','pediatric_healthcare',55,'525','52','settled',NULL),
 (5,'ashokl','ashoik@gmail.com','111111.pdf','9852364','immunization','pediatric_healthcare',500,'56985','98654','settled',NULL),
 (6,'ashokl','ashoik@gmail.com','111111.pdf','9852364','immunization','pediatric_healthcare',500,'56985','98654','settled',NULL),
 (7,'ashokl','ashoik@gmail.com','111111.pdf','9852364','immunization','pediatric_healthcare',500000,'789456','7875657','settled',NULL),
 (8,'ashokl','ashoik@gmail.com','111111.pdf','9852364','immunization','pediatric_healthcare',500000,'789456','7875657','settled',NULL),
 (9,'ashokl','ashoik@gmail.com','111111.pdf','9852364','immunization','pediatric_healthcare',25,'9875','655','settled',NULL),
 (10,'tharun','tharun@gmail.com','111111.pdf','9879656','nutrition','          okay',5000,'98798','654','settled',NULL),
 (11,'tharun','tharun@gmail.com','111111.pdf','9879656','nutrition','          okay',500,'12345','6265','settled',NULL),
 (12,'manoj','manoj@gmail.com','111111.pdf','07338723231','substance_abuse_prevention','          done',20,'989','985','claimrequest',NULL),
 (13,'manoj','manoj@gmail.com','111111.pdf','07338723231','substance_abuse_prevention','          done',20,'989','985','claimrequest',NULL),
 (14,'manoj','manoj@gmail.com','111111.pdf','07338723231','substance_abuse_prevention','          done      ',25,'789','56','claimrequest',NULL),
 (15,'manoj','manoj@gmail.com','111111.pdf','07338723231','substance_abuse_prevention','          done      ',25,'789','56','claimrequest',NULL),
 (16,'manoj','manoj@gmail.com','111111.pdf','789456465','immunization','          done      ',111,'9898','989865','accepted','78956'),
 (17,'gopal','gopal@gmail.com','dummy (1).pdf','07338723231','nutrition','          please approve       ',100000,'96788','8938','settled','89654');
/*!40000 ALTER TABLE `childdetails` ENABLE KEYS */;


--
-- Definition of table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `proof` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `payment` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` (`id`,`name`,`password`,`proof`,`Address`,`email`,`contact`,`status`,`payment`) VALUES 
 (5,'java','1234','Untitled Diagram-Page-10 (2).jpg','chennai','mailjavasend@gmail.com','1234567987','approve',''),
 (6,'hari','1234','evcharging.jpg','chennai 600321','hari@gmail.com','1234567987','rejected',''),
 (7,'thirumoorthy','1230','employeereg.png','nungambakkam','thirumoorthy@gmail.com','9790124578','approve',''),
 (8,'manoj','12345','download1.jpg','no.54 chenggam','manoj@gmail.com','13456','approve',''),
 (9,'ajith','1234','employeereg.png','no.102tvm','ajith@gmail.com','132465465465','approve',''),
 (10,'gopal','123gopal','lectlog.jpg','no.54 gopicjettypalayam','gopi@gmail.com','134569798','approve',''),
 (11,'sree','sree123','Untitled Diagram-Page-2.jpg','no.26 chengam','sree@gmail.com','132456789','rejected',''),
 (12,'alish','1234','carrental11.webp','no.23 chengam','alish!@gmail.com','13456789','approve','-'),
 (13,'sanjay','1234','artist.jpeg','no.154 tiruvannamlai sannathi street ','sanjay@gmail.com','1234567987','approve','-'),
 (14,'vijay','1234','customerhome.jpg','1574 chennai','vijay@gmail.com','9790124578','approve','-'),
 (15,'ajay','1234','groom.webp','1574 chennai vadapalani','ajay@gmail.com','9898596622+62','rejected','-'),
 (16,'krish','1234','pettrol.jpg','chennai','krishan@gmail.com','9898596622+62','approve','-'),
 (17,'kishore','12345','receiveorder.jpg','chennai ashok nagar','kishore@gmail.com','123456789','rejected','-'),
 (18,'sanjay','12345','download1.jpg','1574 chennai','safe@gmail.com','132465465465','approve','-'),
 (19,'kiruba','12345','dummy (1).pdf','1574 chennai','kriuba@gmail.com','13456','approve','-'),
 (20,'saravanan','101','dummy.pdf','1574 chennai DLF','saravanan@gmail.,com','9962614568','approve','-'),
 (21,'karthick','123','dummy.pdf','1574 chennai','karthi@gmail.com','13456','approve','-');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;


--
-- Definition of table `donated_users`
--

DROP TABLE IF EXISTS `donated_users`;
CREATE TABLE `donated_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `encrypt` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donated_users`
--

/*!40000 ALTER TABLE `donated_users` DISABLE KEYS */;
INSERT INTO `donated_users` (`id`,`name`,`email`,`password`,`phone`,`filename`,`encrypt`,`status`) VALUES 
 (1,'spiro','Admin@gmail.com','11','07338723231','dummy (1).pdf','x7Mp7okAWIX8bs0Cv4i4Tg==','request');
/*!40000 ALTER TABLE `donated_users` ENABLE KEYS */;


--
-- Definition of table `donaters`
--

DROP TABLE IF EXISTS `donaters`;
CREATE TABLE `donaters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `Address` varchar(145) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `postalcode` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `amount` int(10) unsigned DEFAULT NULL,
  `govt` varchar(45) DEFAULT NULL,
  `statuz` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donaters`
--

/*!40000 ALTER TABLE `donaters` DISABLE KEYS */;
INSERT INTO `donaters` (`id`,`name`,`company`,`Address`,`city`,`state`,`postalcode`,`country`,`amount`,`govt`,`statuz`,`email`) VALUES 
 (7,'vengadesh','hiretec','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',2000,'Andhra','request','hari@gmail.com'),
 (8,'Kishore','wipro','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',5000,'Tamilnadu','request','Admin@gmail.com'),
 (9,'harish','tcs','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',5000,'Kerala','request','hairsh@gmail.com'),
 (10,'Kishore','tech','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',50000,'Karnataka','request','kishore@gmail.com'),
 (11,'Deepak','cts','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',56565,'Andhra','request','joel@gmail.com'),
 (12,'arjun','Dlf','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',500000,'Tamilnadu','request','arjun@gmail.com'),
 (13,'vikram','Dlf','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',5000,'Tamilnadu','request','vikram@gmail.com'),
 (14,'joespth','Enomz','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',2000,'Tamilnadu','request','josepth@gmail.com'),
 (15,'saran','hiretec','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',4200,'Kerala','request','saran@gmail.com'),
 (16,'elavarasan','wipro','3rd Floor, Upstairs Hotel Murugan Idly, 78, N Usman Rd, T. Nagar, Chennai, Tamil Nadu 600017','tnagar','Tamil Nadu','600017','IN',2000,'Kerala','request','elavarasan@gmail.com');
/*!40000 ALTER TABLE `donaters` ENABLE KEYS */;


--
-- Definition of table `fundform`
--

DROP TABLE IF EXISTS `fundform`;
CREATE TABLE `fundform` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `file` varchar(45) DEFAULT NULL,
  `health` varchar(45) DEFAULT NULL,
  `instructions` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `cid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fundform`
--

/*!40000 ALTER TABLE `fundform` DISABLE KEYS */;
INSERT INTO `fundform` (`id`,`name`,`phone`,`email`,`file`,`health`,`instructions`,`status`,`cid`) VALUES 
 (1,'ashokl','9852364','ashoik@gmail.com','111111.pdf','immunization','pediatric_healthcare','request',NULL),
 (18,'annai velankanni','0442486548','annai@gmail.com','dummy.pdf','pediatric_healthcare','          this all the details','request',NULL),
 (19,'Thanush','07338723231','thanush@gmail.com','ns.pdf','pediatric_healthcare','          all the details i submitted','request',NULL),
 (20,'tharun','9879656','tharun@gmail.com','111111.pdf','nutrition','          okay','request',NULL),
 (21,'manoj','07338723231','manoj@gmail.com','111111.pdf','substance_abuse_prevention','          done','request',NULL),
 (22,'manoj','789456465','manoj@gmail.com','111111.pdf','immunization','          done','settled','78956'),
 (23,'gopal','07338723231','gopal@gmail.com','dummy (1).pdf','nutrition','          please approve ','settled','89654'),
 (24,'elavarasan','9962567986','peri@gmail.com','dummy.pdf','physical_activity','          nothing just open soon as possible','request','98859');
/*!40000 ALTER TABLE `fundform` ENABLE KEYS */;


--
-- Definition of table `totalamount`
--

DROP TABLE IF EXISTS `totalamount`;
CREATE TABLE `totalamount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `totalamounts` int(10) unsigned DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `totalamount`
--

/*!40000 ALTER TABLE `totalamount` DISABLE KEYS */;
INSERT INTO `totalamount` (`id`,`totalamounts`,`status`) VALUES 
 (1,395940,'total');
/*!40000 ALTER TABLE `totalamount` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
