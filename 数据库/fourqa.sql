/*
Navicat MySQL Data Transfer

Source Server         : tiaoyu
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : fourqa

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-06-23 18:31:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for forcus
-- ----------------------------
DROP TABLE IF EXISTS `forcus`;
CREATE TABLE `forcus` (
  `ID` char(255) NOT NULL,
  `UID` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forcus
-- ----------------------------

-- ----------------------------
-- Table structure for four
-- ----------------------------
DROP TABLE IF EXISTS `four`;
CREATE TABLE `four` (
  `ID` int(11) NOT NULL,
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
  `ID` int(11) NOT NULL,
  `FID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
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
  `ID` int(11) NOT NULL,
  `FID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
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
  `ID` int(11) NOT NULL,
  `TPID` int(11) DEFAULT NULL,
  `QID` int(11) DEFAULT NULL,
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
  `ID` int(11) NOT NULL,
  `qstitle` varchar(255) DEFAULT NULL,
  `qscontent` varchar(255) DEFAULT NULL,
  `qstime` datetime DEFAULT NULL,
  `qsuser` int(11) DEFAULT NULL,
  `qsfocus` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FKQuestionQuser` (`qsuser`),
  CONSTRAINT `FKQuestionQuser` FOREIGN KEY (`qsuser`) REFERENCES `userinfo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `ID` int(11) NOT NULL,
  `tgname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ID` int(11) NOT NULL,
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
INSERT INTO `utp` VALUES ('1', '10', '1');
INSERT INTO `utp` VALUES ('2', '11', '1');
INSERT INTO `utp` VALUES ('3', '17', '1');
INSERT INTO `utp` VALUES ('4', '18', '1');
