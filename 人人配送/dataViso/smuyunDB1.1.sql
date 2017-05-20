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
  `kuaikeShenfenZF` varchar(100) DEFAULT NULL COMMENT '身份证正反面',
  `kuaikeShouchiSFZ` varchar(100) DEFAULT NULL COMMENT '手持身份证照片',
  `kuaikeStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：（0=审核不通过，1=审核通过，3=在线,4=离线)）',
  `kuaikeShengqingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '快客申请时间',
  `password` varchar(100) NOT NULL COMMENT '快客密码',
  `loginDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '登录时间',
  PRIMARY KEY (`kuaikeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `kuaiketab` */

insert  into `kuaiketab`(`kuaikeId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`kuaikeShenfenZF`,`kuaikeShouchiSFZ`,`kuaikeStatus`,`kuaikeShengqingDate`,`password`,`loginDate`) values ('123456789','lijie','13068326391','贵阳市南明区花果园','./../','./../',0,'2017-05-17 17:58:02','123456','2017-05-17 17:58:10'),('81b62c41-7fa1-493f-a03c-d2cfb7897a71','大王','110','重庆市沙坪坝','/Smy_PC/upload/投资.docx','/Smy_PC/upload/图片4.png',0,'2017-05-19 00:00:00','123456','2017-05-19 10:25:29'),('86be70c6-c2fa-4553-9299-9f641d01ab3b','小王','120','重庆市沙坪坝','/Smy_PC/upload/投资.docx','/Smy_PC/upload/图片4.png',0,'2017-05-19 00:00:00','123456','2017-05-19 10:27:20'),('b91eac61-1b14-4cbd-9f24-5892ef6ad6ef','可可','119','重庆市沙坪坝','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片4.png',0,'2017-05-25 00:00:00','123456','2017-05-19 10:27:58'),('ba1648c7-c85e-42d6-9c79-697a3647d91e','大王','110','北京市朝阳区','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片4.png',0,'2017-05-27 00:00:00','abcdefg','2017-05-19 15:48:30');

/*Table structure for table `qiangordertab` */

DROP TABLE IF EXISTS `qiangordertab`;

CREATE TABLE `qiangordertab` (
  `qiangId` varchar(64) NOT NULL COMMENT '快客抢单标识',
  `xiaId` varchar(64) NOT NULL COMMENT '下单id',
  `kuaikeId` varchar(64) NOT NULL COMMENT '快客id',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态:(0=抢单成功，1=抢单失败，2=等待取货，3=等待配送（点击确认配送），4=已经到达（修改下单状态2，确认到达），5=派单成功)',
  `qiangDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '抢单时间',
  PRIMARY KEY (`qiangId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qiangordertab` */

insert  into `qiangordertab`(`qiangId`,`xiaId`,`kuaikeId`,`status`,`qiangDate`) values ('qd123','2220001','123456789',0,'2017-05-17 18:07:22');

/*Table structure for table `xiaordertab` */

DROP TABLE IF EXISTS `xiaordertab`;

CREATE TABLE `xiaordertab` (
  `xiaId` varchar(200) NOT NULL COMMENT '快客订单标识',
  `kuaikeName` varchar(100) NOT NULL COMMENT '快客名称',
  `kuaikePhone` varchar(100) NOT NULL COMMENT '快客电话',
  `kuaikeAddress` varchar(100) NOT NULL COMMENT '快客地址',
  `shouhuoName` varchar(11) NOT NULL COMMENT '收货人名称',
  `shouhuoPhone` varchar(11) NOT NULL COMMENT '收货人电话',
  `shouhuoAddress` varchar(100) NOT NULL COMMENT '收货人地址',
  `shouhuoAddressInfo` varchar(100) DEFAULT NULL COMMENT '收货人地址详情',
  `quhouDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '取货时间',
  `kaikePrioes` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '快递费用',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)',
  `okDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '到达时间',
  `shopName` varchar(64) NOT NULL COMMENT '商品名称',
  `Shopzholiang` float NOT NULL COMMENT '商品重量',
  `ShopNumer` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `Shopprices` float NOT NULL COMMENT '商品价格',
  `shopguige` varchar(100) DEFAULT NULL COMMENT '商品规格',
  `Shopdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上架时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiaordertab` */

insert  into `xiaordertab`(`xiaId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`shouhuoName`,`shouhuoPhone`,`shouhuoAddress`,`shouhuoAddressInfo`,`quhouDate`,`kaikePrioes`,`status`,`okDate`,`shopName`,`Shopzholiang`,`ShopNumer`,`Shopprices`,`shopguige`,`Shopdate`) values ('007d141e-fbdd-466d-95c9-970e8c8df858','lisi','15124103214','重庆市沙坪坝','keke','13023442872','贵阳市南明区',NULL,'2017-05-20 00:00:00','7',0,'2017-05-25 00:00:00','aaaa',2,0,88,'sdfsdf','2017-05-18 00:00:00'),('2220001','lijie','13068326391','贵阳市南明区花果园','张三','13124328859','贵阳市南明区火车站',NULL,'2017-05-17 20:00:18','12',0,'2017-05-18 18:00:55','香蕉',12,99,21,'0','2017-05-17 18:03:24'),('055de7c9-c41f-400b-92d5-6879fd1903a4','lisi','15124103214','重庆市沙坪坝','keke','13023442872','贵阳市南明区',NULL,'2017-05-20 00:00:00','7',0,'2017-05-25 00:00:00','aaaa',2,0,88,'sdfsdf','2017-05-18 00:00:00'),('197db994-da3d-47cc-bc08-7f3419d69f3c','wanger','15124103214','重庆市沙坪坝','gg','13023442872','贵阳市南明区',NULL,'2017-05-18 00:00:00','7',0,'2017-05-18 00:00:00','aaaa',3,0,88,'sdfsdf','2017-05-18 00:00:00'),('46c1b5f8-4071-4815-84a8-a905f9b90976','wanger','15124103214','重庆市沙坪坝','gg','13023442872','贵阳市南明区',NULL,'2017-05-18 00:00:00','7',0,'2017-05-18 00:00:00','aaaa',3,0,88,'sdfsdf','2017-05-18 00:00:00'),('5e0154e1-1156-4b54-a9f0-050746f396e7','小小','15124103214','重庆市沙坪坝','ee','13023442872','贵阳市南明区',NULL,'2017-05-18 00:00:00','7',0,'2017-05-19 00:00:00','aaaa',2,0,88,'sdfsdf','2017-05-18 00:00:00'),('24bd3c8d-4296-4913-8b29-156e2d4ddf87','小王','119','北京市朝阳区','金葵花','13023442872','贵阳市南明区',NULL,'2017-05-19 16:16:06','7',2,'2017-05-19 00:00:00','bbb',3,0,88,'sdfsdf','2017-05-19 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
