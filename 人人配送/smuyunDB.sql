/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.40 : Database - smuyundb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`smuyundb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `smuyundb`;

/*Table structure for table `kuaiketab` */

DROP TABLE IF EXISTS `kuaiketab`;

CREATE TABLE `kuaiketab` (
  `kuaikeId` varchar(64) NOT NULL,
  `kuaikeName` varchar(50) NOT NULL,
  `kuaikePhone` varchar(11) NOT NULL,
  `kuaikeAddress` varchar(100) NOT NULL,
  `kuaikeShenfenF` varchar(100) NOT NULL,
  `kuaikeShenfenZ` varchar(100) NOT NULL,
  `kuaikeShouchiSFZ` varchar(100) NOT NULL,
  `kuaikeStatus` int(4) NOT NULL,
  `kuaikeShengqingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`kuaikeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `kuaiketab` */

/*Table structure for table `logintab` */

DROP TABLE IF EXISTS `logintab`;

CREATE TABLE `logintab` (
  `loginId` varchar(64) NOT NULL,
  `kuaikeId` int(10) NOT NULL,
  `kuaikeName` varchar(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `loginDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`loginId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `logintab` */

/*Table structure for table `qiangordertab` */

DROP TABLE IF EXISTS `qiangordertab`;

CREATE TABLE `qiangordertab` (
  `qiangId` varchar(64) NOT NULL,
  `xiaId` varchar(64) NOT NULL,
  `kuaikeId` varchar(64) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `qiangDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`qiangId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `qiangordertab` */

/*Table structure for table `xiaordertab` */

DROP TABLE IF EXISTS `xiaordertab`;

CREATE TABLE `xiaordertab` (
  `xiaId` varchar(64) NOT NULL,
  `shopId` varchar(64) NOT NULL,
  `kuaikeId` varchar(64) NOT NULL,
  `kuaikeName` varchar(11) NOT NULL,
  `kuaikePhone` varchar(100) NOT NULL,
  `kuaikeAddress` varchar(100) NOT NULL,
  `‘shouhuoName’` varchar(11) NOT NULL,
  `‘shouhuoShone’` varchar(11) NOT NULL,
  `‘shouhuoAddress’` varchar(100) NOT NULL,
  `‘quhouDate’` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `‘kaikePrioes’` decimal(10,0) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `okDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`xiaId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `xiaordertab` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
