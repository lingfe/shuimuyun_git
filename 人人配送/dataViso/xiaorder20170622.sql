/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.28 : Database - smuyundb
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

/*Table structure for table `xiaordertab` */

DROP TABLE IF EXISTS `xiaordertab`;

CREATE TABLE `xiaordertab` (
  `xiaId` varchar(200) NOT NULL COMMENT '快客订单标识',
  `kuaikeName` varchar(100) DEFAULT NULL COMMENT '快客名称',
  `kuaikePhone` varchar(100) DEFAULT NULL COMMENT '快客电话',
  `kuaikeAddress` varchar(100) DEFAULT NULL COMMENT '快客地址',
  `shouhuoName` varchar(11) DEFAULT NULL COMMENT '收货人名称',
  `shouhuoPhone` varchar(11) DEFAULT NULL COMMENT '收货人电话',
  `shouhuoAddress` varchar(100) DEFAULT NULL COMMENT '收货人地址',
  `shouhuoAddressInfo` varchar(100) DEFAULT NULL COMMENT '收货人地址详情',
  `quhouDate` varchar(100) DEFAULT 'CURRENT_TIMESTAMP' COMMENT '最晚取货时间',
  `kaikePrioes` decimal(10,0) DEFAULT '0' COMMENT '快递费用',
  `status` varchar(100) NOT NULL DEFAULT '0' COMMENT '状态：(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)',
  `okDate` varchar(100) DEFAULT '0000-00-00 00:00:00' COMMENT '最迟到达时间',
  `shopName` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `Shopzholiang` float DEFAULT NULL COMMENT '商品重量',
  `ShopNumer` int(11) DEFAULT '0' COMMENT '库存',
  `Shopprices` float DEFAULT NULL COMMENT '商品价格',
  `shopguige` varchar(100) DEFAULT NULL COMMENT '商品规格',
  `Shopdate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上架时间',
  `kuaikeAddressInfo` varchar(200) DEFAULT NULL COMMENT '快客详细地址',
  `shopType` varchar(100) DEFAULT '0' COMMENT '货物类型',
  `timeString` varchar(10) DEFAULT '0' COMMENT '最快取货时间',
  `shopImages` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `payment` int(11) NOT NULL DEFAULT '0' COMMENT '是否付款',
  `kuaikeId` varchar(200) DEFAULT NULL COMMENT '快客id',
  `vehicle` varchar(200) DEFAULT NULL COMMENT '交通工具',
  `vargoVolume` int(11) DEFAULT NULL COMMENT '货物体积'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
