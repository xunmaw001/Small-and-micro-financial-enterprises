-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm3539r
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
-- Current Database: `ssm3539r`
--

/*!40000 DROP DATABASE IF EXISTS `ssm3539r`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm3539r` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm3539r`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-02-28 08:45:12','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='咨询客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (111,'2023-02-28 08:45:12',1,1,'提问1','回复1',1),(112,'2023-02-28 08:45:12',2,2,'提问2','回复2',2),(113,'2023-02-28 08:45:12',3,3,'提问3','回复3',3),(114,'2023-02-28 08:45:12',4,4,'提问4','回复4',4),(115,'2023-02-28 08:45:12',5,5,'提问5','回复5',5),(116,'2023-02-28 08:45:12',6,6,'提问6','回复6',6),(117,'2023-02-28 08:45:12',7,7,'提问7','回复7',7),(118,'2023-02-28 08:45:12',8,8,'提问8','回复8',8);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daibanshenqing`
--

DROP TABLE IF EXISTS `daibanshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daibanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmufenlei` varchar(200) DEFAULT NULL COMMENT '项目分类',
  `fengmiantupian` longtext COMMENT '封面图片',
  `daibanjine` float DEFAULT NULL COMMENT '代办金额',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='代办申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daibanshenqing`
--

LOCK TABLES `daibanshenqing` WRITE;
/*!40000 ALTER TABLE `daibanshenqing` DISABLE KEYS */;
INSERT INTO `daibanshenqing` VALUES (91,'2023-02-28 08:45:12','项目编号1','项目名称1','项目分类1','upload/daibanshenqing_fengmiantupian1.jpg,upload/daibanshenqing_fengmiantupian2.jpg,upload/daibanshenqing_fengmiantupian3.jpg',1,'联系人1','联系方式1','用户账号1','用户姓名1','用户手机1','申请内容1','2023-02-28 16:45:12'),(92,'2023-02-28 08:45:12','项目编号2','项目名称2','项目分类2','upload/daibanshenqing_fengmiantupian2.jpg,upload/daibanshenqing_fengmiantupian3.jpg,upload/daibanshenqing_fengmiantupian4.jpg',2,'联系人2','联系方式2','用户账号2','用户姓名2','用户手机2','申请内容2','2023-02-28 16:45:12'),(93,'2023-02-28 08:45:12','项目编号3','项目名称3','项目分类3','upload/daibanshenqing_fengmiantupian3.jpg,upload/daibanshenqing_fengmiantupian4.jpg,upload/daibanshenqing_fengmiantupian5.jpg',3,'联系人3','联系方式3','用户账号3','用户姓名3','用户手机3','申请内容3','2023-02-28 16:45:12'),(94,'2023-02-28 08:45:12','项目编号4','项目名称4','项目分类4','upload/daibanshenqing_fengmiantupian4.jpg,upload/daibanshenqing_fengmiantupian5.jpg,upload/daibanshenqing_fengmiantupian6.jpg',4,'联系人4','联系方式4','用户账号4','用户姓名4','用户手机4','申请内容4','2023-02-28 16:45:12'),(95,'2023-02-28 08:45:12','项目编号5','项目名称5','项目分类5','upload/daibanshenqing_fengmiantupian5.jpg,upload/daibanshenqing_fengmiantupian6.jpg,upload/daibanshenqing_fengmiantupian7.jpg',5,'联系人5','联系方式5','用户账号5','用户姓名5','用户手机5','申请内容5','2023-02-28 16:45:12'),(96,'2023-02-28 08:45:12','项目编号6','项目名称6','项目分类6','upload/daibanshenqing_fengmiantupian6.jpg,upload/daibanshenqing_fengmiantupian7.jpg,upload/daibanshenqing_fengmiantupian8.jpg',6,'联系人6','联系方式6','用户账号6','用户姓名6','用户手机6','申请内容6','2023-02-28 16:45:12'),(97,'2023-02-28 08:45:12','项目编号7','项目名称7','项目分类7','upload/daibanshenqing_fengmiantupian7.jpg,upload/daibanshenqing_fengmiantupian8.jpg,upload/daibanshenqing_fengmiantupian9.jpg',7,'联系人7','联系方式7','用户账号7','用户姓名7','用户手机7','申请内容7','2023-02-28 16:45:12'),(98,'2023-02-28 08:45:12','项目编号8','项目名称8','项目分类8','upload/daibanshenqing_fengmiantupian8.jpg,upload/daibanshenqing_fengmiantupian9.jpg,upload/daibanshenqing_fengmiantupian10.jpg',8,'联系人8','联系方式8','用户账号8','用户姓名8','用户手机8','申请内容8','2023-02-28 16:45:12');
/*!40000 ALTER TABLE `daibanshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daibanxiangmu`
--

DROP TABLE IF EXISTS `daibanxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daibanxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xiangmufenlei` varchar(200) DEFAULT NULL COMMENT '项目分类',
  `xiangmuneirong` longtext COMMENT '项目内容',
  `fengmiantupian` longtext COMMENT '封面图片',
  `daibanjine` float NOT NULL COMMENT '代办金额',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmubianhao` (`xiangmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='代办项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daibanxiangmu`
--

LOCK TABLES `daibanxiangmu` WRITE;
/*!40000 ALTER TABLE `daibanxiangmu` DISABLE KEYS */;
INSERT INTO `daibanxiangmu` VALUES (51,'2023-02-28 08:45:11','1111111111','项目名称1','项目分类1','项目内容1','upload/daibanxiangmu_fengmiantupian1.jpg,upload/daibanxiangmu_fengmiantupian2.jpg,upload/daibanxiangmu_fengmiantupian3.jpg',1,'联系人1','联系方式1','2023-02-28 16:45:11'),(52,'2023-02-28 08:45:11','2222222222','项目名称2','项目分类2','项目内容2','upload/daibanxiangmu_fengmiantupian2.jpg,upload/daibanxiangmu_fengmiantupian3.jpg,upload/daibanxiangmu_fengmiantupian4.jpg',2,'联系人2','联系方式2','2023-02-28 16:45:11'),(53,'2023-02-28 08:45:11','3333333333','项目名称3','项目分类3','项目内容3','upload/daibanxiangmu_fengmiantupian3.jpg,upload/daibanxiangmu_fengmiantupian4.jpg,upload/daibanxiangmu_fengmiantupian5.jpg',3,'联系人3','联系方式3','2023-02-28 16:45:11'),(54,'2023-02-28 08:45:11','4444444444','项目名称4','项目分类4','项目内容4','upload/daibanxiangmu_fengmiantupian4.jpg,upload/daibanxiangmu_fengmiantupian5.jpg,upload/daibanxiangmu_fengmiantupian6.jpg',4,'联系人4','联系方式4','2023-02-28 16:45:11'),(55,'2023-02-28 08:45:11','5555555555','项目名称5','项目分类5','项目内容5','upload/daibanxiangmu_fengmiantupian5.jpg,upload/daibanxiangmu_fengmiantupian6.jpg,upload/daibanxiangmu_fengmiantupian7.jpg',5,'联系人5','联系方式5','2023-02-28 16:45:11'),(56,'2023-02-28 08:45:11','6666666666','项目名称6','项目分类6','项目内容6','upload/daibanxiangmu_fengmiantupian6.jpg,upload/daibanxiangmu_fengmiantupian7.jpg,upload/daibanxiangmu_fengmiantupian8.jpg',6,'联系人6','联系方式6','2023-02-28 16:45:11'),(57,'2023-02-28 08:45:11','7777777777','项目名称7','项目分类7','项目内容7','upload/daibanxiangmu_fengmiantupian7.jpg,upload/daibanxiangmu_fengmiantupian8.jpg,upload/daibanxiangmu_fengmiantupian9.jpg',7,'联系人7','联系方式7','2023-02-28 16:45:11'),(58,'2023-02-28 08:45:11','8888888888','项目名称8','项目分类8','项目内容8','upload/daibanxiangmu_fengmiantupian8.jpg,upload/daibanxiangmu_fengmiantupian9.jpg,upload/daibanxiangmu_fengmiantupian10.jpg',8,'联系人8','联系方式8','2023-02-28 16:45:11');
/*!40000 ALTER TABLE `daibanxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daikuanshenqing`
--

DROP TABLE IF EXISTS `daikuanshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daikuanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daikuanmingcheng` varchar(200) DEFAULT NULL COMMENT '贷款名称',
  `daikuanzhonglei` varchar(200) DEFAULT NULL COMMENT '贷款种类',
  `fengmian` longtext COMMENT '封面',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `daikuanjine` float DEFAULT NULL COMMENT '贷款金额',
  `daikuanshijian` datetime DEFAULT NULL COMMENT '贷款时间',
  `daikuanshuoming` longtext COMMENT '贷款说明',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='贷款申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daikuanshenqing`
--

LOCK TABLES `daikuanshenqing` WRITE;
/*!40000 ALTER TABLE `daikuanshenqing` DISABLE KEYS */;
INSERT INTO `daikuanshenqing` VALUES (31,'2023-02-28 08:45:11','贷款名称1','贷款种类1','upload/daikuanshenqing_fengmian1.jpg,upload/daikuanshenqing_fengmian2.jpg,upload/daikuanshenqing_fengmian3.jpg','用户账号1','用户姓名1','用户手机1','440300199101010001',1,'2023-02-28 16:45:11','贷款说明1','是',''),(32,'2023-02-28 08:45:11','贷款名称2','贷款种类2','upload/daikuanshenqing_fengmian2.jpg,upload/daikuanshenqing_fengmian3.jpg,upload/daikuanshenqing_fengmian4.jpg','用户账号2','用户姓名2','用户手机2','440300199202020002',2,'2023-02-28 16:45:11','贷款说明2','是',''),(33,'2023-02-28 08:45:11','贷款名称3','贷款种类3','upload/daikuanshenqing_fengmian3.jpg,upload/daikuanshenqing_fengmian4.jpg,upload/daikuanshenqing_fengmian5.jpg','用户账号3','用户姓名3','用户手机3','440300199303030003',3,'2023-02-28 16:45:11','贷款说明3','是',''),(34,'2023-02-28 08:45:11','贷款名称4','贷款种类4','upload/daikuanshenqing_fengmian4.jpg,upload/daikuanshenqing_fengmian5.jpg,upload/daikuanshenqing_fengmian6.jpg','用户账号4','用户姓名4','用户手机4','440300199404040004',4,'2023-02-28 16:45:11','贷款说明4','是',''),(35,'2023-02-28 08:45:11','贷款名称5','贷款种类5','upload/daikuanshenqing_fengmian5.jpg,upload/daikuanshenqing_fengmian6.jpg,upload/daikuanshenqing_fengmian7.jpg','用户账号5','用户姓名5','用户手机5','440300199505050005',5,'2023-02-28 16:45:11','贷款说明5','是',''),(36,'2023-02-28 08:45:11','贷款名称6','贷款种类6','upload/daikuanshenqing_fengmian6.jpg,upload/daikuanshenqing_fengmian7.jpg,upload/daikuanshenqing_fengmian8.jpg','用户账号6','用户姓名6','用户手机6','440300199606060006',6,'2023-02-28 16:45:11','贷款说明6','是',''),(37,'2023-02-28 08:45:11','贷款名称7','贷款种类7','upload/daikuanshenqing_fengmian7.jpg,upload/daikuanshenqing_fengmian8.jpg,upload/daikuanshenqing_fengmian9.jpg','用户账号7','用户姓名7','用户手机7','440300199707070007',7,'2023-02-28 16:45:11','贷款说明7','是',''),(38,'2023-02-28 08:45:11','贷款名称8','贷款种类8','upload/daikuanshenqing_fengmian8.jpg,upload/daikuanshenqing_fengmian9.jpg,upload/daikuanshenqing_fengmian10.jpg','用户账号8','用户姓名8','用户手机8','440300199808080008',8,'2023-02-28 16:45:11','贷款说明8','是','');
/*!40000 ALTER TABLE `daikuanshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daikuanxinxi`
--

DROP TABLE IF EXISTS `daikuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daikuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daikuanmingcheng` varchar(200) NOT NULL COMMENT '贷款名称',
  `daikuanzhonglei` varchar(200) NOT NULL COMMENT '贷款种类',
  `fengmian` longtext COMMENT '封面',
  `kedaijine` int(11) NOT NULL COMMENT '可贷金额',
  `daikuantiaojian` longtext NOT NULL COMMENT '贷款条件',
  `haikuanqixian` varchar(200) DEFAULT NULL COMMENT '还款期限',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='贷款信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daikuanxinxi`
--

LOCK TABLES `daikuanxinxi` WRITE;
/*!40000 ALTER TABLE `daikuanxinxi` DISABLE KEYS */;
INSERT INTO `daikuanxinxi` VALUES (21,'2023-02-28 08:45:11','贷款名称1','贷款种类1','upload/daikuanxinxi_fengmian1.jpg,upload/daikuanxinxi_fengmian2.jpg,upload/daikuanxinxi_fengmian3.jpg',1,'贷款条件1','还款期限1','详细介绍1','2023-02-28'),(22,'2023-02-28 08:45:11','贷款名称2','贷款种类2','upload/daikuanxinxi_fengmian2.jpg,upload/daikuanxinxi_fengmian3.jpg,upload/daikuanxinxi_fengmian4.jpg',2,'贷款条件2','还款期限2','详细介绍2','2023-02-28'),(23,'2023-02-28 08:45:11','贷款名称3','贷款种类3','upload/daikuanxinxi_fengmian3.jpg,upload/daikuanxinxi_fengmian4.jpg,upload/daikuanxinxi_fengmian5.jpg',3,'贷款条件3','还款期限3','详细介绍3','2023-02-28'),(24,'2023-02-28 08:45:11','贷款名称4','贷款种类4','upload/daikuanxinxi_fengmian4.jpg,upload/daikuanxinxi_fengmian5.jpg,upload/daikuanxinxi_fengmian6.jpg',4,'贷款条件4','还款期限4','详细介绍4','2023-02-28'),(25,'2023-02-28 08:45:11','贷款名称5','贷款种类5','upload/daikuanxinxi_fengmian5.jpg,upload/daikuanxinxi_fengmian6.jpg,upload/daikuanxinxi_fengmian7.jpg',5,'贷款条件5','还款期限5','详细介绍5','2023-02-28'),(26,'2023-02-28 08:45:11','贷款名称6','贷款种类6','upload/daikuanxinxi_fengmian6.jpg,upload/daikuanxinxi_fengmian7.jpg,upload/daikuanxinxi_fengmian8.jpg',6,'贷款条件6','还款期限6','详细介绍6','2023-02-28'),(27,'2023-02-28 08:45:11','贷款名称7','贷款种类7','upload/daikuanxinxi_fengmian7.jpg,upload/daikuanxinxi_fengmian8.jpg,upload/daikuanxinxi_fengmian9.jpg',7,'贷款条件7','还款期限7','详细介绍7','2023-02-28'),(28,'2023-02-28 08:45:11','贷款名称8','贷款种类8','upload/daikuanxinxi_fengmian8.jpg,upload/daikuanxinxi_fengmian9.jpg,upload/daikuanxinxi_fengmian10.jpg',8,'贷款条件8','还款期限8','详细介绍8','2023-02-28');
/*!40000 ALTER TABLE `daikuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daikuanzhonglei`
--

DROP TABLE IF EXISTS `daikuanzhonglei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daikuanzhonglei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daikuanzhonglei` varchar(200) NOT NULL COMMENT '贷款种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='贷款种类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daikuanzhonglei`
--

LOCK TABLES `daikuanzhonglei` WRITE;
/*!40000 ALTER TABLE `daikuanzhonglei` DISABLE KEYS */;
INSERT INTO `daikuanzhonglei` VALUES (41,'2023-02-28 08:45:11','贷款种类1'),(42,'2023-02-28 08:45:11','贷款种类2'),(43,'2023-02-28 08:45:11','贷款种类3'),(44,'2023-02-28 08:45:11','贷款种类4'),(45,'2023-02-28 08:45:11','贷款种类5'),(46,'2023-02-28 08:45:11','贷款种类6'),(47,'2023-02-28 08:45:11','贷款种类7'),(48,'2023-02-28 08:45:11','贷款种类8');
/*!40000 ALTER TABLE `daikuanzhonglei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdaikuanxinxi`
--

DROP TABLE IF EXISTS `discussdaikuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdaikuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='贷款信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdaikuanxinxi`
--

LOCK TABLES `discussdaikuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussdaikuanxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussdaikuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenduihuan`
--

DROP TABLE IF EXISTS `jifenduihuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifenduihuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `duihuanbianhao` varchar(200) DEFAULT NULL COMMENT '兑换编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `duihuanjifen` int(11) DEFAULT NULL COMMENT '兑换积分',
  `duihuanshuliang` int(11) DEFAULT NULL COMMENT '兑换数量',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `duihuanshijian` date DEFAULT NULL COMMENT '兑换时间',
  `duihuanbeizhu` varchar(200) DEFAULT NULL COMMENT '兑换备注',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `duihuanbianhao` (`duihuanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='积分兑换';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenduihuan`
--

LOCK TABLES `jifenduihuan` WRITE;
/*!40000 ALTER TABLE `jifenduihuan` DISABLE KEYS */;
INSERT INTO `jifenduihuan` VALUES (81,'2023-02-28 08:45:12','1111111111','商品名称1','upload/jifenduihuan_shangpintupian1.jpg,upload/jifenduihuan_shangpintupian2.jpg,upload/jifenduihuan_shangpintupian3.jpg',1,1,'用户账号1','用户姓名1',1,'2023-02-28','兑换备注1','收货地址1'),(82,'2023-02-28 08:45:12','2222222222','商品名称2','upload/jifenduihuan_shangpintupian2.jpg,upload/jifenduihuan_shangpintupian3.jpg,upload/jifenduihuan_shangpintupian4.jpg',2,2,'用户账号2','用户姓名2',2,'2023-02-28','兑换备注2','收货地址2'),(83,'2023-02-28 08:45:12','3333333333','商品名称3','upload/jifenduihuan_shangpintupian3.jpg,upload/jifenduihuan_shangpintupian4.jpg,upload/jifenduihuan_shangpintupian5.jpg',3,3,'用户账号3','用户姓名3',3,'2023-02-28','兑换备注3','收货地址3'),(84,'2023-02-28 08:45:12','4444444444','商品名称4','upload/jifenduihuan_shangpintupian4.jpg,upload/jifenduihuan_shangpintupian5.jpg,upload/jifenduihuan_shangpintupian6.jpg',4,4,'用户账号4','用户姓名4',4,'2023-02-28','兑换备注4','收货地址4'),(85,'2023-02-28 08:45:12','5555555555','商品名称5','upload/jifenduihuan_shangpintupian5.jpg,upload/jifenduihuan_shangpintupian6.jpg,upload/jifenduihuan_shangpintupian7.jpg',5,5,'用户账号5','用户姓名5',5,'2023-02-28','兑换备注5','收货地址5'),(86,'2023-02-28 08:45:12','6666666666','商品名称6','upload/jifenduihuan_shangpintupian6.jpg,upload/jifenduihuan_shangpintupian7.jpg,upload/jifenduihuan_shangpintupian8.jpg',6,6,'用户账号6','用户姓名6',6,'2023-02-28','兑换备注6','收货地址6'),(87,'2023-02-28 08:45:12','7777777777','商品名称7','upload/jifenduihuan_shangpintupian7.jpg,upload/jifenduihuan_shangpintupian8.jpg,upload/jifenduihuan_shangpintupian9.jpg',7,7,'用户账号7','用户姓名7',7,'2023-02-28','兑换备注7','收货地址7'),(88,'2023-02-28 08:45:12','8888888888','商品名称8','upload/jifenduihuan_shangpintupian8.jpg,upload/jifenduihuan_shangpintupian9.jpg,upload/jifenduihuan_shangpintupian10.jpg',8,8,'用户账号8','用户姓名8',8,'2023-02-28','兑换备注8','收货地址8');
/*!40000 ALTER TABLE `jifenduihuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenshangcheng`
--

DROP TABLE IF EXISTS `jifenshangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifenshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpintupian` longtext COMMENT '商品图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `duihuanjifen` int(11) NOT NULL COMMENT '兑换积分',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='积分商城';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenshangcheng`
--

LOCK TABLES `jifenshangcheng` WRITE;
/*!40000 ALTER TABLE `jifenshangcheng` DISABLE KEYS */;
INSERT INTO `jifenshangcheng` VALUES (71,'2023-02-28 08:45:11','1111111111','商品名称1','upload/jifenshangcheng_shangpintupian1.jpg,upload/jifenshangcheng_shangpintupian2.jpg,upload/jifenshangcheng_shangpintupian3.jpg','品牌1',1,'规格1','详情1'),(72,'2023-02-28 08:45:11','2222222222','商品名称2','upload/jifenshangcheng_shangpintupian2.jpg,upload/jifenshangcheng_shangpintupian3.jpg,upload/jifenshangcheng_shangpintupian4.jpg','品牌2',2,'规格2','详情2'),(73,'2023-02-28 08:45:11','3333333333','商品名称3','upload/jifenshangcheng_shangpintupian3.jpg,upload/jifenshangcheng_shangpintupian4.jpg,upload/jifenshangcheng_shangpintupian5.jpg','品牌3',3,'规格3','详情3'),(74,'2023-02-28 08:45:11','4444444444','商品名称4','upload/jifenshangcheng_shangpintupian4.jpg,upload/jifenshangcheng_shangpintupian5.jpg,upload/jifenshangcheng_shangpintupian6.jpg','品牌4',4,'规格4','详情4'),(75,'2023-02-28 08:45:11','5555555555','商品名称5','upload/jifenshangcheng_shangpintupian5.jpg,upload/jifenshangcheng_shangpintupian6.jpg,upload/jifenshangcheng_shangpintupian7.jpg','品牌5',5,'规格5','详情5'),(76,'2023-02-28 08:45:11','6666666666','商品名称6','upload/jifenshangcheng_shangpintupian6.jpg,upload/jifenshangcheng_shangpintupian7.jpg,upload/jifenshangcheng_shangpintupian8.jpg','品牌6',6,'规格6','详情6'),(77,'2023-02-28 08:45:11','7777777777','商品名称7','upload/jifenshangcheng_shangpintupian7.jpg,upload/jifenshangcheng_shangpintupian8.jpg,upload/jifenshangcheng_shangpintupian9.jpg','品牌7',7,'规格7','详情7'),(78,'2023-02-28 08:45:12','8888888888','商品名称8','upload/jifenshangcheng_shangpintupian8.jpg,upload/jifenshangcheng_shangpintupian9.jpg,upload/jifenshangcheng_shangpintupian10.jpg','品牌8',8,'规格8','详情8');
/*!40000 ALTER TABLE `jifenshangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jifenzengjia`
--

DROP TABLE IF EXISTS `jifenzengjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jifenzengjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `jifen` int(11) NOT NULL COMMENT '积分',
  `zengjiashijian` datetime DEFAULT NULL COMMENT '增加时间',
  `zengjiashiyou` varchar(200) DEFAULT NULL COMMENT '增加事由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='积分增加';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jifenzengjia`
--

LOCK TABLES `jifenzengjia` WRITE;
/*!40000 ALTER TABLE `jifenzengjia` DISABLE KEYS */;
INSERT INTO `jifenzengjia` VALUES (101,'2023-02-28 08:45:12','用户账号1','用户姓名1',1,'2023-02-28 16:45:12','增加事由1'),(102,'2023-02-28 08:45:12','用户账号2','用户姓名2',2,'2023-02-28 16:45:12','增加事由2'),(103,'2023-02-28 08:45:12','用户账号3','用户姓名3',3,'2023-02-28 16:45:12','增加事由3'),(104,'2023-02-28 08:45:12','用户账号4','用户姓名4',4,'2023-02-28 16:45:12','增加事由4'),(105,'2023-02-28 08:45:12','用户账号5','用户姓名5',5,'2023-02-28 16:45:12','增加事由5'),(106,'2023-02-28 08:45:12','用户账号6','用户姓名6',6,'2023-02-28 16:45:12','增加事由6'),(107,'2023-02-28 08:45:12','用户账号7','用户姓名7',7,'2023-02-28 16:45:12','增加事由7'),(108,'2023-02-28 08:45:12','用户账号8','用户姓名8',8,'2023-02-28 16:45:12','增加事由8');
/*!40000 ALTER TABLE `jifenzengjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='金融资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2023-02-28 08:45:12','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(132,'2023-02-28 08:45:12','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(133,'2023-02-28 08:45:12','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(134,'2023-02-28 08:45:12','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(135,'2023-02-28 08:45:12','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(136,'2023-02-28 08:45:12','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(137,'2023-02-28 08:45:12','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(138,'2023-02-28 08:45:12','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-02-28 08:45:12','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-28 08:45:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmufenlei`
--

DROP TABLE IF EXISTS `xiangmufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmufenlei` varchar(200) NOT NULL COMMENT '项目分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='项目分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmufenlei`
--

LOCK TABLES `xiangmufenlei` WRITE;
/*!40000 ALTER TABLE `xiangmufenlei` DISABLE KEYS */;
INSERT INTO `xiangmufenlei` VALUES (61,'2023-02-28 08:45:11','项目分类1'),(62,'2023-02-28 08:45:11','项目分类2'),(63,'2023-02-28 08:45:11','项目分类3'),(64,'2023-02-28 08:45:11','项目分类4'),(65,'2023-02-28 08:45:11','项目分类5'),(66,'2023-02-28 08:45:11','项目分类6'),(67,'2023-02-28 08:45:11','项目分类7'),(68,'2023-02-28 08:45:11','项目分类8');
/*!40000 ALTER TABLE `xiangmufenlei` ENABLE KEYS */;
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
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` longtext COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-02-28 08:45:11','用户账号1','123456','用户姓名1','男','年龄1','upload/yonghu_touxiang1.jpg','13823888881',1),(12,'2023-02-28 08:45:11','用户账号2','123456','用户姓名2','男','年龄2','upload/yonghu_touxiang2.jpg','13823888882',2),(13,'2023-02-28 08:45:11','用户账号3','123456','用户姓名3','男','年龄3','upload/yonghu_touxiang3.jpg','13823888883',3),(14,'2023-02-28 08:45:11','用户账号4','123456','用户姓名4','男','年龄4','upload/yonghu_touxiang4.jpg','13823888884',4),(15,'2023-02-28 08:45:11','用户账号5','123456','用户姓名5','男','年龄5','upload/yonghu_touxiang5.jpg','13823888885',5),(16,'2023-02-28 08:45:11','用户账号6','123456','用户姓名6','男','年龄6','upload/yonghu_touxiang6.jpg','13823888886',6),(17,'2023-02-28 08:45:11','用户账号7','123456','用户姓名7','男','年龄7','upload/yonghu_touxiang7.jpg','13823888887',7),(18,'2023-02-28 08:45:11','用户账号8','123456','用户姓名8','男','年龄8','upload/yonghu_touxiang8.jpg','13823888888',8);
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

-- Dump completed on 2023-03-15 13:07:24
