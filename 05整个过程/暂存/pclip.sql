/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : pclip

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-17 15:10:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_tbl
-- ----------------------------
DROP TABLE IF EXISTS `address_tbl`;
CREATE TABLE `address_tbl` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `province` varchar(200) DEFAULT NULL,
  `address_name` varchar(150) NOT NULL,
  `receiver` varchar(50) DEFAULT NULL,
  `receiver_phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `FK_Reference_40` (`company_id`),
  CONSTRAINT `FK_Reference_40` FOREIGN KEY (`company_id`) REFERENCES `company_tbl` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for add_oil_record_tbl
-- ----------------------------
DROP TABLE IF EXISTS `add_oil_record_tbl`;
CREATE TABLE `add_oil_record_tbl` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `oil_mass` double DEFAULT NULL,
  `add_oil_time` date DEFAULT NULL,
  `oil_station` varchar(500) DEFAULT NULL,
  `oil_money` double DEFAULT NULL,
  PRIMARY KEY (`add_id`),
  KEY `FK_Reference_39` (`task_id`),
  CONSTRAINT `FK_Reference_39` FOREIGN KEY (`task_id`) REFERENCES `transport_task_tbl` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of add_oil_record_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for company_bank_tbl
-- ----------------------------
DROP TABLE IF EXISTS `company_bank_tbl`;
CREATE TABLE `company_bank_tbl` (
  `company_bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `bank_name` varchar(30) NOT NULL,
  `bank_num` varchar(30) NOT NULL,
  PRIMARY KEY (`company_bank_id`),
  KEY `FK_Reference_41` (`company_id`),
  CONSTRAINT `FK_Reference_41` FOREIGN KEY (`company_id`) REFERENCES `company_tbl` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_bank_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for company_paper_tbl
-- ----------------------------
DROP TABLE IF EXISTS `company_paper_tbl`;
CREATE TABLE `company_paper_tbl` (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `paper_name` varchar(30) DEFAULT NULL,
  `paper_num` int(11) DEFAULT NULL,
  `paper_unit` varchar(30) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`paper_id`),
  KEY `FK_Reference_42` (`company_id`),
  CONSTRAINT `FK_Reference_42` FOREIGN KEY (`company_id`) REFERENCES `company_tbl` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_paper_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for company_tbl
-- ----------------------------
DROP TABLE IF EXISTS `company_tbl`;
CREATE TABLE `company_tbl` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `introduction` varchar(200) DEFAULT NULL,
  `corporation` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `FK_Reference_35` (`user_id`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for driver_info_tbl
-- ----------------------------
DROP TABLE IF EXISTS `driver_info_tbl`;
CREATE TABLE `driver_info_tbl` (
  `drive_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `begin_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `transport_location` varchar(200) DEFAULT NULL,
  `oil_consumption` float DEFAULT NULL,
  `km` float DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`drive_id`),
  KEY `FK_Reference_24` (`task_id`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`task_id`) REFERENCES `transport_task_tbl` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of driver_info_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for goods_tbl
-- ----------------------------
DROP TABLE IF EXISTS `goods_tbl`;
CREATE TABLE `goods_tbl` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `goods_type` varchar(50) DEFAULT NULL,
  `goods_name` varchar(50) DEFAULT NULL,
  `typical_specification` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `FK_Reference_45` (`order_id`),
  CONSTRAINT `FK_Reference_45` FOREIGN KEY (`order_id`) REFERENCES `order_tbl` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for job_tbl
-- ----------------------------
DROP TABLE IF EXISTS `job_tbl`;
CREATE TABLE `job_tbl` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(15) DEFAULT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `del_state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for material_purchase_info_tbl
-- ----------------------------
DROP TABLE IF EXISTS `material_purchase_info_tbl`;
CREATE TABLE `material_purchase_info_tbl` (
  `material_purchase_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_name` varchar(50) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `material_purchase_order_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(50) DEFAULT NULL,
  `material_purchase_number` int(11) DEFAULT NULL,
  `material_purchase_cost` double DEFAULT NULL,
  `wait_arrange_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`material_purchase_info_id`),
  KEY `FK_Reference_53` (`material_id`),
  KEY `FK_Reference_54` (`material_purchase_order_id`),
  CONSTRAINT `FK_Reference_53` FOREIGN KEY (`material_id`) REFERENCES `material_tbl` (`material_id`),
  CONSTRAINT `FK_Reference_54` FOREIGN KEY (`material_purchase_order_id`) REFERENCES `material_purchase_order_tbl` (`material_purchase_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material_purchase_info_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for material_purchase_order_tbl
-- ----------------------------
DROP TABLE IF EXISTS `material_purchase_order_tbl`;
CREATE TABLE `material_purchase_order_tbl` (
  `material_purchase_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_purchase_person` varchar(50) DEFAULT NULL,
  `material_purchase_order_input_time` date DEFAULT NULL,
  `material_purchase_order_status` int(11) DEFAULT NULL,
  `material_purchase_order_total_cost` double DEFAULT NULL,
  `material_purchase_order_input_person` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`material_purchase_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material_purchase_order_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for material_sell_info_tbl
-- ----------------------------
DROP TABLE IF EXISTS `material_sell_info_tbl`;
CREATE TABLE `material_sell_info_tbl` (
  `material_sell_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_sell_order_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `material_name` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier_name` varchar(50) DEFAULT NULL,
  `material_sell_number` int(11) DEFAULT NULL,
  `material_sell_cost` double DEFAULT NULL,
  PRIMARY KEY (`material_sell_info_id`),
  KEY `FK_Reference_51` (`material_sell_order_id`),
  KEY `FK_Reference_52` (`material_id`),
  CONSTRAINT `FK_Reference_51` FOREIGN KEY (`material_sell_order_id`) REFERENCES `material_sell_order_tbl` (`material_sell_order_id`),
  CONSTRAINT `FK_Reference_52` FOREIGN KEY (`material_id`) REFERENCES `material_tbl` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material_sell_info_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for material_sell_order_tbl
-- ----------------------------
DROP TABLE IF EXISTS `material_sell_order_tbl`;
CREATE TABLE `material_sell_order_tbl` (
  `material_sell_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `material_sell_order_input_time` date DEFAULT NULL,
  `material_sell_order_status` int(11) DEFAULT NULL,
  `material_sell_order_total_cost` double DEFAULT NULL,
  `material_sell_order_input_person` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`material_sell_order_id`),
  KEY `FK_Reference_38` (`company_id`),
  CONSTRAINT `FK_Reference_38` FOREIGN KEY (`company_id`) REFERENCES `company_tbl` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material_sell_order_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for material_store_info_tbl
-- ----------------------------
DROP TABLE IF EXISTS `material_store_info_tbl`;
CREATE TABLE `material_store_info_tbl` (
  `material_store_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) DEFAULT NULL,
  `storehouse_id` int(11) DEFAULT NULL,
  `store_num` int(11) NOT NULL,
  PRIMARY KEY (`material_store_info_id`),
  KEY `FK_Reference_55` (`material_id`),
  KEY `FK_Reference_56` (`storehouse_id`),
  CONSTRAINT `FK_Reference_55` FOREIGN KEY (`material_id`) REFERENCES `material_tbl` (`material_id`),
  CONSTRAINT `FK_Reference_56` FOREIGN KEY (`storehouse_id`) REFERENCES `storehouse_tbl` (`storehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material_store_info_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for material_tbl
-- ----------------------------
DROP TABLE IF EXISTS `material_tbl`;
CREATE TABLE `material_tbl` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `material_type` varchar(50) DEFAULT NULL,
  `material_name` varchar(50) DEFAULT NULL,
  `material_bar_code` varchar(50) DEFAULT NULL,
  `material_specifications` varchar(50) DEFAULT NULL,
  `material_units` varchar(10) DEFAULT NULL,
  `material_packing_type` enum('散装','袋装','箱装') DEFAULT NULL,
  `material_pile_up_space` varchar(20) DEFAULT NULL,
  `material_unit_price` float DEFAULT NULL,
  PRIMARY KEY (`material_id`),
  KEY `FK_Reference_47` (`supplier_id`),
  CONSTRAINT `FK_Reference_47` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_tbl` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物资信息基本表';

-- ----------------------------
-- Records of material_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for order_tbl
-- ----------------------------
DROP TABLE IF EXISTS `order_tbl`;
CREATE TABLE `order_tbl` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `predict_money` double DEFAULT NULL,
  `address_start_id` int(11) DEFAULT NULL,
  `address_end_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_state` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_Reference_27` (`address_start_id`),
  KEY `FK_Reference_28` (`address_end_id`),
  KEY `FK_Reference_44` (`company_id`),
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`address_start_id`) REFERENCES `address_tbl` (`address_id`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`address_end_id`) REFERENCES `address_tbl` (`address_id`),
  CONSTRAINT `FK_Reference_44` FOREIGN KEY (`company_id`) REFERENCES `company_tbl` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单的状态:0代表已下单,1代表运输中,2代表运输完成\r\n预计费用按照多少吨*1000';

-- ----------------------------
-- Records of order_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for repair_task_tbl
-- ----------------------------
DROP TABLE IF EXISTS `repair_task_tbl`;
CREATE TABLE `repair_task_tbl` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `finish_state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FK_Reference_48` (`repair_id`),
  KEY `FK_Reference_49` (`staff_id`),
  CONSTRAINT `FK_Reference_48` FOREIGN KEY (`repair_id`) REFERENCES `vehicle_repair_tbl` (`repair_id`),
  CONSTRAINT `FK_Reference_49` FOREIGN KEY (`staff_id`) REFERENCES `staff_basic_tbl` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repair_task_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for resource_tbl
-- ----------------------------
DROP TABLE IF EXISTS `resource_tbl`;
CREATE TABLE `resource_tbl` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(50) DEFAULT NULL,
  `resource_url` varchar(500) DEFAULT NULL,
  `resource_pid` int(11) DEFAULT NULL,
  `resource_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for role_resource_tbl
-- ----------------------------
DROP TABLE IF EXISTS `role_resource_tbl`;
CREATE TABLE `role_resource_tbl` (
  `role_recource_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_recource_id`),
  KEY `FK_Reference_3` (`role_id`),
  KEY `FK_Reference_4` (`resource_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`role_id`) REFERENCES `role_tbl` (`role_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`resource_id`) REFERENCES `resource_tbl` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for role_tbl
-- ----------------------------
DROP TABLE IF EXISTS `role_tbl`;
CREATE TABLE `role_tbl` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  `role_pid` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for sell_transport_order_tbl
-- ----------------------------
DROP TABLE IF EXISTS `sell_transport_order_tbl`;
CREATE TABLE `sell_transport_order_tbl` (
  `sell_transport_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `material_sell_order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sell_transport_order_id`),
  KEY `FK_Reference_61` (`order_id`),
  KEY `FK_Reference_62` (`material_sell_order_id`),
  CONSTRAINT `FK_Reference_61` FOREIGN KEY (`order_id`) REFERENCES `order_tbl` (`order_id`),
  CONSTRAINT `FK_Reference_62` FOREIGN KEY (`material_sell_order_id`) REFERENCES `material_sell_order_tbl` (`material_sell_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sell_transport_order_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for staff_basic_tbl
-- ----------------------------
DROP TABLE IF EXISTS `staff_basic_tbl`;
CREATE TABLE `staff_basic_tbl` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `true_name` varchar(15) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `identity_number` varchar(20) DEFAULT NULL,
  `born_date` date DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `polity` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `FK_Reference_43` (`job_id`),
  KEY `FK_Reference_57` (`user_id`),
  CONSTRAINT `FK_Reference_43` FOREIGN KEY (`job_id`) REFERENCES `job_tbl` (`job_id`),
  CONSTRAINT `FK_Reference_57` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff_basic_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for storehouse_tbl
-- ----------------------------
DROP TABLE IF EXISTS `storehouse_tbl`;
CREATE TABLE `storehouse_tbl` (
  `storehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `storehouse_name` varchar(50) DEFAULT NULL,
  `storehouse_area` varchar(100) DEFAULT NULL,
  `storehouse_location` varchar(200) DEFAULT NULL,
  `storehouse_build_time` date DEFAULT NULL,
  PRIMARY KEY (`storehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of storehouse_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for supplier_tbl
-- ----------------------------
DROP TABLE IF EXISTS `supplier_tbl`;
CREATE TABLE `supplier_tbl` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(50) DEFAULT NULL,
  `supplier_address` varchar(100) DEFAULT NULL,
  `supplier_postcode` varchar(10) DEFAULT NULL,
  `supplier_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for transport_task_tbl
-- ----------------------------
DROP TABLE IF EXISTS `transport_task_tbl`;
CREATE TABLE `transport_task_tbl` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  `complete_deadline` date DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FK_Reference_15` (`order_id`),
  KEY `FK_Reference_36` (`staff_id`),
  KEY `FK_Reference_37` (`vehicle_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`order_id`) REFERENCES `order_tbl` (`order_id`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`staff_id`) REFERENCES `staff_basic_tbl` (`staff_id`),
  CONSTRAINT `FK_Reference_37` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_tbl` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务状态：0已';

-- ----------------------------
-- Records of transport_task_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for user_role_tbl
-- ----------------------------
DROP TABLE IF EXISTS `user_role_tbl`;
CREATE TABLE `user_role_tbl` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FK_Reference_13` (`user_id`),
  KEY `FK_Reference_2` (`role_id`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`role_id`) REFERENCES `role_tbl` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for user_tbl
-- ----------------------------
DROP TABLE IF EXISTS `user_tbl`;
CREATE TABLE `user_tbl` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `pwd` varchar(120) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_accident_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_accident_tbl`;
CREATE TABLE `vehicle_accident_tbl` (
  `accident_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `driver_name` varchar(15) DEFAULT NULL,
  `accident_date` date DEFAULT NULL,
  `accident_address` varchar(150) DEFAULT NULL,
  `accident_description` varchar(500) DEFAULT NULL,
  `accident_loss` double DEFAULT NULL,
  `del_state` tinyint(1) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`accident_id`),
  KEY `FK_Reference_22` (`vehicle_id`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_tbl` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_accident_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_insurance_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_insurance_tbl`;
CREATE TABLE `vehicle_insurance_tbl` (
  `vehicle_insurance_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `vehicle_insurance__type` enum('交强险','三者险','商业险','车损险','车船税') DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `vehicle_insurance__amount` double DEFAULT NULL,
  `vehicle_insurance__benefit` double DEFAULT NULL,
  `vehicle_insurance_responsible_person` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vehicle_insurance_id`),
  KEY `FK_Reference_58` (`vehicle_id`),
  CONSTRAINT `FK_Reference_58` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_tbl` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_insurance_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_licence_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_licence_tbl`;
CREATE TABLE `vehicle_licence_tbl` (
  `vehicle_licence_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_licence_type` enum('车辆登记证','车辆行驶证') DEFAULT NULL,
  `vehicle_licence_number` varchar(50) DEFAULT NULL,
  `vehicle_licence_get_date` date DEFAULT NULL,
  `vehicle_licence_recertification_date` date DEFAULT NULL,
  `vehicle_licence_expiration_date` date DEFAULT NULL,
  `vehicle_licence_is_valid` tinyint(1) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vehicle_licence_id`),
  KEY `FK_Reference_5` (`vehicle_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_tbl` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_licence_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_repair_material_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_repair_material_tbl`;
CREATE TABLE `vehicle_repair_material_tbl` (
  `repair_mat_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `use_count` int(11) DEFAULT NULL,
  `apply_state` varchar(10) DEFAULT NULL,
  `del_state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`repair_mat_id`),
  KEY `FK_Reference_59` (`material_id`),
  KEY `FK_Reference_60` (`task_id`),
  CONSTRAINT `FK_Reference_59` FOREIGN KEY (`material_id`) REFERENCES `material_tbl` (`material_id`),
  CONSTRAINT `FK_Reference_60` FOREIGN KEY (`task_id`) REFERENCES `repair_task_tbl` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_repair_material_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_repair_record_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_repair_record_tbl`;
CREATE TABLE `vehicle_repair_record_tbl` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `record_date` date DEFAULT NULL,
  `del_state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FK_Reference_50` (`task_id`),
  CONSTRAINT `FK_Reference_50` FOREIGN KEY (`task_id`) REFERENCES `repair_task_tbl` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_repair_record_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_repair_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_repair_tbl`;
CREATE TABLE `vehicle_repair_tbl` (
  `repair_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `license_plate_number` varchar(15) DEFAULT NULL,
  `material_bills` float DEFAULT NULL,
  `worktime_bills` float DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `out_date` date DEFAULT NULL,
  `out_check_people` varchar(15) DEFAULT NULL,
  `server_type` varchar(15) DEFAULT NULL,
  `repair_state` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `del_state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`repair_id`),
  KEY `FK_Reference_23` (`vehicle_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle_tbl` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_repair_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_tbl`;
CREATE TABLE `vehicle_tbl` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_number` varchar(50) NOT NULL,
  `vehicle__production_date` datetime NOT NULL,
  `vehicle_origin` enum('新购','转让') NOT NULL,
  `vehicle_engine_model` varchar(50) NOT NULL,
  `vehicle_frame_model` varchar(50) NOT NULL,
  `vehicle_color` varchar(10) NOT NULL,
  `vehicle_state` enum('修检','业务中','空闲','报废','拍卖','报停') NOT NULL,
  `vehicle_usage_nature` enum('营业','非营业') NOT NULL,
  `vehicle_is_own_GPS` tinyint(1) NOT NULL,
  `vehicle_detection_period` enum('周检','半月检','月检') NOT NULL,
  `vehicle_type_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `vehicle_delete_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `FK_Reference_46` (`supplier_id`),
  KEY `FK_Reference_6` (`vehicle_type_id`),
  CONSTRAINT `FK_Reference_46` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_tbl` (`supplier_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type_tbl` (`vehicle_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for vehicle_type_tbl
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_type_tbl`;
CREATE TABLE `vehicle_type_tbl` (
  `vehicle_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_type_name` varchar(50) NOT NULL,
  `vehicle_type_type` enum('面包车','小型货车','中型货车','大型货车','板车') DEFAULT NULL,
  `vehicle_type_length` double NOT NULL,
  `vehicle_type_height` double NOT NULL,
  `vehicle_type_width` double NOT NULL,
  `vehicle_type_allow_passengers` int(11) NOT NULL,
  `vehicle_type_engine_power` double NOT NULL,
  `vehicle_type_empty_weight` double NOT NULL,
  `vehicle_type_displacement` double NOT NULL,
  `vehicle_type_fuel_consumption` double NOT NULL,
  `vehicle_type_carrying_capacity` double NOT NULL,
  `vehicle_type_fuel_type` int(11) NOT NULL,
  PRIMARY KEY (`vehicle_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle_type_tbl
-- ----------------------------
