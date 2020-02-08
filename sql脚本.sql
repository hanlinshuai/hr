/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50715
Source Host           : :3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2020-02-08 15:43:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '管理员账户');
INSERT INTO `role` VALUES ('2', 'test', '测试账户');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '47ec2dd791e31e2ef2076caf64ed9b3d', '1', '2020-01-31 12:14:48');
INSERT INTO `user` VALUES ('2', 'test', '47ec2dd791e31e2ef2076caf64ed9b3d', '1', '2020-02-08 14:54:27');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
INSERT INTO `user_role` VALUES ('2', '2', '2');
