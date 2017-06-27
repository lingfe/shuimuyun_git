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

/*Table structure for table `balancetab` */

DROP TABLE IF EXISTS `balancetab`;

CREATE TABLE `balancetab` (
  `balanceId` varchar(64) NOT NULL COMMENT '账户表标识',
  `kuaikeId` varchar(64) DEFAULT NULL COMMENT '快客id',
  `zhifupwd` varchar(20) DEFAULT NULL COMMENT '支付密码',
  `balance` decimal(8,2) DEFAULT NULL COMMENT '余额',
  `xiaId` varchar(64) DEFAULT NULL COMMENT '下单id',
  `deposit` decimal(8,2) DEFAULT '200.00' COMMENT '押金',
  `status` int(11) DEFAULT NULL COMMENT '快客账户状态(0=未交押金，1=已交押金)',
  `paystatus` int(4) DEFAULT '0' COMMENT '充值支付状态,1支付中,2支付成功',
  PRIMARY KEY (`balanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '行政代码',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `first_letter` varchar(10) NOT NULL DEFAULT '' COMMENT '首字母',
  `level` int(11) NOT NULL COMMENT '城市等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3186 DEFAULT CHARSET=utf8;

/*Table structure for table `commenttab` */

DROP TABLE IF EXISTS `commenttab`;

CREATE TABLE `commenttab` (
  `commentId` varchar(64) NOT NULL COMMENT '评论信息表标识',
  `kuaikeId` varchar(64) NOT NULL COMMENT '快客id',
  `xiaId` varchar(64) NOT NULL COMMENT '下单id',
  `star` int(11) DEFAULT NULL COMMENT '星评',
  `remark` text COMMENT '评论内容',
  `commentDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `kuaiketab` */

DROP TABLE IF EXISTS `kuaiketab`;

CREATE TABLE `kuaiketab` (
  `kuaikeId` varchar(64) NOT NULL COMMENT '快客信息表标识',
  `kuaikeName` varchar(50) NOT NULL COMMENT '快客名称',
  `kuaikePhone` varchar(11) NOT NULL COMMENT '快客电话',
  `kuaikeAddress` varchar(200) DEFAULT NULL COMMENT '居住地址',
  `kuaikeShenfenZF` varchar(200) DEFAULT NULL COMMENT '身份证正反面',
  `kuaikeShouchiSFZ` varchar(200) DEFAULT NULL COMMENT '手持身份证照片',
  `kuaikeStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：（0=审核不通过，1=审核通过，3=在线,4=离线)）',
  `kuaikeShengqingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '快客申请时间',
  `password` varchar(100) NOT NULL COMMENT '快客密码',
  `loginDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '登录时间',
  `kuaikeAddressInfo` varchar(200) DEFAULT NULL COMMENT '快客详细地址',
  PRIMARY KEY (`kuaikeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `order_table` */

DROP TABLE IF EXISTS `order_table`;

CREATE TABLE `order_table` (
  `out_trade_no` varchar(32) NOT NULL COMMENT '商户订单号',
  `total_fee` varchar(16) DEFAULT NULL COMMENT '标价金额',
  `trade_state` varchar(16) DEFAULT NULL COMMENT '交易状态',
  `result_code` varchar(16) DEFAULT NULL COMMENT '业务结果',
  `trade_type` varchar(8) DEFAULT NULL COMMENT '交易类型',
  `cash_fee` varchar(16) DEFAULT NULL COMMENT '现金支付金额',
  `time_start` varchar(32) DEFAULT NULL COMMENT '交易起始时间',
  `time_expire` varchar(32) DEFAULT NULL COMMENT '交易结束时间',
  `urlCode` varchar(32) DEFAULT NULL COMMENT '二维码链接',
  `time_end` varchar(32) DEFAULT NULL COMMENT '支付完成时间',
  `trade_state_desc` varchar(8) DEFAULT NULL COMMENT '订单状态',
  `body` varchar(64) DEFAULT NULL COMMENT '商品描述',
  `sign` varchar(32) DEFAULT NULL COMMENT '签名',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机字符串',
  `spbill_create_ip` varchar(16) DEFAULT NULL COMMENT '终端IP',
  `err_code` varchar(8) DEFAULT NULL COMMENT '错误代码',
  `err_code_des` varchar(32) DEFAULT NULL COMMENT '错误代码描述',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '微信订单号',
  `bank_type` varchar(16) DEFAULT NULL COMMENT '银行类型',
  `product_id` varchar(32) DEFAULT NULL COMMENT '商品ID',
  `return_msg` varchar(32) DEFAULT NULL COMMENT '返回信息',
  `return_code` varchar(8) DEFAULT NULL COMMENT '返回状态码',
  `openid` varchar(32) DEFAULT NULL COMMENT '用户标识,可不传,trade_type=JSAPI时(即公众号支付),此参数必传',
  `settlement_total_fee` varchar(16) DEFAULT NULL COMMENT '应结订单金额',
  `goods_tag` varchar(16) DEFAULT NULL COMMENT '订单优惠标记',
  `attach` varchar(16) DEFAULT NULL COMMENT '附加数据',
  `is_subscribe` varchar(2) DEFAULT NULL COMMENT '是否关注公众账号',
  `xiaId` varchar(64) NOT NULL COMMENT '下单id',
  `payresult` varchar(2) NOT NULL DEFAULT '0' COMMENT '支付结果,1支付成功,0未支付',
  `order_no` varchar(24) DEFAULT NULL COMMENT '订单号,成功支付页面关联',
  `shopName` varchar(64) DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`out_trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `purview_info` */

DROP TABLE IF EXISTS `purview_info`;

CREATE TABLE `purview_info` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `actionPath` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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

/*Table structure for table `user_purview_info` */

DROP TABLE IF EXISTS `user_purview_info`;

CREATE TABLE `user_purview_info` (
  `upid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `purview_ids` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`upid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `upwd` varchar(40) DEFAULT NULL,
  `uremark` varchar(500) DEFAULT NULL,
  `uphone` varchar(11) NOT NULL,
  `loginDate` timestamp NULL DEFAULT NULL,
  `uStatus` int(4) DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
