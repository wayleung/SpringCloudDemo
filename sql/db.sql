/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : localhost:3306
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 23/08/2018 19:11:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for girl
-- ----------------------------
DROP TABLE IF EXISTS `girl`;
CREATE TABLE `girl`  (
  `id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `cup_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of girl
-- ----------------------------
INSERT INTO `girl` VALUES (1, 25, 'C');
INSERT INTO `girl` VALUES (2, 25, 'C');
INSERT INTO `girl` VALUES (3, 15, 'D');
INSERT INTO `girl` VALUES (4, 16, 'A');

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (5);

SET FOREIGN_KEY_CHECKS = 1;
