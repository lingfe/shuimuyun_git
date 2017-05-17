/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.35-log : Database - smuyundb
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
  `kuaikeId` varchar(64) NOT NULL COMMENT '快客信息表标识',
  `kuaikeName` varchar(50) NOT NULL COMMENT '快客名称',
  `kuaikePhone` varchar(11) NOT NULL COMMENT '快客电话',
  `kuaikeAddress` varchar(100) NOT NULL COMMENT '居住地址',
  `kuaikeShenfenF` varchar(100) NOT NULL COMMENT '身份证反面',
  `kuaikeShenfenZ` varchar(100) NOT NULL COMMENT '身份证正面',
  `kuaikeShouchiSFZ` varchar(100) NOT NULL COMMENT '手持身份证照片',
  `kuaikeStatus` tinyint(4) NOT NULL COMMENT '状态',
  `kuaikeShengqingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '快客申请时间',
  `password` varchar(100) NOT NULL COMMENT '快客密码',
  `loginDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '登录时间',
  PRIMARY KEY (`kuaikeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kuaiketab` */

/*Table structure for table `qiangordertab` */

DROP TABLE IF EXISTS `qiangordertab`;

CREATE TABLE `qiangordertab` (
  `qiangId` varchar(64) NOT NULL COMMENT '快客抢单标识',
  `xiaId` varchar(64) NOT NULL COMMENT '下单id',
  `kuaikeId` varchar(64) NOT NULL COMMENT '快客id',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `qiangDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '抢单时间',
  PRIMARY KEY (`qiangId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qiangordertab` */

/*Table structure for table `xiaordertab` */

DROP TABLE IF EXISTS `xiaordertab`;

CREATE TABLE `xiaordertab` (
  `xiaId` varchar(64) NOT NULL COMMENT '快客订单标识',
  `kuaikeName` varchar(11) NOT NULL COMMENT '快客名称',
  `kuaikePhone` varchar(100) NOT NULL COMMENT '快客电话',
  `kuaikeAddress` varchar(100) NOT NULL COMMENT '快客地址',
  `‘shouhuoName’` varchar(11) NOT NULL COMMENT '收货人名称',
  `‘shouhuoShone’` varchar(11) NOT NULL COMMENT '收货人电话',
  `‘shouhuoAddress’` varchar(100) NOT NULL COMMENT '收货人地址',
  `‘quhouDate’` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '取货时间',
  `‘kaikePrioes’` decimal(10,0) NOT NULL COMMENT '快递费用',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `okDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '到达时间',
  `shopName` varchar(64) NOT NULL COMMENT '商品名称',
  `Shopzholiang` float NOT NULL COMMENT '商品重量',
  `ShopNumer` int(11) NOT NULL COMMENT '库存',
  `Shopprices` float NOT NULL COMMENT '商品价格',
  `shopguige` int(11) NOT NULL COMMENT '商品规格',
  `Shopdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上架时间',
  PRIMARY KEY (`xiaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaordertab` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
