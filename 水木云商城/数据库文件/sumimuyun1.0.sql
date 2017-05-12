/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.40 : Database - suimuyun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`suimuyun` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `suimuyun`;

/*Table structure for table `a-a-a-a-a-a` */

DROP TABLE IF EXISTS `a-a-a-a-a-a`;

CREATE TABLE `a-a-a-a-a-a` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `money` float NOT NULL DEFAULT '0' COMMENT '金额',
  `method` tinyint(4) NOT NULL DEFAULT '0' COMMENT '账单类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `with_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `a-a-a-a-a-a` */

insert  into `a-a-a-a-a-a`(`id`,`money`,`method`,`status`,`with_at`) values (1,1,1,0,'2017-01-16 01:20:23'),(2,1,1,0,'2017-01-16 01:26:08'),(3,1,1,0,'2017-01-16 01:26:09'),(4,1,1,0,'2017-01-16 01:26:11'),(5,1,1,0,'2017-01-16 01:26:15'),(6,1,1,0,'2017-01-16 01:26:38'),(7,1,1,0,'2017-01-16 01:27:19'),(8,1,1,0,'2017-01-16 01:32:14'),(9,1,1,0,'2017-01-16 01:32:29'),(10,1,1,0,'2017-01-16 01:41:02'),(11,1,1,0,'2017-01-16 01:47:53'),(12,1,1,0,'2017-01-24 04:59:24'),(13,1,1,0,'2017-01-24 05:13:30'),(14,1,1,0,'2017-01-24 05:19:28'),(15,0.01,1,0,'2017-01-24 05:33:02'),(16,6,1,0,'2017-03-08 11:25:20'),(17,1,1,0,'2017-03-11 03:25:51'),(18,1,1,0,'2017-03-11 03:51:42'),(19,1,1,0,'2017-03-23 02:15:33'),(20,1,1,0,'2017-03-23 02:15:43'),(21,1,1,0,'2017-03-23 02:15:43'),(22,0.01,1,0,'2017-03-23 02:30:17'),(23,0.01,1,0,'2017-03-23 02:30:26'),(24,0.01,1,0,'2017-03-23 04:36:44'),(25,0.01,1,0,'2017-03-23 04:36:54'),(26,3,1,0,'2017-03-29 11:09:44'),(27,5,1,0,'2017-03-29 11:39:17'),(28,0.1,1,0,'2017-03-30 11:04:25'),(29,0.01,1,0,'2017-03-30 11:05:26'),(30,0.1,1,0,'2017-04-24 03:07:14'),(31,7,1,0,'2017-04-26 08:02:17');

/*Table structure for table `a-d-config` */

DROP TABLE IF EXISTS `a-d-config`;

CREATE TABLE `a-d-config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(64) NOT NULL COMMENT '项目关键字',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '项目名称',
  `content` text COMMENT '项目值',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '项目值的类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `a-d-config` */

insert  into `a-d-config`(`id`,`keyword`,`name`,`content`,`type`) values (1,'home_NewCommodityShowCount','首页最新商品推荐显示数量','20',1),(2,'home_NewCommodityShowTimeoutM','首页最新商品预留时长分钟数','10',1);

/*Table structure for table `a-d-info` */

DROP TABLE IF EXISTS `a-d-info`;

CREATE TABLE `a-d-info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(64) NOT NULL COMMENT '项目关键字',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '项目名称',
  `content` text COMMENT '项目值',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '项目值的类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `a-d-info` */

insert  into `a-d-info`(`id`,`keyword`,`name`,`content`,`type`) values (1,'home_NewCommodityJSON','首页最新商品数据','',3);

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '地址所属会员',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '地址标题',
  `address` varchar(255) DEFAULT NULL COMMENT '地址值',
  `pos_lng` double DEFAULT NULL COMMENT '经度坐标',
  `pos_lat` double DEFAULT NULL COMMENT '纬度坐标',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认地址 0表示默认， 非0表示默认',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`id`,`user_id`,`title`,`address`,`pos_lng`,`pos_lat`,`is_default`) values (3,2,'123456','北京市,北京市,通州区',116.7432,39.666621,1),(5,17,'6号','贵州省,贵阳市,南明区,花果园大街',106.695114,26.572832,1),(6,21,'456','北京市,北京市,大兴区,三太路',116.460482,39.759985,1),(7,26,'我单位群多群','贵州省,贵阳市,乌当区,黔灵山路',106.682178,26.621677,1),(8,8,'64','贵州省,贵阳市,云岩区 头桥',106.781064,26.529655,0),(9,8,'63','贵州省,贵阳市,云岩区 ',106.781064,26.529655,0),(10,8,'34','北京市,北京市,丰台区,北京南站路',116.385962,39.870935,0),(11,8,'35','北京市,北京市,西城区,右安门内西街,甲10号院',116.364906,39.876915,0),(12,8,'56','北京市,北京市,丰台区,右安路',116.358582,39.841246,0),(13,8,'78','北京市,北京市,丰台区,南四环西路,96号',116.324662,39.835263,0),(14,8,'745','北京市,北京市,朝阳区,百子湾路,a1号',116.485638,39.906145,0),(15,8,'566','北京市,北京市,西城区,南纬路,2号院-5号楼',116.40285,39.885774,0),(16,1,'zzzzzzzzzz','北京市,北京市,西城区,东北园胡同,75号',116.392916,39.902851,1),(17,1,'ergrg','北京市,北京市,朝阳区,水碓东路,2号',116.479889,39.932707,0),(18,28,'64号','北京市,北京市,丰台区,文体路,甲3号院-3号楼',116.290167,39.863624,1),(19,29,'花溪大道北段龙城大厦4楼','贵州省,贵阳市,南明区,花溪大道,560号',106.695258,26.562621,1),(20,31,'北京市,北京市,大兴区,旧宫西路,2号','北京市,北京市,大兴区,旧宫西路,2号',116.438495,39.811323,1);

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '会员名称',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '会员密码',
  `safe_email` varchar(128) NOT NULL DEFAULT '' COMMENT '安全邮箱',
  `nick` varchar(40) DEFAULT NULL COMMENT '昵称',
  `register_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `last_login_ip` varchar(40) DEFAULT NULL COMMENT '最后一次登录IP',
  `disable_timeout_at` timestamp NULL DEFAULT NULL COMMENT '禁用结束时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当前状态 (USER_STATUS 中的任意一种状态)',
  `auth_token` varchar(32) DEFAULT NULL,
  `auth_access` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  UNIQUE KEY `nick` (`nick`) USING BTREE,
  UNIQUE KEY `auth_token` (`auth_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`password`,`safe_email`,`nick`,`register_at`,`last_login_at`,`last_login_ip`,`disable_timeout_at`,`status`,`auth_token`,`auth_access`) values (1,'xiaoqing','c1ba5b0617b45ae63c2024b32361abb4','suimuyun@qq.com','小青','2016-12-30 13:32:35','2017-05-03 11:21:25','220.172.55.176',NULL,1,'nqYLuXdDsm1A1HyJkZO7jabc9vIANtHS',0),(2,'admins','2aefc34200a294a3cc7db81b43a81873','xiaofang_wu@sina.com','小芳','2017-01-13 17:55:11',NULL,NULL,'2017-02-13 03:36:35',2,NULL,1),(3,'xingjie','42a87e336f0cbff11b70a08bffc0dbed','xingjie_wu@sina.com','兴洁','2017-01-13 17:56:08',NULL,NULL,NULL,0,NULL,3),(4,'wenping','7742e6686cfe4b43927ac72d4d28de7e','1839505499@qq.com','闻平','2017-03-19 11:14:47','2017-05-11 11:35:59','::1',NULL,0,'2HS4QF4MYAVrTzCt1mUqNOelhFQmsUWj',1);

/*Table structure for table `alipay` */

DROP TABLE IF EXISTS `alipay`;

CREATE TABLE `alipay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alipaydirect_partner` varchar(255) NOT NULL,
  `alipaydirect_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `alipay` */

insert  into `alipay`(`id`,`alipaydirect_partner`,`alipaydirect_key`) values (1,'2088521511928626','ntmbz8lxam4stcbkrz0lvrjjm9glmyt0');

/*Table structure for table `alipay-order` */

DROP TABLE IF EXISTS `alipay-order`;

CREATE TABLE `alipay-order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `marks` longtext COMMENT '订单留言',
  `is_success` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

/*Data for the table `alipay-order` */

insert  into `alipay-order`(`id`,`order_no`,`user_id`,`address_id`,`marks`,`is_success`) values (1,'201701161158066gy2EK',1,2,'',0),(2,'20170116120110M4jFtu',1,2,'',0),(3,'201701161210504jqHfd',1,2,'',0),(4,'20170116123047FupJwV',1,2,'',0),(5,'20170116130713By1Gd8',1,2,'',0),(6,'20170116131039RRG1E5',1,2,'',0),(7,'20170116133552mtY1Lg',1,2,'',0),(8,'20170116134038cbS7bJ',1,2,'',0),(9,'201701161347350ybFSt',1,2,'',0),(10,'2017011710480772CW4O',17,5,'',0),(11,'20170117104827e1Gwzf',17,5,'',0),(12,'20170118173030Co9rm9',17,5,'',0),(13,'20170122084610WhBAXl',8,4,'',0),(14,'20170124165900NqtKy7',17,5,'',0),(15,'20170124171259TAWXMT',1,2,'',0),(16,'20170124171905eeEWJD',1,2,'',0),(17,'20170124172832H8JvHv',1,2,'',0),(18,'20170124173238PqKeJr',1,2,'',0),(19,'20170131114130QieoTa',8,4,'',0),(20,'20170204131125Nr66gt',8,4,'',0),(21,'20170204131139MmmMES',8,4,'',0),(22,'20170207135545r60kfk',8,4,'',0),(23,'201702071356211jyr0T',8,4,'',0),(24,'20170207135650osuB3H',8,4,'',0),(25,'20170207140726aVHjQ5',8,4,'',0),(26,'20170207140822dEakt7',8,4,'',0),(27,'20170207162133y0rpS7',8,4,'',0),(28,'20170208014416YdzfsG',8,4,'',0),(29,'20170208133647dkXt9A',17,5,'',0),(30,'20170222203237kCUluD',8,4,'',0),(31,'20170306152324vxenih',8,4,'',0),(32,'20170306152926meLYig',8,4,'',0),(33,'20170308112452kJnSDg',8,4,'',0),(34,'20170311151746hT5qeT',1,2,'',0),(35,'20170311152533qPOMrM',8,4,'',0),(36,'20170311154745sxT4VZ',8,4,'',0),(37,'20170311155105lRNNSx',8,4,'',0),(38,'20170316103929tCbUrY',1,2,'',0),(39,'20170316104214vs9zEz',1,2,'',0),(40,'20170320101109HvMmKP',1,2,'',0),(41,'201703201011177NhdNf',1,2,'',0),(42,'2017032314183697b4BU',1,2,'',0),(43,'20170323141931AbwB0c',1,2,'',0),(44,'20170323141936hGoYnA',1,2,'',0),(45,'20170323141939Ntczz4',1,2,'',0),(46,'20170323141945hjRUK1',1,2,'',0),(47,'20170323152049gbiEE6',26,7,'',0),(48,'20170323172634pxxqqF',1,2,'',0),(49,'20170323172642CIuIvf',1,2,'',0),(50,'20170323172646iaDkue',1,2,'',0),(51,'20170323174912kxMX8F',1,2,'',0),(52,'20170323175203LUnj65',1,2,'',0),(53,'20170323175344afQhlp',1,2,'',0),(54,'20170323175442LX9SKd',1,2,'',0),(55,'20170323175705SltUlf',1,2,'',0),(56,'20170323175743ubLBSH',1,2,'',0),(57,'20170323175938HLjkLg',1,2,'',0),(58,'201703231850294ICaul',1,2,'',0),(59,'20170323185042RXWx1A',1,2,'',0),(60,'201703291055490OH5db',8,4,'',0),(61,'20170329110914FKzC2O',8,4,'',0),(62,'20170329113456bF10hN',8,4,'',0),(63,'20170417205816dkwEOU',8,8,'',0),(64,'20170424161938feMsJB',1,16,'',0),(65,'20170424161946KyLUVF',1,16,'',0),(66,'20170425142643emu6XL',28,18,'',0),(67,'20170425142709Zof9PT',28,18,'',0),(68,'201704260801512qrtq5',8,8,'',0),(69,'20170428092736JkaOHM',29,19,'',0),(70,'20170502132410FV9CRr',8,8,'',0),(71,'20170502133626g90qU3',8,8,'',0),(72,'20170502134406HkbzLs',31,20,'',0);

/*Table structure for table `base-info` */

DROP TABLE IF EXISTS `base-info`;

CREATE TABLE `base-info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(64) NOT NULL COMMENT '项目关键字',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '项目名称',
  `content` text COMMENT '项目值',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '项目值的类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `base-info` */

insert  into `base-info`(`id`,`keyword`,`name`,`content`,`type`) values (1,'mallName','商城名称','水木云',0),(2,'csTel','商城客服电话','400 800 600',0),(3,'csEMail','商城客服邮箱','wenping@smuyun.com',0),(4,'mallLogo','商城标志','assets/frontend/layout/img/logos/logo-shop-red.png',4),(5,'mallKeywords','商城关键词组','水木云,水木云商城',3),(6,'mallDescription','商城简要说明','水木云实体社区服务商城',3),(7,'mallUserRegProtocolContent','会员注册协议内容','<p>本协议是您与水木云（简称“本站”）所有者（以下简称为“水木云”）之间就水木云网站服务等相关事宜所订立的契约，，请您仔细阅读本注册协议，您点击“同意以下协议，提交”按钮后，本协议即构成对双方有约束力的法律文件。</p>\r\n    <h4>第1条 服务条款</h4>\r\n    <p>1.1 本站的各项电子服务的所有权和运作权归水木云所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。</p>\r\n    <p>1.2 用户点击同意本协议的，即视为用户确认自己具有享受本站服务的权利能力和行为能力，能够独立承担法律责任。</p>\r\n    <p>1.3 如果您在18周岁以下，您只能在父母或监护人的监护参与下才能使用本站。</p>\r\n    <p>1.4 水木云保留在中华人民共和国大陆地区法施行之法律允许的范围内独自决定拒绝服务、关闭用户账户、清除或编辑内容的权利。</p>\r\n    <h4>第2条 服务内容</h4>\r\n    <p>2.1 水木云网络服务的具体内容由水木云根据实际情况提供，例如博客、相册、部落、分类信息等。</p>\r\n    <p>2.2 水木云仅提供相关的网络服务，除此之外与相关网络服务有关的设备(如个人电脑、手机、及其他与接入互联网或移动网有关的装置)及所需的费用(如为接入互联网而支付的电话费及上网费、为使用移动网而支付的手机费)均应由用户自行负担。</p>\r\n    <h4>第3条 用户信息</h4>\r\n    <p>3.1 用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且水木云保留终止用户使用水木云各项服务的权利。</p>\r\n    <p>3.2 用户注册成功后，将产生用户名和密码等账户信息，您可以根据本站规定改变您的密码。用户应谨慎合理的保存、使用其用户名和密码。用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通知本站并向公安机关报案。</p>\r\n    <p>3.3 用户同意，水木云拥有通过邮件、短信电话等形式，向本站注册用户发送各种合法信息的权利。</p>\r\n    <p>3.4 用户不得将在本站注册获得的账户借给他人使用，否则用户应承担由此产生的全部责任，并与实际使用人承担连带责任。</p>\r\n    <p>3.5 用户同意，水木云有权使用用户的注册信息、用户名、密码等信息，登陆进入用户的注册账户，进行证据保全，包括但限于公证、见证等。</p>\r\n    <h4>第4条 用户义务</h4>\r\n    <p>4.1 本协议依据国家相关法律法规规章制定，用户同意严格遵守以下义务：<br/>\r\n    » 不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论；<br/>\r\n    » 从中国大陆向境外传输资料信息时必须符合中国有关法规；<br/>\r\n    » 不得利用本站从事洗钱、窃取商业秘密、窃取个人信息等违法犯罪活动；<br/>\r\n    » 不得干扰本站的正常运转，不得侵入本站及国家计算机信息系统；<br/>\r\n    » 不得传输或发表任何违法犯罪的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽的、不文明的等信息资料；<br/>\r\n    » 不得传输或发表损害国家社会公共利益和涉及国家安全的信息资料或言论；<br/>\r\n    » 不得教唆他人从事本条所禁止的行为；<br/>\r\n    » 不得利用在本站注册的账户进行牟利性经营活动；<br/>\r\n    » 不得发布任何侵犯他人著作权、商标权等知识产权或合法权利的内容；</p>\r\n    <p>4.2 用户应不时关注并遵守本站不时公布或修改的各类合法规则规定。</p>\r\n    <p>4.3 本站保有删除站内各类不符合法律政策或不真实的信息内容而无须通知用户的权利。</p>\r\n    <p>4.4 若用户未遵守以上规定的，本站有权作出独立判断并采取暂停或关闭用户帐号等措施。用户须对自己在网上的言论和行为承担法律责任。</p>\r\n    <h4>第5条 使用规则</h4>\r\n    <p>5.1 用户在申请使用水木云网络服务时，必须向水木云提供准确的个人资料，如个人资料有任何变动，必须及时更新。</p>\r\n    <p>5.2 用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用，应立即通知水木云。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，水木云不承担任何责任。</p>\r\n    <p>5.3 用户同意水木云有权在提供网络服务过程中以各种方式投放各种商业性广告或其他任何类型的商业信息（包括但不限于在本站的任何页面上投放广告），并且，用户同意接受水木云通过电子邮件或其他方式向用户发送商品促销或其他相关商业信息。</p>\r\n    <p>5.4 对于用户通过水木云网络服务上传到水木云网站上可公开获取区域的任何内容，用户同意水木云在全世界范围内具有免费的、永久性的、不可撤销的、非独家的和完全再许可的权利和许可，以使用、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示此等内容（整体或部分），和/或将此等内容编入当前已知的或以后开发的其他任何形式的作品、媒体或技术中。</p>\r\n    <p>5.5 水木云有权对用户使用水木云网络服务【该网络服务包括但不限于收费及免费网络服务（其中包括基于广告模式的免费网络服务）】的情况进行审查和监督(包括但不限于对用户存储在水木云的内容进行审核)，如用户在使用网络服务时违反任何上述规定，水木云或其授权的人有权要求用户改正或直接采取一切必要的措施（包括但不限于更改或删除用户张贴的内容等、暂停或终止用户使用网络服务的权利）以减轻用户不当行为造成的影响。</p>\r\n    <p>5.6 水木云针对某些特定的水木云网络服务的使用通过各种方式（包括但不限于网页公告、电子邮件、短信提醒等）作出的任何声明、通知、警示等内容视为本协议的一部分，用户如使用该等水木云网络服务，视为用户同意该等声明、通知、警示的内容。</p>\r\n    <h4>第6条 隐私保护</h4>\r\n    <p>6.1 水木云不对外公开或向第三方提供单个用户的注册资料及用户在使用网络服务时存储在水木云的非公开内容，但下列情况除外：<br/>\r\n    » 事先获得用户的明确授权；<br/>\r\n    » 根据有关的法律法规要求；<br/>\r\n    » 按照相关政府主管部门的要求；<br/>\r\n    » 为维护社会公众的利益；</p>\r\n    <p>6.2 水木云可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与水木云同等的保护用户隐私的责任，则水木云有权将用户的注册资料等提供给该第三方。</p>\r\n    <p>6.3 在不透露单个用户隐私资料的前提下，水木云有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。</p>\r\n    <h4>第7条 知识产权</h4>\r\n    <p>7.1 用户一旦接受本协议，即表明该用户主动将其在任何时间段在本站发表的任何形式的信息内容（包括但不限于用户评价、用户咨询、各类话题文章等信息内容）的财产性权利等任何可转让的权利，如著作权财产权（包括并不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利），全部独家且不可撤销地转让给水木云所有，用户同意水木云有权就任何主体侵权而单独提起诉讼。</p>\r\n    <p>7.2 本协议已经构成《中华人民共和国著作权法》第二十五条（条文序号依照2011年版著作权法确定）及相关法律规定的著作财产权等权利转让书面协议，其效力及于用户在水木云网站上发布的任何受著作权法保护的作品内容，无论该等内容形成于本协议订立前还是本协议订立后。</p>\r\n    <p>7.3 用户同意并已充分了解本协议的条款，承诺不将已发表于本站的信息，以任何形式发布或授权其它主体以任何方式使用（包括但限于在各类网站、媒体上使用）。</p>\r\n    <p>7.4 水木云是本站的制作者,拥有此网站内容及资源的著作权等合法权利,受国家法律保护,有权不时地对本协议及本站的内容进行修改，并在本站张贴，无须另行通知用户。在法律允许的最大限度范围内，水木云对本协议及本站内容拥有解释权。</p>\r\n    <p>7.5 除法律另有强制性规定外，未经水木云明确的特别书面许可,任何单位或个人不得以任何方式非法地全部或部分复制、转载、引用、链接、抓取或以其他方式使用本站的信息内容，否则，水木云有权追究其法律责任。</p>\r\n    <p>7.6 本站所刊登的资料信息（诸如文字、图表、标识、按钮图标、图像、声音文件片段、数字下载、数据编辑和软件），均是水木云或其内容提供者的财产，受中国和国际版权法的保护。本站上所有内容的汇编是水木云的排他财产，受中国和国际版权法的保护。本站上所有软件都是水木云或其关联公司或其软件供应商的财产，受中国和国际版权法的保护。</p>\r\n    <h4>第8条 版权声明</h4>\r\n    <p>8.1 用户发表并将其上传到本网站的任何内容，水木云在全世界范围内不限形式和载体地享有永久的、不可撤销的、免费的、非独家的使用权和转授权的权利，包括但不限于修改、复制、发行、展览、改编、汇编、出版、翻译、信息网络传播、广播、表演和再创作及著作权法等法律法规确定的其他权利。</p>\r\n    <p>8.2 水木云特有的标识、版面设计、编排方式等版权均属水木云享有，未经水木云许可，不得任意复制或转载。</p>\r\n    <p>8.3 用户从水木云的服务中获得的信息，未经水木云许可，不得任意复制或转载。</p>\r\n    <p>8.4 使用水木云的任何内容均应注明\"来源于水木云(www.水木云.com)\"及署上作者姓名，按法律规定需要支付稿酬的，应当通知水木云及作者及支付稿酬，并独立承担一切法律责任。</p>\r\n    <p>8.5 水木云享有所有作品用于其它用途的使用权和优先权，包括但不限于网站、电子杂志、平面出版等，作者在水木云发布内容时视为同意本条款。\r\n    <p>8.6 水木云所有内容仅代表作者自己的立场和观点，与水木云无关，由作者本人承担一切法律责任。</p>\r\n    <p>8.7 恶意转载水木云内容的，水木云保留将其诉诸法律的权利。</p>\r\n    <h4>第9条 免责声明</h4>\r\n    <p>9.1 用户明确同意其使用水木云网络服务所存在的风险将完全由其自己承担；因其使用水木云网络服务而产生的一切后果也由其自己承担，水木云对用户不承担任何责任。</p>\r\n    <p>9.2 水木云不担保网络服务一定能满足用户的要求，也不担保网络服务不会中断，对网络服务的及时性、安全性、准确性也都不作担保。</p>\r\n    <p>9.3 水木云不保证为向用户提供便利而设置的外部链接的准确性和完整性，同时，对于该等外部链接指向的不由水木云实际控制的任何网页上的内容，水木云不承担任何责任。</p>\r\n    <p>9.4 对于因不可抗力或水木云不能控制的原因造成的网络服务中断或其它缺陷，水木云不承担任何责任，但将尽力减少因此而给用户造成的损失和影响。\r\n    <p>9.5 用户同意，对于水木云向用户提供的下列产品或者服务的质量缺陷本身及其引发的任何损失，水木云无需承担任何责任：<br/>\r\n    » 水木云向收费网络服务用户附赠的各种产品或者服务；<br/>\r\n    » 水木云向用户免费提供的各项网络服务；<br/>\r\n    » 水木云向用户赠送的任何产品或者服务；</p>\r\n    <h4>第10条 协议更新及用户关注义务</h4>\r\n    <p>10.1 本协议的订立、执行和解释及争议的解决均应适用在中华人民共和国大陆地区适用之有效法律（但不包括其冲突法规则）。</p> 如发生本协议与适用之法律相抵触时，则这些条款将完全按法律规定重新解释，而其它有效条款继续有效。 如缔约方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向有管辖权的中华人民共和国大陆地区法院提起诉讼。</p>\r\n    <h4>第11条 其他</h4>\r\n    <p>11.1 水木云网站所有者是指在政府部门依法许可或备案的水木云网站经营主体。</p>\r\n    <p>11.2 水木云尊重用户和消费者的合法权利，本协议及本网站上发布的各类规则、声明等其他内容，均是为了更好的、更加便利的为用户和消费者提供服务。本站欢迎用户和社会各界提出意见和建议，水木云将虚心接受并适时修改本协议及本站上的各类规则。</p>\r\n    <p>11.3 只要您在本站上完成注册即视为您完全接受本协议，在注册之前请您再次确认已知悉并完全理解本协议的全部内容。</p>',3);

/*Table structure for table `carousel` */

DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_path` varchar(255) NOT NULL DEFAULT '' COMMENT '图片路径',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '轮播标题',
  `contents` longtext COMMENT '内容',
  `contents_tow` longtext COMMENT '订单金额',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `carousel` */

insert  into `carousel`(`id`,`photo_path`,`title`,`contents`,`contents_tow`,`time`) values (24,'/../../CarouselPhotos/2017MarFri170th58d4e06798343.jpg','56',NULL,NULL,'2017-03-24 16:55:54'),(25,'/../../CarouselPhotos/2017_03_24_16_56_20_b9tudB.jpg','54',NULL,NULL,'2017-03-24 16:56:20'),(26,'/../../CarouselPhotos/2017_03_24_16_56_32_6WW9kh.jpg','787',NULL,NULL,'2017-03-24 16:56:32'),(27,'/../../CarouselPhotos/2017_03_24_16_56_46_GMeSWM.jpg','5444',NULL,NULL,'2017-03-24 16:56:46');

/*Table structure for table `collection` */

DROP TABLE IF EXISTS `collection`;

CREATE TABLE `collection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏所属会员id',
  `shop_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏所属店铺id',
  `com_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏所属商品id',
  `collection_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '收藏时间',
  `is_com` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否是商品收藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

/*Data for the table `collection` */

insert  into `collection`(`id`,`user_id`,`shop_id`,`com_id`,`collection_at`,`is_com`) values (31,1,0,18,'2017-03-23 04:58:43',0),(32,31,0,18,'2017-05-02 01:45:45',0),(33,8,0,17,'2017-05-10 10:00:09',0),(34,8,0,61,'2017-05-10 10:00:16',0),(35,8,0,62,'2017-05-10 10:00:18',0),(36,8,0,18,'2017-05-10 10:00:19',0),(37,8,0,16,'2017-05-10 10:00:21',0),(38,8,0,16,'2017-05-10 10:00:22',0),(39,8,0,52,'2017-05-11 11:43:53',0),(40,8,0,40,'2017-05-11 11:44:12',0),(41,8,0,30,'2017-05-11 11:44:19',0);

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `com_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '会员名称',
  `contents` longtext COMMENT '评论内容',
  `com_level` int(11) NOT NULL DEFAULT '0' COMMENT '评级',
  `comments_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`id`,`user_id`,`com_id`,`user_name`,`contents`,`com_level`,`comments_at`) values (1,1,21,'小青','看你不容易，给你五星赞吧',4,'2017-05-10 12:14:00'),(2,1,21,'小青','商品很不错哦',3,'2017-01-03 10:00:01'),(3,1,21,'匿名','物流很快',5,'2017-01-03 10:00:02'),(4,1,21,'匿名','这个水果太甜了',1,'2017-05-10 12:13:28'),(5,2,17,'匿名','我还是喜欢这个水果吃起香甜',4,'2017-05-10 12:14:24');

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commodity_class_id` int(10) unsigned NOT NULL COMMENT '类别所属的商品类别id',
  `shop_id` int(10) unsigned NOT NULL COMMENT '类别所属的网店id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名称',
  `retail_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '零售价格',
  `retail_unit` varchar(10) NOT NULL DEFAULT '' COMMENT '零售计量单位',
  `count_from_retail_unit` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '零售计量单位对应的商品数量',
  `job_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '批发价格',
  `job_unit` varchar(10) NOT NULL DEFAULT '' COMMENT '批发计量单位',
  `count_from_job_unit` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '批发计量单位对应的商品数量',
  `detailed` longtext COMMENT '商品详情说明（富文本格式）',
  `spec` longtext COMMENT '商品规格说明（富文本格式）',
  `store_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '商品的库存数量',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '商品上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品的状态 COMMODITY_STATUS 中的任意一种状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `commodity` */

insert  into `commodity`(`id`,`commodity_class_id`,`shop_id`,`name`,`retail_price`,`retail_unit`,`count_from_retail_unit`,`job_price`,`job_unit`,`count_from_job_unit`,`detailed`,`spec`,`store_count`,`create_at`,`status`) values (17,1,3,'泰国进口新鲜水果 金枕头榴莲批发4-5斤包邮 团购微商一件代发222',17,'斤',1,3,'',1,NULL,NULL,1,'2017-05-11 12:00:52',1),(28,1,1,'西瓜 黑美人 广西水果 新鲜水果 包邮5斤 非西瓜种子4.8-6斤/个',12,'斤',1,6,'斤',1,'在这里输入商品详细说明','在这里输入商品规格说明',200,'2017-05-10 12:15:59',1),(29,1,1,'烟台大樱桃车厘子新鲜水果山东美早樱桃2斤现货现摘现发顺丰包邮',23,'斤',1,12,'件',1,'在这里输入商品详细说明','在这里输入商品规格说明',199,'2017-05-10 12:15:35',1),(30,2,1,'源润祥 大连 美早大樱桃 26- 30mm 1000g 樱桃水果 红色 现摘现发 顺丰免邮 2斤装',18,'斤',1,15,'件',1,'在这里输入商品详细说明','在这里输入商品规格说明',197,'2017-05-10 12:16:03',1),(38,2,3,'真的有料 甄选水果橙子 秭归伦晚脐橙 夏橙5斤装',14,'斤',1,65,'箱',1,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-05-10 11:17:25',1),(40,1,3,'聚享优果 烟台美早国产车厘子 1kg 约26-28mm 樱桃水果 冰袋保鲜2斤装 顺丰空',65,'斤',1,65,'斤',2,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-05-10 11:12:52',1),(42,2,3,'广西百香果现摘新鲜西番莲鸡蛋果',8,'斤',6,7,'斤',50,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 01:21:17',1),(43,2,3,'陕西蒲城酥梨梨子水果非砀山酥梨贡梨鸭梨早酥梨',25,'盒',1,23,'盒',5,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 01:27:48',1),(44,1,3,'正宗江山徐香猕猴桃 绿心大果 新鲜水果 奇异果弥猴桃  一箱5斤装',7,'斤',2,33,'箱',1,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 01:42:21',1),(45,2,3,'芒果 核小 皮薄 新鲜 大玉芒 热带水果批发一件代发 包邮',4,'斤',1,27,'斤',5,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 01:51:10',1),(46,2,3,'海南一级水果新鲜木瓜 海南红心木瓜 青皮木瓜10斤装 批发',55,'箱',1,52,'箱',100,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 02:02:03',1),(47,1,3,'进口墨西哥新鲜水果牛油果 牛奶果酪梨果6个装包邮',78,'件',1,69,'件',2,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 02:10:34',1),(48,1,3,'新鲜进口水果批发40斤装 美国进口新奇士柠檬 南非黄柠檬包邮批发',540,'箱',1,530,'箱',5,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 02:21:46',1),(49,2,3,'四川蒲江树李新鲜水果包邮5斤批发一件代发',39,'盒',1,35,'盒',100,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 02:30:16',1),(50,2,3,'四川蒲江不知火丑柑丑橘子丑八怪新鲜水果包邮5斤批发一件代发',39,'盒',1,35,'盒',5,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 02:34:27',1),(51,1,1,'泰国进口新鲜水果 金枕头榴莲批发4-5斤包邮 团购微商一件代发',12,'斤',1,8,'斤',1,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-05-10 12:16:22',1),(52,2,1,'海南木瓜 新鲜水果青皮万寿瓜 红心牛奶木瓜超甜5斤包邮 批发',5,'斤',1,35,'箱',1,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 02:53:40',1),(53,1,1,' 海南三亚新鲜水果海南青金桔青金橘子小柠檬果园直销一件代发包邮',6,'斤',1,4,'斤',3,'在这里输入商品详细说明','在这里输入商品规格说明',1000,'2017-03-14 03:02:55',1),(59,1,4,'海南一级水果新鲜木瓜 海南红心木瓜 青皮木瓜10斤装 批发',10,'个',1,8,'个',1,'在这里输入商品详细说明','在这里输入商品规格说明',200,'2017-05-10 18:09:22',0),(61,1,3,'七果果 丑柑不知火 5斤 单重4-6两 丑柑 丑八怪 橘子 桔子 新鲜水果SG',4,'斤',43,2,'斤',122,'在这里输入商品详细说明','在这里输入商品规格说明',11,'2017-05-10 12:16:56',1),(62,1,3,'四川成都龙泉大五星枇杷新鲜/约5斤礼盒/非云南米易枇杷/顺丰包邮',23,'斤',43,21,'斤',122,'在这里输入商品详细说明','在这里输入商品规格说明',11,'2017-05-10 12:17:05',1);

/*Table structure for table `commodity-class` */

DROP TABLE IF EXISTS `commodity-class`;

CREATE TABLE `commodity-class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `industry_category_id` int(10) unsigned NOT NULL COMMENT '类别所属的行业id',
  `parent_id` int(10) unsigned NOT NULL COMMENT '类别所属的父级行业id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '类别名称',
  `is_parent` tinyint(4) NOT NULL COMMENT '是否是其他类别的父级 0 表示非父级, 1表示父级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `commodity-class` */

insert  into `commodity-class`(`id`,`industry_category_id`,`parent_id`,`name`,`is_parent`) values (1,1,1,'国产水果',0),(2,1,1,'进口水果',0),(3,1,1,'时令水果',0),(4,1,1,'叶菜类',1),(5,1,1,'茎菜类',0),(6,1,4,'贵州',0),(7,1,1,'浆果类',0);

/*Table structure for table `commodity-photo` */

DROP TABLE IF EXISTS `commodity-photo`;

CREATE TABLE `commodity-photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commodity_id` int(10) unsigned NOT NULL COMMENT '图片所属的商品id',
  `photo_path` varchar(255) NOT NULL DEFAULT '' COMMENT '图片路径',
  `is_parent` tinyint(4) NOT NULL COMMENT '是否是产品的图片 0 表示产品图片, 非零表示产品说明图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Data for the table `commodity-photo` */

insert  into `commodity-photo`(`id`,`commodity_id`,`photo_path`,`is_parent`) values (6,21,'public/uploads/2016-12-24-10-17-46-585ddaca8f122.jpg',0),(7,22,'public/uploads/2016-12-24-10-20-24-585ddb68ee062.jpg',0),(8,23,'public/uploads/2016-12-24-18-01-31-585e477bbc848.jpg',0),(9,24,'public/uploads/2016-12-27-11-32-55-5861e0e75c4b0.jpg',0),(10,25,'public/uploads/2016-12-28-11-31-52-586332288d96f.jpg',0),(11,26,'public/uploads/2016-12-28-11-31-52-586332288d96f.jpg',0),(12,26,'public/uploads/2016-12-28-11-31-52-586332288d96f.jpg',0),(13,26,'public/uploads/2016-12-28-11-31-52-586332288d96f.jpg',0),(14,27,'public/uploads/2017-01-02-17-45-10-586a2126c62c0.jpg',0),(15,28,'public/uploads/2017-01-02-17-54-59-586a2373194d3.jpg',0),(16,29,'/../../Frontend/public/uploads/2017_01_03_09_53_08_Wg6mAa.jpg',0),(17,30,'/../../Frontend/public/uploads/2017_01_03_09_53_08_Wg6mAa.jpg',0),(18,31,'/../../Frontend/public/uploads/2017_01_13_18_29_48_Vq0QmR.jpg',0),(19,32,'/../../Frontend/public/uploads/2017_01_13_18_34_43_sNeuhk.jpg',0),(20,33,'/../../Frontend/public/uploads/2017_01_13_18_36_07_mU8fdY.jpg',0),(21,35,'/../../Frontend/public/uploads/2017_01_16_11_07_24_go0sWb.jpg',0),(22,36,'/../../Frontend/public/uploads/2017_01_25_16_30_43_RGcvMo.jpg',0),(24,38,'/../../Frontend/public/uploads/2017_03_14_14_53_40_sP7ytY.jpg',0),(25,40,'/../../Frontend/public/uploads/2017_03_14_12_19_01_9045Sk.jpg',0),(26,41,'/../../Frontend/public/uploads/2017_03_14_13_06_35_iIe7Nn.jpg',0),(27,41,'/../../Frontend/public/uploads/2017_03_14_13_06_35_Ga7brR.jpg',0),(28,41,'/../../Frontend/public/uploads/2017_03_14_13_06_35_DnZMSQ.jpg',0),(29,41,'/../../Frontend/public/uploads/2017_03_14_13_06_35_MuFcnB.jpg',0),(30,42,'/../../Frontend/public/uploads/2017_03_14_13_21_17_Rq1Trx.jpg',0),(31,42,'/../../Frontend/public/uploads/2017_03_14_13_21_17_FiMGil.jpg',0),(32,43,'/../../Frontend/public/uploads/2017_03_14_13_27_48_MURWHz.jpg',0),(33,44,'/../../Frontend/public/uploads/2017_03_14_13_42_21_n6hl8g.jpg',0),(34,45,'/../../Frontend/public/uploads/2017_03_14_13_51_10_jOWNoq.jpg',0),(35,46,'/../../Frontend/public/uploads/2017_03_14_14_02_03_z3ajiy.jpg',0),(36,47,'/../../Frontend/public/uploads/2017_03_14_14_10_34_sBJBhN.jpg',0),(37,47,'/../../Frontend/public/uploads/2017_03_14_14_10_34_sN1dir.jpg',0),(38,48,'/../../Frontend/public/uploads/2017_03_14_14_21_46_XtsCSJ.jpg',0),(39,50,'/../../Frontend/public/uploads/2017_03_14_14_34_27_R5H0V0.jpg',0),(40,51,'/../../Frontend/public/uploads/2017_03_14_14_43_38_0Jaa1e.jpg',0),(41,52,'/../../Frontend/public/uploads/2017_03_14_14_53_40_sP7ytY.jpg',0),(42,52,'/../../Frontend/public/uploads/2017_03_14_14_53_40_5S6Xxd.jpg',0),(43,53,'/../../Frontend/public/uploads/2017_03_14_15_02_55_jwfoAB.jpg',0),(44,54,'/../../Frontend/public/uploads/2017_03_14_17_57_20_37JKRW.jpg',0),(45,54,'/../../Frontend/public/uploads/2017_03_14_17_57_20_hLFdf5.jpg',0),(46,54,'/../../Frontend/public/uploads/2017_03_14_18_06_09_4ZXkSi.jpg',0),(47,54,'/../../Frontend/public/uploads/2017_03_14_18_06_09_wmZoHj.jpg',0),(48,55,'/../../Frontend/public/uploads/2017_03_20_10_46_18_tEkver.jpg',0),(49,57,'/../../Frontend/public/uploads/2017_03_20_10_54_36_TimJCV.jpg',0),(50,59,'/../../Frontend/public/uploads/2017_03_14_14_02_03_z3ajiy.jpg',0),(51,60,'/../../Frontend/public/uploads/2017_03_23_18_52_57_4jpGQ4.jpg',0),(52,61,'/../../Frontend/public/uploads/2017_05_09_17_08_34_bdYiLO.jpg',0),(53,62,'/../../Frontend/public/uploads/2017_05_09_17_16_47_wHzgMZ.jpg',0),(54,49,'/../../Frontend/public/uploads/2017_05_09_17_17_33_SlHmv0.jpg',0),(55,17,'/../../Frontend/public/uploads/2017_03_14_13_06_35_Ga7brR.jpg',0);

/*Table structure for table `distribution` */

DROP TABLE IF EXISTS `distribution`;

CREATE TABLE `distribution` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送所属订单ID',
  `commodify_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送的商品ID',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送的数量',
  `target_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送的地址ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `distribution` */

/*Table structure for table `distribution-log` */

DROP TABLE IF EXISTS `distribution-log`;

CREATE TABLE `distribution-log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distribution_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '日志所属配送ID',
  `event_at` timestamp NULL DEFAULT NULL COMMENT '事件发生时间',
  `event_title` varchar(100) NOT NULL DEFAULT '' COMMENT '事件标题',
  `event_description` varchar(255) NOT NULL DEFAULT '' COMMENT '事件详细说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `distribution-log` */

/*Table structure for table `f-x-config` */

DROP TABLE IF EXISTS `f-x-config`;

CREATE TABLE `f-x-config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ti_cheng` float NOT NULL DEFAULT '0' COMMENT '提成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `f-x-config` */

insert  into `f-x-config`(`id`,`ti_cheng`) values (1,0.0003);

/*Table structure for table `hot-seach` */

DROP TABLE IF EXISTS `hot-seach`;

CREATE TABLE `hot-seach` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commodity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐商品id',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '推荐时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `hot-seach` */

insert  into `hot-seach`(`id`,`commodity_id`,`time`) values (5,52,'2017-05-09 05:42:40'),(6,51,'2017-05-09 05:42:48'),(7,46,'2017-05-09 05:43:02'),(8,43,'2017-05-09 05:43:57'),(9,42,'2017-05-10 04:30:32'),(10,45,'2017-05-10 04:30:56'),(11,50,'2017-05-10 04:31:05');

/*Table structure for table `industry-category` */

DROP TABLE IF EXISTS `industry-category`;

CREATE TABLE `industry-category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '类型名称',
  `description` varchar(255) DEFAULT NULL COMMENT '类型说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `industry-category` */

insert  into `industry-category`(`id`,`name`,`description`) values (1,'水果','国产'),(2,'蔬菜','szdfcdsfvdfv'),(3,'特产','scdsczsd'),(4,'肉类','DEFCEfvcasdv'),(5,'肉类产品','生态养殖类产品');

/*Table structure for table `latest-goods` */

DROP TABLE IF EXISTS `latest-goods`;

CREATE TABLE `latest-goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commodity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐商品id',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '推荐时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `latest-goods` */

insert  into `latest-goods`(`id`,`commodity_id`,`time`) values (1,16,'2017-03-20 11:57:46'),(2,18,'2017-03-20 11:57:52'),(3,17,'2017-03-29 10:57:06'),(4,61,'2017-05-09 05:18:55'),(5,62,'2017-05-09 05:39:22'),(6,48,'2017-05-09 05:40:18'),(7,52,'2017-05-10 10:51:38'),(8,40,'2017-05-10 10:51:52'),(9,30,'2017-05-10 10:52:02');

/*Table structure for table `mobile-attach-s-m-s` */

DROP TABLE IF EXISTS `mobile-attach-s-m-s`;

CREATE TABLE `mobile-attach-s-m-s` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属的用户ID',
  `mobile_no` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `sms_verify_code` varchar(6) DEFAULT NULL COMMENT '短信验证码',
  `sms_timeout_at` timestamp NULL DEFAULT NULL COMMENT '验证码超时时间(验证码在这个时间范围内可用)',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 (MOBILEATTACH_TYPE 中的任意一种状态)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  UNIQUE KEY `mobile_no` (`mobile_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `mobile-attach-s-m-s` */

insert  into `mobile-attach-s-m-s`(`id`,`user_id`,`mobile_no`,`sms_verify_code`,`sms_timeout_at`,`type`) values (1,19,'15761673396','285902','2017-02-14 15:18:10',0),(15,26,'15286286024','619062','2017-03-23 13:59:40',0),(16,29,'13208516119','261307','2017-05-03 09:15:54',0);

/*Table structure for table `opinion` */

DROP TABLE IF EXISTS `opinion`;

CREATE TABLE `opinion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `contact` varchar(128) NOT NULL DEFAULT '' COMMENT '联系方式',
  `contents` longtext COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `opinion` */

insert  into `opinion`(`id`,`user_name`,`contact`,`contents`,`status`,`create_at`) values (1,'花花','1654894','我要好好多的芒果都没有',1,'2017-01-12 17:44:05');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) NOT NULL DEFAULT '0' COMMENT '订单编号',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单所属会员id',
  `com_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单所属商品id',
  `com_name` varchar(60) NOT NULL DEFAULT '' COMMENT '商品名称',
  `com_money` float NOT NULL DEFAULT '0' COMMENT '商品价格',
  `money` float NOT NULL DEFAULT '0' COMMENT '订单金额',
  `yun_fee` int(11) NOT NULL DEFAULT '0' COMMENT '订单运费',
  `shoping_count` int(100) NOT NULL DEFAULT '0' COMMENT '购物数量',
  `is_pay` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否完成支付 0 表示未支付, 非 0 表示已经支付',
  `order_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`order_no`,`user_id`,`com_id`,`com_name`,`com_money`,`money`,`yun_fee`,`shoping_count`,`is_pay`,`order_at`) values (2,'20170110104803',2,17,'千里香阿达西',80,95,15,1,0,'2017-01-10 10:48:03'),(47,'2051132',20,30,'shuhe3435366',150,300,0,2,0,'2017-02-15 10:26:18'),(66,'2173205',21,16,'热带雨林',150,760,10,5,0,'2017-03-10 02:42:35'),(67,'2185830',21,30,'shuhe3435366',150,610,10,4,0,'2017-03-10 02:42:35'),(68,'2139724',21,16,'热带雨林',150,760,10,5,0,'2017-03-11 01:18:09'),(80,'2134030',21,16,'热带雨林',1,11,10,1,0,'2017-03-11 03:34:35'),(105,'2662954',26,21,'千里香阿达西',1,4,3,1,0,'2017-03-23 03:30:40'),(115,'2662869',26,16,'热带雨林',3,6,3,1,0,'2017-03-23 07:33:25'),(119,'1838012',18,18,'红富士苹果',1,1,0,1,0,'2017-04-14 10:58:10'),(125,'116043',1,42,'广西百香果现摘新鲜西番莲鸡蛋果',8,18,10,1,0,'2017-04-24 11:41:40'),(132,'2879345',28,24,'我你的是上帝',1,11,10,1,0,'2017-04-25 04:11:37'),(133,'820170426080217645',8,17,'千里香阿达西',1,1,0,1,5,'2017-04-26 08:02:17'),(134,'820170426080217364',8,21,'千里香阿达西',1,6,5,1,5,'2017-04-26 08:02:17'),(135,'2984683',29,18,'红富士苹果',1,3,0,3,0,'2017-04-28 09:23:58'),(136,'2922833',29,18,'红富士苹果',1,6,3,3,0,'2017-04-28 09:27:22'),(139,'3184295',31,21,'千里香阿达西',1,1,0,1,0,'2017-05-02 01:42:38'),(140,'3141525',31,28,'shuh',1,36,10,26,0,'2017-05-02 01:43:57');

/*Table structure for table `real-name-c-e-r-t` */

DROP TABLE IF EXISTS `real-name-c-e-r-t`;

CREATE TABLE `real-name-c-e-r-t` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属用户',
  `card_no` varchar(18) NOT NULL COMMENT '18位身份证号',
  `real_name` varchar(40) NOT NULL DEFAULT '1' COMMENT '真实姓名',
  `card_frontend_photo_path` varchar(255) NOT NULL DEFAULT '' COMMENT '身份证正面照片路径',
  `card_backend_photo_path` varchar(255) NOT NULL DEFAULT '' COMMENT '身份证反面照片路径',
  `card_hand_photo_path` varchar(255) NOT NULL DEFAULT '' COMMENT '手持身份证照片路径',
  `result` varchar(255) DEFAULT '' COMMENT '审核结果',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当前状态 (REALNAMECERT_STATUS 中的任意一种状态)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_no` (`card_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `real-name-c-e-r-t` */

insert  into `real-name-c-e-r-t`(`id`,`user_id`,`card_no`,`real_name`,`card_frontend_photo_path`,`card_backend_photo_path`,`card_hand_photo_path`,`result`,`status`) values (1,1,'522727199502023300','小青','/../../realNameCert_Photos/2016_12_22_10_07_03_P1Fh3C.png','/../../realNameCert_Photos/2016_12_22_10_07_03_P1Fh3C.png','/../../realNameCert_Photos/2016_12_22_10_07_03_P1Fh3C.png','1',2),(2,2,'522727199504050203','qingqing','','','/realNameCert_Photos/2017_01_03_09_38_01_IHJ4Dx.jpg','',2),(3,10,'522727199002053656','吴花花','/realNameCert_Photos/2017_01_12_18_23_07_3EwP51.jpg','/realNameCert_Photos/2017_01_12_18_23_07_7HktBU.jpg','/realNameCert_Photos/2017_01_12_18_23_07_OJjZ7j.jpg','',2),(4,9,'522127199211177018','朱伟伟','/realNameCert_Photos/2017_01_12_18_23_53_nTbXq2.jpg','/realNameCert_Photos/2017_01_12_18_23_53_sKWvru.jpg','/realNameCert_Photos/2017_01_12_18_23_53_10K82V.jpg','',2),(5,8,'522426199309155618','闻平','/realNameCert_Photos/2017_01_12_20_39_43_ABq3PU.jpg','/realNameCert_Photos/2017_01_12_20_39_43_ezOHBT.jpg','/realNameCert_Photos/2017_01_12_20_39_43_GuERV9.jpg','',2),(6,26,'522727199604052356','球球','/realNameCert_Photos/2017_03_23_13_07_26_bN8zk1.jpg','/realNameCert_Photos/2017_03_23_13_07_26_Qg2fyp.jpg','/realNameCert_Photos/2017_03_23_13_07_26_tfDjf9.jpg','',2),(7,27,'522727199604052358','球球1','/realNameCert_Photos/2017_03_23_13_32_07_nzkK7a.jpg','/realNameCert_Photos/2017_03_23_13_32_07_NVaHNY.jpg','/realNameCert_Photos/2017_03_23_13_32_07_hmL6yg.jpg','',2),(8,28,'520202199108078042','邹金英','/realNameCert_Photos/2017_04_24_10_06_54_gbd9ta.jpg','/realNameCert_Photos/2017_04_24_10_06_54_bGKN4I.jpg','/realNameCert_Photos/2017_04_24_10_06_54_TGw30v.jpg','',1);

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commodity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐商品id',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '推荐时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `recommend` */

insert  into `recommend`(`id`,`commodity_id`,`time`) values (1,17,'2016-12-27 10:07:58'),(3,23,'2016-12-27 10:08:07'),(5,18,'2016-12-31 12:06:33'),(6,20,'2016-12-31 12:06:58'),(7,18,'2016-12-31 12:10:31'),(8,21,'2016-12-31 12:11:29'),(9,49,'2017-05-09 05:41:51'),(10,44,'2017-05-10 10:56:30'),(11,46,'2017-05-10 10:56:43'),(12,51,'2017-05-10 10:56:55'),(13,62,'2017-05-10 10:57:09'),(14,47,'2017-05-10 10:57:23');

/*Table structure for table `security-config` */

DROP TABLE IF EXISTS `security-config`;

CREATE TABLE `security-config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(64) NOT NULL COMMENT '项目关键字',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '项目名称',
  `content` text COMMENT '项目值',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '项目值的类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `security-config` */

insert  into `security-config`(`id`,`keyword`,`name`,`content`,`type`) values (1,'pwdRestLinkTimeoutM','密码重置链接有效分钟数','10',1),(2,'pwdRestEMailSMTP_Server','密码重置链接发送SMTP服务器地址','smtp.163.com',0),(3,'pwdRestEMailSMTP_Port','密码重置链接发送SMTP服务器端口','25',0),(4,'pwdRestEMail_Accout','密码重置链接发送SMTP服务器账号','wpyhwdm@163.com',0),(5,'pwdRestEMail_password','密码重置链接发送SMTP服务器密码','ayhyvrui$#@!!@#$',2),(6,'pwdRestEMail_title','密码重置链接邮件主题名称','密码重置-水木云平台',0),(7,'mobileAttachTimeoutM','手机绑定短信验证码有效分钟数','3',1),(8,'realNameCertPhotoAllowSize_bytes','实名认证审核图片大小限制字节数','8192',1),(9,'shopVerifyPhotoAllowSize_bytes','网店认证审核图片大小限制字节数','8192',1),(10,'commodityPhotoAllowSize_bytes','商品图片大小限制字节数','500',1),(11,'commodityPhotoMaxWidth','商品图片最大宽度','1800',1),(12,'commodityPhotoMinWidth','商品图片最小宽度','600',1),(13,'commodityPhotoMaxHeight','商品图片最大高度','1650',1),(14,'commodityPhotoMinHeight','商品图片最小高度','550',1);

/*Table structure for table `service` */

DROP TABLE IF EXISTS `service`;

CREATE TABLE `service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '客服名称',
  `qq` varchar(100) NOT NULL DEFAULT '' COMMENT 'QQ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `service` */

insert  into `service`(`id`,`name`,`qq`) values (1,'小青','7838956152'),(2,'星星','123456789'),(3,'aze','1839505499'),(4,'左耳听风声','191873811');

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '网店所属会员ID',
  `industry_category_id` int(11) NOT NULL DEFAULT '0' COMMENT '网店所属的行业ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '网店名称',
  `description` varchar(255) DEFAULT NULL COMMENT '网店简介',
  `create_at` timestamp NULL DEFAULT NULL COMMENT '网店创建时间',
  `register_no` varchar(18) DEFAULT NULL COMMENT '营业执照注册号',
  `bl_photo_path` varchar(255) DEFAULT NULL COMMENT '营业执照照片路径',
  `address` varchar(255) DEFAULT NULL COMMENT '网店实体店所在地址',
  `address_lng` double DEFAULT NULL COMMENT '网店实体店所在地址-经度坐标',
  `address_lat` double DEFAULT NULL COMMENT '网店实体店所在地址-纬度坐标',
  `result` tinyint(4) NOT NULL DEFAULT '0' COMMENT '网店审核结果',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '网店当前状态 (SHOP_STATUS 中的任意一种状态)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `shop` */

insert  into `shop`(`id`,`user_id`,`industry_category_id`,`name`,`description`,`create_at`,`register_no`,`bl_photo_path`,`address`,`address_lng`,`address_lat`,`result`,`status`) values (2,2,4,'哈哈','撒我打输出的','2016-12-28 11:26:36','159897562236598','/userShopApply_Photos/2016_12_28_11_26_36_sbBYkM.jpg','贵州省,贵阳市,乌当区,X130',106.560018,26.676152,2,1),(3,8,1,'鲜果','hilehgugdua;eogo','2017-02-15 10:07:18','654378123666543','/userShopApply_Photos/2017_02_15_22_07_18_ThF0IY.jpg','贵州省,黔东南苗族侗族自治州,台江县',108.34858,26.423553,2,1),(4,26,1,'球球水果批发','各类水果批发','2017-03-23 01:14:22','5678945623564158','/userShopApply_Photos/2017_03_23_13_14_22_pVRAZ1.jpg','贵州省,贵阳市,乌当区,G75(兰海高速)',106.664078,26.635598,2,1),(5,27,1,'球球水果批发1','555555555555555555555','2017-03-23 01:35:19','5678945623564158','/userShopApply_Photos/2017_03_23_13_35_19_g5uMHp.jpg','贵州省,贵阳市,乌当区,黔灵山路',106.682475,26.618029,2,0);

/*Table structure for table `shop-cart` */

DROP TABLE IF EXISTS `shop-cart`;

CREATE TABLE `shop-cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物车所属会员ID',
  `commodity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购物ID',
  `shoping_count` int(100) NOT NULL DEFAULT '0' COMMENT '购物数量',
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '商品金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

/*Data for the table `shop-cart` */

insert  into `shop-cart`(`id`,`user_id`,`commodity_id`,`shoping_count`,`money`) values (114,21,30,2,1),(115,21,23,1,1),(185,28,24,1,1),(186,28,16,1,1),(193,31,16,1,1),(194,31,18,4,1),(195,31,17,3,1);

/*Table structure for table `shop-order` */

DROP TABLE IF EXISTS `shop-order`;

CREATE TABLE `shop-order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) NOT NULL DEFAULT '0' COMMENT '订单编号',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单所属会员id',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单所属会员id',
  `address_id` int(11) NOT NULL DEFAULT '0' COMMENT '地址id',
  `re_marks` longtext COMMENT '订单备注',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '231',
  `order_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `shop-order` */

insert  into `shop-order`(`id`,`order_no`,`user_id`,`order_id`,`address_id`,`re_marks`,`status`,`order_at`) values (6,'1720170124045924966',2,19,5,'',0,'2017-01-24 04:59:24'),(10,'820170308112520425',2,56,4,'申请退款',4,'2017-03-08 11:25:20'),(11,'820170311032550210',1,78,4,'申请退款',4,'2017-03-11 03:25:51'),(12,'820170311035142323',1,83,4,'申请退款',4,'2017-03-11 03:51:42'),(13,'820170329110943367',1,116,4,'申请退款',4,'2017-03-29 11:09:43'),(14,'820170329113917323',1,117,4,'申请退款',4,'2017-03-29 11:39:17'),(15,'820170329113917202',1,118,4,'申请退款',4,'2017-03-29 11:39:17'),(16,'820170426080217645',1,133,8,'申请退款',4,'2017-04-26 08:02:17'),(17,'820170426080217364',2,134,8,'申请退款',4,'2017-04-26 08:02:17');

/*Table structure for table `sys-table-modify-status` */

DROP TABLE IF EXISTS `sys-table-modify-status`;

CREATE TABLE `sys-table-modify-status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(100) NOT NULL,
  `last_modify_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `sys-table-modify-status` */

insert  into `sys-table-modify-status`(`id`,`model_name`,`last_modify_at`) values (1,'ADConfig','2016-12-21 10:03:04'),(2,'Address','2017-05-02 13:43:42'),(3,'ADInfo','2016-12-21 10:03:22'),(4,'BaseInfo','2016-12-21 10:03:31'),(5,'Commodity','2017-05-09 17:17:33'),(6,'CommodityClass','2017-03-29 10:57:59'),(7,'CommodityPhoto','2017-05-09 17:17:33'),(8,'Distribution','2016-12-21 10:03:57'),(9,'DistributionLog','2016-12-21 10:04:01'),(10,'IndustryCategory','2017-04-21 14:16:19'),(11,'MobileAttachSMS','2017-05-03 09:12:54'),(12,'Order','2016-12-21 10:04:20'),(13,'RealNameCERT','2017-04-24 10:06:54'),(14,'SecurityConfig','2016-12-21 10:04:46'),(15,'Shop','2017-04-11 10:51:07'),(16,'ShopCart','2016-12-22 17:55:09'),(17,'User','2017-05-11 11:43:24'),(18,'ShopCart','2016-12-22 18:04:46'),(19,'Order','2016-12-22 19:19:01'),(20,'ShopCart','2016-12-22 19:19:07'),(21,'Admin','2017-05-11 11:35:59'),(22,'ADConfig','2016-12-23 13:07:54'),(23,'ADConfig','2016-12-23 13:10:26'),(24,'ADInfo','2016-12-23 13:10:32'),(25,'BaseInfo','2016-12-23 13:10:38'),(26,'Comments','2016-12-23 14:40:25'),(27,'Comments','2016-12-23 14:41:52'),(28,'Carousel','2017-03-24 17:01:27'),(29,'Collection','2016-12-27 10:03:15'),(30,'HotSeach','2017-05-10 16:31:05'),(31,'Recommend','2017-05-10 10:57:23'),(32,'Collection','2016-12-27 10:06:22'),(33,'Alipay','2017-01-04 19:28:36'),(34,'OrderList','2016-12-28 13:41:13'),(35,'OrderList','2016-12-28 14:17:32'),(36,'Order','2016-12-29 13:08:44'),(37,'Order','2017-01-06 15:06:56'),(38,'ShopOrder','2017-04-26 08:04:41'),(39,'UserBankCar','2017-04-24 10:38:39'),(40,'UserBill','2017-04-26 08:02:17'),(41,'UserWithdrawls','2017-01-06 15:06:58'),(42,'WXConfig','2017-01-06 15:38:33'),(43,'AAAAAA','2017-04-26 08:02:17'),(44,'Opinion','2017-01-12 18:42:36'),(45,'Service','2017-05-10 17:53:21'),(46,'FXConfig','2017-01-14 16:04:52'),(47,'AlipayOrder','2017-05-02 13:44:06'),(48,'latestGoods','2017-05-10 10:52:02');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '会员名称',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '会员密码',
  `safe_email` varchar(128) NOT NULL DEFAULT '' COMMENT '安全邮箱',
  `email` varchar(128) DEFAULT NULL COMMENT '常用邮箱',
  `mobile_no` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `nick` varchar(40) DEFAULT NULL COMMENT '昵称',
  `register_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `last_login_ip` varchar(40) DEFAULT NULL COMMENT '最后一次登录IP',
  `disable_timeout_at` timestamp NULL DEFAULT NULL COMMENT '禁用结束时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当前状态 (USER_STATUS 中的任意一种状态)',
  `auth_token` varchar(32) DEFAULT NULL,
  `auth_access` tinyint(4) NOT NULL DEFAULT '0',
  `money` float NOT NULL DEFAULT '0' COMMENT '会员钱包',
  `introducer_user_id` varchar(128) DEFAULT NULL COMMENT '推荐会员编码',
  `integral` float NOT NULL DEFAULT '0' COMMENT '会员积分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  UNIQUE KEY `mobile_no` (`mobile_no`) USING BTREE,
  UNIQUE KEY `nick` (`nick`) USING BTREE,
  UNIQUE KEY `auth_token` (`auth_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`safe_email`,`email`,`mobile_no`,`nick`,`register_at`,`last_login_at`,`last_login_ip`,`disable_timeout_at`,`status`,`auth_token`,`auth_access`,`money`,`introducer_user_id`,`integral`) values (1,'xiaoxiao','$2y$10$BLC7Im23VS1mszSC5NBZUOyyEruTM9Cx.6.qKA/pfYH8Ajnyu1jg6','783117049@qq.com','783117049@qq.com','15286286024','小青','2017-04-24 09:18:41','2017-04-25 13:36:55','1.204.200.67','2017-01-02 04:24:07',2,'bnl7HADDP6EmDUVE5BPFAnHxjVDvg928',0,11,NULL,0),(2,'xiaoqings','$2y$10$azFAcFnOeUGYnl/fimjws.UYewjMqyaRK1TPEpiUGBPbheG4VxLv.','789456123@qq.com','','','1edcecfdsc','2016-12-28 11:15:24','2017-03-16 10:50:50','1.204.207.10','2017-01-02 05:30:53',0,'5OVSutnNFq8O56FxJ1Gb4ZBtFXUVQuTy',0,16,NULL,0),(3,'zxcvbnm','$2y$10$Eqz3kcByVYVjxaam1ettyOJg.GhzueIZISRs4bh0c8ofPW0tgHvsW','54561561@qq.com',NULL,NULL,'zxcvbn','2016-12-30 11:29:57',NULL,NULL,NULL,2,NULL,0,0,NULL,0),(6,'dwefewfer','$2y$10$3QBr.CRbveCnzOy3WUElbeKR/Y0pVVq6WOykmntgoX95w/DkGoCYW','jaehru@sina.com',NULL,NULL,'dsferjkfj','2017-01-05 13:40:34',NULL,NULL,NULL,0,NULL,0,0,NULL,0),(7,'azuowwq','$2y$10$FJkFD022Js6hldcagSrYm.wr1A7MwNxDaxPwngPBneOztWF2i7lbq','1109993204@qq.com',NULL,NULL,'阿左','2017-01-05 13:46:06','2017-01-12 13:09:45','1.204.202.100',NULL,0,'fSLZSJOF9VHnrirezkyKztv698AVp2VH',0,0,NULL,0),(8,'wenqian','$2y$10$8yE8XC3agQGrYslvjRjm9uy0.qDV6jDW4MVjYZrPAfB5FYMRmgA1e','15001351837@163.com','18395505499@qq.com','18708556054','闻平','2017-04-24 09:18:46','2017-05-11 11:43:24','::1',NULL,0,'eqvMYHi28OLL5zcIxBrdHdvAcjEln6VB',0,8,NULL,0),(9,'hdwgeq','$2y$10$R/W1zLnkmfnmv/5Fiq95VOINfEEqV2YS/hqc7AcSkyaMqUTIOiJae','1109993214@qq.com',NULL,NULL,'安卓被称为','2017-01-12 17:56:54','2017-01-12 17:57:22','1.204.202.100',NULL,0,'iRys93CCjbyJNsZrIfzX6YKZUv4rC5RK',0,0,NULL,0),(15,'zxcvbnma','$2y$10$4rU37KM.rvYBkUgJfuju9uZ3HGtmyEU3XhcEywYlYKqVUs0Bcm4fi','6733492@qq.com',NULL,NULL,'xbjisnsjjx','2017-01-14 11:50:58',NULL,NULL,NULL,0,NULL,0,0,'1',0),(16,'zxcvbnmasd','$2y$10$gX5.6JfXo3IAN05lzz71Vu99d.4BY2dwUTq6mReoWgHACyQTunMJS','97364937@qq.com',NULL,NULL,'bibxbdi','2017-01-14 11:49:59',NULL,NULL,NULL,0,NULL,0,0,'1',0),(17,'qwerty','$2y$10$uCEAKKCfNhRB7trJuftokeY7MxOMSt.HpCYVVpG1I3ABtDyHmssvi','1110217144@163.COM',NULL,NULL,'安卓','2017-03-14 11:23:53','2017-02-08 13:39:19','220.172.50.48',NULL,0,'UQID2wuoIN74uoJgDom9wButtuRNUhog',0,1,'',0),(18,'weipengyuan','$2y$10$ktWnKrFZfQQp55BB7pQ0W.eqDHgs3M799rd4P8kNQjzm67QMC8OHO','164554178@qq.com',NULL,NULL,'ayuan','2017-02-13 19:13:57','2017-04-14 22:57:50','1.204.205.229',NULL,0,'7Ewj8YVFvaMnp6O0niO0fDZZWO8niH5Q',0,0,'',0),(19,'xingjie','$2y$10$p6jtoKmJtUlJR6.1UOAULuOilReEM8h1TNfefa0fEWMvER1wso2Au','xingjie@163.com',NULL,NULL,'兴洁','2017-02-14 11:54:20','2017-02-14 11:54:27','1.204.207.12',NULL,0,'mfhmv9erm1Y4GUmbrzn4VieTFRpzfBAc',0,0,'',0),(20,'wenjize','$2y$10$g291./C10m8AWjMG3H9J0.x6OzJs4CKVI7Dz3uIzNKByLXw.TD7I.','',NULL,NULL,'1839505499@qq.com ','2017-02-15 22:25:26','2017-02-15 22:25:49','113.91.4.66',NULL,0,'nwG7cQ8mGIyjE71SV2Z0htLX8dG2Xisu',0,0,'8',0),(21,'zzzzzz','$2y$10$keyw8Tg7/H3agRmhP9sCnuHX3njhruZHHKJdlBhFnsYeprE33sFbW','1610217143@qq.com',NULL,NULL,'zzzhyg','2017-03-10 14:38:05','2017-03-10 14:38:16','220.172.48.201',NULL,0,NULL,0,0,'',0),(22,'abcdef','$2y$10$BSl6eCdKAGEAiHJHoSxTaO8S1B56DacpCW2847oMRZI7JurzB2tiO','805875708@qq.com',NULL,NULL,'abcdef','2017-03-14 10:40:28','2017-03-14 10:41:04','111.121.41.100',NULL,0,NULL,0,0,'',0),(23,'xiaoqing1','$2y$10$othRHX5iDjnX1yZ80.l44ubSIUXtiUnuubbiS.RhIlFMqv0dhYIzi','7831127049@qq.com','1542514522','15754215524','信息','2017-03-16 10:54:14','2017-03-16 10:54:35','1.204.207.10',NULL,0,'LNcRCsvg0UwnqLWBIUMx8JlHwXpAKfOs',0,0,NULL,0),(24,'fdgfgfhgfhgjgh','$2y$10$DruOGf8vgDaGOjbJ6FA5s./D8ALsOpag04CVcszpEI0AIPqEwaTnq','1211111@qq.com',NULL,NULL,'奋斗奋斗过的','2017-03-21 09:15:09','2017-03-21 09:15:46','111.121.46.136',NULL,0,NULL,0,0,'',0),(25,'qweqwe','$2y$10$XZ1YzbCc9ZwyJHhEg2HTk.V6OIwV29mZyvitRiwAKCJziJb1XV/qq','12122222@qq.com',NULL,NULL,'qwe111','2017-03-23 09:05:47',NULL,NULL,NULL,0,NULL,0,0,'',0),(26,'qiuqiu','$2y$10$yHeqqzei/n8MghzygcyIWu8u59OqN97nulTbmnYC70yW3LAoGUWbS','qiuqiu@qq.com','qiuqiu@qq.com','18785171425','球球','2017-04-24 09:18:52','2017-03-23 19:24:06','220.172.54.109',NULL,0,'gLe9FztMo9KZQFJXSZ7TE5p1KjlRW8al',0,6,'',0),(27,'zxcvbn','$2y$10$LxbbcshSWHdFBbeeUnN2ROC5ytSp6myTHFt9ID/dkYZytMVERQ/X2','123456@qq.com','qiuqiu1@qq.com','18785171426','xsxaxdawdwed','2017-03-23 13:30:54','2017-03-23 13:31:07','220.172.49.73',NULL,0,NULL,0,0,'',0),(28,'zoujinying','$2y$10$4yxHffsNnszt3S2jJ/Ea9egTmQEPUXla.aRjicoOneDE17w5FNk92','1377252827@qq.com',NULL,NULL,'zoujinying','2017-04-24 09:22:27','2017-04-24 15:28:57','111.121.45.171',NULL,0,'8P53DTcM4cSvD5tAhh1TSw4IubkcoaGH',0,0.1,'',0),(29,'CrainChen','$2y$10$Fv8OT8HdAnXmiHBFWJEr4u7b8t/yd1feaFbSi6qXgY5qJWd3gfS9m','1361016049@qq.com','1361016049@qq.com',NULL,'CrainChen','2017-04-28 09:22:42','2017-04-28 09:23:16','111.121.44.200',NULL,0,'G8Bq12l2c797hHrEIzB5jBDV9XyCmgXU',0,0,'',0),(30,'wwwwwwwww','$2y$10$sBqD1b1htH1OVSA7sVcSneq3xk6CcPVXyrbPJ5/QNuR3Un9WEqylS','wwww@163.com',NULL,NULL,'wwwwwwww','2017-04-29 13:38:13','2017-04-29 13:38:38','111.121.43.109',NULL,0,NULL,0,0,'',0),(31,'lingfe','$2y$10$W33Kz5nhRvHTuBVGR4K/Oe8Ies.G6idnQYHEOyAE1p1zGcAxI79Wa','2907739332@qq.com',NULL,NULL,'lingfe','2017-05-02 13:38:34','2017-05-02 16:40:37','111.121.40.168',NULL,0,'GDdn0i3hBJk3z0wj2zS01c4lEnNIOt6X',0,0,'',0);

/*Table structure for table `user-bank-car` */

DROP TABLE IF EXISTS `user-bank-car`;

CREATE TABLE `user-bank-car` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `car_no` varchar(19) NOT NULL DEFAULT '' COMMENT '银行账号',
  `bank_name` varchar(255) NOT NULL DEFAULT '' COMMENT '开户行',
  `bank_Address` varchar(255) NOT NULL DEFAULT '' COMMENT '开户行地址',
  `bank_type` varchar(255) NOT NULL DEFAULT '' COMMENT '卡的类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `user-bank-car` */

insert  into `user-bank-car`(`id`,`user_id`,`car_no`,`bank_name`,`bank_Address`,`bank_type`) values (2,8,'6217902800001410428','中国银行','凯里','借记卡'),(3,1,'6228481190810490926','农业银行','农业银行-金穗通宝卡(银联卡)-借记卡','借记卡');

/*Table structure for table `user-bill` */

DROP TABLE IF EXISTS `user-bill`;

CREATE TABLE `user-bill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单所属会员会员ID',
  `money` float NOT NULL DEFAULT '0' COMMENT '提现金额',
  `method` tinyint(4) NOT NULL DEFAULT '0' COMMENT '账单类型',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `with_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

/*Data for the table `user-bill` */

insert  into `user-bill`(`id`,`user_id`,`money`,`method`,`status`,`with_at`) values (1,1,1,4,1,'2017-01-16 13:20:23'),(2,1,1,0,1,'2017-01-16 13:20:23'),(3,1,1,4,1,'2017-01-16 01:41:02'),(4,1,1,0,1,'2017-01-16 01:41:02'),(5,1,1,4,1,'2017-01-16 01:47:53'),(6,1,1,0,1,'2017-01-16 01:47:53'),(7,2,1,4,1,'2017-01-24 04:59:24'),(8,17,1,0,1,'2017-01-24 04:59:24'),(9,1,1,4,1,'2017-01-24 05:13:30'),(10,1,1,0,1,'2017-01-24 05:13:30'),(11,1,1,4,1,'2017-01-24 05:19:28'),(12,1,1,0,1,'2017-01-24 05:19:28'),(13,1,0.01,4,1,'2017-01-24 05:33:02'),(14,1,0.01,0,1,'2017-01-24 05:33:02'),(15,2,6,4,1,'2017-03-08 11:25:20'),(16,8,6,0,1,'2017-03-08 11:25:20'),(17,1,1,4,1,'2017-03-11 03:25:51'),(18,8,1,0,1,'2017-03-11 03:25:51'),(19,1,1,4,1,'2017-03-11 03:51:42'),(20,8,1,0,1,'2017-03-11 03:51:42'),(21,1,3,4,1,'2017-03-29 11:09:43'),(23,1,5,4,1,'2017-03-29 11:39:17'),(24,8,5,0,1,'2017-03-29 11:39:17'),(25,1,5,4,1,'2017-03-29 11:39:17'),(26,8,5,0,1,'2017-03-29 11:39:17'),(27,1,7,4,1,'2017-04-26 08:02:17'),(28,8,7,0,1,'2017-04-26 08:02:17'),(29,2,7,4,1,'2017-04-26 08:02:17'),(30,8,7,0,1,'2017-04-26 08:02:17');

/*Table structure for table `user-withdrawls` */

DROP TABLE IF EXISTS `user-withdrawls`;

CREATE TABLE `user-withdrawls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单所属会员会员ID',
  `bank_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提现银行卡ID',
  `money` float unsigned NOT NULL DEFAULT '0' COMMENT '提现金额',
  `counter_fee` float unsigned NOT NULL DEFAULT '0' COMMENT '提现手续费',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现状态',
  `with_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '提现时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user-withdrawls` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
