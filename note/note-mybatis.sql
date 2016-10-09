# Host: localhost  (Version: 5.5.47)
# Date: 2016-10-09 20:44:51
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "items"
#

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '商品名称',
  `price` float(10,1) NOT NULL COMMENT '商品定价',
  `detail` text COMMENT '商品描述',
  `pic` varchar(64) DEFAULT NULL COMMENT '商品图片',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "items"
#

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'台式机',3000.0,'该电脑质量非常好！！！！',NULL,'2015-02-03 13:22:53'),(2,'笔记本',6000.0,'笔记本性能好，质量好！！！！！',NULL,'2015-02-09 13:22:57'),(3,'背包',200.0,'名牌背包，容量大质量好！！！！',NULL,'2015-02-06 13:23:02'),(11,'智能手机',1999.0,'性价比手机',NULL,'2016-10-09 09:11:07'),(13,'智能手环',199.0,'手环',NULL,'2016-10-09 09:16:02'),(14,'衣服',199.0,'衣服',NULL,'2016-10-09 09:17:01'),(15,'hhh',1.0,'哈哈',NULL,'2016-10-09 18:07:50');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

#
# Structure for table "orderdetail"
#

DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL COMMENT '订单id',
  `items_id` int(11) NOT NULL COMMENT '商品id',
  `items_num` int(11) DEFAULT NULL COMMENT '商品购买数量',
  PRIMARY KEY (`id`),
  KEY `FK_orderdetail_1` (`orders_id`),
  KEY `FK_orderdetail_2` (`items_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "orderdetail"
#

/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,3,1,1),(2,3,2,3),(4,4,2,3),(7,3,13,1),(8,3,13,1),(9,3,3,1),(10,3,14,1),(28,5,14,1),(29,5,15,1),(31,11,2,1);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `number` varchar(32) DEFAULT NULL COMMENT '订单号',
  `createtime` datetime NOT NULL COMMENT '创建订单时间',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "orders"
#

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,1,'1000010','2015-02-04 13:22:35',NULL),(4,1,'1000011','2015-02-03 13:22:41',NULL),(5,1,'1000012','2015-02-12 16:13:23',NULL),(11,27,NULL,'2016-10-09 20:02:35','自动创建');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'dang',NULL,'2',NULL,'dang'),(10,'张三','2014-07-10','1','北京市',NULL),(16,'张小明',NULL,'1','河南郑州',NULL),(22,'陈小明',NULL,'1','河南郑州',NULL),(24,'张三丰',NULL,'1','河南郑州',NULL),(25,'陈小明',NULL,'1','河南郑州',NULL),(26,'王五',NULL,NULL,NULL,NULL),(27,'root',NULL,NULL,NULL,'root'),(28,'test',NULL,NULL,NULL,'1'),(29,'test',NULL,NULL,NULL,NULL),(30,'test',NULL,NULL,NULL,NULL),(31,'username',NULL,NULL,NULL,'password');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
