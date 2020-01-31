/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50715
Source Host           : :3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2020-01-31 14:38:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `status` varchar(255) DEFAULT NULL COMMENT '状态：1为在职，0为锁定',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '47ec2dd791e31e2ef2076caf64ed9b3d', '1', '2020-01-31 12:14:48');
