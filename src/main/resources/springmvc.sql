/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : springmvc

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2023-09-09 10:26:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'rose', '9000');
INSERT INTO `account` VALUES ('2', 'jack', '11000');
INSERT INTO `account` VALUES (null, null, null);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '商品名称',
  `price` float(10,1) NOT NULL COMMENT '商品定价',
  `detail` text COMMENT '商品描述',
  `pic` varchar(64) DEFAULT NULL COMMENT '商品图片',
  `createtime` datetime DEFAULT NULL COMMENT '生产日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '小米油品77777', '11113.0', '好好1111', 'da10bc98-b7f5-4273-ab63-0059fb4f4685.jpg', '2022-09-10 13:22:22');
INSERT INTO `items` VALUES ('2', '华为5354', '444.0', '真的 真快', '9d0c337c-79ad-425c-b2fa-b36c98d8a4fa.png', '2022-05-31 15:22:57');
INSERT INTO `items` VALUES ('3', '小米999', '2222.0', '很好 真好用', 'e4a078bd-fc88-4ddb-bcbc-dbfda49c8856.jpg', '2022-02-08 13:23:02');
INSERT INTO `items` VALUES ('4', '4小米', '4599944.0', '466666644', '1a4f1c43-4944-4bcc-92f1-a4247ce7cdba.png', '2021-09-01 14:25:42');
INSERT INTO `items` VALUES ('5', '小米55', '59995.0', '6666665', '8c9f19d1-e874-4168-ae3b-fda7ebada1bd.png', '2021-04-10 15:10:55');
INSERT INTO `items` VALUES ('6', '小米16', '6999.0', '16666', null, '2021-04-09 15:11:21');
INSERT INTO `items` VALUES ('7', '小米手机', '1599.0', '真好真好', '1c70d9ab-ccea-4b5c-9de5-f34297317829.jpg', '2021-08-19 16:43:56');
INSERT INTO `items` VALUES ('8', '小米手机10', '3333.0', '77777', '0c589987-6e57-4c86-a476-24f5be032a78.png', null);
INSERT INTO `items` VALUES ('9', '小米手机15', '2999.0', '真好', '39f823fc-3f7d-4ec3-ad47-06239422d585.png', '2021-08-19 16:43:56');
INSERT INTO `items` VALUES ('10', '小新平板', '1188.0', '好好', null, null);
INSERT INTO `items` VALUES ('11', '小新平板', '1188.0', '好好', 'd8bcea70-7918-4ac7-9f7d-cab51b442971.png', '2021-08-19 16:43:56');

-- ----------------------------
-- Table structure for tbl_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log`;
CREATE TABLE `tbl_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_log
-- ----------------------------
INSERT INTO `tbl_log` VALUES ('18', '转账操作由1到2,金额:1000.0', '2022-09-02');
INSERT INTO `tbl_log` VALUES ('19', '转账操作由1到2,金额:1000.0', '2022-09-02');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `password` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10', '张三', '2014-07-10', '1', '北京市', '12345');
INSERT INTO `user` VALUES ('41', 'csqwk', null, null, null, null);
INSERT INTO `user` VALUES ('42', 'qwk222', null, null, 'hpl', null);
INSERT INTO `user` VALUES ('43', '张四', null, null, 'sl', null);
INSERT INTO `user` VALUES ('44', 'qqq', null, null, null, null);
INSERT INTO `user` VALUES ('47', 'qqq12', null, null, null, null);
INSERT INTO `user` VALUES ('48', 'qqq', null, null, '123', null);
INSERT INTO `user` VALUES ('49', 'aaa', null, null, 'dsadsa', null);
INSERT INTO `user` VALUES ('50', 'aaa', null, null, 'dsadsa', null);
INSERT INTO `user` VALUES ('51', 'aaa', null, null, null, null);
INSERT INTO `user` VALUES ('52', 'qqq12', null, null, null, null);
INSERT INTO `user` VALUES ('53', 'cuit', null, null, '学府路一段', null);
INSERT INTO `user` VALUES ('54', 'qqq111', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('55', '1111111111', null, null, '诚信大', null);
INSERT INTO `user` VALUES ('56', '老王', null, null, '隔壁 村', null);
INSERT INTO `user` VALUES ('57', 'rose', null, null, 'cxd', null);
INSERT INTO `user` VALUES ('59', 'cuit1', null, null, 'cd2', null);
INSERT INTO `user` VALUES ('60', 'cuit1', null, null, 'cd2', null);
INSERT INTO `user` VALUES ('61', 'cuit1', null, null, 'cd2', null);
INSERT INTO `user` VALUES ('62', 'cuit1', null, null, 'cd2', null);
INSERT INTO `user` VALUES ('63', 'cuit1', null, null, 'cd2', null);
INSERT INTO `user` VALUES ('64', 'qiweikai', null, '男', '成都', null);
INSERT INTO `user` VALUES ('65', 'qqqqq', null, null, null, null);
INSERT INTO `user` VALUES ('66', 'tomhah', '2021-08-10', '男', '诚信大', null);
INSERT INTO `user` VALUES ('67', 'rose', null, null, '成都', null);
INSERT INTO `user` VALUES ('68', 'qqqq', null, null, '诚信大', null);
INSERT INTO `user` VALUES ('69', 'qqqq', null, null, '诚信大', null);
INSERT INTO `user` VALUES ('70', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('71', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('72', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('73', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('74', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('75', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('76', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('77', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('78', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('79', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('80', '张三1', null, null, 'cuit', null);
INSERT INTO `user` VALUES ('81', 'cuit', null, null, '学府路', null);
INSERT INTO `user` VALUES ('82', '诸葛孔明', null, null, '蜀国', null);
INSERT INTO `user` VALUES ('83', '诸葛孔明', null, null, '蜀国', null);
INSERT INTO `user` VALUES ('84', '诸葛孔明22222222', null, null, '蜀国', null);
INSERT INTO `user` VALUES ('85', '诸葛孔明333333333', null, null, '蜀国', null);
INSERT INTO `user` VALUES ('86', '老王', '2022-09-02', '1', '成都市', null);
INSERT INTO `user` VALUES ('87', 'rose123', null, null, null, '123321');
INSERT INTO `user` VALUES ('88', 'laowang', null, null, null, '88888');
INSERT INTO `user` VALUES ('89', 'laowang', null, null, null, '88888');
INSERT INTO `user` VALUES ('91', 'laowang', null, null, null, '88888');
INSERT INTO `user` VALUES ('96', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('97', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('98', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('99', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('100', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('101', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('102', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('103', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('104', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('105', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('106', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('107', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('108', 'hjq', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('109', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('110', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('111', 'sky', null, null, '成信大', '147258369');
INSERT INTO `user` VALUES ('112', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('113', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('114', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('115', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('116', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('117', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('118', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('119', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('120', '列被', null, null, 'sdadsa', '99999');
INSERT INTO `user` VALUES ('121', '列被', null, null, 'sdadsa', '99999');
