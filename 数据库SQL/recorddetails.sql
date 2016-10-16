/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : maintenance

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-16 14:01:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `recorddetails`
-- ----------------------------
DROP TABLE IF EXISTS `recorddetails`;
CREATE TABLE `recorddetails` (
  `recordingid` int(5) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `people` varchar(40) NOT NULL,
  `happening` varchar(100) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  KEY `recordingid_2` (`recordingid`),
  KEY `projectname_1` (`projectname`),
  CONSTRAINT `projectname_1` FOREIGN KEY (`projectname`) REFERENCES `project` (`projectname`),
  CONSTRAINT `recordingid_2` FOREIGN KEY (`recordingid`) REFERENCES `recording` (`recordingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recorddetails
-- ----------------------------
INSERT INTO `recorddetails` VALUES ('10000', '检查6000V接线盒内瓷瓶、端子', '小将', '正常', null);
INSERT INTO `recorddetails` VALUES ('10000', '接线盒内卫生清洁', '小明', '正常', null);
INSERT INTO `recorddetails` VALUES ('10000', '检查电缆引线、穿线管、接地线', '小红', '正常', null);
INSERT INTO `recorddetails` VALUES ('20000', '检查进线口密封情况', '小6', '正常', null);
INSERT INTO `recorddetails` VALUES ('20000', 'PLC机柜门关闭要严', '小7', '正常', null);
