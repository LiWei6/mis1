/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : maintenance

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-16 14:01:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeid` int(5) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `cycle` int(3) NOT NULL,
  `leadtime` int(3) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '6000V及以上电机', '365', '30');
INSERT INTO `type` VALUES ('2', '6000V以下带振动电机', '183', '20');
INSERT INTO `type` VALUES ('3', 'CST', '30', '5');
INSERT INTO `type` VALUES ('4', 'PLC', '30', '5');
