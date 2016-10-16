/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : maintenance

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-10-16 14:01:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `typeid` int(5) NOT NULL,
  `projectid` varchar(25) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  PRIMARY KEY (`projectid`),
  KEY `typeid_1` (`typeid`),
  KEY `projectname` (`projectname`),
  CONSTRAINT `typeid_1` FOREIGN KEY (`typeid`) REFERENCES `type` (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '001', '检查6000V接线盒内瓷瓶、端子');
INSERT INTO `project` VALUES ('1', '002', '接线盒内卫生清洁');
INSERT INTO `project` VALUES ('1', '003', '检查电缆引线、穿线管、接地线');
INSERT INTO `project` VALUES ('1', '004', '检查进线口密封情况');
INSERT INTO `project` VALUES ('1', '005', '检查前后轴承温度传感器的接线盒');
INSERT INTO `project` VALUES ('1', '006', '检查定子绕组温度传感器的接线盒');
INSERT INTO `project` VALUES ('1', '007', '检查防潮加热器的接线盒');
INSERT INTO `project` VALUES ('2', '008', '接线盒开盖检查');
INSERT INTO `project` VALUES ('2', '009', '电机电缆头固定、磨损情况');
INSERT INTO `project` VALUES ('2', '010', '电机接线柱螺栓紧固和电机线压紧检查');
INSERT INTO `project` VALUES ('2', '011', '电机绝缘电阻测试（每千伏1兆欧以上）');
INSERT INTO `project` VALUES ('2', '012', '电机接线盒的密封情况');
INSERT INTO `project` VALUES ('2', '013', '电机接地线连接是否可靠');
INSERT INTO `project` VALUES ('2', '014', '电机上是否有杂物，多要通知工艺处理');
INSERT INTO `project` VALUES ('3', '015', '检查温度传感器、加热器的完好情况');
INSERT INTO `project` VALUES ('3', '016', '检查压力（冷却、润滑、系统、工作）传感器的完好情况');
INSERT INTO `project` VALUES ('3', '017', '检查频率（速度）传感器的完好情况');
INSERT INTO `project` VALUES ('3', '018', '检查电磁阀的好坏');
INSERT INTO `project` VALUES ('3', '019', '检查线缆、穿线管的固定情况、线缆的磨损情况');
INSERT INTO `project` VALUES ('3', '020', '清扫控制箱，紧固接线');
INSERT INTO `project` VALUES ('3', '021', '检查按钮是否灵活工作可靠');
INSERT INTO `project` VALUES ('3', '022', '检查CST触摸屏操作参数是否合理');
INSERT INTO `project` VALUES ('3', '023', '检查CST控制箱内照明灯');
INSERT INTO `project` VALUES ('3', '024', '检查CST控制箱电缆头、门的密封');
INSERT INTO `project` VALUES ('4', '025', 'PLC模块除尘保养；(注意吹风机外壳要接地）');
INSERT INTO `project` VALUES ('4', '026', 'PLC机柜内线路整理');
INSERT INTO `project` VALUES ('4', '027', '记录各模块工作是否正常，有无报警，有无强制');
INSERT INTO `project` VALUES ('4', '028', '检查模块接线端子是否紧固');
INSERT INTO `project` VALUES ('4', '029', '检查线路标号是否清晰规范');
INSERT INTO `project` VALUES ('4', '030', 'UPS工作是否正常');
INSERT INTO `project` VALUES ('4', '031', '检查各模块指示灯工作是否正常');
INSERT INTO `project` VALUES ('4', '032', '备份程序');
INSERT INTO `project` VALUES ('4', '033', '机柜进风口过滤网除尘');
INSERT INTO `project` VALUES ('4', '034', '检查机柜温度和散热风扇运转情况');
INSERT INTO `project` VALUES ('4', '035', 'PLC机柜门关闭要严');
