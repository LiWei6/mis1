/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : maintenance

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-16 14:00:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `consumption`
-- ----------------------------
DROP TABLE IF EXISTS `consumption`;
CREATE TABLE `consumption` (
  `recordingid` int(5) NOT NULL,
  `materialid` varchar(25) NOT NULL,
  `quantity` int(5) NOT NULL,
  KEY `recordingid_1` (`recordingid`),
  KEY `materialid_1` (`materialid`),
  CONSTRAINT `materialid_1` FOREIGN KEY (`materialid`) REFERENCES `material` (`materialid`),
  CONSTRAINT `recordingid_1` FOREIGN KEY (`recordingid`) REFERENCES `recording` (`recordingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumption
-- ----------------------------
INSERT INTO `consumption` VALUES ('10000', '01000', '5');
INSERT INTO `consumption` VALUES ('20000', '02000', '10');
INSERT INTO `consumption` VALUES ('30000', '03000', '15');
INSERT INTO `consumption` VALUES ('40000', '04000', '25');
INSERT INTO `consumption` VALUES ('50000', '05000', '30');
INSERT INTO `consumption` VALUES ('60000', '06000', '35');
INSERT INTO `consumption` VALUES ('70000', '07000', '40');
INSERT INTO `consumption` VALUES ('80000', '08000', '45');
INSERT INTO `consumption` VALUES ('20000', '03000', '50');
