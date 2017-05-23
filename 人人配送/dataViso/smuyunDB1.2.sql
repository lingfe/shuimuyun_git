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
  `kuaikeId` VARCHAR(64) NOT NULL COMMENT '快客信息表标识',
  `kuaikeName` VARCHAR(50) NOT NULL COMMENT '快客名称',
  `kuaikePhone` VARCHAR(11) NOT NULL COMMENT '快客电话',
  `kuaikeAddress` VARCHAR(100) NOT NULL COMMENT '居住地址',
  `kuaikeShenfenZF` VARCHAR(100) DEFAULT NULL COMMENT '身份证正反面',
  `kuaikeShouchiSFZ` VARCHAR(100) DEFAULT NULL COMMENT '手持身份证照片',
  `kuaikeStatus` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '状态：（0=审核不通过，1=审核通过，3=在线,4=离线)）',
  `kuaikeShengqingDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '快客申请时间',
  `password` VARCHAR(100) NOT NULL COMMENT '快客密码',
  `loginDate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '登录时间',
  `kuaikeAddressInfo` VARCHAR(10) NOT NULL COMMENT '快客详细地址',
  PRIMARY KEY (`kuaikeId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `kuaiketab` */

INSERT  INTO `kuaiketab`(`kuaikeId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`kuaikeShenfenZF`,`kuaikeShouchiSFZ`,`kuaikeStatus`,`kuaikeShengqingDate`,`password`,`loginDate`,`kuaikeAddressInfo`) VALUES ('123456789','lijie','13068326391','贵阳市南明区花果园','./../','./../',0,'2017-05-17 17:58:02','123456','2017-05-17 17:58:10',''),('369c4d26-aea9-48be-bddb-413f359fcec1','大王','15124103214','贵州省,贵阳市,盘县','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片4.png',0,'2017-05-20 18:47:30','123456','2017-05-20 18:47:28',''),('60a342fb-17eb-4a3b-b3e8-e7571411b07b','李逵','12345678909','贵州省,贵阳市,盘县,头桥二桥路','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片2.png',0,'2017-05-23 09:36:23','4297f44b13955235245b2497399d7a93','2017-05-23 09:36:23','123'),('81b62c41-7fa1-493f-a03c-d2cfb7897a71','大王','110','重庆市沙坪坝','/Smy_PC/upload/投资.docx','/Smy_PC/upload/图片4.png',0,'2017-05-19 00:00:00','123456','2017-05-19 10:25:29',''),('86be70c6-c2fa-4553-9299-9f641d01ab3b','小王','120','重庆市沙坪坝','/Smy_PC/upload/投资.docx','/Smy_PC/upload/图片4.png',0,'2017-05-19 00:00:00','123456','2017-05-19 10:27:20',''),('b91eac61-1b14-4cbd-9f24-5892ef6ad6ef','可可','119','重庆市沙坪坝','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片4.png',0,'2017-05-25 00:00:00','123456','2017-05-19 10:27:58',''),('ba1648c7-c85e-42d6-9c79-697a3647d91e','大王','110','北京市朝阳区','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片4.png',0,'2017-05-27 00:00:00','abcdefg','2017-05-19 15:48:30',''),('d4fbb3c8-6436-4ac5-8bf0-590201270141','拉卡拉','13098787322','贵州省,贵阳市,盘县,头桥二桥路','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片3.png',0,'2017-05-22 16:13:15','123321','2017-05-22 16:13:12',''),('e3b788cb-3df2-4c06-b089-c4c3ac2487c4','看看','13023432343','江苏省,贵阳市,盘县,头桥二桥路','/Smy_PC/upload/图片2.png','/Smy_PC/upload/图片4.png',0,'2017-05-23 09:46:15','4297f44b13955235245b2497399d7a93','2017-05-23 09:46:15','哈哈哈'),('eca6457a-33cb-4e4d-9c93-bc40ac194f86','','','贵州省,贵阳市,盘县,头桥二桥路','/Smy_PC/upload/','/Smy_PC/upload/',0,'2017-05-23 10:06:22','d41d8cd98f00b204e9800998ecf8427e','2017-05-23 10:06:22','');

/*Table structure for table `qiangordertab` */

DROP TABLE IF EXISTS `qiangordertab`;

CREATE TABLE `qiangordertab` (
  `qiangId` VARCHAR(64) NOT NULL COMMENT '快客抢单标识',
  `xiaId` VARCHAR(64) NOT NULL COMMENT '下单id',
  `kuaikeId` VARCHAR(64) NOT NULL COMMENT '快客id',
  `status` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '状态:(0=抢单成功，1=抢单失败，2=等待取货，3=等待配送（点击确认配送），4=已经到达（修改下单状态2，确认到达），5=派单成功)',
  `qiangDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '抢单时间',
  PRIMARY KEY (`qiangId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `qiangordertab` */

INSERT  INTO `qiangordertab`(`qiangId`,`xiaId`,`kuaikeId`,`status`,`qiangDate`) VALUES ('qd123','2220001','123456789',0,'2017-05-17 18:07:22');

/*Table structure for table `xiaordertab` */

DROP TABLE IF EXISTS `xiaordertab`;

CREATE TABLE `xiaordertab` (
  `xiaId` VARCHAR(200) NOT NULL COMMENT '快客订单标识',
  `kuaikeName` VARCHAR(100) NOT NULL COMMENT '快客名称',
  `kuaikePhone` VARCHAR(100) NOT NULL COMMENT '快客电话',
  `kuaikeAddress` VARCHAR(100) NOT NULL COMMENT '快客地址',
  `shouhuoName` VARCHAR(11) NOT NULL COMMENT '收货人名称',
  `shouhuoPhone` VARCHAR(11) NOT NULL COMMENT '收货人电话',
  `shouhuoAddress` VARCHAR(100) NOT NULL COMMENT '收货人地址',
  `shouhuoAddressInfo` VARCHAR(100) DEFAULT NULL COMMENT '收货人地址详情',
  `quhouDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '取货时间',
  `kaikePrioes` DECIMAL(10,0) NOT NULL DEFAULT '0' COMMENT '快递费用',
  `status` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '状态：(0=未接单,1={配送中，已接单}，2=已到达（点击确认到达，修改抢单状态）)',
  `okDate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '到达时间',
  `shopName` VARCHAR(64) NOT NULL COMMENT '商品名称',
  `Shopzholiang` FLOAT NOT NULL COMMENT '商品重量',
  `ShopNumer` INT(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `Shopprices` FLOAT NOT NULL COMMENT '商品价格',
  `shopguige` VARCHAR(100) DEFAULT NULL COMMENT '商品规格',
  `Shopdate` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上架时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `xiaordertab` */

INSERT  INTO `xiaordertab`(`xiaId`,`kuaikeName`,`kuaikePhone`,`kuaikeAddress`,`shouhuoName`,`shouhuoPhone`,`shouhuoAddress`,`shouhuoAddressInfo`,`quhouDate`,`kaikePrioes`,`status`,`okDate`,`shopName`,`Shopzholiang`,`ShopNumer`,`Shopprices`,`shopguige`,`Shopdate`) VALUES ('007d141e-fbdd-466d-95c9-970e8c8df858','lisi','15124103214','重庆市沙坪坝','keke','13023442872','贵阳市南明区',NULL,'2017-05-20 00:00:00','7',0,'2017-05-25 00:00:00','aaaa',2,0,88,'sdfsdf','2017-05-18 00:00:00'),('2220001','lijie','13068326391','贵阳市南明区花果园','张三','13124328859','贵阳市南明区火车站',NULL,'2017-05-17 20:00:18','12',0,'2017-05-18 18:00:55','香蕉',12,99,21,'0','2017-05-17 18:03:24'),('055de7c9-c41f-400b-92d5-6879fd1903a4','lisi','15124103214','重庆市沙坪坝','keke','13023442872','贵阳市南明区',NULL,'2017-05-20 00:00:00','7',0,'2017-05-25 00:00:00','aaaa',2,0,88,'sdfsdf','2017-05-18 00:00:00'),('197db994-da3d-47cc-bc08-7f3419d69f3c','wanger','15124103214','重庆市沙坪坝','gg','13023442872','贵阳市南明区',NULL,'2017-05-18 00:00:00','7',0,'2017-05-18 00:00:00','aaaa',3,0,88,'sdfsdf','2017-05-18 00:00:00'),('46c1b5f8-4071-4815-84a8-a905f9b90976','wanger','15124103214','重庆市沙坪坝','gg','13023442872','贵阳市南明区',NULL,'2017-05-18 00:00:00','7',0,'2017-05-18 00:00:00','aaaa',3,0,88,'sdfsdf','2017-05-18 00:00:00'),('5e0154e1-1156-4b54-a9f0-050746f396e7','小小','15124103214','重庆市沙坪坝','ee','13023442872','贵阳市南明区',NULL,'2017-05-18 00:00:00','7',0,'2017-05-19 00:00:00','aaaa',2,0,88,'sdfsdf','2017-05-18 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
