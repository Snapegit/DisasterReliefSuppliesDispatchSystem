-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl09869168
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl09869168`
--

/*!40000 DROP DATABASE IF EXISTS `cl09869168`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl09869168` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl09869168`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaodujindu`
--

DROP TABLE IF EXISTS `diaodujindu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaodujindu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diaodubianhao` varchar(200) DEFAULT NULL COMMENT '调度编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzizhonglei` varchar(200) DEFAULT NULL COMMENT '物资种类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `yunshufangshi` varchar(200) DEFAULT NULL COMMENT '运输方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `wuliuzhuangtai` varchar(200) DEFAULT NULL COMMENT '物流状态',
  `wuliuxiangqing` longtext COMMENT '物流详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786459245 DEFAULT CHARSET=utf8 COMMENT='调度进度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaodujindu`
--

LOCK TABLES `diaodujindu` WRITE;
/*!40000 ALTER TABLE `diaodujindu` DISABLE KEYS */;
INSERT INTO `diaodujindu` VALUES (111,'2024-03-30 08:06:35','调度编号1','物资名称1','物资种类1','数量1','运输方式1','用户账号1','用户姓名1','电话号码1','地址1','正在运输中','物流详情1'),(112,'2024-03-30 08:06:35','调度编号2','物资名称2','物资种类2','数量2','运输方式2','用户账号2','用户姓名2','电话号码2','地址2','正在运输中','物流详情2'),(113,'2024-03-30 08:06:35','调度编号3','物资名称3','物资种类3','数量3','运输方式3','用户账号3','用户姓名3','电话号码3','地址3','正在运输中','物流详情3'),(114,'2024-03-30 08:06:35','调度编号4','物资名称4','物资种类4','数量4','运输方式4','用户账号4','用户姓名4','电话号码4','地址4','正在运输中','物流详情4'),(115,'2024-03-30 08:06:35','调度编号5','物资名称5','物资种类5','数量5','运输方式5','用户账号5','用户姓名5','电话号码5','地址5','正在运输中','物流详情5'),(116,'2024-03-30 08:06:35','调度编号6','物资名称6','物资种类6','数量6','运输方式6','用户账号6','用户姓名6','电话号码6','地址6','正在运输中','物流详情6'),(1711786459244,'2024-03-30 08:14:18','1711786424620','泡面','食物','1508','汽车','用户1','李斯','13548235685','一个副业副业副业','正在运输中','序号哦i胡搜i胡搜is就');
/*!40000 ALTER TABLE `diaodujindu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaoduyuan`
--

DROP TABLE IF EXISTS `diaoduyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diaoduyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diaoduyuangonghao` varchar(200) DEFAULT NULL COMMENT '调度员工号',
  `diaoduyuanmima` varchar(200) DEFAULT NULL COMMENT '调度员密码',
  `diaoduyuanxingming` varchar(200) DEFAULT NULL COMMENT '调度员姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diaoduyuangonghao` (`diaoduyuangonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786402231 DEFAULT CHARSET=utf8 COMMENT='调度员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diaoduyuan`
--

LOCK TABLES `diaoduyuan` WRITE;
/*!40000 ALTER TABLE `diaoduyuan` DISABLE KEYS */;
INSERT INTO `diaoduyuan` VALUES (41,'2024-03-30 08:06:35','调度员工号1','123456','调度员姓名1','file/diaoduyuanTouxiang1.jpg','19819881111','441622200101010001'),(42,'2024-03-30 08:06:35','调度员工号2','123456','调度员姓名2','file/diaoduyuanTouxiang2.jpg','19819881112','441622200202020002'),(43,'2024-03-30 08:06:35','调度员工号3','123456','调度员姓名3','file/diaoduyuanTouxiang3.jpg','19819881113','441622200303030003'),(44,'2024-03-30 08:06:35','调度员工号4','123456','调度员姓名4','file/diaoduyuanTouxiang4.jpg','19819881114','441622200404040004'),(45,'2024-03-30 08:06:35','调度员工号5','123456','调度员姓名5','file/diaoduyuanTouxiang5.jpg','19819881115','441622200505050005'),(46,'2024-03-30 08:06:35','调度员工号6','123456','调度员姓名6','file/diaoduyuanTouxiang6.jpg','19819881116','441622200606060006'),(1711786402230,'2024-03-30 08:13:22','001','123456','王五','file/1711786391875.jpeg','13548235685','110354785986485254');
/*!40000 ALTER TABLE `diaoduyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-30 08:06:35','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"调度员\",\"menuJump\":\"列表\",\"tableName\":\"diaoduyuan\"}],\"fontClass\":\"icon-common7\",\"menu\":\"调度员管理\",\"unicode\":\"&#xedb4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common25\",\"menu\":\"管理员管理\",\"unicode\":\"&#xee09;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"物资种类\",\"menuJump\":\"列表\",\"tableName\":\"wuzizhonglei\"}],\"fontClass\":\"icon-common45\",\"menu\":\"物资种类管理\",\"unicode\":\"&#xef3b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"审核\",\"调度\"],\"menu\":\"物资需求\",\"menuJump\":\"列表\",\"tableName\":\"wuzixuqiu\"}],\"fontClass\":\"icon-common8\",\"menu\":\"物资需求管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"出库\",\"入库\",\"物资数据统计\",\"首页统计\"],\"menu\":\"物资库存\",\"menuJump\":\"列表\",\"tableName\":\"wuzikucun\"},{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"物资出库\",\"menuJump\":\"列表\",\"tableName\":\"wuzichuku\"},{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"物资入库\",\"menuJump\":\"列表\",\"tableName\":\"wuziruku\"}],\"fontClass\":\"icon-common37\",\"menu\":\"物资库存管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"物资调度\",\"menuJump\":\"列表\",\"tableName\":\"wuzidiaodu\"},{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"调度进度\",\"menuJump\":\"列表\",\"tableName\":\"diaodujindu\"}],\"fontClass\":\"icon-common33\",\"menu\":\"物资调度管理\",\"unicode\":\"&#xee6a;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"物资需求\",\"menuJump\":\"列表\",\"tableName\":\"wuzixuqiu\"}],\"fontClass\":\"icon-common8\",\"menu\":\"物资需求管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\"],\"menu\":\"调度进度\",\"menuJump\":\"列表\",\"tableName\":\"diaodujindu\"}],\"fontClass\":\"icon-common33\",\"menu\":\"物资调度管理\",\"unicode\":\"&#xee6a;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"审核\",\"调度\",\"修改\",\"删除\"],\"menu\":\"物资需求\",\"menuJump\":\"列表\",\"tableName\":\"wuzixuqiu\"}],\"fontClass\":\"icon-common8\",\"menu\":\"物资需求管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\"],\"menu\":\"物资库存\",\"menuJump\":\"列表\",\"tableName\":\"wuzikucun\"}],\"fontClass\":\"icon-common37\",\"menu\":\"物资库存管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-full\",\"buttons\":[\"查看\",\"更新进度\",\"删除\",\"修改\"],\"menu\":\"物资调度\",\"menuJump\":\"列表\",\"tableName\":\"wuzidiaodu\"},{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"删除\",\"修改\"],\"menu\":\"调度进度\",\"menuJump\":\"列表\",\"tableName\":\"diaodujindu\"}],\"fontClass\":\"icon-common33\",\"menu\":\"物资调度管理\",\"unicode\":\"&#xee6a;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"调度员\",\"tableName\":\"diaoduyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','e0ahz60jxw1g2rj6rykdibtzdejz4fqp','2024-03-30 08:10:07','2024-03-30 09:10:07'),(2,1711786331435,'用户1','yonghu','用户','lwoivkzjognhjrrgk95olvw6qxfib9yj','2024-03-30 08:12:21','2024-03-30 09:14:36'),(3,1711786402230,'001','diaoduyuan','管理员','rs3g9s8lkguku2ye8ig2p6frytcppbq0','2024-03-30 08:13:32','2024-03-30 09:13:32');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-30 08:06:35','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzichuku`
--

DROP TABLE IF EXISTS `wuzichuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzichuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzizhonglei` varchar(200) DEFAULT NULL COMMENT '物资种类',
  `shuliang` int(11) DEFAULT NULL COMMENT '出库数量',
  `chukuren` varchar(200) DEFAULT NULL COMMENT '出库人',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786263745 DEFAULT CHARSET=utf8 COMMENT='物资出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzichuku`
--

LOCK TABLES `wuzichuku` WRITE;
/*!40000 ALTER TABLE `wuzichuku` DISABLE KEYS */;
INSERT INTO `wuzichuku` VALUES (81,'2024-03-30 08:06:35','物资名称1','物资种类1',1,'出库人1','2024-03-30 16:06:35'),(82,'2024-03-30 08:06:35','物资名称2','物资种类2',2,'出库人2','2024-03-30 16:06:35'),(83,'2024-03-30 08:06:35','物资名称3','物资种类3',3,'出库人3','2024-03-30 16:06:35'),(84,'2024-03-30 08:06:35','物资名称4','物资种类4',4,'出库人4','2024-03-30 16:06:35'),(85,'2024-03-30 08:06:35','物资名称5','物资种类5',5,'出库人5','2024-03-30 16:06:35'),(86,'2024-03-30 08:06:35','物资名称6','物资种类6',6,'出库人6','2024-03-30 16:06:35'),(1711786263744,'2024-03-30 08:11:03','泡面','食物',159,'张三','2024-03-30 16:10:49');
/*!40000 ALTER TABLE `wuzichuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzidiaodu`
--

DROP TABLE IF EXISTS `wuzidiaodu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzidiaodu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diaodubianhao` varchar(200) DEFAULT NULL COMMENT '调度编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzizhonglei` varchar(200) DEFAULT NULL COMMENT '物资种类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yunshufangshi` varchar(200) DEFAULT NULL COMMENT '运输方式',
  `fawangshijian` date DEFAULT NULL COMMENT '发往时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diaodubianhao` (`diaodubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786440453 DEFAULT CHARSET=utf8 COMMENT='物资调度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzidiaodu`
--

LOCK TABLES `wuzidiaodu` WRITE;
/*!40000 ALTER TABLE `wuzidiaodu` DISABLE KEYS */;
INSERT INTO `wuzidiaodu` VALUES (101,'2024-03-30 08:06:35','1111111111','物资名称1','物资种类1',1,'运输方式1','2024-03-30','用户账号1','用户姓名1','电话号码1','地址1'),(102,'2024-03-30 08:06:35','2222222222','物资名称2','物资种类2',2,'运输方式2','2024-03-30','用户账号2','用户姓名2','电话号码2','地址2'),(103,'2024-03-30 08:06:35','3333333333','物资名称3','物资种类3',3,'运输方式3','2024-03-30','用户账号3','用户姓名3','电话号码3','地址3'),(104,'2024-03-30 08:06:35','4444444444','物资名称4','物资种类4',4,'运输方式4','2024-03-30','用户账号4','用户姓名4','电话号码4','地址4'),(105,'2024-03-30 08:06:35','5555555555','物资名称5','物资种类5',5,'运输方式5','2024-03-30','用户账号5','用户姓名5','电话号码5','地址5'),(106,'2024-03-30 08:06:35','6666666666','物资名称6','物资种类6',6,'运输方式6','2024-03-30','用户账号6','用户姓名6','电话号码6','地址6'),(1711786440452,'2024-03-30 08:14:00','1711786424620','泡面','食物',1508,'汽车','2024-04-03','用户1','李斯','13548235685','一个副业副业副业');
/*!40000 ALTER TABLE `wuzidiaodu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzikucun`
--

DROP TABLE IF EXISTS `wuzikucun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzikucun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzizhonglei` varchar(200) DEFAULT NULL COMMENT '物资种类',
  `wuzitupian` longtext COMMENT '物资图片',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786245030 DEFAULT CHARSET=utf8 COMMENT='物资库存';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzikucun`
--

LOCK TABLES `wuzikucun` WRITE;
/*!40000 ALTER TABLE `wuzikucun` DISABLE KEYS */;
INSERT INTO `wuzikucun` VALUES (71,'2024-03-30 08:06:35','物资名称1','物资种类1','file/wuzikucunWuzitupian1.jpg,file/wuzikucunWuzitupian2.jpg,file/wuzikucunWuzitupian3.jpg',1),(72,'2024-03-30 08:06:35','物资名称2','物资种类2','file/wuzikucunWuzitupian2.jpg,file/wuzikucunWuzitupian3.jpg,file/wuzikucunWuzitupian4.jpg',2),(73,'2024-03-30 08:06:35','物资名称3','物资种类3','file/wuzikucunWuzitupian3.jpg,file/wuzikucunWuzitupian4.jpg,file/wuzikucunWuzitupian5.jpg',3),(74,'2024-03-30 08:06:35','物资名称4','物资种类4','file/wuzikucunWuzitupian4.jpg,file/wuzikucunWuzitupian5.jpg,file/wuzikucunWuzitupian6.jpg',4),(75,'2024-03-30 08:06:35','物资名称5','物资种类5','file/wuzikucunWuzitupian5.jpg,file/wuzikucunWuzitupian6.jpg,file/wuzikucunWuzitupian7.jpg',5),(76,'2024-03-30 08:06:35','物资名称6','物资种类6','file/wuzikucunWuzitupian6.jpg,file/wuzikucunWuzitupian7.jpg,file/wuzikucunWuzitupian8.jpg',6),(1711786245029,'2024-03-30 08:10:44','泡面','食物','file/1711786240827.png',3271);
/*!40000 ALTER TABLE `wuzikucun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuziruku`
--

DROP TABLE IF EXISTS `wuziruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuziruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzizhonglei` varchar(200) DEFAULT NULL COMMENT '物资种类',
  `shuliang` int(11) DEFAULT NULL COMMENT '入库数量',
  `rukuren` varchar(200) DEFAULT NULL COMMENT '入库人',
  `rukushijian` datetime DEFAULT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786274175 DEFAULT CHARSET=utf8 COMMENT='物资入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuziruku`
--

LOCK TABLES `wuziruku` WRITE;
/*!40000 ALTER TABLE `wuziruku` DISABLE KEYS */;
INSERT INTO `wuziruku` VALUES (91,'2024-03-30 08:06:35','物资名称1','物资种类1',1,'入库人1','2024-03-30 16:06:35'),(92,'2024-03-30 08:06:35','物资名称2','物资种类2',2,'入库人2','2024-03-30 16:06:35'),(93,'2024-03-30 08:06:35','物资名称3','物资种类3',3,'入库人3','2024-03-30 16:06:35'),(94,'2024-03-30 08:06:35','物资名称4','物资种类4',4,'入库人4','2024-03-30 16:06:35'),(95,'2024-03-30 08:06:35','物资名称5','物资种类5',5,'入库人5','2024-03-30 16:06:35'),(96,'2024-03-30 08:06:35','物资名称6','物资种类6',6,'入库人6','2024-03-30 16:06:35'),(1711786274174,'2024-03-30 08:11:13','泡面','食物',1850,'张三','2024-03-30 16:11:07');
/*!40000 ALTER TABLE `wuziruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzixuqiu`
--

DROP TABLE IF EXISTS `wuzixuqiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzixuqiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzizhonglei` varchar(200) DEFAULT NULL COMMENT '物资种类',
  `suoxushuliang` int(11) DEFAULT NULL COMMENT '所需数量',
  `zaiqingmiaoshu` longtext COMMENT '灾情描述',
  `jinjichengdu` varchar(200) DEFAULT NULL COMMENT '紧急程度',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `wuzizhuangtai` varchar(200) DEFAULT NULL COMMENT '物资状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786370162 DEFAULT CHARSET=utf8 COMMENT='物资需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzixuqiu`
--

LOCK TABLES `wuzixuqiu` WRITE;
/*!40000 ALTER TABLE `wuzixuqiu` DISABLE KEYS */;
INSERT INTO `wuzixuqiu` VALUES (61,'2024-03-30 08:06:35','物资名称1','物资种类1',1,'灾情描述1','一级','用户账号1','用户姓名1','电话号码1','地址1','是','','已调度'),(62,'2024-03-30 08:06:35','物资名称2','物资种类2',2,'灾情描述2','一级','用户账号2','用户姓名2','电话号码2','地址2','是','','已调度'),(63,'2024-03-30 08:06:35','物资名称3','物资种类3',3,'灾情描述3','一级','用户账号3','用户姓名3','电话号码3','地址3','是','','已调度'),(64,'2024-03-30 08:06:35','物资名称4','物资种类4',4,'灾情描述4','一级','用户账号4','用户姓名4','电话号码4','地址4','是','','已调度'),(65,'2024-03-30 08:06:35','物资名称5','物资种类5',5,'灾情描述5','一级','用户账号5','用户姓名5','电话号码5','地址5','是','','已调度'),(66,'2024-03-30 08:06:35','物资名称6','物资种类6',6,'灾情描述6','一级','用户账号6','用户姓名6','电话号码6','地址6','是','','已调度'),(1711786370161,'2024-03-30 08:12:49','泡面','食物',1580,'u一个iu个iiuhii哦hi','一级','用户1','李斯','13548235685','一个副业副业副业','是','审核通过','已调度');
/*!40000 ALTER TABLE `wuzixuqiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzizhonglei`
--

DROP TABLE IF EXISTS `wuzizhonglei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzizhonglei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzizhonglei` varchar(200) DEFAULT NULL COMMENT '物资种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786221856 DEFAULT CHARSET=utf8 COMMENT='物资种类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzizhonglei`
--

LOCK TABLES `wuzizhonglei` WRITE;
/*!40000 ALTER TABLE `wuzizhonglei` DISABLE KEYS */;
INSERT INTO `wuzizhonglei` VALUES (51,'2024-03-30 08:06:35','物资种类1'),(52,'2024-03-30 08:06:35','物资种类2'),(53,'2024-03-30 08:06:35','物资种类3'),(54,'2024-03-30 08:06:35','物资种类4'),(55,'2024-03-30 08:06:35','物资种类5'),(56,'2024-03-30 08:06:35','物资种类6'),(1711786221855,'2024-03-30 08:10:21','食物');
/*!40000 ALTER TABLE `wuzizhonglei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1711786331436 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-30 08:06:35','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','441622200101010001'),(32,'2024-03-30 08:06:35','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','441622200202020002'),(33,'2024-03-30 08:06:35','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','441622200303030003'),(34,'2024-03-30 08:06:35','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','441622200404040004'),(35,'2024-03-30 08:06:35','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','441622200505050005'),(36,'2024-03-30 08:06:35','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','441622200606060006'),(1711786331435,'2024-03-30 08:12:11','用户1','123456','李斯','file/1711786313149.jpeg','女','13548235685','441403548785485986');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 19:01:57
