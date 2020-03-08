/*
Navicat MySQL Data Transfer

Source Server         : Native-MySQL
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : mybatisdb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2020-02-04 18:05:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for easybuy_order
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order` (
  `EO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(255) DEFAULT NULL,
  `EO_USER_NAME` varchar(255) NOT NULL,
  `EO_USER_ADDRESS` varchar(255) DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` double NOT NULL,
  `EO_STATUS` int(11) DEFAULT NULL,
  `eo_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`EO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=792 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES ('764', '1500', '雷波3', '长沙3', '2018-11-21 16:08:38', '8000', '1', '0');
INSERT INTO `easybuy_order` VALUES ('766', 'admin2', 'admin2', '湖南长沙2', '2019-01-08 10:44:57', '2000', '1', '1');
INSERT INTO `easybuy_order` VALUES ('768', 'tom', 'tom', '湖南岳阳', '2019-01-08 10:45:59', '2000', '1', '1');
INSERT INTO `easybuy_order` VALUES ('773', 'zs', '张三', '长沙', '2019-03-04 10:29:54', '1000', '0', '0');
INSERT INTO `easybuy_order` VALUES ('774', 'test', 'test', '长沙', '2019-05-31 10:32:30', '1000', '0', '1');
INSERT INTO `easybuy_order` VALUES ('782', 'abcd', 'abc', '长沙2', '2019-06-12 09:37:54', '2000', null, null);
INSERT INTO `easybuy_order` VALUES ('783', 'lily', 'lily', '长沙岳麓区', '2019-06-12 09:39:00', '2000', null, null);
INSERT INTO `easybuy_order` VALUES ('784', 'test2', 'test2', '长沙岳麓区', '2019-06-12 09:40:09', '2000', null, null);
INSERT INTO `easybuy_order` VALUES ('785', 'admin', 'admin', 'cs', '2019-06-12 09:41:20', '1000', null, null);
INSERT INTO `easybuy_order` VALUES ('786', 'user1', '用户1', '长沙', '2019-10-24 10:30:20', '170000', '1', '1');
INSERT INTO `easybuy_order` VALUES ('787', '曹乐平', '曹乐平', '长沙', '2019-11-21 15:58:47', '5000', '1', '1');
INSERT INTO `easybuy_order` VALUES ('788', '1111', '111', null, '2019-12-05 11:22:43', '1234', null, null);
INSERT INTO `easybuy_order` VALUES ('789', '222', '222', null, '2019-12-05 11:22:43', '4567', null, null);
INSERT INTO `easybuy_order` VALUES ('790', null, 'mapper', null, '2019-12-07 10:07:10', '1234', null, null);
INSERT INTO `easybuy_order` VALUES ('791', null, 'mapper', null, '2019-12-07 10:08:36', '1234', null, null);

-- ----------------------------
-- Table structure for easybuy_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail` (
  `EOD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `EO_ID` int(11) DEFAULT NULL,
  `EP_ID` int(11) DEFAULT NULL,
  `EOD_QUANTITY` int(11) DEFAULT NULL,
  `EOD_COST` double DEFAULT NULL,
  PRIMARY KEY (`EOD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES ('750', '764', '591', '20', '2000');
INSERT INTO `easybuy_order_detail` VALUES ('751', '764', '592', '30', '6000');
INSERT INTO `easybuy_order_detail` VALUES ('752', '765', '591', '10', '500');
INSERT INTO `easybuy_order_detail` VALUES ('753', '765', '660', '10', '1000');
INSERT INTO `easybuy_order_detail` VALUES ('754', '786', '668', '100', '50000');
INSERT INTO `easybuy_order_detail` VALUES ('755', '786', '669', '200', '120000');
INSERT INTO `easybuy_order_detail` VALUES ('756', '787', '664', '10', '1000');
INSERT INTO `easybuy_order_detail` VALUES ('757', '787', '665', '20', '4000');
INSERT INTO `easybuy_order_detail` VALUES ('758', '787', '591', '1', '100');

-- ----------------------------
-- Table structure for easybuy_product
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product` (
  `ep_id` int(11) NOT NULL AUTO_INCREMENT,
  `ep_name` varchar(20) NOT NULL COMMENT '商品名称',
  `ep_description` varchar(100) DEFAULT NULL,
  `ep_price` double NOT NULL,
  `ep_stock` int(11) DEFAULT NULL,
  `epc_id` int(11) DEFAULT NULL,
  `epc_child_id` int(11) DEFAULT NULL,
  `ep_file_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=681 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES ('591', '画册', '画册', '200', '9980', '542', null, '591.jpg');
INSERT INTO `easybuy_product` VALUES ('592', '饭盒', '韩国风格', '200', '1970', '545', '626', '592.jpg');
INSERT INTO `easybuy_product` VALUES ('593', '护肤王', '女士专用', '300', '29978', '542', null, '596.jpg');
INSERT INTO `easybuy_product` VALUES ('601', '奶粉', '三元', '20', '189', '545', null, '601.jpg');
INSERT INTO `easybuy_product` VALUES ('639', '旅行包', '旅行包', '2000', '100', '545', '628', '5af31b98-a9d3-4872-9a39-6d3ea4ec31d5.jpg');
INSERT INTO `easybuy_product` VALUES ('643', '项链', '饰品', '300', '2996', '545', '548', '643.jpg');
INSERT INTO `easybuy_product` VALUES ('645', '丝袜', '女士', '50', '470', '545', '548', '645.jpg');
INSERT INTO `easybuy_product` VALUES ('660', '三星2', '三星', '100', '1980', '545', '628', '660.jpg');
INSERT INTO `easybuy_product` VALUES ('663', '液晶屏', '纯平液晶显示器', '590', '3', '545', '628', '663.jpg');
INSERT INTO `easybuy_product` VALUES ('664', '商品1', '描述1', '100', '990', '545', '628', '1.jpg');
INSERT INTO `easybuy_product` VALUES ('665', '商品2', '描述2', '200', '1980', '545', '628', '2.jpg');
INSERT INTO `easybuy_product` VALUES ('666', '商品3', '描述3', '300', '3000', '545', '628', '3.jpg');
INSERT INTO `easybuy_product` VALUES ('667', '商品4', '描述4', '400', '4000', '545', '628', '4.jpg');
INSERT INTO `easybuy_product` VALUES ('668', '商品5', '描述5', '500', '4900', '545', '628', '5.jpg');
INSERT INTO `easybuy_product` VALUES ('669', '商品6', '描述6', '600', '5800', '545', '628', '6.jpg');
INSERT INTO `easybuy_product` VALUES ('680', '测试', '测试', '1', '1', '1', '1', '7b86adc6-e3d6-4cd6-8afb-0b76c1efa2fe.jpg');
DROP TRIGGER IF EXISTS `tri_test1_copy`;
DELIMITER ;;
CREATE TRIGGER `tri_test1_copy` BEFORE INSERT ON `easybuy_order` FOR EACH ROW set @sum = @sum+new.eo_cost
;;
DELIMITER ;
