/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : maintenance

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-16 14:00:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `equipment`
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `equipmentid` varchar(25) NOT NULL,
  `typeid` int(5) NOT NULL,
  `recent` date DEFAULT NULL,
  PRIMARY KEY (`equipmentid`),
  KEY `typeid_2` (`typeid`),
  CONSTRAINT `typeid_2` FOREIGN KEY (`typeid`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('0001', '1', '2015-10-30');
INSERT INTO `equipment` VALUES ('0002', '1', '2015-12-30');
INSERT INTO `equipment` VALUES ('0003', '2', '2016-06-15');
INSERT INTO `equipment` VALUES ('0004', '2', '2015-05-01');
INSERT INTO `equipment` VALUES ('0005', '3', '2015-03-30');
INSERT INTO `equipment` VALUES ('0006', '3', '2015-05-01');
INSERT INTO `equipment` VALUES ('0007', '4', '2016-09-15');
INSERT INTO `equipment` VALUES ('0008', '4', '2016-10-15');
