/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : maintenance

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-16 14:01:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `recording`
-- ----------------------------
DROP TABLE IF EXISTS `recording`;
CREATE TABLE `recording` (
  `recordingid` int(5) NOT NULL,
  `equipmentid` varchar(25) NOT NULL,
  `c_time` date NOT NULL,
  PRIMARY KEY (`recordingid`),
  KEY `equipmentid_1` (`equipmentid`),
  CONSTRAINT `equipmentid_1` FOREIGN KEY (`equipmentid`) REFERENCES `equipment` (`equipmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recording
-- ----------------------------
INSERT INTO `recording` VALUES ('10000', '0001', '2015-11-11');
INSERT INTO `recording` VALUES ('20000', '0002', '2016-10-21');
INSERT INTO `recording` VALUES ('30000', '0003', '2016-10-22');
INSERT INTO `recording` VALUES ('40000', '0004', '2016-10-23');
INSERT INTO `recording` VALUES ('50000', '0005', '2016-05-01');
INSERT INTO `recording` VALUES ('60000', '0006', '2016-09-11');
INSERT INTO `recording` VALUES ('70000', '0007', '2016-08-30');
INSERT INTO `recording` VALUES ('80000', '0008', '2016-09-17');
