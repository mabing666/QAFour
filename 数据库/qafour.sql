/*
Navicat MySQL Data Transfer

Source Server         : tiaoyu
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : qafour

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-06-20 11:42:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `ID` char(11) NOT NULL,
  `ascontent` varchar(255) NOT NULL,
  `QID` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKAnswerQID` (`QID`),
  CONSTRAINT `FKAnswerQID` FOREIGN KEY (`QID`) REFERENCES `question` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for fsanswer
-- ----------------------------
DROP TABLE IF EXISTS `fsanswer`;
CREATE TABLE `fsanswer` (
  `ID` char(11) NOT NULL,
  `FID` char(11) DEFAULT NULL,
  `SID` char(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFSAnswerSID` (`SID`),
  KEY `FKFSAnswerFID` (`FID`),
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
  `SID` char(11) NOT NULL,
  `FID` char(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFstopicSID` (`SID`),
  KEY `FKFstopicFID` (`FID`),
  CONSTRAINT `FKFstopicFID` FOREIGN KEY (`FID`) REFERENCES `topic` (`ID`),
  CONSTRAINT `FKFstopicSID` FOREIGN KEY (`SID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fstopic
-- ----------------------------
INSERT INTO `fstopic` VALUES ('1', '2', '1');
INSERT INTO `fstopic` VALUES ('10', '7', '5');
INSERT INTO `fstopic` VALUES ('11', '9', '5');
INSERT INTO `fstopic` VALUES ('12', '10', '1');
INSERT INTO `fstopic` VALUES ('13', '11', '1');
INSERT INTO `fstopic` VALUES ('14', '12', '1');
INSERT INTO `fstopic` VALUES ('15', '13', '1');
INSERT INTO `fstopic` VALUES ('16', '14', '2');
INSERT INTO `fstopic` VALUES ('17', '15', '10');
INSERT INTO `fstopic` VALUES ('18', '16', '11');
INSERT INTO `fstopic` VALUES ('19', '17', '12');
INSERT INTO `fstopic` VALUES ('2', '3', '1');
INSERT INTO `fstopic` VALUES ('3', '8', '2');
INSERT INTO `fstopic` VALUES ('4', '4', '3');
INSERT INTO `fstopic` VALUES ('5', '5', '3');
INSERT INTO `fstopic` VALUES ('6', '7', '3');
INSERT INTO `fstopic` VALUES ('7', '8', '3');
INSERT INTO `fstopic` VALUES ('8', '7', '4');
INSERT INTO `fstopic` VALUES ('9', '6', '5');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `ID` char(11) NOT NULL,
  `qstitle` varchar(255) DEFAULT NULL,
  `qscontent` varchar(255) DEFAULT NULL,
  `qsuser` char(11) NOT NULL,
  `qstime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKQuestionQsuser` (`qsuser`),
  CONSTRAINT `FKQuestionQsuser` FOREIGN KEY (`qsuser`) REFERENCES `user` (`ID`)
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
  `tpname` varchar(255) NOT NULL,
  `tpdetail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '根话题', null);
INSERT INTO `topic` VALUES ('10', '互联网', null);
INSERT INTO `topic` VALUES ('11', '人工智能', null);
INSERT INTO `topic` VALUES ('12', '程序员', null);
INSERT INTO `topic` VALUES ('13', '美食', null);
INSERT INTO `topic` VALUES ('14', '信息工程学院', null);
INSERT INTO `topic` VALUES ('15', '大数据', null);
INSERT INTO `topic` VALUES ('16', '机器学习', null);
INSERT INTO `topic` VALUES ('17', '游戏程序员', null);
INSERT INTO `topic` VALUES ('2', '教务', null);
INSERT INTO `topic` VALUES ('3', '学习', null);
INSERT INTO `topic` VALUES ('4', 'ACM', null);
INSERT INTO `topic` VALUES ('5', '计算机', null);
INSERT INTO `topic` VALUES ('6', '重装系统', null);
INSERT INTO `topic` VALUES ('7', '算法', null);
INSERT INTO `topic` VALUES ('8', '英语六级', null);
INSERT INTO `topic` VALUES ('9', '游戏', null);

-- ----------------------------
-- Table structure for tq
-- ----------------------------
DROP TABLE IF EXISTS `tq`;
CREATE TABLE `tq` (
  `ID` char(11) NOT NULL,
  `TPID` char(11) NOT NULL,
  `QSID` char(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKTqTPID` (`TPID`),
  KEY `FKTqQSID` (`QSID`),
  CONSTRAINT `FKTqQSID` FOREIGN KEY (`QSID`) REFERENCES `question` (`ID`),
  CONSTRAINT `FKTqTPID` FOREIGN KEY (`TPID`) REFERENCES `topic` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tq
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` char(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `upwd` char(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'tiaoyu', 'include');
