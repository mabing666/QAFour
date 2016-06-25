/*
Navicat MySQL Data Transfer

Source Server         : tiaoyu
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : fourqa

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-06-24 17:18:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ascontent` varchar(255) DEFAULT NULL,
  `astime` datetime DEFAULT NULL,
  `asuser` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKAnswerUID` (`asuser`),
  KEY `FKAnswerQID` (`QID`),
  CONSTRAINT `FKAnswerQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKAnswerUID` FOREIGN KEY (`asuser`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for fsanswer
-- ----------------------------
DROP TABLE IF EXISTS `fsanswer`;
CREATE TABLE `fsanswer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFSAnswerFID` (`FID`),
  KEY `FKFSAnswerSID` (`SID`),
  CONSTRAINT `FKAnswerFID` FOREIGN KEY (`FID`) REFERENCES `answer` (`ID`),
  CONSTRAINT `FKAnswerSID` FOREIGN KEY (`SID`) REFERENCES `answer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fsanswer
-- ----------------------------

-- ----------------------------
-- Table structure for fstopic
-- ----------------------------
DROP TABLE IF EXISTS `fstopic`;
CREATE TABLE `fstopic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFSTopicSID` (`SID`),
  KEY `FKFSTopicFID` (`FID`),
  CONSTRAINT `FKFSTopicFID` FOREIGN KEY (`FID`) REFERENCES `topic` (`ID`),
  CONSTRAINT `FKFSTopicSID` FOREIGN KEY (`SID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fstopic
-- ----------------------------
INSERT INTO `fstopic` VALUES ('3', '6', '16');
INSERT INTO `fstopic` VALUES ('4', '7', '6');
INSERT INTO `fstopic` VALUES ('5', '7', '8');
INSERT INTO `fstopic` VALUES ('6', '6', '19');
INSERT INTO `fstopic` VALUES ('7', '9', '11');
INSERT INTO `fstopic` VALUES ('8', '9', '12');
INSERT INTO `fstopic` VALUES ('9', '9', '13');
INSERT INTO `fstopic` VALUES ('11', '16', '18');
INSERT INTO `fstopic` VALUES ('12', '16', '19');
INSERT INTO `fstopic` VALUES ('13', '9', '14');
INSERT INTO `fstopic` VALUES ('14', '50', '7');
INSERT INTO `fstopic` VALUES ('15', '49', '50');
INSERT INTO `fstopic` VALUES ('16', '49', '51');
INSERT INTO `fstopic` VALUES ('17', '49', '52');
INSERT INTO `fstopic` VALUES ('18', '1', '21');
INSERT INTO `fstopic` VALUES ('19', '1', '2');
INSERT INTO `fstopic` VALUES ('20', '1', '3');
INSERT INTO `fstopic` VALUES ('21', '1', '33');
INSERT INTO `fstopic` VALUES ('22', '1', '30');
INSERT INTO `fstopic` VALUES ('23', '21', '22');
INSERT INTO `fstopic` VALUES ('24', '21', '30');
INSERT INTO `fstopic` VALUES ('25', '1', '41');
INSERT INTO `fstopic` VALUES ('26', '22', '26');
INSERT INTO `fstopic` VALUES ('27', '22', '27');
INSERT INTO `fstopic` VALUES ('28', '26', '28');
INSERT INTO `fstopic` VALUES ('29', '26', '29');
INSERT INTO `fstopic` VALUES ('30', '22', '25');
INSERT INTO `fstopic` VALUES ('31', '29', '23');
INSERT INTO `fstopic` VALUES ('32', '29', '24');
INSERT INTO `fstopic` VALUES ('33', '30', '31');
INSERT INTO `fstopic` VALUES ('34', '30', '32');
INSERT INTO `fstopic` VALUES ('35', '31', '34');
INSERT INTO `fstopic` VALUES ('36', '31', '35');
INSERT INTO `fstopic` VALUES ('37', '31', '36');
INSERT INTO `fstopic` VALUES ('38', '1', '37');
INSERT INTO `fstopic` VALUES ('39', '37', '33');
INSERT INTO `fstopic` VALUES ('40', '37', '38');
INSERT INTO `fstopic` VALUES ('41', '37', '39');
INSERT INTO `fstopic` VALUES ('42', '37', '40');
INSERT INTO `fstopic` VALUES ('43', '41', '42');
INSERT INTO `fstopic` VALUES ('44', '41', '45');
INSERT INTO `fstopic` VALUES ('45', '42', '43');
INSERT INTO `fstopic` VALUES ('46', '42', '44');
INSERT INTO `fstopic` VALUES ('47', '45', '46');
INSERT INTO `fstopic` VALUES ('48', '45', '47');
INSERT INTO `fstopic` VALUES ('49', '45', '48');
INSERT INTO `fstopic` VALUES ('50', '3', '4');
INSERT INTO `fstopic` VALUES ('51', '3', '5');
INSERT INTO `fstopic` VALUES ('52', '30', '37');
INSERT INTO `fstopic` VALUES ('53', '27', '31');
INSERT INTO `fstopic` VALUES ('54', '27', '32');

-- ----------------------------
-- Table structure for qtp
-- ----------------------------
DROP TABLE IF EXISTS `qtp`;
CREATE TABLE `qtp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TPID` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQstpTPID` (`TPID`),
  KEY `FKQstpQID` (`QID`),
  CONSTRAINT `FKQTPQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKQTPTPID` FOREIGN KEY (`TPID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qtp
-- ----------------------------
INSERT INTO `qtp` VALUES ('1', '47', '1');

-- ----------------------------
-- Table structure for qu
-- ----------------------------
DROP TABLE IF EXISTS `qu`;
CREATE TABLE `qu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQUUID` (`UID`),
  KEY `FKQUQID` (`QID`),
  CONSTRAINT `FKQUQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKQUUID` FOREIGN KEY (`UID`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qu
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `qstitle` varchar(255) DEFAULT NULL,
  `qscontent` mediumtext,
  `qstime` datetime DEFAULT NULL,
  `qsuser` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQuestionUID` (`qsuser`),
  CONSTRAINT `FKQuestionUID` FOREIGN KEY (`qsuser`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '毕业两年想从事数据分析方面工作该不该考研？', '本人目前是一名前端程序猿，14年毕业，今年24，从编程中获得许多乐趣。事情起源于，一直向往数据分析这块，用自学的爬虫爬过很多网站，然后感觉光有数据不够还得有分析方法，于是又自学了《统计学习方法》跟《集体智慧编程》，于是对机器学习有了初步的了解。在学习过程中越发觉得对两个方向缺失，一个是数学确切来说是统计学相关的知识，一个是算法数据结构相关的知识。(本人大学一普通211，学材料，大学天天浪，现在就是在为之前的贪玩填坑。)\r\n但自己也发现，这两个方向需要集中一段具体的时间来研究学习（这很关键），而且之前都是自学也不系统，现在每天工作到九点，感觉很缺乏时间，并且，想把数据分析数据挖掘作为今后方向。于是，想到考研，具体是想考统计学或者计算机方面研究生。请各位大神指教，有没有必要考研，或者关于我现在状况考研会有帮助？', '2016-06-24 13:11:07', '3');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tgname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tpname` varchar(255) DEFAULT NULL,
  `tpdetail` varchar(255) DEFAULT NULL,
  `tptag` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKTopicTGID` (`tptag`),
  CONSTRAINT `FKTopicTGID` FOREIGN KEY (`tptag`) REFERENCES `tag` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '根话题', null, null);
INSERT INTO `topic` VALUES ('2', '吃喝玩乐', null, null);
INSERT INTO `topic` VALUES ('3', '旅行', '最美的景色永远在远方，再远的脚步也走不出心房', null);
INSERT INTO `topic` VALUES ('4', '旅行计划', null, null);
INSERT INTO `topic` VALUES ('5', '旅行攻略', null, null);
INSERT INTO `topic` VALUES ('6', '软件工程', null, null);
INSERT INTO `topic` VALUES ('7', '计算机科学', null, null);
INSERT INTO `topic` VALUES ('8', '编译原理', null, null);
INSERT INTO `topic` VALUES ('9', '软件开发', null, null);
INSERT INTO `topic` VALUES ('10', '软件测试', null, null);
INSERT INTO `topic` VALUES ('11', ' 前端开发', null, null);
INSERT INTO `topic` VALUES ('12', 'LINUX开发', null, null);
INSERT INTO `topic` VALUES ('13', 'IOS开发', null, null);
INSERT INTO `topic` VALUES ('14', 'Andriod开发', null, null);
INSERT INTO `topic` VALUES ('15', '软件测试', null, null);
INSERT INTO `topic` VALUES ('16', '软件设计', null, null);
INSERT INTO `topic` VALUES ('17', '接口设计', null, null);
INSERT INTO `topic` VALUES ('18', '面向对象设计', null, null);
INSERT INTO `topic` VALUES ('19', 'ＵＭＬ', null, null);
INSERT INTO `topic` VALUES ('20', '软件测试', null, null);
INSERT INTO `topic` VALUES ('21', '娱乐', '　', null);
INSERT INTO `topic` VALUES ('22', '游戏', null, null);
INSERT INTO `topic` VALUES ('23', '单机游戏', null, null);
INSERT INTO `topic` VALUES ('24', '网络游戏', null, null);
INSERT INTO `topic` VALUES ('25', '游戏竞技', null, null);
INSERT INTO `topic` VALUES ('26', '电子游戏', null, null);
INSERT INTO `topic` VALUES ('27', '运动游戏', null, null);
INSERT INTO `topic` VALUES ('28', '手机游戏', null, null);
INSERT INTO `topic` VALUES ('29', '电脑游戏', null, null);
INSERT INTO `topic` VALUES ('30', '运动', null, null);
INSERT INTO `topic` VALUES ('31', '足球', null, null);
INSERT INTO `topic` VALUES ('32', '篮球', null, null);
INSERT INTO `topic` VALUES ('33', '健身', null, null);
INSERT INTO `topic` VALUES ('34', '足球赛事', null, null);
INSERT INTO `topic` VALUES ('35', '足球俱乐部', null, null);
INSERT INTO `topic` VALUES ('36', '足球规则', null, null);
INSERT INTO `topic` VALUES ('37', '健康', null, null);
INSERT INTO `topic` VALUES ('38', '身体健康', null, null);
INSERT INTO `topic` VALUES ('39', '心理健康', null, null);
INSERT INTO `topic` VALUES ('40', '饮食健康', null, null);
INSERT INTO `topic` VALUES ('41', '文化', null, null);
INSERT INTO `topic` VALUES ('42', '动漫', null, null);
INSERT INTO `topic` VALUES ('43', '日本动漫', null, null);
INSERT INTO `topic` VALUES ('44', '国漫', null, null);
INSERT INTO `topic` VALUES ('45', '教育', null, null);
INSERT INTO `topic` VALUES ('46', '大学', null, null);
INSERT INTO `topic` VALUES ('47', '考研', null, null);
INSERT INTO `topic` VALUES ('48', '儿童教育', null, null);
INSERT INTO `topic` VALUES ('49', '科技', null, null);
INSERT INTO `topic` VALUES ('50', '现代科学技术', null, null);
INSERT INTO `topic` VALUES ('51', '黑科技', null, null);
INSERT INTO `topic` VALUES ('52', '生物科技', null, null);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upwd` varchar(64) DEFAULT NULL,
  `ucontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'tiaoyu', 'include', 'come，baby！');
INSERT INTO `userinfo` VALUES ('3', '萧井陌 ', 'include', '微信公众号：炼瓜研究所 技术社区');

-- ----------------------------
-- Table structure for utp
-- ----------------------------
DROP TABLE IF EXISTS `utp`;
CREATE TABLE `utp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TPID` int(11) DEFAULT NULL,
  `UID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKUTPUID` (`UID`),
  KEY `FKUTPTPID` (`TPID`),
  CONSTRAINT `FKUTPTPID` FOREIGN KEY (`TPID`) REFERENCES `topic` (`ID`),
  CONSTRAINT `FKUTPUID` FOREIGN KEY (`UID`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utp
-- ----------------------------
