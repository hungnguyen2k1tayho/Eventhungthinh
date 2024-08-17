/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : event

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 11/07/2024 18:31:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `begin` date NULL DEFAULT NULL,
  `end` date NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quantity` bigint NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `location_id` int NULL DEFAULT NULL,
  `supplier_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_location`(`location_id` ASC) USING BTREE,
  INDEX `fk_supplier`(`supplier_id` ASC) USING BTREE,
  CONSTRAINT `fk_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES (1, 'abc up2', '2024-05-26', '2024-07-19', 'HN', 'tải xuống.jpg', 'hihij', 10, b'1', '2024-07-05 11:36:48', 20, 1);
INSERT INTO `event` VALUES (2, 'test 444', '2024-07-05', '2024-07-12', 'HCM', 'tải xuống.jpg', 'rat la hay', 233, b'0', '2024-07-11 00:54:13', 14, 3);
INSERT INTO `event` VALUES (3, 'test ', '2024-07-10', '2024-07-13', 'HCM', 'tải xuống (1).jpg', 'rat la hay3', 2333, b'0', '2024-07-10 11:59:44', 15, 3);
INSERT INTO `event` VALUES (4, 'test 4', '2024-07-05', '2024-07-12', 'HCM', 'charmthirteen - Etsy.jpg', 'rat la hay', 233, b'0', '2024-07-10 12:05:19', 16, 1);
INSERT INTO `event` VALUES (13, 'test 22323', '2024-07-05', '2024-07-12', 'HCM', 'hihi.png', 'rat la hay', 233, b'1', '2024-07-10 17:14:27', 4, 1);
INSERT INTO `event` VALUES (14, 'test 22323', '2024-07-05', '2024-07-12', 'HCM', 'hihi.png', 'rat la hay', 233, b'1', '2024-07-10 21:14:07', 4, 1);
INSERT INTO `event` VALUES (15, 'Test1', '2024-07-10', '2024-07-10', 'HCM', 'Diagram 1.png', 'Hay', 111, b'1', '2024-07-10 23:46:16', 6, 1);
INSERT INTO `event` VALUES (16, 'abc', '2024-07-12', '2024-07-20', NULL, '441987797_422067297392277_3688516158813364354_n.png', 'hsahs', 12, b'1', '2024-07-11 00:35:08', 7, 2);
INSERT INTO `event` VALUES (17, 'Quan', '2024-07-11', '2024-07-13', NULL, 'Polar Bear\'s Cafe_ Panda dreams of being a biker.jpg', 'check', 12, b'1', '2024-07-11 01:00:09', 8, 1);
INSERT INTO `event` VALUES (18, 'qunan nè', '2024-07-01', '2024-07-13', NULL, 'hihi.png', 'ádad', 12, b'1', '2024-07-11 02:14:47', 10, 2);
INSERT INTO `event` VALUES (19, 'yinlin', '2024-07-09', '2024-07-12', NULL, 'Yinlin - Wuthering Waves.jpg', 'hehee', 12, b'1', '2024-07-11 02:31:16', 11, 4);
INSERT INTO `event` VALUES (20, 'ei', '2024-07-10', '2024-07-13', NULL, 'ac.png', 'check', 12, b'1', '2024-07-11 02:33:07', 12, 3);
INSERT INTO `event` VALUES (21, 'hiện tại', '2024-07-10', '2024-07-20', NULL, 'charmthirteen - Etsy.jpg', 'rất hay', 1, b'1', '2024-07-11 16:07:53', 19, 2);

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ward` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (1, 'HN update', 'Hà Đông', 'Nguyễn Trãi', 'PTIT');
INSERT INTO `location` VALUES (3, 'HN2', 'Hà Đông', 'Nguyễn Trãi', 'PTIT');
INSERT INTO `location` VALUES (4, '27', '256', '09181', 'số 2');
INSERT INTO `location` VALUES (5, '77', '753', '26689', '22');
INSERT INTO `location` VALUES (6, '77', '753', '26689', '22');
INSERT INTO `location` VALUES (7, '[object Object]', '[object Object]', '[object Object]', '545');
INSERT INTO `location` VALUES (8, 'Tỉnh Bà Rịa - Vũng Tàu', 'Huyện Đất Đỏ', 'Xã Lộc An', '123');
INSERT INTO `location` VALUES (9, 'Tỉnh Bà Rịa - Vũng Tàu', 'Huyện Đất Đỏ', 'Xã Lộc An', '124');
INSERT INTO `location` VALUES (10, 'Tỉnh Bà Rịa - Vũng Tàu', 'Huyện Châu Đức', 'Xã Bình Ba', '11');
INSERT INTO `location` VALUES (11, 'Tỉnh Thanh Hóa', 'Huyện Đông Sơn', 'Xã Đông Hòa', 'undefined');
INSERT INTO `location` VALUES (12, 'Tỉnh Bắc Giang', 'Huyện Lạng Giang', 'Thị trấn Vôi', '12');
INSERT INTO `location` VALUES (13, 'Tỉnh Bà Rịa - Vũng Tàu', 'Huyện Đất Đỏ', 'Xã Láng Dài', 'undefined');
INSERT INTO `location` VALUES (14, 'Tỉnh Bắc Giang', 'Huyện Hiệp Hòa', 'Xã Danh Thắng', 'undefined');
INSERT INTO `location` VALUES (15, 'Tỉnh An Giang', 'Huyện Châu Phú', 'Xã Bình Phú', 'undefined');
INSERT INTO `location` VALUES (16, 'Tỉnh Bà Rịa - Vũng Tàu', 'Huyện Long Điền', 'Thị trấn Long Hải', 'số ');
INSERT INTO `location` VALUES (17, 'Tỉnh Bắc Giang', 'Huyện Lạng Giang', 'Xã An Hà', 'undefined');
INSERT INTO `location` VALUES (18, 'Tỉnh Bắc Kạn', 'Thành phố Bắc Kạn', 'Phường Nguyễn Thị Minh Khai', 'undefined');
INSERT INTO `location` VALUES (19, 'Tỉnh Bà Rịa - Vũng Tàu', 'Thành phố Bà Rịa', 'Phường Long Hương', '123');
INSERT INTO `location` VALUES (20, 'Tỉnh An Giang', 'Huyện An Phú', 'Thị trấn Đa Phước', 'abc');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_ADMINISTRATOR');
INSERT INTO `role` VALUES (2, 'ROLE_USER');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, 'NCC2 up', '123456789', 'abc', 'hihi', b'1');
INSERT INTO `supplier` VALUES (2, 'NCC22', '123456789', 'abc', 'hihi', b'1');
INSERT INTO `supplier` VALUES (3, 'NCC2322', '123456789', 'abc', 'hihi', b'1');
INSERT INTO `supplier` VALUES (4, 'quandeptrai2', '09861567363', '1233', 'hehe3', b'1');
INSERT INTO `supplier` VALUES (5, 'quandeptrai2', '9861567363', '1233', 'haha', b'1');
INSERT INTO `supplier` VALUES (6, 'LV update', '0986156736', 'hà đông hà nội', 'thiết bị điện tử', b'0');

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `event_id` int NULL DEFAULT NULL,
  `create_at` datetime NULL DEFAULT NULL,
  `active` bit(1) NULL DEFAULT NULL,
  `cancel` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_event`(`event_id` ASC) USING BTREE,
  INDEX `fk_ticket_user`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_event` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_ticket_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES (1, 1, 1, '2024-07-05 11:37:08', b'1', '2024-07-10 09:37:14');
INSERT INTO `ticket` VALUES (2, 2, 1, '2024-07-05 11:37:21', b'1', NULL);
INSERT INTO `ticket` VALUES (3, 1, 2, '2024-07-05 14:08:25', b'1', NULL);
INSERT INTO `ticket` VALUES (4, 3, 2, '2024-07-10 00:33:40', b'1', NULL);
INSERT INTO `ticket` VALUES (5, 3, 1, '2024-07-10 00:35:09', b'1', '2024-07-10 00:43:54');
INSERT INTO `ticket` VALUES (6, 2, 2, '2024-07-10 00:40:38', b'1', NULL);
INSERT INTO `ticket` VALUES (7, 2, 4, '2024-07-11 03:05:29', b'1', NULL);
INSERT INTO `ticket` VALUES (8, 2, 3, '2024-07-11 03:05:40', b'1', '2024-07-11 12:18:46');
INSERT INTO `ticket` VALUES (9, 2, 17, '2024-07-11 16:03:48', b'0', '2024-07-11 16:04:34');
INSERT INTO `ticket` VALUES (10, 1, 14, '2024-07-11 17:26:53', b'1', NULL);
INSERT INTO `ticket` VALUES (11, 2, 13, '2024-07-11 18:05:58', b'0', '2024-07-11 18:06:22');
INSERT INTO `ticket` VALUES (12, 2, 21, '2024-07-11 18:06:44', b'1', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `expired` bit(1) NOT NULL,
  `revoked` bit(1) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_pddrhgwxnms2aceeku9s2ewy5`(`token` ASC) USING BTREE,
  INDEX `fk_token`(`user_id` ASC) USING BTREE,
  CONSTRAINT `fk_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbXSwiaWQiOjEsInN1YiI6ImFiY0BnbWFpbC5jb20iLCJpYXQiOjE3MjAwMTUxNzMsImV4cCI6MTcyMDEwMTU3M30.FF1R4BmO5D47hkcDvvY7ONNSlzac0m9Q4vDAoZhWhNU', 1);
INSERT INTO `token` VALUES (2, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbXSwiaWQiOjEsInN1YiI6ImFiY0BnbWFpbC5jb20iLCJpYXQiOjE3MjAwMTUyOTUsImV4cCI6MTcyMDEwMTY5NX0.cWVj8-fiiiXLcVl9qC93Pyw1zasnZkBJ8LVIFxv1RF0', 1);
INSERT INTO `token` VALUES (3, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbXSwiaWQiOjEsInN1YiI6ImFiY0BnbWFpbC5jb20iLCJpYXQiOjE3MjAwMTUzODAsImV4cCI6MTcyMDEwMTc4MH0.qprmhK51JE5h3aFzvYn5nJJqguvVb2UAWUEGeDr36kU', 1);
INSERT INTO `token` VALUES (4, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDAxNTcyOCwiZXhwIjoxNzIwMTAyMTI4fQ.d0FVa9MSd6XJ8ozf5dgos6XKOyF38wbqvTajE-R6TWY', 1);
INSERT INTO `token` VALUES (5, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6NCwic3ViIjoidXNlcjJAZ21haWwuY29tIiwiaWF0IjoxNzIwMDE5NjYwLCJleHAiOjE3MjAxMDYwNjB9.l_ZcC6MPQeh_2s9-w1qXS8sa64CzslSFqqcCz5YGolY', 4);
INSERT INTO `token` VALUES (6, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6NCwic3ViIjoidXNlcjJAZ21haWwuY29tIiwiaWF0IjoxNzIwMDE5NzEwLCJleHAiOjE3MjAxMDYxMTB9.vcET13kjBoUiE5fFa_3ef2nfg7n8YjJjDrKLccSgvYY', 4);
INSERT INTO `token` VALUES (7, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6NCwic3ViIjoidXNlcjJAZ21haWwuY29tIiwiaWF0IjoxNzIwMTU0NjYxLCJleHAiOjE3MjAyNDEwNjF9.GlbEMEnGrul7Jedj6pClkcsDSWbviIswSOFvVRdre_M', 4);
INSERT INTO `token` VALUES (8, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDE1NTEyNSwiZXhwIjoxNzIwMjQxNTI1fQ.osBWQWD5ERZCZ40GQAhWJsk10QYgwXzUwasPeTcQcZo', 1);
INSERT INTO `token` VALUES (9, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDE2MjY1NSwiZXhwIjoxNzIwMjQ5MDU1fQ.lR_7W7Mbvy5SIOgMT6_xQm4ONXPQbI36KfLLUiin2fg', 1);
INSERT INTO `token` VALUES (10, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwMTYzNzg3LCJleHAiOjE3MjAyNTAxODd9.pxHIaSR43i1nrNnhWOKqdXspfq8gFZCMVj5TBkuRapY', 2);
INSERT INTO `token` VALUES (11, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDE2NDAyMiwiZXhwIjoxNzIwMjUwNDIyfQ.JA2_u3I7RzGWmUuXiQNssS2JZOK8iRy0oxHYRxebEaI', 1);
INSERT INTO `token` VALUES (12, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwMTY0MDk0LCJleHAiOjE3MjAyNTA0OTR9.yZEWL0exVrQBlDDyKPVfQfCxW-PiwyzLPZFMfM_zA7c', 2);
INSERT INTO `token` VALUES (13, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwMTY0Mjk1LCJleHAiOjE3MjAyNTA2OTV9.Q7Qj6t7q7_TzAfTCpSygN2YLW-PMCJwL2qw91cxs-Z0', 2);
INSERT INTO `token` VALUES (14, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDUyMjY0MSwiZXhwIjoxNzIwNjA5MDQxfQ.XEsz_6abYMjpdLKA7FLsk9l9dkLCvHTLubtoLBTBh50', 1);
INSERT INTO `token` VALUES (15, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDUyMjk2MiwiZXhwIjoxNzIwNjA5MzYyfQ.kFYXbbtogUpDSkUCUweBlhL-bQQP2Ih60PMk-dL1Um8', 1);
INSERT INTO `token` VALUES (16, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDUyNjYxMywiZXhwIjoxNzIwNjEzMDEzfQ.dhIQsb5jOA_4HSptYVI94XMGjm0301TZBlQd8f3D02s', 1);
INSERT INTO `token` VALUES (17, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNTI2NjI1LCJleHAiOjE3MjA2MTMwMjV9.toxlgP0fUEop7Vp6dBYcS3JlOMSEdJqsbHcHYdWyPvs', 2);
INSERT INTO `token` VALUES (18, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU0NDUxNSwiZXhwIjoxNzIwNjMwOTE1fQ.MCcjqtiU2lL8dwAQm_3xRMF-FAVEpDY2MaA7wBWar2s', 1);
INSERT INTO `token` VALUES (19, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNTQ0NTQ1LCJleHAiOjE3MjA2MzA5NDV9.U9MJCMa3e1lN2sjg8ZFQaM9cRdleEFLaRfFZd5PXXL8', 2);
INSERT INTO `token` VALUES (20, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Mywic3ViIjoiYWRtaW4xQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU0NjQwMywiZXhwIjoxNzIwNjMyODAzfQ.EreZ9K2ii974f2N1tTqwcfKZTuUv7s62sIsWgWU5FXg', 3);
INSERT INTO `token` VALUES (21, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MTUyMCwiZXhwIjoxNzIwNjM3OTIwfQ.ee0HVPUzhSWJSFtnkVcrcxGs3NgjsK08FjcdaNAaw3Y', 1);
INSERT INTO `token` VALUES (22, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MjQzMCwiZXhwIjoxNzIwNjM4ODMwfQ._py00jj82H76vUU0-7JxL3IWEOxxjZCVQjfhRermXxk', 1);
INSERT INTO `token` VALUES (23, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MzAwNiwiZXhwIjoxNzIwNjM5NDA2fQ.dbObphOtZ1Ce9KU0anU8C_E_5uH15gVwpirHPBSFLvU', 1);
INSERT INTO `token` VALUES (24, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MzA0NiwiZXhwIjoxNzIwNjM5NDQ2fQ.5XGsGOyQ0Lilpr3zfks2l3yWtjTvD8238Ac1vk5xR1M', 1);
INSERT INTO `token` VALUES (25, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MzE1OSwiZXhwIjoxNzIwNjM5NTU5fQ.gePXNQPlJXLVJEKqbFMbM4WGifjvCsBmUv_vKp-luvU', 1);
INSERT INTO `token` VALUES (26, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MzI5OSwiZXhwIjoxNzIwNjM5Njk5fQ.Ic6fuO54_1YTdVkeEl0InZcqNPqqlgw7SIwSS7evRLo', 1);
INSERT INTO `token` VALUES (27, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Mywic3ViIjoiYWRtaW4xQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MzU4NSwiZXhwIjoxNzIwNjM5OTg1fQ.X_rQGmaZ239dUNg1z2Cu0notMXOEDe8iqLzaAT9Zo44', 3);
INSERT INTO `token` VALUES (28, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1MzY2MCwiZXhwIjoxNzIwNjQwMDYwfQ.n-wfjGh7BgSJn1x8v6yfCku60Qx1KktDDdGdtXR4TiY', 1);
INSERT INTO `token` VALUES (29, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU1NTEwNywiZXhwIjoxNzIwNjQxNTA3fQ.eiNcHSBqOZM71gV5nJjdwgYOH1vaiwkUqKH70NGT5eg', 1);
INSERT INTO `token` VALUES (30, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU3NTk1NCwiZXhwIjoxNzIwNjYyMzU0fQ.17aVXkGzelNoTfYwRsWNSKcsDNudlnmnNzMicUU3k0A', 1);
INSERT INTO `token` VALUES (31, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU3NjIzMiwiZXhwIjoxNzIwNjYyNjMyfQ.m8vsFx0dDhJ2_SFNPF6FROhVhmj9sqsIhGxyybERcd0', 1);
INSERT INTO `token` VALUES (32, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU3NzI0MCwiZXhwIjoxNzIwNjYzNjQwfQ.StjHqLqfsZzH5IBCIKE-3O9rr4QtQo21S9mrgiJ6k20', 1);
INSERT INTO `token` VALUES (33, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU3NzI3OCwiZXhwIjoxNzIwNjYzNjc4fQ.jczKuETGtpTG8dkIXhz--jmfQBI9Yxrw9L5sliC9Vb0', 1);
INSERT INTO `token` VALUES (34, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU3NzMyNCwiZXhwIjoxNzIwNjYzNzI0fQ.gHCsVXCZyGgNFxKjihjFHaZj6-VrfkkTSAVvvDp9ijU', 1);
INSERT INTO `token` VALUES (35, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU3NzQwNCwiZXhwIjoxNzIwNjYzODA0fQ.BL8XT05Rkj2uZLj_7qVMxHAo2Z16ulkrOymMqto8rUE', 1);
INSERT INTO `token` VALUES (36, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU3ODk1MywiZXhwIjoxNzIwNjY1MzUzfQ.MH_WykdPhBJN-u4drGtJdqLNiIavctZ1ugrZv4KcI1o', 1);
INSERT INTO `token` VALUES (37, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU4Njc2NiwiZXhwIjoxNzIwNjczMTY2fQ.2d7SvvBvMPLdZkTH7zTwny-X4roAekszfA1NoV1hfnI', 1);
INSERT INTO `token` VALUES (38, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU4Njg1NywiZXhwIjoxNzIwNjczMjU3fQ.8GN0Dbd9cWJn-tZ32udp1LgR-QdbLokmV-W5IvnAeao', 1);
INSERT INTO `token` VALUES (39, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU4NzIxNywiZXhwIjoxNzIwNjczNjE3fQ.kcPB0NTtVgy0Wqv0NcBGomEHagRtxvYbzG_VkeQUmkw', 1);
INSERT INTO `token` VALUES (40, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU4NzQyMiwiZXhwIjoxNzIwNjczODIyfQ.toq1TK-8ar0kOX5jRSsbK8Ow2yzpF__gQ_l6pdHZ-Vg', 1);
INSERT INTO `token` VALUES (41, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU5NDM4MSwiZXhwIjoxNzIwNjgwNzgxfQ.pMvKMJh5qH2Xyk-794pdHTgfH8Q9ZBQvIMlZ7Xx7XZM', 1);
INSERT INTO `token` VALUES (42, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU5NTQyMiwiZXhwIjoxNzIwNjgxODIyfQ.G90tDTKmqddpAtFwklNWYfEmcue-NpoTCOaMRYgny90', 1);
INSERT INTO `token` VALUES (43, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDU5NjY4MCwiZXhwIjoxNzIwNjgzMDgwfQ.rmyanDQXotL63Ia6bd20giWoWTheeCuzJjyNlResBio', 1);
INSERT INTO `token` VALUES (44, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYxNTg2OSwiZXhwIjoxNzIwNzAyMjY5fQ.0p5yZ5sNmwWA2CHelzq-FcRBcgdCLoIuP_C9G1dyI3A', 1);
INSERT INTO `token` VALUES (45, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYxNzc2NCwiZXhwIjoxNzIwNzA0MTY0fQ.4FAJ9RMTRDONclmO15_g5MBF7i6DG6-m60B3GeJuhAE', 1);
INSERT INTO `token` VALUES (46, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYxNzg2MywiZXhwIjoxNzIwNzA0MjYzfQ._27FVrV3mvgY-bcumydNmKGQzga56xMCPkj4Z_ZQkS4', 1);
INSERT INTO `token` VALUES (47, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYyMDY1NiwiZXhwIjoxNzIwNzA3MDU2fQ.UAgflq5SnHyAyd_-5RH6V9aZb03KJjXWGfqApkFhZmc', 1);
INSERT INTO `token` VALUES (48, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYyNzMzMywiZXhwIjoxNzIwNzEzNzMzfQ.hEQ_afReFDTQKGtinLVWSpAQ5_7EIDfSkdTpE0sTaa0', 1);
INSERT INTO `token` VALUES (49, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYyNzczNSwiZXhwIjoxNzIwNzE0MTM1fQ.gngsB2G2J5SBZ93YMRtCstdIouYH1MDn0odu67Z8kkQ', 1);
INSERT INTO `token` VALUES (50, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYyODA0NCwiZXhwIjoxNzIwNzE0NDQ0fQ.mJ2HQl9JmYDxSPlcov7VTcykEamhN3aT9knQ6nZ4p4c', 1);
INSERT INTO `token` VALUES (51, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYyODM4NCwiZXhwIjoxNzIwNzE0Nzg0fQ.76qLtZ3C6hoDIB0kz3KoPgnkfBC95giSGMK8ovDZrrU', 1);
INSERT INTO `token` VALUES (52, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNjI5NDY0LCJleHAiOjE3MjA3MTU4NjR9.2seDZxax8DdGuPbsJtiiOtlcObhPfIbOhoBBtqUoGg4', 2);
INSERT INTO `token` VALUES (53, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYyOTU1MywiZXhwIjoxNzIwNzE1OTUzfQ.Ud-VxFyhQglxW1WRI4QIeJ_eJcP-MjuXkJPegs-6djs', 1);
INSERT INTO `token` VALUES (54, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzMjU2OSwiZXhwIjoxNzIwNzE4OTY5fQ.QC5-m5fahde-mYcVBQzfiXo2uvDk7tH6h1RZDK9IEt0', 1);
INSERT INTO `token` VALUES (55, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzNDM0NiwiZXhwIjoxNzIwNzIwNzQ2fQ.lxzhxdhgDGF0UsZryRnfjTv87PEIAl1ahbuvCqW8Fhc', 1);
INSERT INTO `token` VALUES (56, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzNzg1MywiZXhwIjoxNzIwNzI0MjUzfQ.BYvj6-1eU4F9wWHu_JWI8lcl6z05VukUVkijE8xcLzw', 1);
INSERT INTO `token` VALUES (57, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzODIxMCwiZXhwIjoxNzIwNzI0NjEwfQ._1koiX3eEYhtWaz2ttpvKUN00WX1QpKQKkQse4AN2YI', 1);
INSERT INTO `token` VALUES (58, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzODU4MCwiZXhwIjoxNzIwNzI0OTgwfQ.8u1F-1p5MMqLPjKqXsXZa16TwkXcJj_zR3g6towcId8', 1);
INSERT INTO `token` VALUES (59, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzODc1OSwiZXhwIjoxNzIwNzI1MTU5fQ.Jgk9EMkaMlNkLPpaLarskch6AG_PnqXFZ0FXWoF9hr8', 1);
INSERT INTO `token` VALUES (60, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzOTUwNCwiZXhwIjoxNzIwNzI1OTA0fQ.TuEwLmSxVzwLgVfVuCT2vEQXTfM8Fvp7PXiHdf2L7wg', 1);
INSERT INTO `token` VALUES (61, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDYzOTgzNywiZXhwIjoxNzIwNzI2MjM3fQ.vHpkunR271N9JE6Qc2af-45ZE4Jbj0QGNwpm0HJJXmI', 1);
INSERT INTO `token` VALUES (62, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY0MDg2MCwiZXhwIjoxNzIwNzI3MjYwfQ.bMyUIAVeQPcMyZsslKCE87bcrkV7mqr4rcLrX4fzk-E', 1);
INSERT INTO `token` VALUES (63, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY0MTU5MCwiZXhwIjoxNzIwNzI3OTkwfQ.eODlee3I_td6GpYgucMx3LFp7kfOHd1kHtLpcqUH1jA', 1);
INSERT INTO `token` VALUES (64, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNjQxOTE3LCJleHAiOjE3MjA3MjgzMTd9.7lpMtBthzrZfvxnDqRqpj0Eivx4LQkrrqCeZSl5fyuw', 2);
INSERT INTO `token` VALUES (65, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNjc1MTQ3LCJleHAiOjE3MjA3NjE1NDd9.-Bn50KKUCGPGh5sPeGx0cQ_a44XPDcw5kBJ-yuNqryQ', 2);
INSERT INTO `token` VALUES (66, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY3NTI1NywiZXhwIjoxNzIwNzYxNjU3fQ.dpUkdwx89gq6ZbNnu_WzmdJWgkWkL4tjL-yGxwCxAzk', 1);
INSERT INTO `token` VALUES (67, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNjg4NTcxLCJleHAiOjE3MjA3NzQ5NzF9.XxDIbGI55z52_DvfDsk-sEmKV7bnMP1RhM9lMlMv-Wg', 2);
INSERT INTO `token` VALUES (68, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY4ODY4NSwiZXhwIjoxNzIwNzc1MDg1fQ.MAiI_AZdQSWzI0yCqFyAQkMFxneANTDKUf-75Da4Sfc', 1);
INSERT INTO `token` VALUES (69, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6NSwic3ViIjoiMTIzQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY4OTAxNSwiZXhwIjoxNzIwNzc1NDE1fQ.N_yumAikh2rDAbTRkIT--9V0dms-zxPhqDrXOzIuYjM', 5);
INSERT INTO `token` VALUES (70, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY4OTMxMywiZXhwIjoxNzIwNzc1NzEzfQ.xhSaD3CeRzY0YxRQnIjFZDItQfLavjF_D8m_DMomR6Q', 1);
INSERT INTO `token` VALUES (71, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY5MzY0MiwiZXhwIjoxNzIwNzgwMDQyfQ.28Z67QHq9QEWBw_JiOxBrqhi24UEJDroMdsQu-WAMkU', 1);
INSERT INTO `token` VALUES (72, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNjk0MDAzLCJleHAiOjE3MjA3ODA0MDN9.EBYsDM3jSfjEi9Xd9P-vPuwzV1hF3RTFQUChbTVOtzY', 2);
INSERT INTO `token` VALUES (73, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNjk1OTU0LCJleHAiOjE3MjA3ODIzNTR9.zmHskefNLH8NbSEJsHeIqfcfTaP2p1iiWNVMUE8BFwk', 2);
INSERT INTO `token` VALUES (74, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Mywic3ViIjoiYWRtaW4xQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY5NjAxNywiZXhwIjoxNzIwNzgyNDE3fQ.wDvQDbIb5CU7IX87AtCabRpX3L9YkzlNOrjb7KK42qE', 3);
INSERT INTO `token` VALUES (75, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfQURNSU5JU1RSQVRPUiJdLCJpZCI6MSwic3ViIjoiYWJjQGdtYWlsLmNvbSIsImlhdCI6MTcyMDY5NjA1MywiZXhwIjoxNzIwNzgyNDUzfQ.-oFcXlJf7NpnApTximFSZjms9GvqSUnjuDDfEfaB10o', 1);
INSERT INTO `token` VALUES (76, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzVG9rZW4iLCJyb2xlIjpbIlJPTEVfVVNFUiJdLCJpZCI6Miwic3ViIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNzIwNjk2NDc1LCJleHAiOjE3MjA3ODI4NzV9.EKJ1FYhWIyuXbks3ELW_YOHcyCBYAmNtJgxPm7nA5KI', 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `dob` datetime(6) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_email_active` bit(1) NOT NULL,
  `is_phone_active` bit(1) NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '$2a$10$anYTkMwdO9REror4zAW/mOuyEDK3MJE/lCQoZIoR9Dbii68tnCuWu', NULL, NULL, 'abc@gmail.com', 'abc', b'1', 'xyz', b'1', b'0', NULL);
INSERT INTO `user` VALUES (2, '$2a$10$5fk4hsPMshDQRbJq5Qhhyum1Cn3k4YdS807ApaemTeY82leECbJzC', NULL, NULL, 'admin@gmail.com', 'quan', b'1', 'tai', b'1', b'0', NULL);
INSERT INTO `user` VALUES (3, '$2a$10$yd9D.qagW1.JXAJKVln5KuMGN17Yy4U385LLVo8vq9JP720jkPSiO', '2024-07-03 21:11:07.000000', NULL, 'admin1@gmail.com', 'quan', b'1', 'tai', b'1', b'0', NULL);
INSERT INTO `user` VALUES (4, '$2a$10$8JU2gGVUTAnLc1C9M78vuesBl741/W8uSPo/qjAMkJSkuGC70SDA6', '2024-07-03 22:01:46.000000', NULL, 'user2@gmail.com', 'quan', b'1', 'tai', b'1', b'0', NULL);
INSERT INTO `user` VALUES (5, '$2a$10$QY4FGktb7Assi0a9ar5IW.aDayYCnWrN.Ba93feifR8CAmD52F4Y6', '2024-07-11 16:10:05.000000', NULL, '123@gmail.com', 'nguyễn', b'1', 'quân', b'1', b'0', NULL);
INSERT INTO `user` VALUES (6, '$2a$10$mCzTbDLdlK2p6LfWzMoJIe5go87ErIe8dhoDWnlS89GX2uJ7MQ59i', '2024-07-11 17:30:11.000000', NULL, '1234@gmail.com', 'hihi', b'1', 'hihi', b'1', b'0', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user`(`user_id` ASC) USING BTREE,
  INDEX `fk_role`(`role_id` ASC) USING BTREE,
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1);
INSERT INTO `user_role` VALUES (2, 2, 2);
INSERT INTO `user_role` VALUES (3, 3, 2);
INSERT INTO `user_role` VALUES (4, 4, 2);
INSERT INTO `user_role` VALUES (5, 5, 2);
INSERT INTO `user_role` VALUES (6, 6, 2);

SET FOREIGN_KEY_CHECKS = 1;
