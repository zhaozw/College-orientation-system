/*
Navicat MySQL Data Transfer

Source Server         : yx11
Source Server Version : 50142
Source Host           : Yang:3306
Source Database       : yx

Target Server Type    : MYSQL
Target Server Version : 50142
File Encoding         : 65001

Date: 2016-08-31 10:29:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for building_info
-- ----------------------------
DROP TABLE IF EXISTS `building_info`;
CREATE TABLE `building_info` (
  `building_id` int(11) NOT NULL,
  `building_name` varchar(20) DEFAULT NULL,
  `area_id` int(32) DEFAULT NULL,
  `floor_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`building_id`),
  KEY `FK_Reference_1` (`area_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`area_id`) REFERENCES `dorm_area_info` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building_info
-- ----------------------------

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major_id` int(11) NOT NULL COMMENT '专业id',
  `name` varchar(50) NOT NULL,
  `teacher` varchar(50) DEFAULT NULL,
  `stu_num` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_2` (`major_id`),
  KEY `FK_Reference_32` (`grade_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`),
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '5', '1', '王尼玛', '23', '2');
INSERT INTO `class` VALUES ('2', '5', '2', '罗志祥', '22', '2');
INSERT INTO `class` VALUES ('3', '5', '3', '大飞哥', '32', '2');
INSERT INTO `class` VALUES ('4', '1', 'R1', '方凤美', '33', '1');
INSERT INTO `class` VALUES ('5', '1', 'R2', '方凤美', '32', '1');
INSERT INTO `class` VALUES ('6', '3', '1', '王宝强', '34', '3');
INSERT INTO `class` VALUES ('7', '3', '2', '马蓉', '34', '3');
INSERT INTO `class` VALUES ('8', '4', '1', '刘德华', '35', '2');
INSERT INTO `class` VALUES ('9', '4', '2', '李宗伟', '31', '2');
INSERT INTO `class` VALUES ('10', '4', '3', '林丹', '33', '2');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `co_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nu_id` bigint(20) DEFAULT NULL,
  `pi_id` bigint(20) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`co_id`),
  KEY `nu_id` (`nu_id`),
  KEY `pi_id` (`pi_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `collection_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`pi_id`) REFERENCES `publish_info` (`pi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for column_info
-- ----------------------------
DROP TABLE IF EXISTS `column_info`;
CREATE TABLE `column_info` (
  `ci_id` int(11) NOT NULL AUTO_INCREMENT,
  `ci_name` varchar(40) DEFAULT NULL,
  `ci_alias_name` varchar(40) DEFAULT NULL,
  `ci_ico` longblob,
  `ci_key` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ci_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of column_info
-- ----------------------------
INSERT INTO `column_info` VALUES ('1', '学校概况', '概况', null, '概况');
INSERT INTO `column_info` VALUES ('2', '学校动态', '动态', null, '动态');
INSERT INTO `column_info` VALUES ('3', '科学研究', '科研', null, '研究');
INSERT INTO `column_info` VALUES ('4', '对外交流', '外交', null, '交流');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学院id',
  `name` varchar(50) NOT NULL COMMENT '学院名',
  `president` varchar(50) DEFAULT NULL COMMENT '院长',
  `vice_president` varchar(50) DEFAULT NULL COMMENT '副院长',
  `address` varchar(200) DEFAULT NULL COMMENT '学院地址\r\n            ',
  `phone` varchar(20) DEFAULT NULL COMMENT '学院电话',
  `zip_code` varchar(20) DEFAULT NULL COMMENT '学院邮政编码',
  `network_address` varchar(100) DEFAULT NULL COMMENT '学院网址',
  `description` varchar(4000) DEFAULT NULL COMMENT '学院简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '软件学院', '刘财兴 ', '刘财兴 ', '广东省广州市天河区华南农业大学华山区12号', '020-85285386', '510642', 'http://info.scau.edu.cn/index.html', '<script>alert(\'Hello\');</script>');
INSERT INTO `department` VALUES ('2', '工程学院', '小泉', 'bb', '广东广州', '18814092662', '529100', '163@sina.com', '搬砖学院');
INSERT INTO `department` VALUES ('3', '数学与信息学院', 'Bili', 'Dee', '广东广州', '18814092662', '529100', '163@sina.com', '数学与信息学院还不来？');
INSERT INTO `department` VALUES ('4', '农学院', '大全', '麻麻', '广东广州', '18814092662', '529100', '162@163.com', '耕田的');
INSERT INTO `department` VALUES ('40', '神抽狗协会', '安德罗妮', '萌太奇', '圣魔大陆小板镇圣魔村', '0750-36236680', '529100', 'magiccollege@dancing.com', 'x学习神');
INSERT INTO `department` VALUES ('41', '经济管理学院', '万俊毅', '文晓巍', '广东省广州市天河区华南农业大学泰山区22号', '020-85283766', '510642', 'http://cem.scau.edu.cn/', '华南农业大学经济管理学院由国立中山大学农学院与私立岭南大学农学院的农业经济教育专业发展而来。1952年院系调整后，华南农业大学农学系停止招收农业经济专业的学生。之后，在农业经济教研室全体老师的努力和积极要求下，农业经济专业于1964年恢复招生。文化大革命期间，农业经济专业停止招生，直至1979年再次恢复招生。1982年成立农业经济系，1992年经农业部批准成立经济贸易学院。2004年5月更名为经济管理学院。');

-- ----------------------------
-- Table structure for dormitory
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_id` int(11) DEFAULT NULL,
  `area_name` varchar(200) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  `dorm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO `dormitory` VALUES ('3', '222', '五山区', '2', '2', '202');
INSERT INTO `dormitory` VALUES ('9', '444', '燕山区', '2', '2', '202');
INSERT INTO `dormitory` VALUES ('2', '111', '华山区', '1', '1', '101');
INSERT INTO `dormitory` VALUES ('21', '111', '华山区', '3', '3', '303');
INSERT INTO `dormitory` VALUES ('20', '111', '华山区', '2', '2', '202');
INSERT INTO `dormitory` VALUES ('19', '333', '启林区', '4', '4', '404');
INSERT INTO `dormitory` VALUES ('18', '333', '启林区', '3', '3', '303');
INSERT INTO `dormitory` VALUES ('17', '333', '启林区', '2', '2', '202');
INSERT INTO `dormitory` VALUES ('22', '111', '华山区', '4', '4', '404');
INSERT INTO `dormitory` VALUES ('23', '222', '五山区', '1', '1', '101');
INSERT INTO `dormitory` VALUES ('24', '222', '五山区', '3', '3', '303');
INSERT INTO `dormitory` VALUES ('25', '222', '五山区', '4', '4', '404');
INSERT INTO `dormitory` VALUES ('26', '444', '燕山区', '1', '1', '101');
INSERT INTO `dormitory` VALUES ('27', '444', '燕山区', '3', '3', '303');
INSERT INTO `dormitory` VALUES ('28', '444', '燕山区', '4', '4', '404');
INSERT INTO `dormitory` VALUES ('29', '555', '东区', '1', '1', '101');
INSERT INTO `dormitory` VALUES ('30', '555', '东区', '2', '2', '202');
INSERT INTO `dormitory` VALUES ('31', '555', '东区', '3', '3', '303');
INSERT INTO `dormitory` VALUES ('32', '555', '东区', '4', '4', '404');
INSERT INTO `dormitory` VALUES ('33', '666', '泰山区', '1', '1', '101');
INSERT INTO `dormitory` VALUES ('34', '666', '泰山区', '2', '2', '202');
INSERT INTO `dormitory` VALUES ('35', '666', '泰山区', '3', '3', '303');
INSERT INTO `dormitory` VALUES ('37', '666', '泰山区', '4', '4', '404');
INSERT INTO `dormitory` VALUES ('42', '333', '启林区', '1', '1', '101');

-- ----------------------------
-- Table structure for dormstu
-- ----------------------------
DROP TABLE IF EXISTS `dormstu`;
CREATE TABLE `dormstu` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  KEY `fk_1` (`student_id`),
  KEY `fk_2` (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dormstu
-- ----------------------------
INSERT INTO `dormstu` VALUES ('3', '1002', '20');
INSERT INTO `dormstu` VALUES ('10', '1001', '17');
INSERT INTO `dormstu` VALUES ('12', '1009', '28');
INSERT INTO `dormstu` VALUES ('11', '1008', '35');

-- ----------------------------
-- Table structure for dorm_area_info
-- ----------------------------
DROP TABLE IF EXISTS `dorm_area_info`;
CREATE TABLE `dorm_area_info` (
  `area_id` int(32) NOT NULL,
  `area_name` varchar(20) DEFAULT NULL,
  `building_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm_area_info
-- ----------------------------

-- ----------------------------
-- Table structure for dorm_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `dorm_basic_info`;
CREATE TABLE `dorm_basic_info` (
  `dorm_id` int(11) NOT NULL,
  `dorm_name` varchar(20) DEFAULT NULL,
  `bedding_count` int(11) DEFAULT NULL,
  `floor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dorm_id`),
  KEY `FK_Reference_3` (`floor_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`floor_id`) REFERENCES `floor_info` (`floor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm_basic_info
-- ----------------------------

-- ----------------------------
-- Table structure for dorm_fee_info
-- ----------------------------
DROP TABLE IF EXISTS `dorm_fee_info`;
CREATE TABLE `dorm_fee_info` (
  `dorm_fee_ID` int(11) NOT NULL,
  `dorm_area` int(11) DEFAULT NULL,
  `dorm_fee_type` varchar(50) DEFAULT NULL,
  `dorm_fee` double DEFAULT NULL,
  `colleage` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dorm_fee_ID`),
  KEY `FK_Reference_31` (`dorm_area`),
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`dorm_area`) REFERENCES `dorm_area_info` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm_fee_info
-- ----------------------------

-- ----------------------------
-- Table structure for dorm_student_info
-- ----------------------------
DROP TABLE IF EXISTS `dorm_student_info`;
CREATE TABLE `dorm_student_info` (
  `dorm_student_id` int(11) NOT NULL,
  `dorm_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `have_product` int(11) DEFAULT NULL,
  PRIMARY KEY (`dorm_student_id`),
  KEY `FK_Reference_4` (`dorm_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`dorm_student_id`) REFERENCES `student` (`stu_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`dorm_id`) REFERENCES `dorm_basic_info` (`dorm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm_student_info
-- ----------------------------

-- ----------------------------
-- Table structure for dorm_welcome_info
-- ----------------------------
DROP TABLE IF EXISTS `dorm_welcome_info`;
CREATE TABLE `dorm_welcome_info` (
  `dorm_res_id` int(11) NOT NULL,
  `res_number` int(11) DEFAULT NULL,
  `res_name` varchar(20) DEFAULT NULL,
  `dorm_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`dorm_res_id`),
  KEY `FK_Reference_45` (`dorm_id`),
  CONSTRAINT `FK_Reference_45` FOREIGN KEY (`dorm_id`) REFERENCES `dorm_basic_info` (`dorm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dorm_welcome_info
-- ----------------------------

-- ----------------------------
-- Table structure for floor_info
-- ----------------------------
DROP TABLE IF EXISTS `floor_info`;
CREATE TABLE `floor_info` (
  `floor_id` int(11) NOT NULL,
  `floor_num` int(11) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `dorm_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`floor_id`),
  KEY `FK_Reference_42` (`building_id`),
  CONSTRAINT `FK_Reference_42` FOREIGN KEY (`building_id`) REFERENCES `building_info` (`building_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floor_info
-- ----------------------------

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '年级信息表id',
  `name` varchar(50) NOT NULL COMMENT '年级名',
  `stu_num` int(11) DEFAULT NULL COMMENT '年级学生人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '2013级', '65');
INSERT INTO `grade` VALUES ('2', '2014级', '176');
INSERT INTO `grade` VALUES ('3', '2015级', null);
INSERT INTO `grade` VALUES ('19', '2016级', '0');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `department_id` int(11) NOT NULL COMMENT '学院id',
  `name` varchar(50) NOT NULL COMMENT '专业名字',
  `introduce` varchar(1000) DEFAULT NULL COMMENT '专业简介',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_43` (`department_id`),
  CONSTRAINT `FK_Reference_43` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '1', '软件工程', '软件工程简介');
INSERT INTO `major` VALUES ('2', '3', '网络工程', '网络工程简介');
INSERT INTO `major` VALUES ('3', '2', '制药工程', '制药工程简介');
INSERT INTO `major` VALUES ('4', '2', '包装工程', '包装工程简介');
INSERT INTO `major` VALUES ('5', '3', '计算机技术', '搞硬件的？');
INSERT INTO `major` VALUES ('6', '1', '文俊工程', '文俊工程简介');
INSERT INTO `major` VALUES ('7', '40', '33', '33');

-- ----------------------------
-- Table structure for major_tuition
-- ----------------------------
DROP TABLE IF EXISTS `major_tuition`;
CREATE TABLE `major_tuition` (
  `tuition_id` int(11) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `major_id` int(11) DEFAULT NULL,
  `tuition_fee` double DEFAULT NULL,
  PRIMARY KEY (`tuition_id`),
  KEY `FK_Reference_37` (`major_id`),
  KEY `FK_Reference_38` (`college_id`),
  CONSTRAINT `FK_Reference_37` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`),
  CONSTRAINT `FK_Reference_38` FOREIGN KEY (`college_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major_tuition
-- ----------------------------

-- ----------------------------
-- Table structure for medical_fee_info
-- ----------------------------
DROP TABLE IF EXISTS `medical_fee_info`;
CREATE TABLE `medical_fee_info` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `project_fee` double DEFAULT NULL,
  `medical_section` varchar(50) DEFAULT NULL,
  `refund_section` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of medical_fee_info
-- ----------------------------

-- ----------------------------
-- Table structure for notice_comment
-- ----------------------------
DROP TABLE IF EXISTS `notice_comment`;
CREATE TABLE `notice_comment` (
  `nc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `v_id` int(11) DEFAULT NULL,
  `pi_id` bigint(20) DEFAULT NULL,
  `nc_content` varchar(200) DEFAULT NULL,
  `nc_create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rep_v_id` int(11) DEFAULT NULL,
  `warn_a_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`nc_id`),
  KEY `FK_Reference_8` (`v_id`),
  KEY `FK_Reference_9` (`pi_id`),
  KEY `FK_Reference_108` (`rep_v_id`),
  KEY `warn_ai_id` (`warn_a_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`pi_id`) REFERENCES `publish_info` (`pi_id`),
  CONSTRAINT `notice_comment_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `notice_comment_ibfk_2` FOREIGN KEY (`rep_v_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `notice_comment_ibfk_3` FOREIGN KEY (`warn_a_id`) REFERENCES `user_info` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_comment
-- ----------------------------
INSERT INTO `notice_comment` VALUES ('1', null, '1', '王俊凯小样', '2016-08-30 16:19:52', null, null);
INSERT INTO `notice_comment` VALUES ('2', null, '1', '王俊凯小样', '2016-08-30 16:23:53', null, null);
INSERT INTO `notice_comment` VALUES ('3', null, '1', '华迪威武！', '2016-08-30 16:24:52', null, null);
INSERT INTO `notice_comment` VALUES ('4', null, '1', '华迪威武！', '2016-08-30 16:26:42', null, null);
INSERT INTO `notice_comment` VALUES ('5', null, '1', '路过！', '2016-08-30 16:28:00', null, null);
INSERT INTO `notice_comment` VALUES ('6', null, '1', '路过！', '2016-08-30 16:28:50', null, null);
INSERT INTO `notice_comment` VALUES ('7', null, '9', '汪峰生仔无屎忽', '2016-08-30 21:11:36', null, null);

-- ----------------------------
-- Table structure for one_card_pass
-- ----------------------------
DROP TABLE IF EXISTS `one_card_pass`;
CREATE TABLE `one_card_pass` (
  `one_card_pass_id` int(32) NOT NULL,
  `stu_id` int(32) DEFAULT NULL,
  `credit_card` int(32) DEFAULT NULL,
  PRIMARY KEY (`one_card_pass_id`),
  KEY `FK_Reference_101` (`stu_id`),
  CONSTRAINT `FK_Reference_101` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of one_card_pass
-- ----------------------------
INSERT INTO `one_card_pass` VALUES ('13340225', '13340225', '13340225');
INSERT INTO `one_card_pass` VALUES ('13340226', '13340226', '13340226');
INSERT INTO `one_card_pass` VALUES ('13340227', '13340227', '13340227');
INSERT INTO `one_card_pass` VALUES ('13340231', '13340231', '13340231');
INSERT INTO `one_card_pass` VALUES ('13341001', '1001', '13341001');
INSERT INTO `one_card_pass` VALUES ('13341002', '1002', '13341002');
INSERT INTO `one_card_pass` VALUES ('13341003', '1003', '13341003');
INSERT INTO `one_card_pass` VALUES ('13341004', '1004', '13341004');
INSERT INTO `one_card_pass` VALUES ('13341006', '1006', '13341006');
INSERT INTO `one_card_pass` VALUES ('13341007', '1007', '13341007');
INSERT INTO `one_card_pass` VALUES ('13341008', '1008', '13341008');
INSERT INTO `one_card_pass` VALUES ('13341009', '1009', '13341009');

-- ----------------------------
-- Table structure for pay_the_fees
-- ----------------------------
DROP TABLE IF EXISTS `pay_the_fees`;
CREATE TABLE `pay_the_fees` (
  `student_id` int(11) NOT NULL,
  `had_paid_the_fee` int(11) DEFAULT NULL,
  `schooling` int(11) DEFAULT NULL,
  `administrative_fee` int(11) DEFAULT NULL,
  `medical_insurance_fee` int(11) DEFAULT NULL,
  `militare_training_clothes_fee` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `FK_Reference_29` FOREIGN KEY (`student_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_the_fees
-- ----------------------------
INSERT INTO `pay_the_fees` VALUES ('1001', '0', '100', '200', '400', '800');
INSERT INTO `pay_the_fees` VALUES ('1002', '0', '100', '200', '400', '800');
INSERT INTO `pay_the_fees` VALUES ('1003', '0', '100', '200', '400', '800');
INSERT INTO `pay_the_fees` VALUES ('1004', '0', '800', '800', '800', '800');
INSERT INTO `pay_the_fees` VALUES ('1006', '0', '100', '100', '100', '100');
INSERT INTO `pay_the_fees` VALUES ('1007', '0', '100', '200', '400', '100');
INSERT INTO `pay_the_fees` VALUES ('1008', '0', '100', '200', '400', '100');
INSERT INTO `pay_the_fees` VALUES ('1009', '0', '100', '200', '400', '100');
INSERT INTO `pay_the_fees` VALUES ('13340225', '1', '400', '800', '1600', '3200');
INSERT INTO `pay_the_fees` VALUES ('13340226', '1', '200', '400', '800', '1600');
INSERT INTO `pay_the_fees` VALUES ('13340227', '1', '100', '200', '400', '800');

-- ----------------------------
-- Table structure for power_info
-- ----------------------------
DROP TABLE IF EXISTS `power_info`;
CREATE TABLE `power_info` (
  `power_id` int(11) NOT NULL AUTO_INCREMENT,
  `power_name` varchar(50) DEFAULT NULL,
  `power_url` varchar(255) DEFAULT NULL,
  `power_level` int(11) DEFAULT NULL,
  `power_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`power_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100000000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power_info
-- ----------------------------
INSERT INTO `power_info` VALUES ('100001', '用户信息管理', null, '0', '用户信息管理描述');
INSERT INTO `power_info` VALUES ('100002', '角色信息管理', null, '0', '角色信息管理描述');
INSERT INTO `power_info` VALUES ('100003', '权限信息管理', null, '0', '权限信息管理描述');
INSERT INTO `power_info` VALUES ('200001', '登记报到单打印状态', null, '0', '登记报到单打印状态描述');
INSERT INTO `power_info` VALUES ('200002', '院系报道管理', null, '0', '院系报道管理描述');
INSERT INTO `power_info` VALUES ('200003', '档案提交管理', null, '0', '档案提交管理描述');
INSERT INTO `power_info` VALUES ('300001', '军训用品发放管理', null, '0', '军训用品发放管理描述');
INSERT INTO `power_info` VALUES ('300002', '军训用品信息管理', null, '0', '军训用品信息管理描述');
INSERT INTO `power_info` VALUES ('400001', '学习用品发放管理', null, '0', '学习用品发放管理描述');
INSERT INTO `power_info` VALUES ('400002', '学习用品信息管理', null, '0', '学习用品信息管理描述');
INSERT INTO `power_info` VALUES ('500001', '一卡通发放管理', null, '0', '一卡通发放管理');
INSERT INTO `power_info` VALUES ('600001', '医保办理管理', null, '0', '医保办理管理');
INSERT INTO `power_info` VALUES ('600002', '医保费用信息管理', null, '0', '医保费用信息管理');
INSERT INTO `power_info` VALUES ('600003', '一卡通管理', null, '0', '一卡通管理');
INSERT INTO `power_info` VALUES ('700001', '现场缴费登记', null, '0', '现场缴费登记');
INSERT INTO `power_info` VALUES ('700002', '专业学费标准管理', null, '0', '专业学费标准管理');
INSERT INTO `power_info` VALUES ('700003', '床上用品购买管理', null, '0', '床上用品购买管理');
INSERT INTO `power_info` VALUES ('700004', '学习用品购买管理', null, '0', '学习用品购买管理');
INSERT INTO `power_info` VALUES ('700005', '军训用品购买管理', null, '0', '军训用品购买管理');
INSERT INTO `power_info` VALUES ('800001', '管理宿舍管理系统模块', null, '0', '管理宿舍管理系统模块');
INSERT INTO `power_info` VALUES ('800002', '宿舍费用信息管理', null, '0', '宿舍费用信息管理');
INSERT INTO `power_info` VALUES ('800003', '床上用品信息管理', null, '0', '床上用品信息管理');
INSERT INTO `power_info` VALUES ('800004', '供应商管理', null, '0', '供应商管理');
INSERT INTO `power_info` VALUES ('900001', '查看迎新统计人数', null, '0', '查看迎新统计人数');
INSERT INTO `power_info` VALUES ('1000001', '学生信息管理', null, '0', '学生信息管理');
INSERT INTO `power_info` VALUES ('1000002', '录取查询管理', null, '0', '录取查询管理');
INSERT INTO `power_info` VALUES ('1000003', '管理学校院系的基本信息', null, '0', '管理学校院系的基本信息');
INSERT INTO `power_info` VALUES ('1000004', '管理学校专业的基本信息', null, '0', '管理学校专业的基本信息');
INSERT INTO `power_info` VALUES ('1000005', '管理学校年级的基本信息', null, '0', '管理学校年级的基本信息');
INSERT INTO `power_info` VALUES ('1000006', '管理学校班级的基本信息', null, '0', '管理学校班级的基本信息');
INSERT INTO `power_info` VALUES ('1100001', '学生信息修改', null, '0', '学生信息修改');
INSERT INTO `power_info` VALUES ('1100002', '学生信息查看', null, '0', '学生信息查看');
INSERT INTO `power_info` VALUES ('1100003', '录取信息查询', null, '0', '录取信息查询');
INSERT INTO `power_info` VALUES ('1100004', '统计缴费学生费用', null, '0', '统计缴费学生费用');
INSERT INTO `power_info` VALUES ('1200001', '学生缴费管理', null, '0', '学生缴费管理');
INSERT INTO `power_info` VALUES ('1300001', '管理发布内容', null, '0', '管理发布内容');
INSERT INTO `power_info` VALUES ('1300002', '管理栏目', null, '0', '管理栏目');
INSERT INTO `power_info` VALUES ('1300003', '管理学校信息的评论管理', null, '0', '管理学校信息的评论管理');
INSERT INTO `power_info` VALUES ('1300004', '管理咨询系统', null, '0', '管理咨询系统');
INSERT INTO `power_info` VALUES ('1400001', '学生功能模块', null, '0', '学生功能模块');
INSERT INTO `power_info` VALUES ('1400002', '咨询者咨询系统', null, '0', '咨询者咨询系统');
INSERT INTO `power_info` VALUES ('1500001', '登录', null, '0', '登录');
INSERT INTO `power_info` VALUES ('1500002', '注册', null, '0', '注册');
INSERT INTO `power_info` VALUES ('1500003', '评论', null, '0', '评论');
INSERT INTO `power_info` VALUES ('1500004', '举报', null, '0', '举报');
INSERT INTO `power_info` VALUES ('1500005', '收藏信息', null, '0', '收藏信息');

-- ----------------------------
-- Table structure for problems
-- ----------------------------
DROP TABLE IF EXISTS `problems`;
CREATE TABLE `problems` (
  `problems_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `problems_theme_id` int(11) DEFAULT NULL,
  `audit` varchar(100) DEFAULT '未审查' COMMENT '未审查、已审查',
  `authority` varchar(100) DEFAULT '不限' COMMENT '不限、问题不显示、全部可见、仅学生可见',
  `is_del` int(11) DEFAULT '0' COMMENT '1为删除状态',
  `answer` text,
  `ans_time` datetime DEFAULT NULL,
  `ans_person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`problems_id`),
  KEY `FK_Reference_33` (`user_id`),
  KEY `FK_Reference_36` (`ans_person_id`),
  KEY `FK_Reference_61` (`problems_theme_id`),
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`ans_person_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `FK_Reference_61` FOREIGN KEY (`problems_theme_id`) REFERENCES `problems_theme` (`problems_theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problems
-- ----------------------------
INSERT INTO `problems` VALUES ('101', '1001', '2016-08-23 09:50:01', '2017校招开始了吗', '7', '未审查', '不限', '0', '', null, null);
INSERT INTO `problems` VALUES ('102', '1003', '2016-08-29 20:04:10', '华农的酸奶多少钱一瓶', '3', '通过', '问题不显示', '0', '', null, null);
INSERT INTO `problems` VALUES ('103', '1002', '2016-08-23 10:19:03', '学费多少', '4', '通过', '问题不显示', '0', '学费9500', '2016-08-29 18:01:21', '10000');
INSERT INTO `problems` VALUES ('104', '1000', '2016-08-18 20:01:01', 'IT男出来好找工作吗', '7', '通过', '不限', '0', '目前还算是比较好找的，但是随着学的人越来越多，竞争也会越来越大', '2016-08-18 20:15:51', '5');
INSERT INTO `problems` VALUES ('105', '1004', '2016-08-29 20:05:21', '华农在全国的高校排名是多少', '3', '通过', '问题不显示', '0', '100以内', '2016-08-30 11:11:30', '10000');
INSERT INTO `problems` VALUES ('106', '1005', '2016-08-29 20:06:17', '软件工程的专业竞争力如何', '1', '通过', '全部可见', '0', '目前在省内的就业还可以', '2016-08-29 20:07:36', '3');
INSERT INTO `problems` VALUES ('107', '1000', '2016-08-30 16:28:56', '今年什么时候开学？', '8', '未审查', '不限', '0', null, null, null);
INSERT INTO `problems` VALUES ('109', '1000', '2016-08-30 16:31:58', '大学生可以谈恋爱吗                        	\r\n                        ', '9', '未审查', '不限', '0', null, null, null);
INSERT INTO `problems` VALUES ('112', '1000', '2016-08-30 17:33:28', '请问我被华农录取了吗                        	\r\n                        ', '2', '未审查', '不限', '0', null, null, null);
INSERT INTO `problems` VALUES ('113', '1000', '2016-08-30 21:15:35', '学校的伙食怎样？有肉吃吗                        	\r\n                        ', '3', '未审查', '不限', '0', null, null, null);
INSERT INTO `problems` VALUES ('114', '5', '2016-08-31 09:16:51', '华农为什么被称为华南活动大学？                        	\r\n                        ', '8', '未审查', '不限', '0', null, null, null);
INSERT INTO `problems` VALUES ('115', '10', '2016-08-31 09:18:31', '请问什么时候发录取通知书？                        	\r\n                        ', '2', '未审查', '不限', '0', null, null, null);
INSERT INTO `problems` VALUES ('116', '10', '2016-08-31 10:11:56', '艺术专业的学费是多少                        	\r\n                        ', '4', '未审查', '不限', '0', null, null, null);

-- ----------------------------
-- Table structure for problems_theme
-- ----------------------------
DROP TABLE IF EXISTS `problems_theme`;
CREATE TABLE `problems_theme` (
  `problems_theme_id` int(11) NOT NULL,
  `theme_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`problems_theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problems_theme
-- ----------------------------
INSERT INTO `problems_theme` VALUES ('1', '专业课程');
INSERT INTO `problems_theme` VALUES ('2', '录取工作');
INSERT INTO `problems_theme` VALUES ('3', '学校生活');
INSERT INTO `problems_theme` VALUES ('4', '收费标准');
INSERT INTO `problems_theme` VALUES ('5', '寝室');
INSERT INTO `problems_theme` VALUES ('6', '助学');
INSERT INTO `problems_theme` VALUES ('7', '就业');
INSERT INTO `problems_theme` VALUES ('8', '学生活动');
INSERT INTO `problems_theme` VALUES ('9', '交友');

-- ----------------------------
-- Table structure for publish_info
-- ----------------------------
DROP TABLE IF EXISTS `publish_info`;
CREATE TABLE `publish_info` (
  `pi_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pi_title` varchar(100) DEFAULT NULL,
  `ai_id` bigint(20) DEFAULT NULL,
  `ci_id` int(11) DEFAULT NULL,
  `pi_date` date DEFAULT NULL,
  `pi_content` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`pi_id`),
  KEY `FK_Reference_10` (`ai_id`),
  KEY `FK_Reference_34` (`ci_id`),
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`ci_id`) REFERENCES `column_info` (`ci_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='发布信息表';

-- ----------------------------
-- Records of publish_info
-- ----------------------------
INSERT INTO `publish_info` VALUES ('1', '王俊凯', null, '1', '2016-08-30', '王在学校挖粪');
INSERT INTO `publish_info` VALUES ('2', '张三', null, '1', '2016-08-30', '张三跪了');
INSERT INTO `publish_info` VALUES ('3', '小样', null, '3', '2016-08-30', '研究新型食物！');
INSERT INTO `publish_info` VALUES ('7', '张纪中', null, '2', '2016-08-30', '张纪中两口子出轨');
INSERT INTO `publish_info` VALUES ('9', '汪峰', null, '3', '2016-08-30', '章子怡生子');
INSERT INTO `publish_info` VALUES ('10', '屁股先锋', null, '4', '2016-08-30', '暴雪游戏');

-- ----------------------------
-- Table structure for recruit_info
-- ----------------------------
DROP TABLE IF EXISTS `recruit_info`;
CREATE TABLE `recruit_info` (
  `recruit_id` int(32) NOT NULL,
  `student_id` int(32) DEFAULT NULL,
  `candidate_number` varchar(32) DEFAULT NULL,
  `academy_id` int(32) DEFAULT NULL,
  `major_id` int(32) DEFAULT NULL,
  `report_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`recruit_id`),
  KEY `FK_Reference_62` (`student_id`),
  CONSTRAINT `FK_Reference_62` FOREIGN KEY (`student_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recruit_info
-- ----------------------------

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66667 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES ('1', '系统管理员', '负责用户信息管理、角色信息管理、权限信息管理');
INSERT INTO `role_info` VALUES ('2', '院系老师', '登记报到单打印状态 、院系报道管理 、档案提交管理');
INSERT INTO `role_info` VALUES ('3', '保卫处老师', '军训用品发放管理、军训用品信息管理');
INSERT INTO `role_info` VALUES ('4', '国有资产老师', '学习用品发放管理、学习用品信息管理');
INSERT INTO `role_info` VALUES ('5', '饮食中心老师', '一卡通发放管理');
INSERT INTO `role_info` VALUES ('6', '后勤处老师', '医保办理管理、医保费用信息管理、一卡通管理');
INSERT INTO `role_info` VALUES ('7', '计财处老师', '现场缴费登记 、专业学费标准管理、床上用品购买管理、学习用品购买管理、军训用品购买管理');
INSERT INTO `role_info` VALUES ('8', '公寓中心老师', '管理宿舍管理系统模块、宿舍费用信息管理、床上用品信息管理、供应商管理');
INSERT INTO `role_info` VALUES ('9', '统计查看员', '查看迎新统计人数');
INSERT INTO `role_info` VALUES ('10', '教务处老师', '学生信息管理、录取查询管理、管理学校院系的基本信息、管理学校专业的基本信息、管理学校年级的基本信息、管理学校班级的基本信息');
INSERT INTO `role_info` VALUES ('11', '新生', '学生信息修改、学生信息查看、录取信息查询、统计缴纳学生费用');
INSERT INTO `role_info` VALUES ('12', '财务系统使用人员', '学生缴费管理');
INSERT INTO `role_info` VALUES ('13', '迎新系统管理员', '学生缴费管理');
INSERT INTO `role_info` VALUES ('14', '学生', '学生缴费管理');
INSERT INTO `role_info` VALUES ('15', '游客', '学生缴费管理');
INSERT INTO `role_info` VALUES ('16', '超级管理员', '  超级管理员，拥有全部的权限。');

-- ----------------------------
-- Table structure for role_power_info
-- ----------------------------
DROP TABLE IF EXISTS `role_power_info`;
CREATE TABLE `role_power_info` (
  `role_power_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  PRIMARY KEY (`role_power_id`),
  KEY `role_power_info_ibfk_2` (`power_id`),
  KEY `role_power_info_ibfk_1` (`role_id`),
  CONSTRAINT `role_power_info_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_power_info_ibfk_2` FOREIGN KEY (`power_id`) REFERENCES `power_info` (`power_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_power_info
-- ----------------------------
INSERT INTO `role_power_info` VALUES ('11', '2', '100001');
INSERT INTO `role_power_info` VALUES ('12', '2', '100002');
INSERT INTO `role_power_info` VALUES ('13', '2', '100003');
INSERT INTO `role_power_info` VALUES ('14', '2', '200001');
INSERT INTO `role_power_info` VALUES ('15', '2', '200002');
INSERT INTO `role_power_info` VALUES ('16', '3', '200003');
INSERT INTO `role_power_info` VALUES ('17', '3', '300001');
INSERT INTO `role_power_info` VALUES ('18', '3', '300002');
INSERT INTO `role_power_info` VALUES ('19', '3', '400001');
INSERT INTO `role_power_info` VALUES ('20', '3', '400002');
INSERT INTO `role_power_info` VALUES ('89', '4', '100001');
INSERT INTO `role_power_info` VALUES ('90', '4', '400002');
INSERT INTO `role_power_info` VALUES ('233', '1', '100001');
INSERT INTO `role_power_info` VALUES ('234', '1', '100002');
INSERT INTO `role_power_info` VALUES ('235', '1', '100003');
INSERT INTO `role_power_info` VALUES ('236', '5', '500001');
INSERT INTO `role_power_info` VALUES ('237', '6', '600001');
INSERT INTO `role_power_info` VALUES ('238', '6', '600002');
INSERT INTO `role_power_info` VALUES ('239', '6', '600003');
INSERT INTO `role_power_info` VALUES ('240', '7', '700001');
INSERT INTO `role_power_info` VALUES ('241', '7', '700002');
INSERT INTO `role_power_info` VALUES ('242', '7', '700003');
INSERT INTO `role_power_info` VALUES ('243', '7', '700004');
INSERT INTO `role_power_info` VALUES ('244', '7', '700005');
INSERT INTO `role_power_info` VALUES ('245', '8', '800001');
INSERT INTO `role_power_info` VALUES ('246', '8', '800002');
INSERT INTO `role_power_info` VALUES ('247', '8', '800003');
INSERT INTO `role_power_info` VALUES ('248', '8', '800004');
INSERT INTO `role_power_info` VALUES ('249', '9', '900001');
INSERT INTO `role_power_info` VALUES ('250', '10', '1000001');
INSERT INTO `role_power_info` VALUES ('251', '10', '1000002');
INSERT INTO `role_power_info` VALUES ('252', '10', '1000003');
INSERT INTO `role_power_info` VALUES ('253', '10', '1000004');
INSERT INTO `role_power_info` VALUES ('254', '10', '1000005');
INSERT INTO `role_power_info` VALUES ('255', '10', '1000006');
INSERT INTO `role_power_info` VALUES ('256', '11', '1100001');
INSERT INTO `role_power_info` VALUES ('257', '11', '1100002');
INSERT INTO `role_power_info` VALUES ('258', '11', '1100003');
INSERT INTO `role_power_info` VALUES ('259', '11', '1100004');
INSERT INTO `role_power_info` VALUES ('260', '12', '1200001');
INSERT INTO `role_power_info` VALUES ('261', '13', '1300001');
INSERT INTO `role_power_info` VALUES ('262', '13', '1300002');
INSERT INTO `role_power_info` VALUES ('263', '13', '1300003');
INSERT INTO `role_power_info` VALUES ('265', '15', '1500001');
INSERT INTO `role_power_info` VALUES ('266', '15', '1500002');
INSERT INTO `role_power_info` VALUES ('267', '15', '1500003');
INSERT INTO `role_power_info` VALUES ('268', '15', '1500004');
INSERT INTO `role_power_info` VALUES ('269', '15', '1500005');
INSERT INTO `role_power_info` VALUES ('270', '16', '100001');
INSERT INTO `role_power_info` VALUES ('271', '16', '100002');
INSERT INTO `role_power_info` VALUES ('272', '16', '100003');
INSERT INTO `role_power_info` VALUES ('273', '16', '200001');
INSERT INTO `role_power_info` VALUES ('274', '16', '200002');
INSERT INTO `role_power_info` VALUES ('275', '16', '200003');
INSERT INTO `role_power_info` VALUES ('276', '16', '300001');
INSERT INTO `role_power_info` VALUES ('277', '16', '300002');
INSERT INTO `role_power_info` VALUES ('278', '16', '400001');
INSERT INTO `role_power_info` VALUES ('279', '16', '400002');
INSERT INTO `role_power_info` VALUES ('280', '16', '500001');
INSERT INTO `role_power_info` VALUES ('281', '16', '600001');
INSERT INTO `role_power_info` VALUES ('282', '16', '600002');
INSERT INTO `role_power_info` VALUES ('283', '16', '600003');
INSERT INTO `role_power_info` VALUES ('284', '16', '700001');
INSERT INTO `role_power_info` VALUES ('285', '16', '700002');
INSERT INTO `role_power_info` VALUES ('286', '16', '700003');
INSERT INTO `role_power_info` VALUES ('287', '16', '700004');
INSERT INTO `role_power_info` VALUES ('288', '16', '700005');
INSERT INTO `role_power_info` VALUES ('289', '16', '800001');
INSERT INTO `role_power_info` VALUES ('290', '16', '800002');
INSERT INTO `role_power_info` VALUES ('291', '16', '800003');
INSERT INTO `role_power_info` VALUES ('292', '16', '800004');
INSERT INTO `role_power_info` VALUES ('293', '16', '900001');
INSERT INTO `role_power_info` VALUES ('294', '16', '1000001');
INSERT INTO `role_power_info` VALUES ('295', '16', '1000002');
INSERT INTO `role_power_info` VALUES ('296', '16', '1000003');
INSERT INTO `role_power_info` VALUES ('297', '16', '1000004');
INSERT INTO `role_power_info` VALUES ('298', '16', '1000005');
INSERT INTO `role_power_info` VALUES ('299', '16', '1000006');
INSERT INTO `role_power_info` VALUES ('300', '16', '1100001');
INSERT INTO `role_power_info` VALUES ('301', '16', '1100002');
INSERT INTO `role_power_info` VALUES ('302', '16', '1100003');
INSERT INTO `role_power_info` VALUES ('303', '16', '1100004');
INSERT INTO `role_power_info` VALUES ('304', '16', '1200001');
INSERT INTO `role_power_info` VALUES ('305', '16', '1300001');
INSERT INTO `role_power_info` VALUES ('306', '16', '1300002');
INSERT INTO `role_power_info` VALUES ('307', '16', '1300003');
INSERT INTO `role_power_info` VALUES ('308', '16', '1400001');
INSERT INTO `role_power_info` VALUES ('309', '16', '1500001');
INSERT INTO `role_power_info` VALUES ('310', '16', '1500002');
INSERT INTO `role_power_info` VALUES ('311', '16', '1500003');
INSERT INTO `role_power_info` VALUES ('312', '16', '1500004');
INSERT INTO `role_power_info` VALUES ('313', '16', '1500005');
INSERT INTO `role_power_info` VALUES ('315', '14', '1400001');
INSERT INTO `role_power_info` VALUES ('316', '14', '1400002');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` int(32) NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `class_id` int(32) DEFAULT NULL,
  `id` varchar(30) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `people` varchar(10) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `home` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `father_name` varchar(20) DEFAULT NULL,
  `father_work` varchar(50) DEFAULT NULL,
  `father_phone` varchar(20) DEFAULT NULL,
  `mother_name` varchar(30) DEFAULT NULL,
  `mother_work` varchar(50) DEFAULT NULL,
  `mother_phone` varchar(20) DEFAULT NULL,
  `clothes_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `FK_Reference_35` (`class_id`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1001', '赵一', '1', '440782199402238101', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');
INSERT INTO `student` VALUES ('1002', '钱二', '2', '440782199402238102', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '44');
INSERT INTO `student` VALUES ('1003', '张三', '3', '440782199402238103', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');
INSERT INTO `student` VALUES ('1004', '李四', '4', '440782199402238104', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');
INSERT INTO `student` VALUES ('1006', '孙六', '6', '440782199402238106', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');
INSERT INTO `student` VALUES ('1007', '李七', '7', '440782199402238107', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');
INSERT INTO `student` VALUES ('1008', '黄某某', '8', '440782199402238108', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');
INSERT INTO `student` VALUES ('1009', '林某某', '9', '440782199402238109', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');
INSERT INTO `student` VALUES ('13340225', 'YJQ', '2', '440783199407270925', '22', '汉族', '1994-07-27', '广东开平', '18814092727', '杨先生', '教师', '13314092334', '母亲', '教师', '12236272822', '0');
INSERT INTO `student` VALUES ('13340226', 'YZL', '2', '440783199407270926', '23', '汉族', '1994-07-27', '山西大同', '123', 'z神', '打杂', '123', 'z后', '女仆', '123', '24');
INSERT INTO `student` VALUES ('13340227', 'YLJ', '2', '440783199407270927', '22', '汉族', '1994-07-27', '四川成都', '123', 'l神', '演员', '123', 'l后', '医生', '231', '24');
INSERT INTO `student` VALUES ('13340231', 'John哥哥', '4', '440782199503318011', '22', '汉族', '1995-03-31', '广东新会', '1234', 'Johnson', '老板', '123', 'Johnmei', '老板娘', '123', '24');
INSERT INTO `student` VALUES ('13340301', '张小炮', '1', '440782199402238011', '22', '汉', '1994-02-23', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', '24');

-- ----------------------------
-- Table structure for student_status
-- ----------------------------
DROP TABLE IF EXISTS `student_status`;
CREATE TABLE `student_status` (
  `student_id` int(11) NOT NULL,
  `print_report` int(11) DEFAULT '0',
  `one_card` int(11) DEFAULT '0',
  `medical_insurance` int(11) DEFAULT '0',
  `register` int(11) DEFAULT '0',
  `file_submit` int(11) DEFAULT '0',
  `getkey` int(11) DEFAULT '0',
  `military_receive` int(11) unsigned zerofill DEFAULT '00000000000',
  PRIMARY KEY (`student_id`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`student_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_status
-- ----------------------------
INSERT INTO `student_status` VALUES ('1001', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('1002', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('1003', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('1004', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('1006', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('1007', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('1008', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('1009', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('13340225', '1', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('13340226', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('13340227', '0', '0', '0', '0', '0', '0', '00000000000');
INSERT INTO `student_status` VALUES ('13340231', '0', '0', '0', '0', '0', '0', '00000000000');

-- ----------------------------
-- Table structure for study_things
-- ----------------------------
DROP TABLE IF EXISTS `study_things`;
CREATE TABLE `study_things` (
  `student_id` int(11) NOT NULL,
  `reserve` int(11) DEFAULT '0',
  `get` int(11) DEFAULT '0',
  PRIMARY KEY (`student_id`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`student_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_things
-- ----------------------------

-- ----------------------------
-- Table structure for training_products_information
-- ----------------------------
DROP TABLE IF EXISTS `training_products_information`;
CREATE TABLE `training_products_information` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_parameter` text,
  `product_price` double DEFAULT NULL,
  `product_manufacturer` int(32) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of training_products_information
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `pwd` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '赵文俊', '21', '123456');
INSERT INTO `user_info` VALUES ('2', '杨俊泉', '22', '123456');
INSERT INTO `user_info` VALUES ('3', '苏敏', '21', '123456');
INSERT INTO `user_info` VALUES ('4', '林景峰', '21', '123456');
INSERT INTO `user_info` VALUES ('5', '黄建东', '21', '123456');
INSERT INTO `user_info` VALUES ('6', '陈勇浩', '21', '123456');
INSERT INTO `user_info` VALUES ('7', '三毛', '21', '123456');
INSERT INTO `user_info` VALUES ('8', '四毛', '21', '123456');
INSERT INTO `user_info` VALUES ('9', '林静锋', '21', '1234567');
INSERT INTO `user_info` VALUES ('10', '黄建东同学', '21', '123456');
INSERT INTO `user_info` VALUES ('11', '陈勇浩同学', '21', '123456');
INSERT INTO `user_info` VALUES ('100', '超级管理员', '21', '123456');
INSERT INTO `user_info` VALUES ('111', '管理员1', '50', '000');
INSERT INTO `user_info` VALUES ('222', '管理员2', '40', '000');
INSERT INTO `user_info` VALUES ('333', '超级', '100', '000');
INSERT INTO `user_info` VALUES ('1000', '默认用户', '20', '123');
INSERT INTO `user_info` VALUES ('1001', '普通用户2', '21', '123');
INSERT INTO `user_info` VALUES ('1002', '普通用户3', '21', '123');
INSERT INTO `user_info` VALUES ('1003', '东哥', '21', '123');
INSERT INTO `user_info` VALUES ('1004', '华农学生', '20', '123');
INSERT INTO `user_info` VALUES ('1005', '华农研究生', '24', '123');
INSERT INTO `user_info` VALUES ('10000', '默认管理员', '100', '100');

-- ----------------------------
-- Table structure for user_role_info
-- ----------------------------
DROP TABLE IF EXISTS `user_role_info`;
CREATE TABLE `user_role_info` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FK_Reference_40` (`role_id`),
  KEY `FK_Reference_71` (`user_id`),
  CONSTRAINT `FK_Reference_71` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Reference_40` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_info
-- ----------------------------
INSERT INTO `user_role_info` VALUES ('13', '9', '3');
INSERT INTO `user_role_info` VALUES ('14', '9', '1');
INSERT INTO `user_role_info` VALUES ('56', '2', '7');
INSERT INTO `user_role_info` VALUES ('57', '2', '13');
INSERT INTO `user_role_info` VALUES ('58', '2', '16');
INSERT INTO `user_role_info` VALUES ('62', '1', '10');
INSERT INTO `user_role_info` VALUES ('63', '1', '11');
INSERT INTO `user_role_info` VALUES ('64', '10', '14');
INSERT INTO `user_role_info` VALUES ('67', '6', '13');
INSERT INTO `user_role_info` VALUES ('68', '6', '15');
INSERT INTO `user_role_info` VALUES ('69', '3', '16');
INSERT INTO `user_role_info` VALUES ('70', '11', '15');
INSERT INTO `user_role_info` VALUES ('72', '4', '1');
INSERT INTO `user_role_info` VALUES ('74', '333', '16');
INSERT INTO `user_role_info` VALUES ('75', '100', '1');
INSERT INTO `user_role_info` VALUES ('76', '100', '2');
INSERT INTO `user_role_info` VALUES ('77', '100', '3');
INSERT INTO `user_role_info` VALUES ('78', '100', '4');
INSERT INTO `user_role_info` VALUES ('79', '100', '5');
INSERT INTO `user_role_info` VALUES ('80', '100', '6');
INSERT INTO `user_role_info` VALUES ('81', '100', '7');
INSERT INTO `user_role_info` VALUES ('82', '100', '8');
INSERT INTO `user_role_info` VALUES ('83', '100', '9');
INSERT INTO `user_role_info` VALUES ('84', '100', '10');
INSERT INTO `user_role_info` VALUES ('85', '100', '11');
INSERT INTO `user_role_info` VALUES ('86', '100', '12');
INSERT INTO `user_role_info` VALUES ('87', '100', '13');
INSERT INTO `user_role_info` VALUES ('88', '100', '14');
INSERT INTO `user_role_info` VALUES ('89', '100', '15');
INSERT INTO `user_role_info` VALUES ('90', '100', '16');
INSERT INTO `user_role_info` VALUES ('91', '5', '8');
INSERT INTO `user_role_info` VALUES ('92', '5', '13');

-- ----------------------------
-- View structure for b
-- ----------------------------
DROP VIEW IF EXISTS `b`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%`  VIEW `b` AS select `department`.`name` AS `department_name`,`major`.`name` AS `major_name`,`grade`.`name` AS `grade_name`,`class`.`name` AS `class_name`,`student`.`stu_id` AS `student_id`,`student`.`student_name` AS `student_name`,`one_card_pass`.`one_card_pass_id` AS `one_card_pass_id`,`student_status`.`one_card` AS `one_card` from ((((((`class` join `student`) join `student_status`) join `one_card_pass`) join `major`) join `grade`) join `department`) where ((`class`.`id` = `student`.`class_id`) and (`student`.`stu_id` = `student_status`.`student_id`) and (`one_card_pass`.`stu_id` = `student`.`stu_id`) and (`class`.`major_id` = `major`.`id`) and (`class`.`grade_id` = `grade`.`id`) and (`major`.`department_id` = `department`.`id`)) ;

-- ----------------------------
-- View structure for statistics
-- ----------------------------
DROP VIEW IF EXISTS `statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `statistics` AS SELECT
department.`name` AS `学院`,
major.`name` AS `专业`,
grade.`name` AS `年级`,
class.`name` AS `班级`,
student.student_name AS `学生名`,
student_status.register AS `注册状态`,
student_status.print_report AS `打印状态`,
student_status.one_card AS `一卡通领取状态`,
one_card_pass.one_card_pass_id AS `一卡通卡号`,
student_status.medical_insurance AS `医保办理状态`,
student_status.file_submit AS `档案提交状态`,
student_status.military_receive AS `军训用品领取状态`
FROM
(((((student_status
JOIN student)
JOIN class)
JOIN major)
JOIN department)
JOIN grade)
INNER JOIN one_card_pass ON one_card_pass.stu_id = student.stu_id
WHERE
((student_status.student_id = student.stu_id) AND
(student.class_id = class.id) AND
(class.major_id = major.id) AND
(major.department_id = department.id) AND
(class.grade_id = grade.id) AND
(one_card_pass.stu_id = student.stu_id)) ;

-- ----------------------------
-- View structure for xp
-- ----------------------------
DROP VIEW IF EXISTS `xp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%`  VIEW `xp` AS SELECT
major.`name`
FROM
major ,
department
WHERE
major.department_id = department.id ;

-- ----------------------------
-- View structure for 角色权限表
-- ----------------------------
DROP VIEW IF EXISTS `角色权限表`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `角色权限表` AS select `role_info`.`role_name` AS `角色名称`,`power_info`.`power_name` AS `拥有的权限`,`power_info`.`power_description` AS `权限描叙` from ((`role_info` join `role_power_info` on((`role_power_info`.`role_id` = `role_info`.`role_id`))) join `power_info` on((`role_power_info`.`power_id` = `power_info`.`power_id`))) ;
