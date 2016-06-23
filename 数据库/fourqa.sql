/*
Navicat MySQL Data Transfer

Source Server         : tiaoyu
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : fourqa

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-06-23 09:40:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `ID` char(11) NOT NULL,
  `ascontent` varchar(255) DEFAULT NULL,
  `astime` datetime DEFAULT NULL,
  `asuser` varchar(255) DEFAULT NULL,
  `QID` char(11) DEFAULT NULL,
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
-- Table structure for four
-- ----------------------------
DROP TABLE IF EXISTS `four`;
CREATE TABLE `four` (
  `ID` char(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of four
-- ----------------------------
INSERT INTO `four` VALUES ('1', '陶肖宇', '中央最高审判长', 'include');

-- ----------------------------
-- Table structure for fsanswer
-- ----------------------------
DROP TABLE IF EXISTS `fsanswer`;
CREATE TABLE `fsanswer` (
  `ID` char(11) NOT NULL,
  `FID` char(11) DEFAULT NULL,
  `SID` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFSAnswerFID` (`FID`),
  KEY `FKFSAnswerSID` (`SID`),
  CONSTRAINT `FKFSAnswerFID` FOREIGN KEY (`FID`) REFERENCES `answer` (`ID`),
  CONSTRAINT `FKFSAnswerSID` FOREIGN KEY (`SID`) REFERENCES `answer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fsanswer
-- ----------------------------

-- ----------------------------
-- Table structure for fstopic
-- ----------------------------
DROP TABLE IF EXISTS `fstopic`;
CREATE TABLE `fstopic` (
  `ID` char(11) NOT NULL,
  `FID` char(11) DEFAULT NULL,
  `SID` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFSTopicFID` (`FID`),
  KEY `FKFSTopicSID` (`SID`),
  CONSTRAINT `FKFSTopicFID` FOREIGN KEY (`FID`) REFERENCES `topic` (`ID`),
  CONSTRAINT `FKFSTopicSID` FOREIGN KEY (`SID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fstopic
-- ----------------------------
INSERT INTO `fstopic` VALUES ('1', '1', '2');
INSERT INTO `fstopic` VALUES ('10', '3', '11');
INSERT INTO `fstopic` VALUES ('11', '4', '12');
INSERT INTO `fstopic` VALUES ('12', '4', '13');
INSERT INTO `fstopic` VALUES ('13', '5', '14');
INSERT INTO `fstopic` VALUES ('14', '5', '15');
INSERT INTO `fstopic` VALUES ('15', '6', '16');
INSERT INTO `fstopic` VALUES ('16', '7', '17');
INSERT INTO `fstopic` VALUES ('17', '7', '18');
INSERT INTO `fstopic` VALUES ('18', '8', '19');
INSERT INTO `fstopic` VALUES ('2', '1', '3');
INSERT INTO `fstopic` VALUES ('3', '1', '4');
INSERT INTO `fstopic` VALUES ('4', '1', '5');
INSERT INTO `fstopic` VALUES ('5', '1', '6');
INSERT INTO `fstopic` VALUES ('6', '1', '7');
INSERT INTO `fstopic` VALUES ('7', '2', '8');
INSERT INTO `fstopic` VALUES ('8', '2', '9');
INSERT INTO `fstopic` VALUES ('9', '3', '10');

-- ----------------------------
-- Table structure for qtp
-- ----------------------------
DROP TABLE IF EXISTS `qtp`;
CREATE TABLE `qtp` (
  `ID` char(11) NOT NULL,
  `TPID` char(11) DEFAULT NULL,
  `QID` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQstpTPID` (`TPID`),
  KEY `FKQstpQID` (`QID`),
  CONSTRAINT `FKQstpQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKQstpTPID` FOREIGN KEY (`TPID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qtp
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `ID` char(11) NOT NULL,
  `qstitle` varchar(255) DEFAULT NULL,
  `qscontent` varchar(255) DEFAULT NULL,
  `qstime` datetime DEFAULT NULL,
  `qsuser` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `ID` char(11) NOT NULL,
  `tpname` varchar(255) DEFAULT NULL,
  `tpdetail` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '「根话题」', '「根话题」即为所有话题的最上层的父话题。');
INSERT INTO `topic` VALUES ('10', '工具', null);
INSERT INTO `topic` VALUES ('11', '书籍', '书籍在狭义上的理解是带有文字和图像的纸张的集合。广义的书则是一切传播信息的媒体。');
INSERT INTO `topic` VALUES ('12', '体育产业', null);
INSERT INTO `topic` VALUES ('13', '文化产业', '文化产业指按照工业标准生产、再生产、储存以及分配文化产品和文化服务的一系列活动。');
INSERT INTO `topic` VALUES ('14', '社会科学', '社会科学是用科学的方法，研究人类社会的种种现象。');
INSERT INTO `topic` VALUES ('15', '自然科学', '自然科学是研究大自然中有机或无机的事物和现象的科学。自然科学包括天文学、物理学、化学、地球科学、生物学等等，是人类实践经验即生产斗争经验的总结，也是人类在自然界生存与思索的结果。');
INSERT INTO `topic` VALUES ('16', 'solo', null);
INSERT INTO `topic` VALUES ('17', '死亡', '唯有死亡的黑暗背景才能对托出生命的光彩与动人。');
INSERT INTO `topic` VALUES ('18', '人', '人的总称。');
INSERT INTO `topic` VALUES ('19', '行为', null);
INSERT INTO `topic` VALUES ('2', '生活、艺术、文化与活动', '以人类集体行为和人类社会文明为主体的话题，其内容主要包含生活、艺术、文化、活动四个方面。');
INSERT INTO `topic` VALUES ('3', '实体', '实体（entity）是有可区别性且独立存在的某种事物，但它不需要是物质上的存在。尤其是抽象和法律拟制也通常被视为实体。实体可被看成是一包含有子集的集合。在哲学里，这种集合被称为客体。实体可被使用来指涉某个可能是人、动物、植物或真菌等不会思考的生命、无生命物体或信念等的事物。在这一方面，实体可以被视为一全包的词语。有时，实体被当做本质的广义，不论即指的是否为物质上的存在，如时常会指涉到的无物质形式的实体－语言。更有甚者，实体有时亦指存在或本质本身。在法律上，实体是指能具有权利和义务的事物。这通常是指法人，但也包括自然人。');
INSERT INTO `topic` VALUES ('4', '产业', '产业（Industry）指一个经济体中，有效运用资金与劳力从事生产经济物品（不论是物品还是服务）的各种行业。\r\n\r\n一般而言，产业可分为三或四类：\r\n第一产业包括一切直接从地球开采资源的行业；\r\n第二产业包括所有进行加工的行业；\r\n第三产业指一切提供服务的行业；\r\n第四产业指进行学术研究探索，维持秩序的工作，服务对象为社会。');
INSERT INTO `topic` VALUES ('5', '学科', '「学科」指针对某种知识或技能的学术研究，通常也指代在大学和学院中教授的课程。学科是被发表研究和学术杂志、学会和系所所定义及承认的。研究领域通常有子领域或分科，而其之间的分界是随便且模糊的。学科的分类见仁见智。知乎上的学科话题，依据国人的使用习惯，按照「自然科学」「形式科学」「社会科学」「人文学科」「技术与应用科学」「综合与新兴学科」六类来组织。');
INSERT INTO `topic` VALUES ('6', '「未归类」话题', '所有没有直接添加父话题的话题会自动成为「未归类」话题的子话题，从而与整个话题树连接起来。');
INSERT INTO `topic` VALUES ('7', '「形而上」话题', '「形而上」话题下收录了一些讨论概念、逻辑、含义和原因等抽象内容的子话题。\r\n\r\n「形而上」是日本人井上哲次郎对 metaphysic 一词的汉字翻译，语出《易经》中「形而上者谓之道，形而下者谓之器」');
INSERT INTO `topic` VALUES ('8', '运动', '指身体的活动，一般以健身和娱乐为目的。');
INSERT INTO `topic` VALUES ('9', '休闲', '以欣然之态做心爱之事。');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ID` char(11) NOT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `upwd` varchar(64) DEFAULT NULL,
  `ucontent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'tiaoyu', 'include', '中央最高审判长');

-- ----------------------------
-- Table structure for utp
-- ----------------------------
DROP TABLE IF EXISTS `utp`;
CREATE TABLE `utp` (
  `ID` char(255) NOT NULL,
  `TPID` char(11) DEFAULT NULL,
  `UID` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKUTPUID` (`UID`),
  KEY `FKUTPTPID` (`TPID`),
  CONSTRAINT `FKUTPTPID` FOREIGN KEY (`TPID`) REFERENCES `topic` (`ID`),
  CONSTRAINT `FKUTPUID` FOREIGN KEY (`UID`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utp
-- ----------------------------
INSERT INTO `utp` VALUES ('1', '10', '1');
INSERT INTO `utp` VALUES ('2', '11', '1');
INSERT INTO `utp` VALUES ('3', '17', '1');
INSERT INTO `utp` VALUES ('4', '18', '1');
