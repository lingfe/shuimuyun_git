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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
