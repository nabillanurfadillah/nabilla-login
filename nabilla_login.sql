/*
 Navicat Premium Data Transfer

 Source Server         : db2
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost:3306
 Source Schema         : nabilla_login

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : 65001

 Date: 21/09/2019 15:56:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, 'Nabilla Nur Fadillah', 'nurfadillahnabilla@gmail.com', 'default.jpg', '$2y$10$RuVQXVuR9a1j83oAGhIa9OrUVUoomJc5hW6sld.4ZPPLbrcnkoED.', 1, 1, 1568447511);
INSERT INTO `user` VALUES (5, 'Samson', 'samson@gmail.com', 'default.jpg', '$2y$10$3Byc6zmBH0JZNYSJlUXFi.zeyISPqUtOyXTAR7XtqT04C/Xs2wYKS', 2, 1, 1568520170);

-- ----------------------------
-- Table structure for user_access_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_access_menu`;
CREATE TABLE `user_access_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_access_menu
-- ----------------------------
INSERT INTO `user_access_menu` VALUES (1, 1, 1);
INSERT INTO `user_access_menu` VALUES (2, 1, 2);
INSERT INTO `user_access_menu` VALUES (3, 2, 2);
INSERT INTO `user_access_menu` VALUES (4, 1, 3);

-- ----------------------------
-- Table structure for user_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_menu`;
CREATE TABLE `user_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_menu
-- ----------------------------
INSERT INTO `user_menu` VALUES (1, 'Admin');
INSERT INTO `user_menu` VALUES (2, 'User');
INSERT INTO `user_menu` VALUES (3, 'Menu');
INSERT INTO `user_menu` VALUES (4, 'Test');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 'administrator');
INSERT INTO `user_role` VALUES (2, 'member');

-- ----------------------------
-- Table structure for user_sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `user_sub_menu`;
CREATE TABLE `user_sub_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_sub_menu
-- ----------------------------
INSERT INTO `user_sub_menu` VALUES (1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1);
INSERT INTO `user_sub_menu` VALUES (2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1);
INSERT INTO `user_sub_menu` VALUES (3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1);
INSERT INTO `user_sub_menu` VALUES (4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1);
INSERT INTO `user_sub_menu` VALUES (5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1);
INSERT INTO `user_sub_menu` VALUES (6, 2, 'coba', 'coba/coba', 'fab fa-fw fa-youtube', 1);
INSERT INTO `user_sub_menu` VALUES (7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1);

SET FOREIGN_KEY_CHECKS = 1;
