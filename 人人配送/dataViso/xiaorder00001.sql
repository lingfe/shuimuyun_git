/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.62-community : Database - smuyundb
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
  `vargoVolume` int(11) DEFAULT NULL COMMENT '货物体积',
  `shoulng` decimal(15,10) DEFAULT NULL COMMENT '收获经度',
  `shoulat` decimal(15,10) DEFAULT NULL COMMENT '收获纬度',
  `falng` decimal(15,10) DEFAULT NULL COMMENT '发货经度',
  `falat` decimal(15,10) DEFAULT NULL COMMENT '发货纬度',
  `distance` decimal(7,2) DEFAULT NULL COMMENT '发货与收获距离'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaordertab` */

insert  into `xiaordertab`(`xiaId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`shouhuoName`,`shouhuoPhone`,`shouhuoAddress`,`shouhuoAddressInfo`,`quhouDate`,`kaikePrioes`,`status`,`okDate`,`shopName`,`Shopzholiang`,`ShopNumer`,`Shopprices`,`shopguige`,`Shopdate`,`kuaikeAddressInfo`,`shopType`,`timeString`,`shopImages`,`payment`,`kuaikeId`,`vehicle`,`vargoVolume`,`shoulng`,`shoulat`,`falng`,`falat`,`distance`) values ('95375a60-90df-4650-b7cd-81f21e4b9bf4','范德萨','13444241344','北京 北京市 海淀区','大师法','13424134514','北京 北京市 海淀区','清华大学',NULL,NULL,'0',NULL,NULL,0,0,0,NULL,'2017-06-30 16:51:43','军事科学院',NULL,NULL,NULL,0,NULL,NULL,NULL,'116.3283168450','40.0026950493','116.2396778010','40.0331620451','8.28'),('fff08f4f-8c7d-49e4-bd8b-15b23f691505','范德萨','13444241342','北京 北京市 东城区','放大','13444241345','北京 北京市 东城区','阿道夫',NULL,NULL,'0',NULL,NULL,0,0,0,NULL,'2017-06-30 16:59:39','对对对',NULL,NULL,NULL,0,NULL,NULL,NULL,'116.4218847013','39.9385740130','116.4218847013','39.9385740130','0.00'),('d980b226-46b5-44de-a820-2a38225b4066','范德萨','13444241345','北京 北京市 东城区','的萨芬','13442431432','北京 北京市 石景山区','暗室逢灯',NULL,NULL,'0',NULL,NULL,0,0,0,NULL,'2017-06-30 17:02:40','撒旦法',NULL,NULL,NULL,0,NULL,NULL,NULL,'116.1845558104','39.9388665446','116.4218847013','39.9385740130','20.26'),('45c6d198-ffe4-4dc5-a153-922753a1f630','地方撒','13442134245','北京 北京市 东城区','地方撒','13442134245','北京 北京市 昌平区','地方撒',NULL,NULL,'0',NULL,NULL,0,0,0,NULL,'2017-06-30 17:04:12','发大水',NULL,NULL,NULL,0,NULL,NULL,NULL,'116.2164563569','40.2217235498','116.4218847013','39.9385740130','36.05'),('57861b66-f0d6-4192-83da-827e6b678775','范德萨','13444241345','北京 北京市 海淀区','大师法','13442134514','北京 北京市 海淀区','清华大学',NULL,NULL,'0',NULL,NULL,0,0,0,NULL,'2017-06-30 17:08:06','北京大学',NULL,NULL,NULL,0,NULL,NULL,NULL,'116.3283168450','40.0026950493','116.3161666359','39.9977529404','1.17'),('1208d0ee-ea48-4b5e-b614-60d41d627e68','大师法','13442341434','北京 北京市 海淀区','撒旦法','13442134253','北京 北京市 海淀区','清华',NULL,NULL,'0',NULL,NULL,0,0,0,NULL,'2017-06-30 17:09:34','北大',NULL,NULL,NULL,0,NULL,NULL,NULL,'116.2396778010','40.0331620451','116.3138309653','39.9932211638','7.73'),('a1427bd6-93c7-4501-9451-8a8692339998','大师法','13444241342','北京 北京市 海淀区','地方撒','13333333333','北京 北京市 海淀区','军事科学院',NULL,NULL,'0',NULL,NULL,0,0,0,NULL,'2017-06-30 17:11:27','北京大学',NULL,NULL,NULL,0,NULL,NULL,NULL,'116.2396778010','40.0331620451','116.3161666359','39.9977529404','7.62');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
