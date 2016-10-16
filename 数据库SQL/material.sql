/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : maintenance

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-16 14:00:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `material`
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `materialid` varchar(25) NOT NULL,
  `materialname` varchar(100) NOT NULL,
  PRIMARY KEY (`materialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('01000', '橡皮泥');
INSERT INTO `material` VALUES ('02000', '铅笔');
INSERT INTO `material` VALUES ('03000', '指甲刀');
INSERT INTO `material` VALUES ('04000', '尺子');
INSERT INTO `material` VALUES ('05000', '螺丝刀');
INSERT INTO `material` VALUES ('06000', '锤子');
INSERT INTO `material` VALUES ('07000', '钉子');
INSERT INTO `material` VALUES ('08000', '水泥');
