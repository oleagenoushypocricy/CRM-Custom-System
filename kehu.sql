/*
 Navicat Premium Data Transfer

 Source Server         : p
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : kehu

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 24/12/2020 10:33:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `source` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `work` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `level` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `code` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `address` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom
-- ----------------------------
INSERT INTO `custom` VALUES (1, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (2, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (3, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (4, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (5, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (6, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (7, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (8, '姜广杰', '江苏省盐城市', '学生', 'vip', '15051329388', '123456789', '224700', '金陵科技学院');
INSERT INTO `custom` VALUES (9, '姜广杰', '江苏省盐城市', '学生', 'svip', '15051329388', '123456789', '224700', '金陵科技学院');

-- ----------------------------
-- Table structure for deal
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `custom` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `address` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `time` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `worker` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `number` int(20) NOT NULL,
  `state` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deal
-- ----------------------------
INSERT INTO `deal` VALUES (1, '笔记本电脑', '姜广杰', '金陵科技学院', '15051329388', '12.20', '衡德成', 1, '运输中');
INSERT INTO `deal` VALUES (2, '笔记本电脑', '姜广杰', '金陵科技学院', '15051329388', '12.20', '衡德成', 1, '运输中');
INSERT INTO `deal` VALUES (3, '笔记本电脑', '姜广杰', '金陵科技学院', '15051329388', '12.20', '衡德成', 1, '运输中');
INSERT INTO `deal` VALUES (4, '笔记本电脑', '姜广杰', '金陵科技学院', '15051329388', '12.20', '衡德成', 1, '运输中');
INSERT INTO `deal` VALUES (5, '笔记本电脑', '姜广杰', '金陵科技学院', '15051329388', '12.20', '衡德成', 1, '运输中');
INSERT INTO `deal` VALUES (6, '笔记本电脑', '姜广杰', '金陵科技学院', '15051329388', '12.20', '衡德成', 1, '运输中');
INSERT INTO `deal` VALUES (7, '笔记本电脑', '姜广杰', '金陵科技学院', '15051329388', '12.20', '衡德成', 1, '运输中');
INSERT INTO `deal` VALUES (8, 'airports', '衡德成', '金陵科技学院', '123', '123', '123', 123, '123');

-- ----------------------------
-- Table structure for inform
-- ----------------------------
DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `detail` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `time` time(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inform
-- ----------------------------
INSERT INTO `inform` VALUES (1, '开会', '会议室', '12:00:00');
INSERT INTO `inform` VALUES (2, '开会', '会议室', '12:00:00');
INSERT INTO `inform` VALUES (3, '开会', '会议室', '12:00:00');
INSERT INTO `inform` VALUES (4, '开会', '会议室', '12:00:00');
INSERT INTO `inform` VALUES (5, '开会', '会议室', '12:00:00');
INSERT INTO `inform` VALUES (6, '开会', '会议室', '12:00:00');
INSERT INTO `inform` VALUES (7, '123', '123', '12:12:12');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('admin', '123', '3354978373@qq.com');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin', '123456789@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
