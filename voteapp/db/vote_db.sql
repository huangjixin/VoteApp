/*
Navicat MySQL Data Transfer

Source Server         : 192.168.9.172
Source Server Version : 50505
Source Host           : 192.168.9.172:44417
Source Database       : vote_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-01-14 10:01:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for option
-- ----------------------------
DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) DEFAULT NULL,
  `CODE` varchar(32) DEFAULT NULL,
  `STATUS` int(11) DEFAULT 0,
  `TYPE` int(11) DEFAULT NULL,
  `IS_VALID` int(11) DEFAULT 1,
  `CREATE_TIME` timestamp NULL DEFAULT current_timestamp(),
  `UPDATE_TIME` timestamp NULL DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `QUESTION_ID` int(45) DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_OPTION_TO_QUESTION_idx` (`QUESTION_ID`) USING BTREE,
  CONSTRAINT `FK_OPTION_TO_QUESTION` FOREIGN KEY (`QUESTION_ID`) REFERENCES `question` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1899 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='待选列表问题';

-- ----------------------------
-- Records of option
-- ----------------------------
INSERT INTO `option` VALUES ('26', '文粤生', null, '0', null, '1', '2019-01-06 13:34:53', null, null, '8', '推广部');
INSERT INTO `option` VALUES ('27', '吴锦璇', null, '0', null, '1', '2019-01-06 13:37:16', null, null, '8', '推广部');
INSERT INTO `option` VALUES ('28', '王植源', null, '0', null, '1', '2019-01-06 13:37:16', null, null, '8', '推广部');
INSERT INTO `option` VALUES ('29', '李裕贤', null, '0', null, '1', '2019-01-06 13:37:16', null, null, '8', '推广部');
INSERT INTO `option` VALUES ('30', '许素萍', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '采购部');
INSERT INTO `option` VALUES ('31', '张海燕', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '采购部');
INSERT INTO `option` VALUES ('32', '陈梓红', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '采购部');
INSERT INTO `option` VALUES ('33', '苏少彬', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '物流部');
INSERT INTO `option` VALUES ('34', '陈铭榕', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '物流部');
INSERT INTO `option` VALUES ('35', '林彩霞', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '物流部');
INSERT INTO `option` VALUES ('36', '陈丹桃', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '客服部');
INSERT INTO `option` VALUES ('37', '林奕铿', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '客服部');
INSERT INTO `option` VALUES ('38', '刘镕', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '客服部');
INSERT INTO `option` VALUES ('39', '蔡仪', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '客服部');
INSERT INTO `option` VALUES ('40', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '业务部');
INSERT INTO `option` VALUES ('41', '吴哲', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '业务部');
INSERT INTO `option` VALUES ('42', '余立浩', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '业务部');
INSERT INTO `option` VALUES ('43', '魏江勇', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '财务部');
INSERT INTO `option` VALUES ('44', '李晓晗', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '财务部');
INSERT INTO `option` VALUES ('45', '刘钰芬', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '财务部');
INSERT INTO `option` VALUES ('46', '李思亮', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '财务部');
INSERT INTO `option` VALUES ('47', '叶焕远', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '技术部');
INSERT INTO `option` VALUES ('48', '詹梦宇', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '技术部');
INSERT INTO `option` VALUES ('49', '陈庆钿', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '技术部');
INSERT INTO `option` VALUES ('50', '卢锦峰', null, '0', null, '1', '2019-01-06 13:37:17', null, null, '8', '技术部');
INSERT INTO `option` VALUES ('51', '文粤生', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '推广部');
INSERT INTO `option` VALUES ('52', '吴锦璇', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '推广部');
INSERT INTO `option` VALUES ('53', '王植源', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '推广部');
INSERT INTO `option` VALUES ('54', '李裕贤', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '推广部');
INSERT INTO `option` VALUES ('55', '许素萍', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '采购部');
INSERT INTO `option` VALUES ('56', '张海燕', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '采购部');
INSERT INTO `option` VALUES ('57', '陈梓红', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '采购部');
INSERT INTO `option` VALUES ('58', '苏少彬', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '物流部');
INSERT INTO `option` VALUES ('59', '陈铭榕', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '物流部');
INSERT INTO `option` VALUES ('60', '林彩霞', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '物流部');
INSERT INTO `option` VALUES ('61', '陈丹桃', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '客服部');
INSERT INTO `option` VALUES ('62', '林奕铿', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '客服部');
INSERT INTO `option` VALUES ('63', '刘镕', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '客服部');
INSERT INTO `option` VALUES ('64', '蔡仪', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '客服部');
INSERT INTO `option` VALUES ('65', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '业务部');
INSERT INTO `option` VALUES ('66', '吴哲', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '业务部');
INSERT INTO `option` VALUES ('67', '余立浩', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '业务部');
INSERT INTO `option` VALUES ('68', '魏江勇', null, '0', null, '1', '2019-01-06 13:37:48', null, null, '9', '财务部');
INSERT INTO `option` VALUES ('69', '李晓晗', null, '0', null, '1', '2019-01-06 13:37:49', null, null, '9', '财务部');
INSERT INTO `option` VALUES ('70', '刘钰芬', null, '0', null, '1', '2019-01-06 13:37:49', null, null, '9', '财务部');
INSERT INTO `option` VALUES ('71', '李思亮', null, '0', null, '1', '2019-01-06 13:37:49', null, null, '9', '财务部');
INSERT INTO `option` VALUES ('72', '叶焕远', null, '0', null, '1', '2019-01-06 13:37:49', null, null, '9', '技术部');
INSERT INTO `option` VALUES ('73', '詹梦宇', null, '0', null, '1', '2019-01-06 13:37:49', null, null, '9', '技术部');
INSERT INTO `option` VALUES ('74', '陈庆钿', null, '0', null, '1', '2019-01-06 13:37:49', null, null, '9', '技术部');
INSERT INTO `option` VALUES ('75', '卢锦峰', null, '0', null, '1', '2019-01-06 13:37:49', null, null, '9', '技术部');
INSERT INTO `option` VALUES ('76', '文粤生', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '推广部');
INSERT INTO `option` VALUES ('77', '吴锦璇', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '推广部');
INSERT INTO `option` VALUES ('78', '王植源', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '推广部');
INSERT INTO `option` VALUES ('79', '李裕贤', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '推广部');
INSERT INTO `option` VALUES ('80', '许素萍', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '采购部');
INSERT INTO `option` VALUES ('81', '张海燕', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '采购部');
INSERT INTO `option` VALUES ('82', '陈梓红', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '采购部');
INSERT INTO `option` VALUES ('83', '苏少彬', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '物流部');
INSERT INTO `option` VALUES ('84', '陈铭榕', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '物流部');
INSERT INTO `option` VALUES ('85', '林彩霞', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '物流部');
INSERT INTO `option` VALUES ('86', '陈丹桃', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '客服部');
INSERT INTO `option` VALUES ('87', '林奕铿', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '客服部');
INSERT INTO `option` VALUES ('88', '刘镕', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '客服部');
INSERT INTO `option` VALUES ('89', '蔡仪', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '客服部');
INSERT INTO `option` VALUES ('90', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '业务部');
INSERT INTO `option` VALUES ('91', '吴哲', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '业务部');
INSERT INTO `option` VALUES ('92', '余立浩', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '业务部');
INSERT INTO `option` VALUES ('93', '魏江勇', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '财务部');
INSERT INTO `option` VALUES ('94', '李晓晗', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '财务部');
INSERT INTO `option` VALUES ('95', '刘钰芬', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '财务部');
INSERT INTO `option` VALUES ('96', '李思亮', null, '0', null, '1', '2019-01-06 13:37:57', null, null, '10', '财务部');
INSERT INTO `option` VALUES ('97', '叶焕远', null, '0', null, '1', '2019-01-06 13:37:58', null, null, '10', '技术部');
INSERT INTO `option` VALUES ('98', '詹梦宇', null, '0', null, '1', '2019-01-06 13:37:58', null, null, '10', '技术部');
INSERT INTO `option` VALUES ('99', '陈庆钿', null, '0', null, '1', '2019-01-06 13:37:58', null, null, '10', '技术部');
INSERT INTO `option` VALUES ('100', '卢锦峰', null, '0', null, '1', '2019-01-06 13:37:58', null, null, '10', '技术部');
INSERT INTO `option` VALUES ('101', '文粤生', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '推广部');
INSERT INTO `option` VALUES ('102', '吴锦璇', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '推广部');
INSERT INTO `option` VALUES ('103', '王植源', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '推广部');
INSERT INTO `option` VALUES ('104', '李裕贤', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '推广部');
INSERT INTO `option` VALUES ('105', '许素萍', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '采购部');
INSERT INTO `option` VALUES ('106', '张海燕', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '采购部');
INSERT INTO `option` VALUES ('107', '陈梓红', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '采购部');
INSERT INTO `option` VALUES ('108', '苏少彬', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '物流部');
INSERT INTO `option` VALUES ('109', '陈铭榕', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '物流部');
INSERT INTO `option` VALUES ('110', '林彩霞', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '物流部');
INSERT INTO `option` VALUES ('111', '陈丹桃', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '客服部');
INSERT INTO `option` VALUES ('112', '林奕铿', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '客服部');
INSERT INTO `option` VALUES ('113', '刘镕', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '客服部');
INSERT INTO `option` VALUES ('114', '蔡仪', null, '0', null, '1', '2019-01-06 13:38:06', null, null, '11', '客服部');
INSERT INTO `option` VALUES ('115', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '业务部');
INSERT INTO `option` VALUES ('116', '吴哲', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '业务部');
INSERT INTO `option` VALUES ('117', '余立浩', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '业务部');
INSERT INTO `option` VALUES ('118', '魏江勇', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '财务部');
INSERT INTO `option` VALUES ('119', '李晓晗', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '财务部');
INSERT INTO `option` VALUES ('120', '刘钰芬', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '财务部');
INSERT INTO `option` VALUES ('121', '李思亮', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '财务部');
INSERT INTO `option` VALUES ('122', '叶焕远', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '技术部');
INSERT INTO `option` VALUES ('123', '詹梦宇', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '技术部');
INSERT INTO `option` VALUES ('124', '陈庆钿', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '技术部');
INSERT INTO `option` VALUES ('125', '卢锦峰', null, '0', null, '1', '2019-01-06 13:38:07', null, null, '11', '技术部');
INSERT INTO `option` VALUES ('126', '文粤生', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '推广部');
INSERT INTO `option` VALUES ('127', '吴锦璇', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '推广部');
INSERT INTO `option` VALUES ('128', '王植源', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '推广部');
INSERT INTO `option` VALUES ('129', '李裕贤', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '推广部');
INSERT INTO `option` VALUES ('130', '许素萍', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '采购部');
INSERT INTO `option` VALUES ('131', '张海燕', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '采购部');
INSERT INTO `option` VALUES ('132', '陈梓红', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '采购部');
INSERT INTO `option` VALUES ('133', '苏少彬', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '物流部');
INSERT INTO `option` VALUES ('134', '陈铭榕', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '物流部');
INSERT INTO `option` VALUES ('135', '林彩霞', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '物流部');
INSERT INTO `option` VALUES ('136', '陈丹桃', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '客服部');
INSERT INTO `option` VALUES ('137', '林奕铿', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '客服部');
INSERT INTO `option` VALUES ('138', '刘镕', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '客服部');
INSERT INTO `option` VALUES ('139', '蔡仪', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '客服部');
INSERT INTO `option` VALUES ('140', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '业务部');
INSERT INTO `option` VALUES ('141', '吴哲', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '业务部');
INSERT INTO `option` VALUES ('142', '余立浩', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '业务部');
INSERT INTO `option` VALUES ('143', '魏江勇', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '财务部');
INSERT INTO `option` VALUES ('144', '李晓晗', null, '0', null, '1', '2019-01-06 13:38:34', null, null, '12', '财务部');
INSERT INTO `option` VALUES ('145', '刘钰芬', null, '0', null, '1', '2019-01-06 13:38:35', null, null, '12', '财务部');
INSERT INTO `option` VALUES ('146', '李思亮', null, '0', null, '1', '2019-01-06 13:38:35', null, null, '12', '财务部');
INSERT INTO `option` VALUES ('147', '叶焕远', null, '0', null, '1', '2019-01-06 13:38:35', null, null, '12', '技术部');
INSERT INTO `option` VALUES ('148', '詹梦宇', null, '0', null, '1', '2019-01-06 13:38:35', null, null, '12', '技术部');
INSERT INTO `option` VALUES ('149', '陈庆钿', null, '0', null, '1', '2019-01-06 13:38:35', null, null, '12', '技术部');
INSERT INTO `option` VALUES ('150', '卢锦峰', null, '0', null, '1', '2019-01-06 13:38:35', null, null, '12', '技术部');
INSERT INTO `option` VALUES ('151', '文粤生', null, '0', null, '1', '2019-01-06 13:38:41', null, null, '13', '推广部');
INSERT INTO `option` VALUES ('152', '吴锦璇', null, '0', null, '1', '2019-01-06 13:38:41', null, null, '13', '推广部');
INSERT INTO `option` VALUES ('153', '王植源', null, '0', null, '1', '2019-01-06 13:38:41', null, null, '13', '推广部');
INSERT INTO `option` VALUES ('154', '李裕贤', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '推广部');
INSERT INTO `option` VALUES ('155', '许素萍', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '采购部');
INSERT INTO `option` VALUES ('156', '张海燕', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '采购部');
INSERT INTO `option` VALUES ('157', '陈梓红', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '采购部');
INSERT INTO `option` VALUES ('158', '苏少彬', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '物流部');
INSERT INTO `option` VALUES ('159', '陈铭榕', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '物流部');
INSERT INTO `option` VALUES ('160', '林彩霞', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '物流部');
INSERT INTO `option` VALUES ('161', '陈丹桃', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '客服部');
INSERT INTO `option` VALUES ('162', '林奕铿', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '客服部');
INSERT INTO `option` VALUES ('163', '刘镕', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '客服部');
INSERT INTO `option` VALUES ('164', '蔡仪', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '客服部');
INSERT INTO `option` VALUES ('165', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '业务部');
INSERT INTO `option` VALUES ('166', '吴哲', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '业务部');
INSERT INTO `option` VALUES ('167', '余立浩', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '业务部');
INSERT INTO `option` VALUES ('168', '魏江勇', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '财务部');
INSERT INTO `option` VALUES ('169', '李晓晗', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '财务部');
INSERT INTO `option` VALUES ('170', '刘钰芬', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '财务部');
INSERT INTO `option` VALUES ('171', '李思亮', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '财务部');
INSERT INTO `option` VALUES ('172', '叶焕远', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '技术部');
INSERT INTO `option` VALUES ('173', '詹梦宇', null, '0', null, '1', '2019-01-06 13:38:42', null, null, '13', '技术部');
INSERT INTO `option` VALUES ('174', '陈庆钿', null, '0', null, '1', '2019-01-06 13:38:43', null, null, '13', '技术部');
INSERT INTO `option` VALUES ('175', '卢锦峰', null, '0', null, '1', '2019-01-06 13:38:43', null, null, '13', '技术部');
INSERT INTO `option` VALUES ('176', '文粤生', null, '0', null, '1', '2019-01-06 13:38:47', null, null, '14', '推广部');
INSERT INTO `option` VALUES ('177', '吴锦璇', null, '0', null, '1', '2019-01-06 13:38:47', null, null, '14', '推广部');
INSERT INTO `option` VALUES ('178', '王植源', null, '0', null, '1', '2019-01-06 13:38:47', null, null, '14', '推广部');
INSERT INTO `option` VALUES ('179', '李裕贤', null, '0', null, '1', '2019-01-06 13:38:47', null, null, '14', '推广部');
INSERT INTO `option` VALUES ('180', '许素萍', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '采购部');
INSERT INTO `option` VALUES ('181', '张海燕', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '采购部');
INSERT INTO `option` VALUES ('182', '陈梓红', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '采购部');
INSERT INTO `option` VALUES ('183', '苏少彬', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '物流部');
INSERT INTO `option` VALUES ('184', '陈铭榕', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '物流部');
INSERT INTO `option` VALUES ('185', '林彩霞', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '物流部');
INSERT INTO `option` VALUES ('186', '陈丹桃', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '客服部');
INSERT INTO `option` VALUES ('187', '林奕铿', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '客服部');
INSERT INTO `option` VALUES ('188', '刘镕', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '客服部');
INSERT INTO `option` VALUES ('189', '蔡仪', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '客服部');
INSERT INTO `option` VALUES ('190', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '业务部');
INSERT INTO `option` VALUES ('191', '吴哲', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '业务部');
INSERT INTO `option` VALUES ('192', '余立浩', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '业务部');
INSERT INTO `option` VALUES ('193', '魏江勇', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '财务部');
INSERT INTO `option` VALUES ('194', '李晓晗', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '财务部');
INSERT INTO `option` VALUES ('195', '刘钰芬', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '财务部');
INSERT INTO `option` VALUES ('196', '李思亮', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '财务部');
INSERT INTO `option` VALUES ('197', '叶焕远', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '技术部');
INSERT INTO `option` VALUES ('198', '詹梦宇', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '技术部');
INSERT INTO `option` VALUES ('199', '陈庆钿', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '技术部');
INSERT INTO `option` VALUES ('200', '卢锦峰', null, '0', null, '1', '2019-01-06 13:38:48', null, null, '14', '技术部');
INSERT INTO `option` VALUES ('201', '文粤生', null, '0', null, '1', '2019-01-06 13:38:53', null, null, '15', '推广部');
INSERT INTO `option` VALUES ('202', '吴锦璇', null, '0', null, '1', '2019-01-06 13:38:53', null, null, '15', '推广部');
INSERT INTO `option` VALUES ('203', '王植源', null, '0', null, '1', '2019-01-06 13:38:53', null, null, '15', '推广部');
INSERT INTO `option` VALUES ('204', '李裕贤', null, '0', null, '1', '2019-01-06 13:38:53', null, null, '15', '推广部');
INSERT INTO `option` VALUES ('205', '许素萍', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '采购部');
INSERT INTO `option` VALUES ('206', '张海燕', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '采购部');
INSERT INTO `option` VALUES ('207', '陈梓红', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '采购部');
INSERT INTO `option` VALUES ('208', '苏少彬', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '物流部');
INSERT INTO `option` VALUES ('209', '陈铭榕', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '物流部');
INSERT INTO `option` VALUES ('210', '林彩霞', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '物流部');
INSERT INTO `option` VALUES ('211', '陈丹桃', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '客服部');
INSERT INTO `option` VALUES ('212', '林奕铿', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '客服部');
INSERT INTO `option` VALUES ('213', '刘镕', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '客服部');
INSERT INTO `option` VALUES ('214', '蔡仪', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '客服部');
INSERT INTO `option` VALUES ('215', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '业务部');
INSERT INTO `option` VALUES ('216', '吴哲', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '业务部');
INSERT INTO `option` VALUES ('217', '余立浩', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '业务部');
INSERT INTO `option` VALUES ('218', '魏江勇', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '财务部');
INSERT INTO `option` VALUES ('219', '李晓晗', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '财务部');
INSERT INTO `option` VALUES ('220', '刘钰芬', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '财务部');
INSERT INTO `option` VALUES ('221', '李思亮', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '财务部');
INSERT INTO `option` VALUES ('222', '叶焕远', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '技术部');
INSERT INTO `option` VALUES ('223', '詹梦宇', null, '0', null, '1', '2019-01-06 13:38:54', null, null, '15', '技术部');
INSERT INTO `option` VALUES ('224', '陈庆钿', null, '0', null, '1', '2019-01-06 13:38:55', null, null, '15', '技术部');
INSERT INTO `option` VALUES ('225', '卢锦峰', null, '0', null, '1', '2019-01-06 13:38:55', null, null, '15', '技术部');
INSERT INTO `option` VALUES ('226', '文粤生', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '推广部');
INSERT INTO `option` VALUES ('227', '吴锦璇', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '推广部');
INSERT INTO `option` VALUES ('228', '王植源', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '推广部');
INSERT INTO `option` VALUES ('229', '李裕贤', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '推广部');
INSERT INTO `option` VALUES ('230', '许素萍', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '采购部');
INSERT INTO `option` VALUES ('231', '张海燕', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '采购部');
INSERT INTO `option` VALUES ('232', '陈梓红', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '采购部');
INSERT INTO `option` VALUES ('233', '苏少彬', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '物流部');
INSERT INTO `option` VALUES ('234', '陈铭榕', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '物流部');
INSERT INTO `option` VALUES ('235', '林彩霞', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '物流部');
INSERT INTO `option` VALUES ('236', '陈丹桃', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '客服部');
INSERT INTO `option` VALUES ('237', '林奕铿', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '客服部');
INSERT INTO `option` VALUES ('238', '刘镕', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '客服部');
INSERT INTO `option` VALUES ('239', '蔡仪', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '客服部');
INSERT INTO `option` VALUES ('240', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '业务部');
INSERT INTO `option` VALUES ('241', '吴哲', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '业务部');
INSERT INTO `option` VALUES ('242', '余立浩', null, '0', null, '1', '2019-01-06 13:39:02', null, null, '16', '业务部');
INSERT INTO `option` VALUES ('243', '魏江勇', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '财务部');
INSERT INTO `option` VALUES ('244', '李晓晗', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '财务部');
INSERT INTO `option` VALUES ('245', '刘钰芬', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '财务部');
INSERT INTO `option` VALUES ('246', '李思亮', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '财务部');
INSERT INTO `option` VALUES ('247', '叶焕远', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '技术部');
INSERT INTO `option` VALUES ('248', '詹梦宇', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '技术部');
INSERT INTO `option` VALUES ('249', '陈庆钿', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '技术部');
INSERT INTO `option` VALUES ('250', '卢锦峰', null, '0', null, '1', '2019-01-06 13:39:03', null, null, '16', '技术部');
INSERT INTO `option` VALUES ('251', '文粤生', null, '0', null, '1', '2019-01-06 13:39:09', null, null, '17', '推广部');
INSERT INTO `option` VALUES ('252', '吴锦璇', null, '0', null, '1', '2019-01-06 13:39:09', null, null, '17', '推广部');
INSERT INTO `option` VALUES ('253', '王植源', null, '0', null, '1', '2019-01-06 13:39:09', null, null, '17', '推广部');
INSERT INTO `option` VALUES ('254', '李裕贤', null, '0', null, '1', '2019-01-06 13:39:09', null, null, '17', '推广部');
INSERT INTO `option` VALUES ('255', '许素萍', null, '0', null, '1', '2019-01-06 13:39:09', null, null, '17', '采购部');
INSERT INTO `option` VALUES ('256', '张海燕', null, '0', null, '1', '2019-01-06 13:39:09', null, null, '17', '采购部');
INSERT INTO `option` VALUES ('257', '陈梓红', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '采购部');
INSERT INTO `option` VALUES ('258', '苏少彬', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '物流部');
INSERT INTO `option` VALUES ('259', '陈铭榕', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '物流部');
INSERT INTO `option` VALUES ('260', '林彩霞', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '物流部');
INSERT INTO `option` VALUES ('261', '陈丹桃', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '客服部');
INSERT INTO `option` VALUES ('262', '林奕铿', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '客服部');
INSERT INTO `option` VALUES ('263', '刘镕', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '客服部');
INSERT INTO `option` VALUES ('264', '蔡仪', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '客服部');
INSERT INTO `option` VALUES ('265', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '业务部');
INSERT INTO `option` VALUES ('266', '吴哲', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '业务部');
INSERT INTO `option` VALUES ('267', '余立浩', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '业务部');
INSERT INTO `option` VALUES ('268', '魏江勇', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '财务部');
INSERT INTO `option` VALUES ('269', '李晓晗', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '财务部');
INSERT INTO `option` VALUES ('270', '刘钰芬', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '财务部');
INSERT INTO `option` VALUES ('271', '李思亮', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '财务部');
INSERT INTO `option` VALUES ('272', '叶焕远', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '技术部');
INSERT INTO `option` VALUES ('273', '詹梦宇', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '技术部');
INSERT INTO `option` VALUES ('274', '陈庆钿', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '技术部');
INSERT INTO `option` VALUES ('275', '卢锦峰', null, '0', null, '1', '2019-01-06 13:39:10', null, null, '17', '技术部');
INSERT INTO `option` VALUES ('276', '文粤生', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '推广部');
INSERT INTO `option` VALUES ('277', '吴锦璇', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '推广部');
INSERT INTO `option` VALUES ('278', '王植源', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '推广部');
INSERT INTO `option` VALUES ('279', '李裕贤', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '推广部');
INSERT INTO `option` VALUES ('280', '许素萍', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '采购部');
INSERT INTO `option` VALUES ('281', '张海燕', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '采购部');
INSERT INTO `option` VALUES ('282', '陈梓红', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '采购部');
INSERT INTO `option` VALUES ('283', '苏少彬', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '物流部');
INSERT INTO `option` VALUES ('284', '陈铭榕', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '物流部');
INSERT INTO `option` VALUES ('285', '林彩霞', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '物流部');
INSERT INTO `option` VALUES ('286', '陈丹桃', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '客服部');
INSERT INTO `option` VALUES ('287', '林奕铿', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '客服部');
INSERT INTO `option` VALUES ('288', '刘镕', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '客服部');
INSERT INTO `option` VALUES ('289', '蔡仪', null, '0', null, '1', '2019-01-06 13:39:18', null, null, '18', '客服部');
INSERT INTO `option` VALUES ('290', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '业务部');
INSERT INTO `option` VALUES ('291', '吴哲', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '业务部');
INSERT INTO `option` VALUES ('292', '余立浩', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '业务部');
INSERT INTO `option` VALUES ('293', '魏江勇', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '财务部');
INSERT INTO `option` VALUES ('294', '李晓晗', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '财务部');
INSERT INTO `option` VALUES ('295', '刘钰芬', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '财务部');
INSERT INTO `option` VALUES ('296', '李思亮', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '财务部');
INSERT INTO `option` VALUES ('297', '叶焕远', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '技术部');
INSERT INTO `option` VALUES ('298', '詹梦宇', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '技术部');
INSERT INTO `option` VALUES ('299', '陈庆钿', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '技术部');
INSERT INTO `option` VALUES ('300', '卢锦峰', null, '0', null, '1', '2019-01-06 13:39:19', null, null, '18', '技术部');
INSERT INTO `option` VALUES ('301', '文粤生', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '推广部');
INSERT INTO `option` VALUES ('302', '吴锦璇', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '推广部');
INSERT INTO `option` VALUES ('303', '王植源', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '推广部');
INSERT INTO `option` VALUES ('304', '李裕贤', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '推广部');
INSERT INTO `option` VALUES ('305', '许素萍', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '采购部');
INSERT INTO `option` VALUES ('306', '张海燕', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '采购部');
INSERT INTO `option` VALUES ('307', '陈梓红', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '采购部');
INSERT INTO `option` VALUES ('308', '苏少彬', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '物流部');
INSERT INTO `option` VALUES ('309', '陈铭榕', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '物流部');
INSERT INTO `option` VALUES ('310', '林彩霞', null, '0', null, '1', '2019-01-06 13:39:30', null, null, '19', '物流部');
INSERT INTO `option` VALUES ('311', '陈丹桃', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '客服部');
INSERT INTO `option` VALUES ('312', '林奕铿', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '客服部');
INSERT INTO `option` VALUES ('313', '刘镕', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '客服部');
INSERT INTO `option` VALUES ('314', '蔡仪', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '客服部');
INSERT INTO `option` VALUES ('315', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '业务部');
INSERT INTO `option` VALUES ('316', '吴哲', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '业务部');
INSERT INTO `option` VALUES ('317', '余立浩', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '业务部');
INSERT INTO `option` VALUES ('318', '魏江勇', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '财务部');
INSERT INTO `option` VALUES ('319', '李晓晗', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '财务部');
INSERT INTO `option` VALUES ('320', '刘钰芬', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '财务部');
INSERT INTO `option` VALUES ('321', '李思亮', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '财务部');
INSERT INTO `option` VALUES ('322', '叶焕远', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '技术部');
INSERT INTO `option` VALUES ('323', '詹梦宇', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '技术部');
INSERT INTO `option` VALUES ('324', '陈庆钿', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '技术部');
INSERT INTO `option` VALUES ('325', '卢锦峰', null, '0', null, '1', '2019-01-06 13:39:31', null, null, '19', '技术部');
INSERT INTO `option` VALUES ('326', '文粤生', null, '0', null, '1', '2019-01-06 13:39:38', null, null, '20', '推广部');
INSERT INTO `option` VALUES ('327', '吴锦璇', null, '0', null, '1', '2019-01-06 13:39:38', null, null, '20', '推广部');
INSERT INTO `option` VALUES ('328', '王植源', null, '0', null, '1', '2019-01-06 13:39:38', null, null, '20', '推广部');
INSERT INTO `option` VALUES ('329', '李裕贤', null, '0', null, '1', '2019-01-06 13:39:38', null, null, '20', '推广部');
INSERT INTO `option` VALUES ('330', '许素萍', null, '0', null, '1', '2019-01-06 13:39:38', null, null, '20', '采购部');
INSERT INTO `option` VALUES ('331', '张海燕', null, '0', null, '1', '2019-01-06 13:39:38', null, null, '20', '采购部');
INSERT INTO `option` VALUES ('332', '陈梓红', null, '0', null, '1', '2019-01-06 13:39:38', null, null, '20', '采购部');
INSERT INTO `option` VALUES ('333', '苏少彬', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '物流部');
INSERT INTO `option` VALUES ('334', '陈铭榕', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '物流部');
INSERT INTO `option` VALUES ('335', '林彩霞', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '物流部');
INSERT INTO `option` VALUES ('336', '陈丹桃', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '客服部');
INSERT INTO `option` VALUES ('337', '林奕铿', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '客服部');
INSERT INTO `option` VALUES ('338', '刘镕', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '客服部');
INSERT INTO `option` VALUES ('339', '蔡仪', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '客服部');
INSERT INTO `option` VALUES ('340', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '业务部');
INSERT INTO `option` VALUES ('341', '吴哲', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '业务部');
INSERT INTO `option` VALUES ('342', '余立浩', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '业务部');
INSERT INTO `option` VALUES ('343', '魏江勇', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '财务部');
INSERT INTO `option` VALUES ('344', '李晓晗', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '财务部');
INSERT INTO `option` VALUES ('345', '刘钰芬', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '财务部');
INSERT INTO `option` VALUES ('346', '李思亮', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '财务部');
INSERT INTO `option` VALUES ('347', '叶焕远', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '技术部');
INSERT INTO `option` VALUES ('348', '詹梦宇', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '技术部');
INSERT INTO `option` VALUES ('349', '陈庆钿', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '技术部');
INSERT INTO `option` VALUES ('350', '卢锦峰', null, '0', null, '1', '2019-01-06 13:39:39', null, null, '20', '技术部');
INSERT INTO `option` VALUES ('351', '文粤生', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '推广部');
INSERT INTO `option` VALUES ('352', '吴锦璇', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '推广部');
INSERT INTO `option` VALUES ('353', '王植源', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '推广部');
INSERT INTO `option` VALUES ('354', '李裕贤', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '推广部');
INSERT INTO `option` VALUES ('355', '许素萍', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '采购部');
INSERT INTO `option` VALUES ('356', '张海燕', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '采购部');
INSERT INTO `option` VALUES ('357', '陈梓红', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '采购部');
INSERT INTO `option` VALUES ('358', '苏少彬', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '物流部');
INSERT INTO `option` VALUES ('359', '陈铭榕', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '物流部');
INSERT INTO `option` VALUES ('360', '林彩霞', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '物流部');
INSERT INTO `option` VALUES ('361', '陈丹桃', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '客服部');
INSERT INTO `option` VALUES ('362', '林奕铿', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '客服部');
INSERT INTO `option` VALUES ('363', '刘镕', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '客服部');
INSERT INTO `option` VALUES ('364', '蔡仪', null, '0', null, '1', '2019-01-06 13:39:47', null, null, '21', '客服部');
INSERT INTO `option` VALUES ('365', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '业务部');
INSERT INTO `option` VALUES ('366', '吴哲', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '业务部');
INSERT INTO `option` VALUES ('367', '余立浩', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '业务部');
INSERT INTO `option` VALUES ('368', '魏江勇', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '财务部');
INSERT INTO `option` VALUES ('369', '李晓晗', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '财务部');
INSERT INTO `option` VALUES ('370', '刘钰芬', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '财务部');
INSERT INTO `option` VALUES ('371', '李思亮', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '财务部');
INSERT INTO `option` VALUES ('372', '叶焕远', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '技术部');
INSERT INTO `option` VALUES ('373', '詹梦宇', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '技术部');
INSERT INTO `option` VALUES ('374', '陈庆钿', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '技术部');
INSERT INTO `option` VALUES ('375', '卢锦峰', null, '0', null, '1', '2019-01-06 13:39:48', null, null, '21', '技术部');
INSERT INTO `option` VALUES ('376', '文粤生', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '推广部');
INSERT INTO `option` VALUES ('377', '吴锦璇', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '推广部');
INSERT INTO `option` VALUES ('378', '王植源', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '推广部');
INSERT INTO `option` VALUES ('379', '李裕贤', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '推广部');
INSERT INTO `option` VALUES ('380', '许素萍', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '采购部');
INSERT INTO `option` VALUES ('381', '张海燕', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '采购部');
INSERT INTO `option` VALUES ('382', '陈梓红', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '采购部');
INSERT INTO `option` VALUES ('383', '苏少彬', null, '0', null, '1', '2019-01-06 13:39:54', null, null, '22', '物流部');
INSERT INTO `option` VALUES ('384', '陈铭榕', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '物流部');
INSERT INTO `option` VALUES ('385', '林彩霞', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '物流部');
INSERT INTO `option` VALUES ('386', '陈丹桃', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '客服部');
INSERT INTO `option` VALUES ('387', '林奕铿', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '客服部');
INSERT INTO `option` VALUES ('388', '刘镕', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '客服部');
INSERT INTO `option` VALUES ('389', '蔡仪', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '客服部');
INSERT INTO `option` VALUES ('390', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '业务部');
INSERT INTO `option` VALUES ('391', '吴哲', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '业务部');
INSERT INTO `option` VALUES ('392', '余立浩', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '业务部');
INSERT INTO `option` VALUES ('393', '魏江勇', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '财务部');
INSERT INTO `option` VALUES ('394', '李晓晗', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '财务部');
INSERT INTO `option` VALUES ('395', '刘钰芬', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '财务部');
INSERT INTO `option` VALUES ('396', '李思亮', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '财务部');
INSERT INTO `option` VALUES ('397', '叶焕远', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '技术部');
INSERT INTO `option` VALUES ('398', '詹梦宇', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '技术部');
INSERT INTO `option` VALUES ('399', '陈庆钿', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '技术部');
INSERT INTO `option` VALUES ('400', '卢锦峰', null, '0', null, '1', '2019-01-06 13:39:55', null, null, '22', '技术部');
INSERT INTO `option` VALUES ('401', '文粤生', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '推广部');
INSERT INTO `option` VALUES ('402', '吴锦璇', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '推广部');
INSERT INTO `option` VALUES ('403', '王植源', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '推广部');
INSERT INTO `option` VALUES ('404', '李裕贤', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '推广部');
INSERT INTO `option` VALUES ('405', '许素萍', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '采购部');
INSERT INTO `option` VALUES ('406', '张海燕', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '采购部');
INSERT INTO `option` VALUES ('407', '陈梓红', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '采购部');
INSERT INTO `option` VALUES ('408', '苏少彬', null, '0', null, '1', '2019-01-06 13:40:03', null, null, '23', '物流部');
INSERT INTO `option` VALUES ('409', '陈铭榕', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '物流部');
INSERT INTO `option` VALUES ('410', '林彩霞', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '物流部');
INSERT INTO `option` VALUES ('411', '陈丹桃', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '客服部');
INSERT INTO `option` VALUES ('412', '林奕铿', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '客服部');
INSERT INTO `option` VALUES ('413', '刘镕', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '客服部');
INSERT INTO `option` VALUES ('414', '蔡仪', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '客服部');
INSERT INTO `option` VALUES ('415', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '业务部');
INSERT INTO `option` VALUES ('416', '吴哲', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '业务部');
INSERT INTO `option` VALUES ('417', '余立浩', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '业务部');
INSERT INTO `option` VALUES ('418', '魏江勇', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '财务部');
INSERT INTO `option` VALUES ('419', '李晓晗', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '财务部');
INSERT INTO `option` VALUES ('420', '刘钰芬', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '财务部');
INSERT INTO `option` VALUES ('421', '李思亮', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '财务部');
INSERT INTO `option` VALUES ('422', '叶焕远', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '技术部');
INSERT INTO `option` VALUES ('423', '詹梦宇', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '技术部');
INSERT INTO `option` VALUES ('424', '陈庆钿', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '技术部');
INSERT INTO `option` VALUES ('425', '卢锦峰', null, '0', null, '1', '2019-01-06 13:40:04', null, null, '23', '技术部');
INSERT INTO `option` VALUES ('426', '文粤生', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '推广部');
INSERT INTO `option` VALUES ('427', '吴锦璇', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '推广部');
INSERT INTO `option` VALUES ('428', '王植源', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '推广部');
INSERT INTO `option` VALUES ('429', '李裕贤', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '推广部');
INSERT INTO `option` VALUES ('430', '许素萍', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '采购部');
INSERT INTO `option` VALUES ('431', '张海燕', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '采购部');
INSERT INTO `option` VALUES ('432', '陈梓红', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '采购部');
INSERT INTO `option` VALUES ('433', '苏少彬', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '物流部');
INSERT INTO `option` VALUES ('434', '陈铭榕', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '物流部');
INSERT INTO `option` VALUES ('435', '林彩霞', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '物流部');
INSERT INTO `option` VALUES ('436', '陈丹桃', null, '0', null, '1', '2019-01-06 13:40:10', null, null, '24', '客服部');
INSERT INTO `option` VALUES ('437', '林奕铿', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '客服部');
INSERT INTO `option` VALUES ('438', '刘镕', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '客服部');
INSERT INTO `option` VALUES ('439', '蔡仪', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '客服部');
INSERT INTO `option` VALUES ('440', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '业务部');
INSERT INTO `option` VALUES ('441', '吴哲', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '业务部');
INSERT INTO `option` VALUES ('442', '余立浩', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '业务部');
INSERT INTO `option` VALUES ('443', '魏江勇', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '财务部');
INSERT INTO `option` VALUES ('444', '李晓晗', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '财务部');
INSERT INTO `option` VALUES ('445', '刘钰芬', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '财务部');
INSERT INTO `option` VALUES ('446', '李思亮', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '财务部');
INSERT INTO `option` VALUES ('447', '叶焕远', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '技术部');
INSERT INTO `option` VALUES ('448', '詹梦宇', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '技术部');
INSERT INTO `option` VALUES ('449', '陈庆钿', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '技术部');
INSERT INTO `option` VALUES ('450', '卢锦峰', null, '0', null, '1', '2019-01-06 13:40:11', null, null, '24', '技术部');
INSERT INTO `option` VALUES ('451', '文粤生', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '推广部');
INSERT INTO `option` VALUES ('452', '吴锦璇', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '推广部');
INSERT INTO `option` VALUES ('453', '王植源', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '推广部');
INSERT INTO `option` VALUES ('454', '李裕贤', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '推广部');
INSERT INTO `option` VALUES ('455', '许素萍', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '采购部');
INSERT INTO `option` VALUES ('456', '张海燕', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '采购部');
INSERT INTO `option` VALUES ('457', '陈梓红', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '采购部');
INSERT INTO `option` VALUES ('458', '苏少彬', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '物流部');
INSERT INTO `option` VALUES ('459', '陈铭榕', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '物流部');
INSERT INTO `option` VALUES ('460', '林彩霞', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '物流部');
INSERT INTO `option` VALUES ('461', '陈丹桃', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '客服部');
INSERT INTO `option` VALUES ('462', '林奕铿', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '客服部');
INSERT INTO `option` VALUES ('463', '刘镕', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '客服部');
INSERT INTO `option` VALUES ('464', '蔡仪', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '客服部');
INSERT INTO `option` VALUES ('465', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '业务部');
INSERT INTO `option` VALUES ('466', '吴哲', null, '0', null, '1', '2019-01-06 13:40:18', null, null, '25', '业务部');
INSERT INTO `option` VALUES ('467', '余立浩', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '业务部');
INSERT INTO `option` VALUES ('468', '魏江勇', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '财务部');
INSERT INTO `option` VALUES ('469', '李晓晗', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '财务部');
INSERT INTO `option` VALUES ('470', '刘钰芬', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '财务部');
INSERT INTO `option` VALUES ('471', '李思亮', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '财务部');
INSERT INTO `option` VALUES ('472', '叶焕远', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '技术部');
INSERT INTO `option` VALUES ('473', '詹梦宇', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '技术部');
INSERT INTO `option` VALUES ('474', '陈庆钿', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '技术部');
INSERT INTO `option` VALUES ('475', '卢锦峰', null, '0', null, '1', '2019-01-06 13:40:19', null, null, '25', '技术部');
INSERT INTO `option` VALUES ('476', '文粤生', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('477', '吴锦璇', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('478', '王植源', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('479', '李裕贤', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('480', '许素萍', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '采购部');
INSERT INTO `option` VALUES ('481', '张海燕', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '采购部');
INSERT INTO `option` VALUES ('482', '陈梓红', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '采购部');
INSERT INTO `option` VALUES ('483', '苏少彬', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '物流部');
INSERT INTO `option` VALUES ('484', '陈铭榕', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '物流部');
INSERT INTO `option` VALUES ('485', '林彩霞', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '物流部');
INSERT INTO `option` VALUES ('486', '陈丹桃', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('487', '林奕铿', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('488', '刘镕', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('489', '蔡仪', null, '0', null, '1', '2019-01-06 13:40:32', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('490', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '业务部');
INSERT INTO `option` VALUES ('491', '吴哲', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '业务部');
INSERT INTO `option` VALUES ('492', '余立浩', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '业务部');
INSERT INTO `option` VALUES ('493', '魏江勇', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('494', '李晓晗', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('495', '刘钰芬', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('496', '李思亮', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('497', '叶焕远', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('498', '詹梦宇', null, '0', null, '1', '2019-01-06 13:40:33', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('499', '陈庆钿', null, '0', null, '1', '2019-01-06 13:40:34', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('500', '卢锦峰', null, '0', null, '1', '2019-01-06 13:40:34', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('501', '文粤生', null, '0', null, '1', '2019-01-06 13:40:40', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('502', '吴锦璇', null, '0', null, '1', '2019-01-06 13:40:40', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('503', '王植源', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('504', '李裕贤', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '推广部');
INSERT INTO `option` VALUES ('505', '许素萍', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '采购部');
INSERT INTO `option` VALUES ('506', '张海燕', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '采购部');
INSERT INTO `option` VALUES ('507', '陈梓红', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '采购部');
INSERT INTO `option` VALUES ('508', '苏少彬', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '物流部');
INSERT INTO `option` VALUES ('509', '陈铭榕', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '物流部');
INSERT INTO `option` VALUES ('510', '林彩霞', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '物流部');
INSERT INTO `option` VALUES ('511', '陈丹桃', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('512', '林奕铿', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('513', '刘镕', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('514', '蔡仪', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '客服部');
INSERT INTO `option` VALUES ('515', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '业务部');
INSERT INTO `option` VALUES ('516', '吴哲', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '业务部');
INSERT INTO `option` VALUES ('517', '余立浩', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '业务部');
INSERT INTO `option` VALUES ('518', '魏江勇', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('519', '李晓晗', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('520', '刘钰芬', null, '0', null, '1', '2019-01-06 13:40:41', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('521', '李思亮', null, '0', null, '1', '2019-01-06 13:40:42', null, null, '26', '财务部');
INSERT INTO `option` VALUES ('522', '叶焕远', null, '0', null, '1', '2019-01-06 13:40:42', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('523', '詹梦宇', null, '0', null, '1', '2019-01-06 13:40:42', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('524', '陈庆钿', null, '0', null, '1', '2019-01-06 13:40:42', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('525', '卢锦峰', null, '0', null, '1', '2019-01-06 13:40:42', null, null, '26', '技术部');
INSERT INTO `option` VALUES ('526', '文粤生', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '推广部');
INSERT INTO `option` VALUES ('527', '吴锦璇', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '推广部');
INSERT INTO `option` VALUES ('528', '王植源', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '推广部');
INSERT INTO `option` VALUES ('529', '李裕贤', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '推广部');
INSERT INTO `option` VALUES ('530', '许素萍', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '采购部');
INSERT INTO `option` VALUES ('531', '张海燕', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '采购部');
INSERT INTO `option` VALUES ('532', '陈梓红', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '采购部');
INSERT INTO `option` VALUES ('533', '苏少彬', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '物流部');
INSERT INTO `option` VALUES ('534', '陈铭榕', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '物流部');
INSERT INTO `option` VALUES ('535', '林彩霞', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '物流部');
INSERT INTO `option` VALUES ('536', '陈丹桃', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '客服部');
INSERT INTO `option` VALUES ('537', '林奕铿', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '客服部');
INSERT INTO `option` VALUES ('538', '刘镕', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '客服部');
INSERT INTO `option` VALUES ('539', '蔡仪', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '客服部');
INSERT INTO `option` VALUES ('540', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '业务部');
INSERT INTO `option` VALUES ('541', '吴哲', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '业务部');
INSERT INTO `option` VALUES ('542', '余立浩', null, '0', null, '1', '2019-01-06 13:40:58', null, null, '27', '业务部');
INSERT INTO `option` VALUES ('543', '魏江勇', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '财务部');
INSERT INTO `option` VALUES ('544', '李晓晗', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '财务部');
INSERT INTO `option` VALUES ('545', '刘钰芬', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '财务部');
INSERT INTO `option` VALUES ('546', '李思亮', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '财务部');
INSERT INTO `option` VALUES ('547', '叶焕远', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '技术部');
INSERT INTO `option` VALUES ('548', '詹梦宇', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '技术部');
INSERT INTO `option` VALUES ('549', '陈庆钿', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '技术部');
INSERT INTO `option` VALUES ('550', '卢锦峰', null, '0', null, '1', '2019-01-06 13:40:59', null, null, '27', '技术部');
INSERT INTO `option` VALUES ('551', '文粤生', null, '0', null, '1', '2019-01-06 13:41:07', null, null, '28', '推广部');
INSERT INTO `option` VALUES ('552', '吴锦璇', null, '0', null, '1', '2019-01-06 13:41:07', null, null, '28', '推广部');
INSERT INTO `option` VALUES ('553', '王植源', null, '0', null, '1', '2019-01-06 13:41:07', null, null, '28', '推广部');
INSERT INTO `option` VALUES ('554', '李裕贤', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '推广部');
INSERT INTO `option` VALUES ('555', '许素萍', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '采购部');
INSERT INTO `option` VALUES ('556', '张海燕', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '采购部');
INSERT INTO `option` VALUES ('557', '陈梓红', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '采购部');
INSERT INTO `option` VALUES ('558', '苏少彬', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '物流部');
INSERT INTO `option` VALUES ('559', '陈铭榕', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '物流部');
INSERT INTO `option` VALUES ('560', '林彩霞', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '物流部');
INSERT INTO `option` VALUES ('561', '陈丹桃', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '客服部');
INSERT INTO `option` VALUES ('562', '林奕铿', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '客服部');
INSERT INTO `option` VALUES ('563', '刘镕', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '客服部');
INSERT INTO `option` VALUES ('564', '蔡仪', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '客服部');
INSERT INTO `option` VALUES ('565', '蔡晓璇', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '业务部');
INSERT INTO `option` VALUES ('566', '吴哲', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '业务部');
INSERT INTO `option` VALUES ('567', '余立浩', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '业务部');
INSERT INTO `option` VALUES ('568', '魏江勇', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '财务部');
INSERT INTO `option` VALUES ('569', '李晓晗', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '财务部');
INSERT INTO `option` VALUES ('570', '刘钰芬', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '财务部');
INSERT INTO `option` VALUES ('571', '李思亮', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '财务部');
INSERT INTO `option` VALUES ('572', '叶焕远', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '技术部');
INSERT INTO `option` VALUES ('573', '詹梦宇', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '技术部');
INSERT INTO `option` VALUES ('574', '陈庆钿', null, '0', null, '1', '2019-01-06 13:41:08', null, null, '28', '技术部');
INSERT INTO `option` VALUES ('575', '卢锦峰', null, '0', null, '1', '2019-01-06 13:41:09', null, null, '28', '技术部');
INSERT INTO `option` VALUES ('576', '陈冰', null, '0', null, '1', '2019-01-08 09:21:56', null, null, '29', '创新部');
INSERT INTO `option` VALUES ('577', '杨建浩', null, '0', null, '1', '2019-01-08 09:22:35', null, null, '29', '创新部');
INSERT INTO `option` VALUES ('578', '陈冰', null, '0', null, '1', '2019-01-08 09:21:56', null, null, '30', '创新部');
INSERT INTO `option` VALUES ('579', '杨建浩', null, '0', null, '1', '2019-01-08 09:22:35', null, null, '30', '创新部');
INSERT INTO `option` VALUES ('580', '陈冰', null, '0', null, '1', '2019-01-08 09:21:56', null, null, '31', '创新部');
INSERT INTO `option` VALUES ('581', '杨建浩', null, '0', null, '1', '2019-01-08 09:22:35', null, null, '31', '创新部');
INSERT INTO `option` VALUES ('1896', '卢锦峰', null, '0', null, '1', '2019-01-08 09:21:55', null, null, '29', '创新部');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) DEFAULT NULL,
  `CODE` varchar(32) DEFAULT NULL,
  `STATUS` int(11) DEFAULT 0,
  `TYPE` int(11) DEFAULT NULL,
  `IS_VALID` int(11) DEFAULT 1,
  `CREATE_TIME` timestamp NULL DEFAULT current_timestamp(),
  `UPDATE_TIME` timestamp NULL DEFAULT NULL,
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `EXPIRED_DATE` datetime DEFAULT NULL,
  `TOPIC_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_QUESTION_TOPIC` (`TOPIC_ID`),
  CONSTRAINT `FK_QUESTION_TOPIC` FOREIGN KEY (`TOPIC_ID`) REFERENCES `topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='问卷表';

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('8', '技术部-主管', null, '0', null, '1', '2019-01-06 13:15:44', null, null, null, '2');
INSERT INTO `question` VALUES ('9', '副主管-1', null, '0', null, '1', '2019-01-06 13:15:55', null, null, null, '2');
INSERT INTO `question` VALUES ('10', '副主管-2', null, '0', null, '1', '2019-01-06 13:16:16', null, null, null, '2');
INSERT INTO `question` VALUES ('11', '推广部-主管', null, '0', null, '1', '2019-01-06 13:17:19', null, null, null, '2');
INSERT INTO `question` VALUES ('12', '副主管-1', null, '0', null, '1', '2019-01-06 13:17:30', null, null, null, '2');
INSERT INTO `question` VALUES ('13', '副主管-2', null, '0', null, '1', '2019-01-06 13:17:39', null, null, null, '2');
INSERT INTO `question` VALUES ('14', '采购部-主管', null, '0', null, '1', '2019-01-06 13:17:53', null, null, null, '2');
INSERT INTO `question` VALUES ('15', '副主管-1', null, '0', null, '1', '2019-01-06 13:18:06', null, null, null, '2');
INSERT INTO `question` VALUES ('16', '副主管-2', null, '0', null, '1', '2019-01-06 13:18:21', null, null, null, '2');
INSERT INTO `question` VALUES ('17', '物流部-主管', null, '0', null, '1', '2019-01-06 13:18:31', null, null, null, '2');
INSERT INTO `question` VALUES ('18', '副主管-1', null, '0', null, '1', '2019-01-06 13:18:41', null, null, null, '2');
INSERT INTO `question` VALUES ('19', '副主管-2', null, '0', null, '1', '2019-01-06 13:18:52', null, null, null, '2');
INSERT INTO `question` VALUES ('20', '客服部-主管', null, '0', null, '1', '2019-01-06 13:19:01', null, null, null, '2');
INSERT INTO `question` VALUES ('21', '副主管-1', null, '0', null, '1', '2019-01-06 13:19:10', null, null, null, '2');
INSERT INTO `question` VALUES ('22', '副主管-2', null, '0', null, '1', '2019-01-06 13:19:18', null, null, null, '2');
INSERT INTO `question` VALUES ('23', '业务部-主管', null, '0', null, '1', '2019-01-06 13:19:27', null, null, null, '2');
INSERT INTO `question` VALUES ('24', '副主管-1', null, '0', null, '1', '2019-01-06 13:19:33', null, null, null, '2');
INSERT INTO `question` VALUES ('25', '副主管-2', null, '0', null, '1', '2019-01-06 13:20:40', null, null, null, '2');
INSERT INTO `question` VALUES ('26', '财务部-主管', null, '0', null, '1', '2019-01-06 13:21:03', null, null, null, '2');
INSERT INTO `question` VALUES ('27', '副主管-1', null, '0', null, '1', '2019-01-06 13:21:15', null, null, null, '2');
INSERT INTO `question` VALUES ('28', '副主管-2', null, '0', null, '1', '2019-01-06 13:21:22', null, null, null, '2');
INSERT INTO `question` VALUES ('29', '创新部-主管', null, '0', null, '1', '2019-01-07 20:28:42', null, null, null, '2');
INSERT INTO `question` VALUES ('30', '副主管-1', null, '0', null, '1', '2019-01-07 20:29:17', null, null, null, '2');
INSERT INTO `question` VALUES ('31', '副主管-2', null, '0', null, '1', '2019-01-07 20:29:26', null, null, null, '2');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `is_valid` tinyint(4) DEFAULT 1,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('2', '公司领导干部竞选', '1', '2019-01-05 00:00:16', '2019-01-13 23:59:59');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) DEFAULT NULL,
  `CODE` varchar(32) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `IS_VOTEED` int(11) DEFAULT 0,
  `IS_VALID` int(11) DEFAULT 1,
  `CREATE_TIME` timestamp NULL DEFAULT current_timestamp(),
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `DESCRIPTION` varchar(512) DEFAULT NULL,
  `WEIGHT` int(11) DEFAULT NULL COMMENT '权重',
  `DEPARTMNET_NAME` varchar(45) DEFAULT NULL COMMENT '部门名称',
  `COMPANY_MOBIL` varchar(255) DEFAULT NULL,
  `PERSONAL_MOBIL` varchar(255) DEFAULT NULL,
  `IS_LEADER` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '蔡奕枫', null, null, null, '0', '1', '2019-01-02 18:42:37', '2019-01-07 11:25:38', null, '1', '技术部', '18933089226', '17353055202', '0');
INSERT INTO `user` VALUES ('2', '陈必升', null, null, null, '0', '1', '2019-01-02 18:43:01', '2019-01-07 11:25:26', null, '1', '技术部', '18933089219', '13827321549', '0');
INSERT INTO `user` VALUES ('3', '陈煌', null, null, null, '0', '1', '2019-01-02 18:43:10', '2019-01-07 11:25:13', null, '1', '技术部', '18933088635', '18319862288', '0');
INSERT INTO `user` VALUES ('4', '陈清亮', null, null, null, '0', '1', '2019-01-02 18:42:04', '2019-01-07 11:24:51', null, '1', '技术部', '18933089241', '13652839448', '0');
INSERT INTO `user` VALUES ('5', '陈庆钿', null, null, null, '0', '1', '2019-01-02 18:43:22', '2019-01-07 20:03:20', null, '1', '技术部', '18933089229', '15018442872', '0');
INSERT INTO `user` VALUES ('6', '洪伟珊', null, null, null, '0', '1', '2019-01-02 18:41:25', '2019-01-07 20:08:43', null, '1', '技术部', '18933089201', '15218550126', '0');
INSERT INTO `user` VALUES ('7', '黄梓娜', null, null, null, '0', '1', '2019-01-02 18:42:52', '2019-01-07 20:07:15', null, '1', '技术部', '18933088607', '18688052695', '0');
INSERT INTO `user` VALUES ('8', '刘冬武', null, null, null, '0', '1', '2019-01-02 18:42:19', '2019-01-07 20:04:51', null, '1', '技术部', '18933089219', '15994986283', '0');
INSERT INTO `user` VALUES ('9', '卢锦峰', null, null, null, '0', '1', '2019-01-02 18:43:36', '2019-01-07 20:03:47', null, '1', '技术部', '18933089217', '15913067273', '0');
INSERT INTO `user` VALUES ('10', '陆伟健', null, null, null, '0', '1', '2019-01-02 18:43:32', '2019-01-07 20:08:18', null, '1', '技术部', '18933088627', '15914500939', '0');
INSERT INTO `user` VALUES ('11', '苏泓智', null, null, null, '0', '1', '2019-01-02 18:43:14', '2019-01-07 20:07:39', null, '1', '技术部', '18933089228', '18820785604', '0');
INSERT INTO `user` VALUES ('12', '姚乙润', null, null, null, '0', '1', '2019-01-02 18:41:46', '2019-01-07 20:05:23', null, '1', '技术部', '18933089236', '13690047010', '0');
INSERT INTO `user` VALUES ('13', '叶焕远', null, null, null, '0', '1', '2019-01-02 18:41:33', '2019-01-07 20:02:40', null, '1', '技术部', '18933089216', '18666646303', '0');
INSERT INTO `user` VALUES ('14', '詹梦宇', null, null, null, '0', '1', '2019-01-02 18:42:45', '2019-01-07 20:06:48', null, '1', '技术部', '18933089214', '13670771616', '0');
INSERT INTO `user` VALUES ('15', '邹创锋', null, null, null, '0', '1', '2019-01-02 18:42:29', '2019-01-07 20:04:16', null, '1', '技术部', '18933089218', '13631016009', '0');
INSERT INTO `user` VALUES ('16', '李晓晗', null, null, null, '0', '1', '2019-01-02 18:41:55', '2019-01-07 20:09:22', null, '1', '财务部', '18933088602', '15919535460', '0');
INSERT INTO `user` VALUES ('17', '蔡佳蓉', null, null, null, '0', '1', '2019-01-02 18:41:12', '2019-01-07 20:11:01', null, '1', '财务部', '18933088611', '15976388330', '0');
INSERT INTO `user` VALUES ('18', '江雅慧', null, null, null, '0', '1', '2019-01-02 18:42:11', '2019-01-07 20:10:15', null, '1', '财务部', '18933089205', '13631005600', '0');
INSERT INTO `user` VALUES ('19', '李思亮', null, null, null, '0', '1', '2019-01-02 18:41:40', '2019-01-07 20:11:26', null, '1', '财务部', '18933089239', '13631017000', '0');
INSERT INTO `user` VALUES ('20', '刘钰芬', null, null, null, '0', '1', '2019-01-02 18:43:45', '2019-01-07 20:09:46', null, '1', '财务部', '18633089203', '15019739778', '0');
INSERT INTO `user` VALUES ('21', '魏江勇', null, null, null, '0', '1', '2019-01-02 18:44:11', '2019-01-07 20:10:41', null, '1', '财务部', '18933088636', '15976323939', '0');
INSERT INTO `user` VALUES ('22', '谢子薇', null, null, null, '0', '1', '2019-01-02 18:44:35', '2019-01-07 20:12:33', null, '1', '财务部', '18933088639', '13128612847', '0');
INSERT INTO `user` VALUES ('23', '庄楷微', null, null, null, '0', '1', '2019-01-02 18:43:58', '2019-01-07 20:12:00', null, '1', '财务部', '18933088623', '13727940081', '0');
INSERT INTO `user` VALUES ('24', '蔡晓璇', null, null, null, '0', '1', '2019-01-02 18:44:16', '2019-01-07 20:13:26', null, '1', '业务部', '18933089237', '15913083840', '0');
INSERT INTO `user` VALUES ('25', '李意晗', null, null, null, '0', '1', '2019-01-02 18:43:51', '2019-01-07 20:13:14', null, '1', '业务部', '18933089210', '13690041770', '0');
INSERT INTO `user` VALUES ('26', '吴哲', null, null, null, '0', '1', '2019-01-02 18:44:04', '2019-01-07 20:13:05', null, '1', '业务部', '18933088608', '18218484092', '0');
INSERT INTO `user` VALUES ('27', '谢璇', null, null, null, '0', '1', '2019-01-02 18:44:31', '2019-01-07 20:09:54', null, '1', '业务部', '18933088606', '15913021218', '0');
INSERT INTO `user` VALUES ('28', '余立浩', null, null, null, '0', '1', '2019-01-02 18:44:22', '2019-01-07 20:13:31', null, '1', '业务部', '18933088614', '13670761978', '0');
INSERT INTO `user` VALUES ('29', '陈梓红', null, null, null, '0', '1', '2019-01-02 18:45:05', '2019-01-07 20:13:03', null, '1', '采购部', '18933088609', '15089770889', '0');
INSERT INTO `user` VALUES ('30', '洪继锋', null, null, null, '0', '1', '2019-01-02 18:45:12', '2019-01-07 20:12:53', null, '1', '采购部', '18933088615', '13433720924', '0');
INSERT INTO `user` VALUES ('31', '林楷华', null, null, null, '0', '1', '2019-01-02 18:44:40', '2019-01-07 20:12:41', null, '1', '采购部', '18933088619', '13829027808', '0');
INSERT INTO `user` VALUES ('32', '许素萍', null, null, null, '0', '1', '2019-01-02 18:47:27', '2019-01-07 20:12:26', null, '1', '采购部', '18933089233', '13539380356', '0');
INSERT INTO `user` VALUES ('33', '许晓洁', null, null, null, '0', '1', '2019-01-02 18:44:59', '2019-01-07 20:12:15', null, '1', '采购部', '18933089240', '13671425409', '0');
INSERT INTO `user` VALUES ('34', '张海燕', null, null, null, '0', '1', '2019-01-02 18:45:17', '2019-01-07 20:12:05', null, '1', '采购部', '18933089244', '17807685102', '0');
INSERT INTO `user` VALUES ('35', '蔡凯旋', null, null, null, '0', '1', '2019-01-02 18:45:24', '2019-01-07 20:11:00', null, '1', '客服部', '18029852555', '15916450908', '0');
INSERT INTO `user` VALUES ('36', '蔡仪', null, null, null, '0', '1', '2019-01-02 18:45:32', '2019-01-07 20:10:40', null, '1', '客服部', '18025562551', '13670716942', '0');
INSERT INTO `user` VALUES ('37', '陈丹桃', null, null, null, '0', '1', '2019-01-02 18:45:39', '2019-01-07 20:11:22', null, '1', '客服部', '18933089246', '13690009207', '0');
INSERT INTO `user` VALUES ('38', '陈哲舜', null, null, null, '0', '1', '2019-01-02 18:45:48', '2019-01-07 20:10:04', null, '1', '客服部', '18933088610', '15889980742', '0');
INSERT INTO `user` VALUES ('39', '邓霞', null, null, null, '0', '1', '2019-01-02 18:45:57', '2019-01-07 20:10:30', null, '1', '客服部', '18933089208', '13534694615', '0');
INSERT INTO `user` VALUES ('40', '林楚银', null, null, null, '0', '1', '2019-01-02 18:46:41', '2019-01-07 20:10:50', null, '1', '客服部', '18933088600', '13322789810', '0');
INSERT INTO `user` VALUES ('41', '林奕铿', null, null, null, '0', '1', '2019-01-02 18:47:04', '2019-01-07 20:11:44', null, '1', '客服部', '18933088638', '13829087752', '0');
INSERT INTO `user` VALUES ('42', '刘镕', null, null, null, '0', '1', '2019-01-02 18:46:28', '2019-01-07 20:11:11', null, '1', '客服部', '18933089238', '15876830565', '0');
INSERT INTO `user` VALUES ('43', '罗晓琴', null, null, null, '0', '1', '2019-01-02 18:47:22', '2019-01-07 20:11:33', null, '1', '客服部', '18933089207', '15814907507', '0');
INSERT INTO `user` VALUES ('44', '张链', null, null, null, '0', '1', '2019-01-02 18:47:07', '2019-01-07 20:11:54', null, '1', '客服部', '18933088625', '13288849260', '0');
INSERT INTO `user` VALUES ('45', '庄少婷', null, null, null, '0', '1', '2019-01-02 18:46:52', '2019-01-07 20:10:17', null, '1', '客服部', '18025726774', '18307682818', '0');
INSERT INTO `user` VALUES ('46', '陈洁', null, null, null, '0', '1', '2019-01-02 18:46:11', '2019-01-07 20:07:13', null, '1', '推广部', '18933088629', '13750070416', '0');
INSERT INTO `user` VALUES ('47', '黄镟', null, null, null, '0', '1', '2019-01-02 18:46:33', '2019-01-07 20:08:46', null, '1', '推广部', '18924726835', '18814117929', '0');
INSERT INTO `user` VALUES ('48', '李裕贤', null, null, null, '0', '1', '2019-01-02 18:46:18', '2019-01-07 20:08:03', null, '1', '推广部', '18933088628', '18507687577', '0');
INSERT INTO `user` VALUES ('49', '林博东', null, null, null, '0', '1', '2019-01-02 18:46:04', '2019-01-07 20:07:02', null, '1', '推广部', '18933089223', '13226148152', '0');
INSERT INTO `user` VALUES ('50', '王植源', null, null, null, '0', '1', '2019-01-02 18:47:20', '2019-01-07 20:09:31', null, '1', '推广部', '18933088618', '13531530169', '0');
INSERT INTO `user` VALUES ('51', '文粤生', null, null, null, '0', '1', '2019-01-02 18:48:27', '2019-01-07 20:09:04', null, '1', '推广部', '18933088617', '13690011196', '0');
INSERT INTO `user` VALUES ('52', '吴锦璇', null, null, null, '0', '1', '2019-01-02 18:47:56', '2019-01-07 20:09:42', null, '1', '推广部', '18933088637', '15816550075', '0');
INSERT INTO `user` VALUES ('53', '谢梓潮', null, null, null, '0', '1', '2019-01-02 18:48:09', '2019-01-07 20:07:45', null, '1', '推广部', '18933088621', '13828331500', '0');
INSERT INTO `user` VALUES ('54', '朱伟锐', null, null, null, '0', '1', '2019-01-02 18:48:32', '2019-01-07 20:07:27', null, '1', '推广部', '18933088633', '13144466876', '0');
INSERT INTO `user` VALUES ('55', '陈铭榕', null, null, null, '0', '1', '2019-01-02 18:47:39', '2019-01-07 20:04:53', null, '1', '物流部', '18933089243', '13435550794', '0');
INSERT INTO `user` VALUES ('56', '陈锐镇', null, null, null, '0', '1', '2019-01-02 18:47:51', '2019-01-07 20:05:38', null, '1', '物流部', '18933089221', '13426926071', '0');
INSERT INTO `user` VALUES ('57', '林彩霞', null, null, null, '0', '1', '2019-01-02 18:47:33', '2019-01-07 20:06:11', null, '1', '物流部', '18933088603', '15976595036', '0');
INSERT INTO `user` VALUES ('58', '林金元', null, null, null, '0', '1', '2019-01-02 18:48:16', '2019-01-07 20:23:21', null, '1', '物流部', '18933089224', '13435585263', '0');
INSERT INTO `user` VALUES ('59', '刘杨', null, null, null, '0', '1', '2019-01-02 18:48:22', '2019-01-07 20:04:40', null, '1', '物流部', '18933089211', '15876838438', '0');
INSERT INTO `user` VALUES ('60', '卢丹妮', null, null, null, '0', '1', '2019-01-02 18:49:14', '2019-01-07 20:05:55', null, '1', '物流部', '18933089230', '15876877463', '0');
INSERT INTO `user` VALUES ('61', '苏少彬', null, null, null, '0', '1', '2019-01-02 18:48:54', '2019-01-07 20:06:48', null, '1', '物流部', '18933088620', '13727962599', '0');
INSERT INTO `user` VALUES ('62', '曾奕盛', null, null, null, '0', '1', '2019-01-02 18:48:42', '2019-01-07 20:23:49', null, '1', '物流部', '18933089225', '13643024937', '0');
INSERT INTO `user` VALUES ('63', '陈冰', null, null, null, '0', '1', '2019-01-02 18:49:00', '2019-01-07 20:08:29', null, '1', '创新部', '18023917427', '15815196888', '0');
INSERT INTO `user` VALUES ('64', '杨建浩', null, null, null, '0', '1', '2019-01-02 18:49:19', '2019-01-07 20:09:20', null, '1', '创新部', '18933089204', '13531527561', '0');
INSERT INTO `user` VALUES ('77', '丁炳良', null, null, null, '0', '1', '2019-01-02 18:49:29', '2019-01-07 10:08:28', null, '1', null, '18933088632', '13715800303', '0');
INSERT INTO `user` VALUES ('78', '刘如枝', null, null, null, '0', '1', '2019-01-02 18:49:32', '2019-01-07 10:08:28', null, '1', null, '', '13715793695', '0');
INSERT INTO `user` VALUES ('79', '刘燕', null, null, null, '0', '1', '2019-01-02 18:49:37', '2019-01-07 10:08:28', null, '1', null, '', '13690043351', '0');
INSERT INTO `user` VALUES ('80', '林树桐', null, null, null, '0', '1', '2019-01-02 18:49:45', '2019-01-07 10:08:28', null, '1', null, '15913012345', '', '0');
INSERT INTO `user` VALUES ('81', '苏佳龙', null, null, null, '0', '1', '2019-01-02 18:49:53', '2019-01-07 10:08:28', null, '1', null, '', '15099652003', '0');
INSERT INTO `user` VALUES ('82', '黄记新', null, null, null, '1', '1', '2019-01-03 19:25:46', '2019-01-07 12:26:01', null, '5', null, '13926205227', null, '1');
INSERT INTO `user` VALUES ('100', '张志成', null, null, null, '1', '1', '2019-01-03 19:42:49', '2019-01-07 14:50:00', null, '1', null, '13535048320', '13535048320', '1');
INSERT INTO `user` VALUES ('101', '蔡宏伟', null, null, null, '1', '1', '2019-01-04 09:58:39', '2019-01-07 10:08:28', null, '5', null, '15989111954', null, '1');
INSERT INTO `user` VALUES ('102', '测试机', null, null, null, '1', '1', '2019-01-04 14:21:39', '2019-01-07 10:08:28', null, '1', null, '13322797917', '13322797917', '1');
INSERT INTO `user` VALUES ('103', '朱永新', null, null, null, '1', '1', '2019-01-04 16:05:04', '2019-01-07 10:08:28', null, '1', null, '15089734607', '15089734607', '0');
INSERT INTO `user` VALUES ('201', '梁文杰', null, null, null, '1', '1', '2019-01-03 18:16:21', '2019-01-07 11:04:13', null, '1', null, '17807638591', '17807638591', '0');
INSERT INTO `user` VALUES ('202', '陈枝滨', null, null, null, '0', '1', '2019-01-02 18:38:54', '2019-01-07 11:04:13', null, '5', null, '18125888888', '13539389678', '1');
INSERT INTO `user` VALUES ('203', '刘春元', null, null, null, '1', '1', '2019-01-02 18:39:20', '2019-01-07 11:04:13', null, '5', null, '18933088601', '13118603888', '1');
INSERT INTO `user` VALUES ('204', '陈红仔', null, null, null, '1', '1', '2019-01-02 18:40:12', '2019-01-07 11:04:13', null, '5', null, '18933088631', '13924727666', '1');
INSERT INTO `user` VALUES ('205', '郑榕钰', null, null, null, '0', '1', '2019-01-02 18:40:31', '2019-01-07 11:04:13', null, '1', null, '18029858888', '18676860998', '0');
INSERT INTO `user` VALUES ('206', '罗荣哲', null, null, null, '0', '1', '2019-01-02 18:40:48', '2019-01-07 11:04:13', null, '1', null, null, '13076433966', '0');
INSERT INTO `user` VALUES ('207', '刘作武', null, null, null, '0', '1', '2019-01-02 18:40:58', '2019-01-07 11:04:13', null, '1', null, '18933089212', '13553789523', '0');
INSERT INTO `user` VALUES ('269', '张晓赟', null, null, null, '1', '1', '2019-01-07 11:32:39', '2019-01-07 14:49:15', null, '1', null, '13560315859', '13560315859', '1');
INSERT INTO `user` VALUES ('270', '谢元春', '', null, null, '1', '1', '2019-01-07 11:32:39', '2019-01-07 14:23:13', '', '1', null, '17666556185', '17666556185', '0');
INSERT INTO `user` VALUES ('271', '曾运试', '', null, null, '0', '1', '2019-01-07 11:32:39', '2019-01-07 14:33:44', '', '1', null, '15877220425', '15877220425', '0');

-- ----------------------------
-- Table structure for user_topic
-- ----------------------------
DROP TABLE IF EXISTS `user_topic`;
CREATE TABLE `user_topic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `TOPIC_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_TOPIC_ID` (`TOPIC_ID`),
  KEY `FK_USER_ID` (`USER_ID`),
  CONSTRAINT `FK_TOPIC_ID` FOREIGN KEY (`TOPIC_ID`) REFERENCES `topic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_topic
-- ----------------------------
INSERT INTO `user_topic` VALUES ('5', '100', '2');
INSERT INTO `user_topic` VALUES ('6', '102', '2');
INSERT INTO `user_topic` VALUES ('7', '201', '2');
INSERT INTO `user_topic` VALUES ('8', '82', '2');
INSERT INTO `user_topic` VALUES ('9', '103', '2');

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(32) DEFAULT NULL,
  `QUESTION_ID` int(45) DEFAULT NULL,
  `OPTION_ID` int(45) DEFAULT NULL,
  `WEIGHT` int(11) DEFAULT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `VOTED_USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_VOTE_USER_idx` (`USER_ID`) USING BTREE,
  KEY `FK_VOTE_QUESTION_idx` (`QUESTION_ID`) USING BTREE,
  KEY `FK_VOTE_OPTION_idx` (`OPTION_ID`) USING BTREE,
  KEY `FK_VOTE_USER_VOTED` (`VOTED_USER_ID`),
  CONSTRAINT `FK_VOTE_OPTION` FOREIGN KEY (`OPTION_ID`) REFERENCES `option` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_VOTE_QUESTION` FOREIGN KEY (`QUESTION_ID`) REFERENCES `question` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_VOTE_USER` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_VOTE_USER_VOTED` FOREIGN KEY (`VOTED_USER_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vote
-- ----------------------------
INSERT INTO `vote` VALUES ('1', '100', '8', null, '1', '2019-01-08 12:12:07', '1');
INSERT INTO `vote` VALUES ('2', '100', '9', null, '1', '2019-01-08 12:12:07', '2');
INSERT INTO `vote` VALUES ('3', '100', '10', null, '1', '2019-01-08 12:12:07', '3');
INSERT INTO `vote` VALUES ('4', '100', '11', null, '1', '2019-01-08 12:12:07', '4');
INSERT INTO `vote` VALUES ('5', '100', '12', null, '1', '2019-01-08 12:12:07', '5');
INSERT INTO `vote` VALUES ('6', '100', '13', null, '1', '2019-01-08 12:12:07', '6');
INSERT INTO `vote` VALUES ('7', '100', '14', null, '1', '2019-01-08 12:12:07', '7');
INSERT INTO `vote` VALUES ('8', '100', '15', null, '1', '2019-01-08 12:12:07', '8');
INSERT INTO `vote` VALUES ('9', '100', '16', null, '1', '2019-01-08 12:12:07', '9');
INSERT INTO `vote` VALUES ('10', '100', '17', null, '1', '2019-01-08 12:12:07', '10');
INSERT INTO `vote` VALUES ('11', '100', '18', null, '1', '2019-01-08 12:12:07', '11');
INSERT INTO `vote` VALUES ('12', '100', '19', null, '1', '2019-01-08 12:12:07', '12');
INSERT INTO `vote` VALUES ('13', '100', '20', null, '1', '2019-01-08 12:12:07', '13');
INSERT INTO `vote` VALUES ('14', '100', '21', null, '1', '2019-01-08 12:12:07', '14');
INSERT INTO `vote` VALUES ('15', '100', '22', null, '1', '2019-01-08 12:12:07', '15');
INSERT INTO `vote` VALUES ('16', '100', '23', null, '1', '2019-01-08 12:12:07', '16');
INSERT INTO `vote` VALUES ('17', '100', '24', null, '1', '2019-01-08 12:12:07', '17');
INSERT INTO `vote` VALUES ('18', '100', '25', null, '1', '2019-01-08 12:12:07', '18');
INSERT INTO `vote` VALUES ('19', '100', '26', null, '1', '2019-01-08 12:12:07', '19');
INSERT INTO `vote` VALUES ('20', '100', '27', null, '1', '2019-01-08 12:12:07', '20');
INSERT INTO `vote` VALUES ('21', '100', '28', null, '1', '2019-01-08 12:12:07', '21');
INSERT INTO `vote` VALUES ('22', '100', '29', null, '1', '2019-01-08 12:12:07', '22');
INSERT INTO `vote` VALUES ('23', '100', '30', null, '1', '2019-01-08 12:12:07', '23');
INSERT INTO `vote` VALUES ('24', '100', '31', null, '1', '2019-01-08 12:12:07', '24');
INSERT INTO `vote` VALUES ('25', '102', '8', null, '1', '2019-01-08 13:40:52', '64');
INSERT INTO `vote` VALUES ('26', '102', '9', null, '1', '2019-01-08 13:40:52', '63');
INSERT INTO `vote` VALUES ('27', '102', '10', null, '1', '2019-01-08 13:40:52', '62');
INSERT INTO `vote` VALUES ('28', '102', '11', null, '1', '2019-01-08 13:40:52', '61');
INSERT INTO `vote` VALUES ('29', '102', '12', null, '1', '2019-01-08 13:40:52', '60');
INSERT INTO `vote` VALUES ('30', '102', '13', null, '1', '2019-01-08 13:40:52', '59');
INSERT INTO `vote` VALUES ('31', '102', '14', null, '1', '2019-01-08 13:40:52', '58');
INSERT INTO `vote` VALUES ('32', '102', '15', null, '1', '2019-01-08 13:40:52', '57');
INSERT INTO `vote` VALUES ('33', '102', '16', null, '1', '2019-01-08 13:40:52', '56');
INSERT INTO `vote` VALUES ('34', '102', '17', null, '1', '2019-01-08 13:40:52', '55');
INSERT INTO `vote` VALUES ('35', '102', '18', null, '1', '2019-01-08 13:40:52', '54');
INSERT INTO `vote` VALUES ('36', '102', '19', null, '1', '2019-01-08 13:40:52', '53');
INSERT INTO `vote` VALUES ('37', '102', '20', null, '1', '2019-01-08 13:40:52', '52');
INSERT INTO `vote` VALUES ('38', '102', '21', null, '1', '2019-01-08 13:40:52', '51');
INSERT INTO `vote` VALUES ('39', '102', '22', null, '1', '2019-01-08 13:40:52', '50');
INSERT INTO `vote` VALUES ('40', '102', '23', null, '1', '2019-01-08 13:40:52', '49');
INSERT INTO `vote` VALUES ('41', '102', '24', null, '1', '2019-01-08 13:40:52', '48');
INSERT INTO `vote` VALUES ('42', '102', '25', null, '1', '2019-01-08 13:40:52', '47');
INSERT INTO `vote` VALUES ('43', '102', '26', null, '1', '2019-01-08 13:40:52', '46');
INSERT INTO `vote` VALUES ('44', '102', '27', null, '1', '2019-01-08 13:40:52', '45');
INSERT INTO `vote` VALUES ('45', '102', '28', null, '1', '2019-01-08 13:40:52', '44');
INSERT INTO `vote` VALUES ('46', '102', '29', null, '1', '2019-01-08 13:40:52', '43');
INSERT INTO `vote` VALUES ('47', '102', '30', null, '1', '2019-01-08 13:40:52', '42');
INSERT INTO `vote` VALUES ('48', '102', '31', null, '1', '2019-01-08 13:40:52', '41');
INSERT INTO `vote` VALUES ('49', '201', '8', null, '1', '2019-01-08 13:44:26', '1');
INSERT INTO `vote` VALUES ('50', '201', '9', null, '1', '2019-01-08 13:44:26', '2');
INSERT INTO `vote` VALUES ('51', '201', '10', null, '1', '2019-01-08 13:44:26', '3');
INSERT INTO `vote` VALUES ('52', '201', '11', null, '1', '2019-01-08 13:44:26', '4');
INSERT INTO `vote` VALUES ('53', '201', '12', null, '1', '2019-01-08 13:44:26', '5');
INSERT INTO `vote` VALUES ('54', '201', '13', null, '1', '2019-01-08 13:44:26', '6');
INSERT INTO `vote` VALUES ('55', '201', '14', null, '1', '2019-01-08 13:44:26', '7');
INSERT INTO `vote` VALUES ('56', '201', '15', null, '1', '2019-01-08 13:44:26', '8');
INSERT INTO `vote` VALUES ('57', '201', '16', null, '1', '2019-01-08 13:44:26', '9');
INSERT INTO `vote` VALUES ('58', '201', '17', null, '1', '2019-01-08 13:44:26', '10');
INSERT INTO `vote` VALUES ('59', '201', '18', null, '1', '2019-01-08 13:44:26', '11');
INSERT INTO `vote` VALUES ('60', '201', '19', null, '1', '2019-01-08 13:44:26', '12');
INSERT INTO `vote` VALUES ('61', '201', '20', null, '1', '2019-01-08 13:44:26', '13');
INSERT INTO `vote` VALUES ('62', '201', '21', null, '1', '2019-01-08 13:44:26', '14');
INSERT INTO `vote` VALUES ('63', '201', '22', null, '1', '2019-01-08 13:44:26', '15');
INSERT INTO `vote` VALUES ('64', '201', '23', null, '1', '2019-01-08 13:44:26', '16');
INSERT INTO `vote` VALUES ('65', '201', '24', null, '1', '2019-01-08 13:44:26', '17');
INSERT INTO `vote` VALUES ('66', '201', '25', null, '1', '2019-01-08 13:44:26', '18');
INSERT INTO `vote` VALUES ('67', '201', '26', null, '1', '2019-01-08 13:44:26', '19');
INSERT INTO `vote` VALUES ('68', '201', '27', null, '1', '2019-01-08 13:44:26', '20');
INSERT INTO `vote` VALUES ('69', '201', '28', null, '1', '2019-01-08 13:44:26', '21');
INSERT INTO `vote` VALUES ('70', '201', '29', null, '1', '2019-01-08 13:44:26', '22');
INSERT INTO `vote` VALUES ('71', '201', '30', null, '1', '2019-01-08 13:44:26', '23');
INSERT INTO `vote` VALUES ('72', '201', '31', null, '1', '2019-01-08 13:44:26', '24');
INSERT INTO `vote` VALUES ('73', '82', '8', null, '5', '2019-01-08 13:44:31', '1');
INSERT INTO `vote` VALUES ('74', '82', '9', null, '5', '2019-01-08 13:44:31', '2');
INSERT INTO `vote` VALUES ('75', '82', '10', null, '5', '2019-01-08 13:44:31', '3');
INSERT INTO `vote` VALUES ('76', '82', '11', null, '5', '2019-01-08 13:44:31', '4');
INSERT INTO `vote` VALUES ('77', '82', '12', null, '5', '2019-01-08 13:44:31', '5');
INSERT INTO `vote` VALUES ('78', '82', '13', null, '5', '2019-01-08 13:44:31', '6');
INSERT INTO `vote` VALUES ('79', '82', '14', null, '5', '2019-01-08 13:44:31', '7');
INSERT INTO `vote` VALUES ('80', '82', '15', null, '5', '2019-01-08 13:44:31', '8');
INSERT INTO `vote` VALUES ('81', '82', '16', null, '5', '2019-01-08 13:44:31', '9');
INSERT INTO `vote` VALUES ('82', '82', '17', null, '5', '2019-01-08 13:44:31', '10');
INSERT INTO `vote` VALUES ('83', '82', '18', null, '5', '2019-01-08 13:44:31', '11');
INSERT INTO `vote` VALUES ('84', '82', '19', null, '5', '2019-01-08 13:44:31', '12');
INSERT INTO `vote` VALUES ('85', '82', '20', null, '5', '2019-01-08 13:44:31', '13');
INSERT INTO `vote` VALUES ('86', '82', '21', null, '5', '2019-01-08 13:44:31', '14');
INSERT INTO `vote` VALUES ('87', '82', '22', null, '5', '2019-01-08 13:44:31', '15');
INSERT INTO `vote` VALUES ('88', '82', '23', null, '5', '2019-01-08 13:44:31', '16');
INSERT INTO `vote` VALUES ('89', '82', '24', null, '5', '2019-01-08 13:44:31', '17');
INSERT INTO `vote` VALUES ('90', '82', '25', null, '5', '2019-01-08 13:44:31', '18');
INSERT INTO `vote` VALUES ('91', '82', '26', null, '5', '2019-01-08 13:44:31', '19');
INSERT INTO `vote` VALUES ('92', '82', '27', null, '5', '2019-01-08 13:44:31', '20');
INSERT INTO `vote` VALUES ('93', '82', '28', null, '5', '2019-01-08 13:44:31', '21');
INSERT INTO `vote` VALUES ('94', '82', '29', null, '5', '2019-01-08 13:44:31', '22');
INSERT INTO `vote` VALUES ('95', '82', '30', null, '5', '2019-01-08 13:44:31', '23');
INSERT INTO `vote` VALUES ('96', '82', '31', null, '5', '2019-01-08 13:44:31', '24');
INSERT INTO `vote` VALUES ('97', '103', '8', null, '1', '2019-01-08 14:09:24', '1');
INSERT INTO `vote` VALUES ('98', '103', '9', null, '1', '2019-01-08 14:09:24', '2');
INSERT INTO `vote` VALUES ('99', '103', '10', null, '1', '2019-01-08 14:09:24', '3');
INSERT INTO `vote` VALUES ('100', '103', '11', null, '1', '2019-01-08 14:09:24', '4');
INSERT INTO `vote` VALUES ('101', '103', '12', null, '1', '2019-01-08 14:09:24', '5');
INSERT INTO `vote` VALUES ('102', '103', '13', null, '1', '2019-01-08 14:09:24', '6');
INSERT INTO `vote` VALUES ('103', '103', '14', null, '1', '2019-01-08 14:09:24', '7');
INSERT INTO `vote` VALUES ('104', '103', '15', null, '1', '2019-01-08 14:09:24', '8');
INSERT INTO `vote` VALUES ('105', '103', '16', null, '1', '2019-01-08 14:09:24', '9');
INSERT INTO `vote` VALUES ('106', '103', '17', null, '1', '2019-01-08 14:09:24', '10');
INSERT INTO `vote` VALUES ('107', '103', '18', null, '1', '2019-01-08 14:09:24', '11');
INSERT INTO `vote` VALUES ('108', '103', '19', null, '1', '2019-01-08 14:09:24', '12');
INSERT INTO `vote` VALUES ('109', '103', '20', null, '1', '2019-01-08 14:09:24', '13');
INSERT INTO `vote` VALUES ('110', '103', '21', null, '1', '2019-01-08 14:09:24', '14');
INSERT INTO `vote` VALUES ('111', '103', '22', null, '1', '2019-01-08 14:09:24', '15');
INSERT INTO `vote` VALUES ('112', '103', '23', null, '1', '2019-01-08 14:09:24', '16');
INSERT INTO `vote` VALUES ('113', '103', '24', null, '1', '2019-01-08 14:09:24', '17');
INSERT INTO `vote` VALUES ('114', '103', '25', null, '1', '2019-01-08 14:09:24', '21');
INSERT INTO `vote` VALUES ('115', '103', '26', null, '1', '2019-01-08 14:09:24', '22');
INSERT INTO `vote` VALUES ('116', '103', '27', null, '1', '2019-01-08 14:09:24', '23');
INSERT INTO `vote` VALUES ('117', '103', '28', null, '1', '2019-01-08 14:09:24', '24');
INSERT INTO `vote` VALUES ('118', '103', '29', null, '1', '2019-01-08 14:09:24', '25');
INSERT INTO `vote` VALUES ('119', '103', '30', null, '1', '2019-01-08 14:09:24', '26');
INSERT INTO `vote` VALUES ('120', '103', '31', null, '1', '2019-01-08 14:09:24', '27');
