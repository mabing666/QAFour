/*
Navicat MySQL Data Transfer

Source Server         : tiaoyu
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : fourqa

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-06-22 14:35:17
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
  `tpdetail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------

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
