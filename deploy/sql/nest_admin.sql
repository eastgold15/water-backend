/*
 Navicat Premium Dump SQL

 Source Server         : nest-admin
 Source Server Type    : MySQL
 Source Server Version : 90200 (9.2.0)
 Source Host           : localhost:3304
 Source Schema         : nest_admin

 Target Server Type    : MySQL
 Target Server Version : 90200 (9.2.0)
 File Encoding         : 65001

 Date: 02/07/2025 00:37:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device_base
-- ----------------------------
DROP TABLE IF EXISTS `device_base`;
CREATE TABLE `device_base`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deviceCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deviceType` tinyint NOT NULL DEFAULT 1 COMMENT '设备类型',
  `manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '生产厂家',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '设备状态(1:正常 2:预警 3:故障)',
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备型号',
  `gatewayId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '网关ID',
  `area_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_c78a75a106b85ea7818f9507ab`(`deviceCode` ASC) USING BTREE,
  INDEX `FK_96bb0e465c48dc979cd5504ba59`(`area_id` ASC) USING BTREE,
  CONSTRAINT `FK_96bb0e465c48dc979cd5504ba59` FOREIGN KEY (`area_id`) REFERENCES `location_area` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_base
-- ----------------------------
INSERT INTO `device_base` VALUES (1, '2025-05-17 02:09:09.015606', '2025-05-17 02:09:09.015606', '38', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (3, '2025-05-17 02:09:45.736454', '2025-05-17 02:09:45.736454', '381', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (4, '2025-05-17 02:09:48.546903', '2025-05-17 02:09:48.546903', '3812', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (5, '2025-05-17 02:10:23.404582', '2025-05-17 02:10:23.404582', 'daa80abb-5bfe-4b2a-9d70-b79ed35b6eaf', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (6, '2025-05-17 02:45:21.992786', '2025-05-17 02:45:21.992786', '02102a2a-a56d-47ba-a9d2-a3eb8918a244', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (7, '2025-05-17 02:47:57.568095', '2025-05-17 02:47:57.568095', '3fd052f5-46dd-42ce-997c-485b6a14efad', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (8, '2025-05-17 02:50:07.149829', '2025-05-17 02:50:07.149829', 'd5a00a5d-ec84-492f-acb2-e764cae452de', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (9, '2025-05-17 02:52:32.475259', '2025-05-17 02:52:32.475259', '66de76f7-8a56-4726-b0f6-ea6c82a34c37', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (10, '2025-05-17 02:59:19.854726', '2025-05-17 02:59:19.854726', '5f961d7e-4142-4754-aa0a-28f72a00c373', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (11, '2025-05-17 03:02:02.812330', '2025-05-17 03:02:02.812330', '53225488-7379-4dcf-9288-86d5c0e13f40', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (12, '2025-05-17 03:07:38.866430', '2025-05-17 03:07:38.866430', '239374b6-1d70-4dfc-b167-3e25d5e6e821', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (13, '2025-05-17 03:10:44.123166', '2025-05-17 03:10:44.123166', '43cc3ed0-b4f8-4202-9b54-06c76ebd117c', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (14, '2025-05-17 03:11:58.949752', '2025-05-17 03:11:58.949752', 'a155f8ea-b4d4-4683-b3f0-111b5e3b9359', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (15, '2025-05-17 03:12:17.704247', '2025-05-17 03:12:17.704247', 'c5a7495f-a321-44a4-838c-ecf35cbd931a', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (16, '2025-05-17 03:13:02.581780', '2025-05-17 03:13:02.581780', 'dc28ec59-fc6b-48df-ad26-d031d029da73', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (17, '2025-05-17 03:14:45.556170', '2025-05-17 03:14:45.556170', 'd2b6328b-399d-4162-b453-8f5a5962bb12', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (18, '2025-05-17 04:07:40.299396', '2025-05-17 04:07:40.299396', 'a6e39a25-5009-46f3-b213-88f6a01ad594', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (19, '2025-05-17 04:07:40.350942', '2025-05-17 04:07:40.350942', 'a7bc1fee-d753-4cff-ba17-82d1e6411521', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (20, '2025-05-17 04:07:40.421432', '2025-05-17 04:07:40.421432', '326d53c9-3bfe-4667-a811-97b08461e58a', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (21, '2025-05-17 04:07:40.452697', '2025-05-17 04:07:40.452697', '0bc2f11d-ce3e-4496-957a-35b022afdf51', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (22, '2025-05-17 04:07:40.608579', '2025-05-17 04:07:40.608579', '37b34a83-767c-4259-b63f-9b11ef40ba1d', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (23, '2025-05-17 04:07:40.635617', '2025-05-17 04:07:40.635617', 'fdcf27ec-2b55-44de-8d04-bee53287b364', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (24, '2025-05-17 04:07:40.637031', '2025-05-17 04:07:40.637031', '69f1cef3-4caa-4b95-82cc-a8d9378b0fdd', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (25, '2025-05-17 04:07:40.755960', '2025-05-17 04:07:40.755960', '26d82b01-d189-410e-bc22-247b0c90024f', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (26, '2025-05-17 04:07:40.781351', '2025-05-17 04:07:40.781351', '4b6a31a1-9b5a-4b03-96dc-39c580b09a3b', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (27, '2025-05-17 04:07:40.805801', '2025-05-17 04:07:40.805801', 'bd7d18a5-6a1e-4f28-b847-b52f93e61f3d', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (28, '2025-05-17 04:07:40.806337', '2025-05-17 04:07:40.806337', 'b67294c4-9d4f-4f6e-b288-7c4cd64f4ea3', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (29, '2025-05-17 04:07:40.819212', '2025-05-17 04:07:40.819212', '2b91dc14-964b-4a39-8976-f3cc21425fcb', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (30, '2025-05-17 04:07:40.996434', '2025-05-17 04:07:40.996434', '0b30f3c4-8483-463c-9fac-2ed825cf525a', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (31, '2025-05-17 04:07:41.302830', '2025-05-17 04:07:41.302830', '27c93b9a-6f53-4ba0-9801-e0bfd4ad1924', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (32, '2025-05-17 04:07:41.818361', '2025-05-17 04:07:41.818361', '698cc39f-44b9-4947-b741-281781257bc9', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (33, '2025-05-17 04:07:42.028065', '2025-05-17 04:07:42.028065', 'a1c5168f-6984-40c2-8f03-ae2e46c8527b', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (34, '2025-05-17 04:07:42.217382', '2025-05-17 04:07:42.217382', '7db5d39e-5655-4f67-b4e9-8e2638601cd2', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (35, '2025-05-17 04:07:42.414327', '2025-05-17 04:07:42.414327', '5b4e65cd-6f94-44e2-bcb8-25438c890660', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);
INSERT INTO `device_base` VALUES (36, '2025-05-17 04:07:42.494365', '2025-05-17 04:07:42.494365', 'd1d16367-b81e-4a6b-a00e-446d7b86c53e', 1, 'commodo est ullamco labore in', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for location_area
-- ----------------------------
DROP TABLE IF EXISTS `location_area`;
CREATE TABLE `location_area`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `area_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `area_type` enum('CAMPUS','BUILDING','FLOOR','GATE','EXPRESS_STATION','OTHER') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'OTHER',
  `level` int NOT NULL DEFAULT 0,
  `coordinates` json NULL,
  `mpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `parentId` int NULL DEFAULT NULL,
  `organization_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_882bd97eb493231cf64252c0b4`(`area_code` ASC) USING BTREE,
  INDEX `FK_7f2b958bbb25d199befeb9a7f63`(`parentId` ASC) USING BTREE,
  INDEX `FK_de0f495da31e7c88f79200f9236`(`organization_id` ASC) USING BTREE,
  CONSTRAINT `FK_7f2b958bbb25d199befeb9a7f63` FOREIGN KEY (`parentId`) REFERENCES `location_area` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_de0f495da31e7c88f79200f9236` FOREIGN KEY (`organization_id`) REFERENCES `sys1_organization` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location_area
-- ----------------------------
INSERT INTO `location_area` VALUES (1, '2025-05-15 20:41:31.014399', '2025-05-15 20:41:31.000000', 'BUILDING_001', '10教教学楼', 'BUILDING', 0, '{\"lat\": 99, \"lng\": 21}', '1.', NULL, NULL);
INSERT INTO `location_area` VALUES (2, '2025-05-15 20:52:29.423706', '2025-05-15 20:52:29.000000', 'BB', '四川大学锦江学院', 'CAMPUS', 1, '{\"lat\": 0.000002, \"lng\": 0.000003}', '2.', NULL, NULL);
INSERT INTO `location_area` VALUES (3, '2025-05-15 21:35:58.179902', '2025-05-15 21:35:58.000000', 'B-11', '6栋', 'BUILDING', 4, '{\"lat\": 0.000002, \"lng\": 0.000002}', '2.3.', 2, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, 1707996695540, 'InitData1707996695540');
INSERT INTO `migrations` VALUES (2, 1717007831711, 'UpdateTable2001717007831711');

-- ----------------------------
-- Table structure for pressure_meter
-- ----------------------------
DROP TABLE IF EXISTS `pressure_meter`;
CREATE TABLE `pressure_meter`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `longitude` decimal(10, 6) NOT NULL COMMENT '经度',
  `latitude` decimal(10, 6) NOT NULL COMMENT '纬度',
  `caliber` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备口径',
  `device_base_id` int NULL DEFAULT NULL,
  `pressure` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '压力值',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_f28a35d623b4b41af0dc66f9e27`(`device_base_id` ASC) USING BTREE,
  CONSTRAINT `FK_f28a35d623b4b41af0dc66f9e27` FOREIGN KEY (`device_base_id`) REFERENCES `device_base` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pressure_meter
-- ----------------------------

-- ----------------------------
-- Table structure for sys1_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys1_organization`;
CREATE TABLE `sys1_organization`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contactPhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logoUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_aa1e6330df05ff329d628be0f0`(`name` ASC) USING BTREE,
  UNIQUE INDEX `IDX_9560439d453a3ba09de65d199a`(`address` ASC) USING BTREE,
  UNIQUE INDEX `IDX_ab5d6257ce639197d54ba013d3`(`contactPhone` ASC) USING BTREE,
  UNIQUE INDEX `IDX_9d031e74b83fcb61d3b1e17924`(`email` ASC) USING BTREE,
  UNIQUE INDEX `IDX_4c5fb511dbd833b7948099c197`(`logoUrl` ASC) USING BTREE,
  UNIQUE INDEX `IDX_952a5fe00148ffea9f03c6d31e`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys1_organization
-- ----------------------------
INSERT INTO `sys1_organization` VALUES (1, '2025-04-21 13:51:58.356839', '2025-04-21 13:51:58.356839', 'XX科技有限公司', '北京市海淀区', '13800138000', 'contact@example.com', 'https://example.com/logo.png', 1);
INSERT INTO `sys1_organization` VALUES (10, '2025-05-17 02:14:06.265233', '2025-05-17 02:14:06.265233', '安宁市苑博电力无限责任公司', '华北', '15386459778', 'iuk.qyp91@outlook.com', 'https://ugly-velocity.name/', 0);

-- ----------------------------
-- Table structure for sys_captcha_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_captcha_log`;
CREATE TABLE `sys_captcha_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_captcha_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_2c363c25cf99bcaab3a7f389ba`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'sys_user_initPassword', '初始密码', '123456', '创建管理员账号的初始密码', '2023-11-10 00:31:44.154921', '2023-11-10 00:31:44.161263');
INSERT INTO `sys_config` VALUES (2, 'sys_api_token', 'API Token', 'nest-admin', '用于请求 @ApiToken 的控制器', '2023-11-10 00:31:44.154921', '2024-01-29 09:52:27.000000');
INSERT INTO `sys_config` VALUES (11, 'aliqua ullamco', '夕乙萍', 'commodo veniam non qui', 'amet laboris ipsum magna', '2025-05-17 02:56:11.902692', '2025-05-17 02:56:11.902692');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `orderNo` int NULL DEFAULT 0,
  `mpath` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '',
  `parentId` int NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_c75280b01c49779f2323536db67`(`parentId` ASC) USING BTREE,
  CONSTRAINT `FK_c75280b01c49779f2323536db67` FOREIGN KEY (`parentId`) REFERENCES `sys_dept` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '华东分部', 1, '1.', NULL, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (2, '研发部', 1, '1.2.', 1, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (3, '市场部', 2, '1.3.', 1, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (4, '商务部', 3, '1.4.', 1, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (5, '财务部', 4, '1.5.', 1, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (6, '华南分部', 2, '6.', NULL, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (7, '西北分部', 3, '7.', NULL, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (8, '研发部', 1, '6.8.', 6, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);
INSERT INTO `sys_dept` VALUES (9, '市场部', 1, '6.9.', 6, '2023-11-10 00:31:43.996025', '2023-11-10 00:31:44.008709', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int NOT NULL COMMENT '创建者',
  `update_by` int NOT NULL COMMENT '更新者',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_d112365748f740ee260b65ce91`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int NULL DEFAULT NULL COMMENT '更新者',
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order` int NULL DEFAULT NULL COMMENT '字典项排序',
  `status` tinyint NOT NULL DEFAULT 1,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_id` int NULL DEFAULT NULL,
  `orderNo` int NULL DEFAULT NULL COMMENT '字典项排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES (1, '2024-01-29 01:24:51.846135', '2024-01-29 02:23:19.000000', 1, 1, '男', '1', 0, 1, '性别男', 1, 3);
INSERT INTO `sys_dict_item` VALUES (2, '2024-01-29 01:32:58.458741', '2024-01-29 01:58:20.000000', 1, 1, '女', '0', 1, 1, '性别女', 1, 2);
INSERT INTO `sys_dict_item` VALUES (3, '2024-01-29 01:59:17.805394', '2024-01-29 14:37:18.000000', 1, 1, '人妖王', '3', NULL, 1, '安布里奥·伊万科夫', 1, 0);
INSERT INTO `sys_dict_item` VALUES (5, '2024-01-29 02:13:01.782466', '2024-01-29 02:13:01.782466', 1, 1, '显示', '1', NULL, 1, '显示菜单', 2, 0);
INSERT INTO `sys_dict_item` VALUES (6, '2024-01-29 02:13:31.134721', '2024-01-29 02:13:31.134721', 1, 1, '隐藏', '0', NULL, 1, '隐藏菜单', 2, 0);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `create_by` int NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int NULL DEFAULT NULL COMMENT '更新者',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_74d0045ff7fab9f67adc0b1bda`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '2024-01-28 08:19:12.777447', '2024-02-08 13:05:10.000000', 1, 1, '性别', 1, '性别单选', 'sys_user_gender');
INSERT INTO `sys_dict_type` VALUES (2, '2024-01-28 08:38:41.235185', '2024-01-29 02:11:33.000000', 1, 1, '菜单显示状态', 1, '菜单显示状态', 'sys_show_hide');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ua` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_3029712e0df6a28edaee46fd470`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_3029712e0df6a28edaee46fd470` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 535 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (1, '127.0.0.1', '', '内网IP', NULL, '2025-05-15 18:48:05.344660', '2025-05-15 18:48:05.344660', 1);
INSERT INTO `sys_login_log` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '内网IP', NULL, '2025-05-15 18:48:11.278434', '2025-05-15 18:48:11.278434', 1);
INSERT INTO `sys_login_log` VALUES (3, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 01:56:06.911275', '2025-05-17 01:56:06.911275', 1);
INSERT INTO `sys_login_log` VALUES (4, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 01:57:13.457274', '2025-05-17 01:57:13.457274', 1);
INSERT INTO `sys_login_log` VALUES (5, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 01:58:39.918438', '2025-05-17 01:58:39.918438', 1);
INSERT INTO `sys_login_log` VALUES (6, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:01:03.834636', '2025-05-17 02:01:03.834636', 1);
INSERT INTO `sys_login_log` VALUES (7, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:04:01.076135', '2025-05-17 02:04:01.076135', 1);
INSERT INTO `sys_login_log` VALUES (8, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:08:28.521936', '2025-05-17 02:08:28.521936', 1);
INSERT INTO `sys_login_log` VALUES (9, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:09:05.748289', '2025-05-17 02:09:05.748289', 1);
INSERT INTO `sys_login_log` VALUES (10, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:16:46.586641', '2025-05-17 02:16:46.586641', 1);
INSERT INTO `sys_login_log` VALUES (11, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:22:42.142161', '2025-05-17 02:22:42.142161', 1);
INSERT INTO `sys_login_log` VALUES (12, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:26:43.383903', '2025-05-17 02:26:43.383903', 1);
INSERT INTO `sys_login_log` VALUES (13, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:30:02.030791', '2025-05-17 02:30:02.030791', 1);
INSERT INTO `sys_login_log` VALUES (14, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:32:21.566824', '2025-05-17 02:32:21.566824', 1);
INSERT INTO `sys_login_log` VALUES (15, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:34:37.468853', '2025-05-17 02:34:37.468853', 1);
INSERT INTO `sys_login_log` VALUES (16, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:36:24.424044', '2025-05-17 02:36:24.424044', 1);
INSERT INTO `sys_login_log` VALUES (17, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:42:23.772110', '2025-05-17 02:42:23.772110', 1);
INSERT INTO `sys_login_log` VALUES (18, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:45:16.644042', '2025-05-17 02:45:16.644042', 1);
INSERT INTO `sys_login_log` VALUES (19, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:50:01.994986', '2025-05-17 02:50:01.994986', 1);
INSERT INTO `sys_login_log` VALUES (20, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:52:27.521116', '2025-05-17 02:52:27.521116', 1);
INSERT INTO `sys_login_log` VALUES (21, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 02:59:14.799380', '2025-05-17 02:59:14.799380', 1);
INSERT INTO `sys_login_log` VALUES (22, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 03:01:58.083469', '2025-05-17 03:01:58.083469', 1);
INSERT INTO `sys_login_log` VALUES (23, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 03:07:34.305072', '2025-05-17 03:07:34.305072', 1);
INSERT INTO `sys_login_log` VALUES (24, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 03:10:39.451045', '2025-05-17 03:10:39.451045', 1);
INSERT INTO `sys_login_log` VALUES (25, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 03:12:12.995108', '2025-05-17 03:12:12.995108', 1);
INSERT INTO `sys_login_log` VALUES (26, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 03:12:58.108857', '2025-05-17 03:12:58.108857', 1);
INSERT INTO `sys_login_log` VALUES (27, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 03:14:41.154120', '2025-05-17 03:14:41.154120', 1);
INSERT INTO `sys_login_log` VALUES (28, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:28.930090', '2025-05-17 04:07:28.930090', 1);
INSERT INTO `sys_login_log` VALUES (29, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.045438', '2025-05-17 04:07:29.045438', 1);
INSERT INTO `sys_login_log` VALUES (30, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.069216', '2025-05-17 04:07:29.069216', 1);
INSERT INTO `sys_login_log` VALUES (31, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.129409', '2025-05-17 04:07:29.129409', 1);
INSERT INTO `sys_login_log` VALUES (32, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.722307', '2025-05-17 04:07:29.722307', 1);
INSERT INTO `sys_login_log` VALUES (33, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.725598', '2025-05-17 04:07:29.725598', 1);
INSERT INTO `sys_login_log` VALUES (34, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.923057', '2025-05-17 04:07:29.923057', 1);
INSERT INTO `sys_login_log` VALUES (35, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.924114', '2025-05-17 04:07:29.924114', 1);
INSERT INTO `sys_login_log` VALUES (36, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.945721', '2025-05-17 04:07:29.945721', 1);
INSERT INTO `sys_login_log` VALUES (37, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.971433', '2025-05-17 04:07:29.971433', 1);
INSERT INTO `sys_login_log` VALUES (38, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.992765', '2025-05-17 04:07:29.992765', 1);
INSERT INTO `sys_login_log` VALUES (39, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:29.994311', '2025-05-17 04:07:29.994311', 1);
INSERT INTO `sys_login_log` VALUES (40, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:30.315388', '2025-05-17 04:07:30.315388', 1);
INSERT INTO `sys_login_log` VALUES (41, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:30.330745', '2025-05-17 04:07:30.330745', 1);
INSERT INTO `sys_login_log` VALUES (42, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:30.367907', '2025-05-17 04:07:30.367907', 1);
INSERT INTO `sys_login_log` VALUES (43, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:30.381873', '2025-05-17 04:07:30.381873', 1);
INSERT INTO `sys_login_log` VALUES (44, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:30.421522', '2025-05-17 04:07:30.421522', 1);
INSERT INTO `sys_login_log` VALUES (45, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:30.440337', '2025-05-17 04:07:30.440337', 1);
INSERT INTO `sys_login_log` VALUES (46, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:07:30.469342', '2025-05-17 04:07:30.469342', 1);
INSERT INTO `sys_login_log` VALUES (47, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.050093', '2025-05-17 04:09:46.050093', 1);
INSERT INTO `sys_login_log` VALUES (48, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.161878', '2025-05-17 04:09:46.161878', 1);
INSERT INTO `sys_login_log` VALUES (49, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.326638', '2025-05-17 04:09:46.326638', 1);
INSERT INTO `sys_login_log` VALUES (50, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.327361', '2025-05-17 04:09:46.327361', 1);
INSERT INTO `sys_login_log` VALUES (51, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.374301', '2025-05-17 04:09:46.374301', 1);
INSERT INTO `sys_login_log` VALUES (52, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.380073', '2025-05-17 04:09:46.380073', 1);
INSERT INTO `sys_login_log` VALUES (53, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.384229', '2025-05-17 04:09:46.384229', 1);
INSERT INTO `sys_login_log` VALUES (54, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.489022', '2025-05-17 04:09:46.489022', 1);
INSERT INTO `sys_login_log` VALUES (55, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.837290', '2025-05-17 04:09:46.837290', 1);
INSERT INTO `sys_login_log` VALUES (56, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.839665', '2025-05-17 04:09:46.839665', 1);
INSERT INTO `sys_login_log` VALUES (57, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.874537', '2025-05-17 04:09:46.874537', 1);
INSERT INTO `sys_login_log` VALUES (58, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.892158', '2025-05-17 04:09:46.892158', 1);
INSERT INTO `sys_login_log` VALUES (59, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.892909', '2025-05-17 04:09:46.892909', 1);
INSERT INTO `sys_login_log` VALUES (60, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:46.893393', '2025-05-17 04:09:46.893393', 1);
INSERT INTO `sys_login_log` VALUES (61, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:47.366804', '2025-05-17 04:09:47.366804', 1);
INSERT INTO `sys_login_log` VALUES (62, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:47.370227', '2025-05-17 04:09:47.370227', 1);
INSERT INTO `sys_login_log` VALUES (63, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:47.423025', '2025-05-17 04:09:47.423025', 1);
INSERT INTO `sys_login_log` VALUES (64, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:47.440044', '2025-05-17 04:09:47.440044', 1);
INSERT INTO `sys_login_log` VALUES (65, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:47.443412', '2025-05-17 04:09:47.443412', 1);
INSERT INTO `sys_login_log` VALUES (66, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:09:47.444753', '2025-05-17 04:09:47.444753', 1);
INSERT INTO `sys_login_log` VALUES (67, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:11.631225', '2025-05-17 04:12:11.631225', 1);
INSERT INTO `sys_login_log` VALUES (68, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:11.814115', '2025-05-17 04:12:11.814115', 1);
INSERT INTO `sys_login_log` VALUES (69, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:11.920298', '2025-05-17 04:12:11.920298', 1);
INSERT INTO `sys_login_log` VALUES (70, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:11.990578', '2025-05-17 04:12:11.990578', 1);
INSERT INTO `sys_login_log` VALUES (71, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.320971', '2025-05-17 04:12:12.320971', 1);
INSERT INTO `sys_login_log` VALUES (72, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.321378', '2025-05-17 04:12:12.321378', 1);
INSERT INTO `sys_login_log` VALUES (73, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.333476', '2025-05-17 04:12:12.333476', 1);
INSERT INTO `sys_login_log` VALUES (74, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.337501', '2025-05-17 04:12:12.337501', 1);
INSERT INTO `sys_login_log` VALUES (75, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.429288', '2025-05-17 04:12:12.429288', 1);
INSERT INTO `sys_login_log` VALUES (76, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.432081', '2025-05-17 04:12:12.432081', 1);
INSERT INTO `sys_login_log` VALUES (77, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.883508', '2025-05-17 04:12:12.883508', 1);
INSERT INTO `sys_login_log` VALUES (78, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.884566', '2025-05-17 04:12:12.884566', 1);
INSERT INTO `sys_login_log` VALUES (79, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.885068', '2025-05-17 04:12:12.885068', 1);
INSERT INTO `sys_login_log` VALUES (80, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.888093', '2025-05-17 04:12:12.888093', 1);
INSERT INTO `sys_login_log` VALUES (81, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.905882', '2025-05-17 04:12:12.905882', 1);
INSERT INTO `sys_login_log` VALUES (82, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.906587', '2025-05-17 04:12:12.906587', 1);
INSERT INTO `sys_login_log` VALUES (83, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.913561', '2025-05-17 04:12:12.913561', 1);
INSERT INTO `sys_login_log` VALUES (84, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:12.914267', '2025-05-17 04:12:12.914267', 1);
INSERT INTO `sys_login_log` VALUES (85, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:13.011959', '2025-05-17 04:12:13.011959', 1);
INSERT INTO `sys_login_log` VALUES (86, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:12:13.016549', '2025-05-17 04:12:13.016549', 1);
INSERT INTO `sys_login_log` VALUES (87, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:12.064323', '2025-05-17 04:16:12.064323', 1);
INSERT INTO `sys_login_log` VALUES (88, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:12.079012', '2025-05-17 04:16:12.079012', 1);
INSERT INTO `sys_login_log` VALUES (89, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:12.781459', '2025-05-17 04:16:12.781459', 1);
INSERT INTO `sys_login_log` VALUES (90, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:12.840374', '2025-05-17 04:16:12.840374', 1);
INSERT INTO `sys_login_log` VALUES (91, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:12.883324', '2025-05-17 04:16:12.883324', 1);
INSERT INTO `sys_login_log` VALUES (92, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:12.947459', '2025-05-17 04:16:12.947459', 1);
INSERT INTO `sys_login_log` VALUES (93, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:12.952346', '2025-05-17 04:16:12.952346', 1);
INSERT INTO `sys_login_log` VALUES (94, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.074815', '2025-05-17 04:16:13.074815', 1);
INSERT INTO `sys_login_log` VALUES (95, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.479110', '2025-05-17 04:16:13.479110', 1);
INSERT INTO `sys_login_log` VALUES (96, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.480827', '2025-05-17 04:16:13.480827', 1);
INSERT INTO `sys_login_log` VALUES (97, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.529016', '2025-05-17 04:16:13.529016', 1);
INSERT INTO `sys_login_log` VALUES (98, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.532619', '2025-05-17 04:16:13.532619', 1);
INSERT INTO `sys_login_log` VALUES (99, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.632378', '2025-05-17 04:16:13.632378', 1);
INSERT INTO `sys_login_log` VALUES (100, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.653496', '2025-05-17 04:16:13.653496', 1);
INSERT INTO `sys_login_log` VALUES (101, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.739653', '2025-05-17 04:16:13.739653', 1);
INSERT INTO `sys_login_log` VALUES (102, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.742162', '2025-05-17 04:16:13.742162', 1);
INSERT INTO `sys_login_log` VALUES (103, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.907591', '2025-05-17 04:16:13.907591', 1);
INSERT INTO `sys_login_log` VALUES (104, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.922591', '2025-05-17 04:16:13.922591', 1);
INSERT INTO `sys_login_log` VALUES (105, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.970186', '2025-05-17 04:16:13.970186', 1);
INSERT INTO `sys_login_log` VALUES (106, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:13.979541', '2025-05-17 04:16:13.979541', 1);
INSERT INTO `sys_login_log` VALUES (107, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.026904', '2025-05-17 04:16:14.026904', 1);
INSERT INTO `sys_login_log` VALUES (108, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.050914', '2025-05-17 04:16:14.050914', 1);
INSERT INTO `sys_login_log` VALUES (109, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.426744', '2025-05-17 04:16:14.426744', 1);
INSERT INTO `sys_login_log` VALUES (110, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.625207', '2025-05-17 04:16:14.625207', 1);
INSERT INTO `sys_login_log` VALUES (111, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.629402', '2025-05-17 04:16:14.629402', 1);
INSERT INTO `sys_login_log` VALUES (112, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.726427', '2025-05-17 04:16:14.726427', 1);
INSERT INTO `sys_login_log` VALUES (113, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.903216', '2025-05-17 04:16:14.903216', 1);
INSERT INTO `sys_login_log` VALUES (114, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.913088', '2025-05-17 04:16:14.913088', 1);
INSERT INTO `sys_login_log` VALUES (115, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:14.946988', '2025-05-17 04:16:14.946988', 1);
INSERT INTO `sys_login_log` VALUES (116, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.398810', '2025-05-17 04:16:15.398810', 1);
INSERT INTO `sys_login_log` VALUES (117, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.468233', '2025-05-17 04:16:15.468233', 1);
INSERT INTO `sys_login_log` VALUES (118, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.496760', '2025-05-17 04:16:15.496760', 1);
INSERT INTO `sys_login_log` VALUES (119, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.502471', '2025-05-17 04:16:15.502471', 1);
INSERT INTO `sys_login_log` VALUES (120, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.539266', '2025-05-17 04:16:15.539266', 1);
INSERT INTO `sys_login_log` VALUES (121, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.539945', '2025-05-17 04:16:15.539945', 1);
INSERT INTO `sys_login_log` VALUES (122, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.628818', '2025-05-17 04:16:15.628818', 1);
INSERT INTO `sys_login_log` VALUES (123, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.650065', '2025-05-17 04:16:15.650065', 1);
INSERT INTO `sys_login_log` VALUES (124, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.662679', '2025-05-17 04:16:15.662679', 1);
INSERT INTO `sys_login_log` VALUES (125, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.974041', '2025-05-17 04:16:15.974041', 1);
INSERT INTO `sys_login_log` VALUES (126, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.977480', '2025-05-17 04:16:15.977480', 1);
INSERT INTO `sys_login_log` VALUES (127, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:15.978474', '2025-05-17 04:16:15.978474', 1);
INSERT INTO `sys_login_log` VALUES (128, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.013487', '2025-05-17 04:16:16.013487', 1);
INSERT INTO `sys_login_log` VALUES (129, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.150330', '2025-05-17 04:16:16.150330', 1);
INSERT INTO `sys_login_log` VALUES (130, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.189972', '2025-05-17 04:16:16.189972', 1);
INSERT INTO `sys_login_log` VALUES (131, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.353625', '2025-05-17 04:16:16.353625', 1);
INSERT INTO `sys_login_log` VALUES (132, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.390531', '2025-05-17 04:16:16.390531', 1);
INSERT INTO `sys_login_log` VALUES (133, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.846515', '2025-05-17 04:16:16.846515', 1);
INSERT INTO `sys_login_log` VALUES (134, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.893685', '2025-05-17 04:16:16.893685', 1);
INSERT INTO `sys_login_log` VALUES (135, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.899910', '2025-05-17 04:16:16.899910', 1);
INSERT INTO `sys_login_log` VALUES (136, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.949860', '2025-05-17 04:16:16.949860', 1);
INSERT INTO `sys_login_log` VALUES (137, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.962145', '2025-05-17 04:16:16.962145', 1);
INSERT INTO `sys_login_log` VALUES (138, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.991659', '2025-05-17 04:16:16.991659', 1);
INSERT INTO `sys_login_log` VALUES (139, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:16.995273', '2025-05-17 04:16:16.995273', 1);
INSERT INTO `sys_login_log` VALUES (140, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.105030', '2025-05-17 04:16:17.105030', 1);
INSERT INTO `sys_login_log` VALUES (141, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.143760', '2025-05-17 04:16:17.143760', 1);
INSERT INTO `sys_login_log` VALUES (142, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.230199', '2025-05-17 04:16:17.230199', 1);
INSERT INTO `sys_login_log` VALUES (143, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.349358', '2025-05-17 04:16:17.349358', 1);
INSERT INTO `sys_login_log` VALUES (144, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.384258', '2025-05-17 04:16:17.384258', 1);
INSERT INTO `sys_login_log` VALUES (145, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.390074', '2025-05-17 04:16:17.390074', 1);
INSERT INTO `sys_login_log` VALUES (146, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.435562', '2025-05-17 04:16:17.435562', 1);
INSERT INTO `sys_login_log` VALUES (147, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.630561', '2025-05-17 04:16:17.630561', 1);
INSERT INTO `sys_login_log` VALUES (148, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.984385', '2025-05-17 04:16:17.984385', 1);
INSERT INTO `sys_login_log` VALUES (149, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:17.988785', '2025-05-17 04:16:17.988785', 1);
INSERT INTO `sys_login_log` VALUES (150, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.043081', '2025-05-17 04:16:18.043081', 1);
INSERT INTO `sys_login_log` VALUES (151, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.110548', '2025-05-17 04:16:18.110548', 1);
INSERT INTO `sys_login_log` VALUES (152, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.228219', '2025-05-17 04:16:18.228219', 1);
INSERT INTO `sys_login_log` VALUES (153, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.410726', '2025-05-17 04:16:18.410726', 1);
INSERT INTO `sys_login_log` VALUES (154, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.589597', '2025-05-17 04:16:18.589597', 1);
INSERT INTO `sys_login_log` VALUES (155, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.592532', '2025-05-17 04:16:18.592532', 1);
INSERT INTO `sys_login_log` VALUES (156, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.607834', '2025-05-17 04:16:18.607834', 1);
INSERT INTO `sys_login_log` VALUES (157, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.709251', '2025-05-17 04:16:18.709251', 1);
INSERT INTO `sys_login_log` VALUES (158, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.725299', '2025-05-17 04:16:18.725299', 1);
INSERT INTO `sys_login_log` VALUES (159, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.855932', '2025-05-17 04:16:18.855932', 1);
INSERT INTO `sys_login_log` VALUES (160, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.856370', '2025-05-17 04:16:18.856370', 1);
INSERT INTO `sys_login_log` VALUES (161, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:18.862162', '2025-05-17 04:16:18.862162', 1);
INSERT INTO `sys_login_log` VALUES (162, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.006010', '2025-05-17 04:16:19.006010', 1);
INSERT INTO `sys_login_log` VALUES (163, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.010610', '2025-05-17 04:16:19.010610', 1);
INSERT INTO `sys_login_log` VALUES (164, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.182599', '2025-05-17 04:16:19.182599', 1);
INSERT INTO `sys_login_log` VALUES (165, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.208354', '2025-05-17 04:16:19.208354', 1);
INSERT INTO `sys_login_log` VALUES (166, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.208892', '2025-05-17 04:16:19.208892', 1);
INSERT INTO `sys_login_log` VALUES (167, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.449432', '2025-05-17 04:16:19.449432', 1);
INSERT INTO `sys_login_log` VALUES (168, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.529486', '2025-05-17 04:16:19.529486', 1);
INSERT INTO `sys_login_log` VALUES (169, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.622276', '2025-05-17 04:16:19.622276', 1);
INSERT INTO `sys_login_log` VALUES (170, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.776672', '2025-05-17 04:16:19.776672', 1);
INSERT INTO `sys_login_log` VALUES (171, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:19.891828', '2025-05-17 04:16:19.891828', 1);
INSERT INTO `sys_login_log` VALUES (172, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.038204', '2025-05-17 04:16:20.038204', 1);
INSERT INTO `sys_login_log` VALUES (173, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.094116', '2025-05-17 04:16:20.094116', 1);
INSERT INTO `sys_login_log` VALUES (174, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.195358', '2025-05-17 04:16:20.195358', 1);
INSERT INTO `sys_login_log` VALUES (175, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.205846', '2025-05-17 04:16:20.205846', 1);
INSERT INTO `sys_login_log` VALUES (176, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.277392', '2025-05-17 04:16:20.277392', 1);
INSERT INTO `sys_login_log` VALUES (177, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.309168', '2025-05-17 04:16:20.309168', 1);
INSERT INTO `sys_login_log` VALUES (178, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.457542', '2025-05-17 04:16:20.457542', 1);
INSERT INTO `sys_login_log` VALUES (179, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.488535', '2025-05-17 04:16:20.488535', 1);
INSERT INTO `sys_login_log` VALUES (180, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.516323', '2025-05-17 04:16:20.516323', 1);
INSERT INTO `sys_login_log` VALUES (181, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.545872', '2025-05-17 04:16:20.545872', 1);
INSERT INTO `sys_login_log` VALUES (182, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.553413', '2025-05-17 04:16:20.553413', 1);
INSERT INTO `sys_login_log` VALUES (183, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.577909', '2025-05-17 04:16:20.577909', 1);
INSERT INTO `sys_login_log` VALUES (184, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.656721', '2025-05-17 04:16:20.656721', 1);
INSERT INTO `sys_login_log` VALUES (185, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.738498', '2025-05-17 04:16:20.738498', 1);
INSERT INTO `sys_login_log` VALUES (186, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.856702', '2025-05-17 04:16:20.856702', 1);
INSERT INTO `sys_login_log` VALUES (187, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:20.857012', '2025-05-17 04:16:20.857012', 1);
INSERT INTO `sys_login_log` VALUES (188, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.008604', '2025-05-17 04:16:21.008604', 1);
INSERT INTO `sys_login_log` VALUES (189, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.335439', '2025-05-17 04:16:21.335439', 1);
INSERT INTO `sys_login_log` VALUES (190, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.521388', '2025-05-17 04:16:21.521388', 1);
INSERT INTO `sys_login_log` VALUES (191, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.527709', '2025-05-17 04:16:21.527709', 1);
INSERT INTO `sys_login_log` VALUES (192, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.759746', '2025-05-17 04:16:21.759746', 1);
INSERT INTO `sys_login_log` VALUES (193, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.762690', '2025-05-17 04:16:21.762690', 1);
INSERT INTO `sys_login_log` VALUES (194, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.762948', '2025-05-17 04:16:21.762948', 1);
INSERT INTO `sys_login_log` VALUES (195, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.824664', '2025-05-17 04:16:21.824664', 1);
INSERT INTO `sys_login_log` VALUES (196, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.890289', '2025-05-17 04:16:21.890289', 1);
INSERT INTO `sys_login_log` VALUES (197, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:21.949433', '2025-05-17 04:16:21.949433', 1);
INSERT INTO `sys_login_log` VALUES (198, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.120627', '2025-05-17 04:16:22.120627', 1);
INSERT INTO `sys_login_log` VALUES (199, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.288747', '2025-05-17 04:16:22.288747', 1);
INSERT INTO `sys_login_log` VALUES (200, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.329179', '2025-05-17 04:16:22.329179', 1);
INSERT INTO `sys_login_log` VALUES (201, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.333306', '2025-05-17 04:16:22.333306', 1);
INSERT INTO `sys_login_log` VALUES (202, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.369631', '2025-05-17 04:16:22.369631', 1);
INSERT INTO `sys_login_log` VALUES (203, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.421116', '2025-05-17 04:16:22.421116', 1);
INSERT INTO `sys_login_log` VALUES (204, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.459493', '2025-05-17 04:16:22.459493', 1);
INSERT INTO `sys_login_log` VALUES (205, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.569050', '2025-05-17 04:16:22.569050', 1);
INSERT INTO `sys_login_log` VALUES (206, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.650555', '2025-05-17 04:16:22.650555', 1);
INSERT INTO `sys_login_log` VALUES (207, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.808340', '2025-05-17 04:16:22.808340', 1);
INSERT INTO `sys_login_log` VALUES (208, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.827779', '2025-05-17 04:16:22.827779', 1);
INSERT INTO `sys_login_log` VALUES (209, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.893717', '2025-05-17 04:16:22.893717', 1);
INSERT INTO `sys_login_log` VALUES (210, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:22.971294', '2025-05-17 04:16:22.971294', 1);
INSERT INTO `sys_login_log` VALUES (211, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.055324', '2025-05-17 04:16:23.055324', 1);
INSERT INTO `sys_login_log` VALUES (212, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.433835', '2025-05-17 04:16:23.433835', 1);
INSERT INTO `sys_login_log` VALUES (213, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.650616', '2025-05-17 04:16:23.650616', 1);
INSERT INTO `sys_login_log` VALUES (214, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.655372', '2025-05-17 04:16:23.655372', 1);
INSERT INTO `sys_login_log` VALUES (215, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.738184', '2025-05-17 04:16:23.738184', 1);
INSERT INTO `sys_login_log` VALUES (216, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.793859', '2025-05-17 04:16:23.793859', 1);
INSERT INTO `sys_login_log` VALUES (217, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.827878', '2025-05-17 04:16:23.827878', 1);
INSERT INTO `sys_login_log` VALUES (218, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.828374', '2025-05-17 04:16:23.828374', 1);
INSERT INTO `sys_login_log` VALUES (219, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.828976', '2025-05-17 04:16:23.828976', 1);
INSERT INTO `sys_login_log` VALUES (220, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.829315', '2025-05-17 04:16:23.829315', 1);
INSERT INTO `sys_login_log` VALUES (221, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.829853', '2025-05-17 04:16:23.829853', 1);
INSERT INTO `sys_login_log` VALUES (222, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.840606', '2025-05-17 04:16:23.840606', 1);
INSERT INTO `sys_login_log` VALUES (223, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.841088', '2025-05-17 04:16:23.841088', 1);
INSERT INTO `sys_login_log` VALUES (224, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:23.922150', '2025-05-17 04:16:23.922150', 1);
INSERT INTO `sys_login_log` VALUES (225, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.034728', '2025-05-17 04:16:24.034728', 1);
INSERT INTO `sys_login_log` VALUES (226, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.218888', '2025-05-17 04:16:24.218888', 1);
INSERT INTO `sys_login_log` VALUES (227, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.401162', '2025-05-17 04:16:24.401162', 1);
INSERT INTO `sys_login_log` VALUES (228, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.500541', '2025-05-17 04:16:24.500541', 1);
INSERT INTO `sys_login_log` VALUES (229, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.647871', '2025-05-17 04:16:24.647871', 1);
INSERT INTO `sys_login_log` VALUES (230, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.793325', '2025-05-17 04:16:24.793325', 1);
INSERT INTO `sys_login_log` VALUES (231, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.909904', '2025-05-17 04:16:24.909904', 1);
INSERT INTO `sys_login_log` VALUES (232, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.912863', '2025-05-17 04:16:24.912863', 1);
INSERT INTO `sys_login_log` VALUES (233, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.956536', '2025-05-17 04:16:24.956536', 1);
INSERT INTO `sys_login_log` VALUES (234, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:24.975620', '2025-05-17 04:16:24.975620', 1);
INSERT INTO `sys_login_log` VALUES (235, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.162785', '2025-05-17 04:16:25.162785', 1);
INSERT INTO `sys_login_log` VALUES (236, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.255425', '2025-05-17 04:16:25.255425', 1);
INSERT INTO `sys_login_log` VALUES (237, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.279092', '2025-05-17 04:16:25.279092', 1);
INSERT INTO `sys_login_log` VALUES (238, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.296134', '2025-05-17 04:16:25.296134', 1);
INSERT INTO `sys_login_log` VALUES (239, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.329085', '2025-05-17 04:16:25.329085', 1);
INSERT INTO `sys_login_log` VALUES (240, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.438392', '2025-05-17 04:16:25.438392', 1);
INSERT INTO `sys_login_log` VALUES (241, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.478849', '2025-05-17 04:16:25.478849', 1);
INSERT INTO `sys_login_log` VALUES (242, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.664429', '2025-05-17 04:16:25.664429', 1);
INSERT INTO `sys_login_log` VALUES (243, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.883979', '2025-05-17 04:16:25.883979', 1);
INSERT INTO `sys_login_log` VALUES (244, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.942442', '2025-05-17 04:16:25.942442', 1);
INSERT INTO `sys_login_log` VALUES (245, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:25.988280', '2025-05-17 04:16:25.988280', 1);
INSERT INTO `sys_login_log` VALUES (246, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.022686', '2025-05-17 04:16:26.022686', 1);
INSERT INTO `sys_login_log` VALUES (247, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.025072', '2025-05-17 04:16:26.025072', 1);
INSERT INTO `sys_login_log` VALUES (248, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.156756', '2025-05-17 04:16:26.156756', 1);
INSERT INTO `sys_login_log` VALUES (249, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.356906', '2025-05-17 04:16:26.356906', 1);
INSERT INTO `sys_login_log` VALUES (250, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.425596', '2025-05-17 04:16:26.425596', 1);
INSERT INTO `sys_login_log` VALUES (251, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.473076', '2025-05-17 04:16:26.473076', 1);
INSERT INTO `sys_login_log` VALUES (252, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.654070', '2025-05-17 04:16:26.654070', 1);
INSERT INTO `sys_login_log` VALUES (253, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.654706', '2025-05-17 04:16:26.654706', 1);
INSERT INTO `sys_login_log` VALUES (254, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.724971', '2025-05-17 04:16:26.724971', 1);
INSERT INTO `sys_login_log` VALUES (255, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.730895', '2025-05-17 04:16:26.730895', 1);
INSERT INTO `sys_login_log` VALUES (256, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.735348', '2025-05-17 04:16:26.735348', 1);
INSERT INTO `sys_login_log` VALUES (257, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.879473', '2025-05-17 04:16:26.879473', 1);
INSERT INTO `sys_login_log` VALUES (258, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.906320', '2025-05-17 04:16:26.906320', 1);
INSERT INTO `sys_login_log` VALUES (259, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.910361', '2025-05-17 04:16:26.910361', 1);
INSERT INTO `sys_login_log` VALUES (260, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:26.961837', '2025-05-17 04:16:26.961837', 1);
INSERT INTO `sys_login_log` VALUES (261, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:27.194153', '2025-05-17 04:16:27.194153', 1);
INSERT INTO `sys_login_log` VALUES (262, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:27.380006', '2025-05-17 04:16:27.380006', 1);
INSERT INTO `sys_login_log` VALUES (263, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:27.453282', '2025-05-17 04:16:27.453282', 1);
INSERT INTO `sys_login_log` VALUES (264, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:27.537341', '2025-05-17 04:16:27.537341', 1);
INSERT INTO `sys_login_log` VALUES (265, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:27.704744', '2025-05-17 04:16:27.704744', 1);
INSERT INTO `sys_login_log` VALUES (266, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:27.861311', '2025-05-17 04:16:27.861311', 1);
INSERT INTO `sys_login_log` VALUES (267, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:27.983711', '2025-05-17 04:16:27.983711', 1);
INSERT INTO `sys_login_log` VALUES (268, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.004208', '2025-05-17 04:16:28.004208', 1);
INSERT INTO `sys_login_log` VALUES (269, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.039720', '2025-05-17 04:16:28.039720', 1);
INSERT INTO `sys_login_log` VALUES (270, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.128972', '2025-05-17 04:16:28.128972', 1);
INSERT INTO `sys_login_log` VALUES (271, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.160733', '2025-05-17 04:16:28.160733', 1);
INSERT INTO `sys_login_log` VALUES (272, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.193758', '2025-05-17 04:16:28.193758', 1);
INSERT INTO `sys_login_log` VALUES (273, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.223652', '2025-05-17 04:16:28.223652', 1);
INSERT INTO `sys_login_log` VALUES (274, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.283508', '2025-05-17 04:16:28.283508', 1);
INSERT INTO `sys_login_log` VALUES (275, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.470831', '2025-05-17 04:16:28.470831', 1);
INSERT INTO `sys_login_log` VALUES (276, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.530252', '2025-05-17 04:16:28.530252', 1);
INSERT INTO `sys_login_log` VALUES (277, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.676668', '2025-05-17 04:16:28.676668', 1);
INSERT INTO `sys_login_log` VALUES (278, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.733860', '2025-05-17 04:16:28.733860', 1);
INSERT INTO `sys_login_log` VALUES (279, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.787289', '2025-05-17 04:16:28.787289', 1);
INSERT INTO `sys_login_log` VALUES (280, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.950125', '2025-05-17 04:16:28.950125', 1);
INSERT INTO `sys_login_log` VALUES (281, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.965444', '2025-05-17 04:16:28.965444', 1);
INSERT INTO `sys_login_log` VALUES (282, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:28.997555', '2025-05-17 04:16:28.997555', 1);
INSERT INTO `sys_login_log` VALUES (283, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.012833', '2025-05-17 04:16:29.012833', 1);
INSERT INTO `sys_login_log` VALUES (284, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.286789', '2025-05-17 04:16:29.286789', 1);
INSERT INTO `sys_login_log` VALUES (285, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.498906', '2025-05-17 04:16:29.498906', 1);
INSERT INTO `sys_login_log` VALUES (286, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.550877', '2025-05-17 04:16:29.550877', 1);
INSERT INTO `sys_login_log` VALUES (287, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.595022', '2025-05-17 04:16:29.595022', 1);
INSERT INTO `sys_login_log` VALUES (288, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.614672', '2025-05-17 04:16:29.614672', 1);
INSERT INTO `sys_login_log` VALUES (289, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.721476', '2025-05-17 04:16:29.721476', 1);
INSERT INTO `sys_login_log` VALUES (290, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.761703', '2025-05-17 04:16:29.761703', 1);
INSERT INTO `sys_login_log` VALUES (291, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.787146', '2025-05-17 04:16:29.787146', 1);
INSERT INTO `sys_login_log` VALUES (292, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:29.962687', '2025-05-17 04:16:29.962687', 1);
INSERT INTO `sys_login_log` VALUES (293, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.006609', '2025-05-17 04:16:30.006609', 1);
INSERT INTO `sys_login_log` VALUES (294, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.105356', '2025-05-17 04:16:30.105356', 1);
INSERT INTO `sys_login_log` VALUES (295, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.210845', '2025-05-17 04:16:30.210845', 1);
INSERT INTO `sys_login_log` VALUES (296, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.239877', '2025-05-17 04:16:30.239877', 1);
INSERT INTO `sys_login_log` VALUES (297, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.255198', '2025-05-17 04:16:30.255198', 1);
INSERT INTO `sys_login_log` VALUES (298, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.336287', '2025-05-17 04:16:30.336287', 1);
INSERT INTO `sys_login_log` VALUES (299, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.392967', '2025-05-17 04:16:30.392967', 1);
INSERT INTO `sys_login_log` VALUES (300, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.485190', '2025-05-17 04:16:30.485190', 1);
INSERT INTO `sys_login_log` VALUES (301, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.513583', '2025-05-17 04:16:30.513583', 1);
INSERT INTO `sys_login_log` VALUES (302, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.558663', '2025-05-17 04:16:30.558663', 1);
INSERT INTO `sys_login_log` VALUES (303, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.842518', '2025-05-17 04:16:30.842518', 1);
INSERT INTO `sys_login_log` VALUES (304, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:30.921804', '2025-05-17 04:16:30.921804', 1);
INSERT INTO `sys_login_log` VALUES (305, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.184812', '2025-05-17 04:16:31.184812', 1);
INSERT INTO `sys_login_log` VALUES (306, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.249578', '2025-05-17 04:16:31.249578', 1);
INSERT INTO `sys_login_log` VALUES (307, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.286162', '2025-05-17 04:16:31.286162', 1);
INSERT INTO `sys_login_log` VALUES (308, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.345485', '2025-05-17 04:16:31.345485', 1);
INSERT INTO `sys_login_log` VALUES (309, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.367223', '2025-05-17 04:16:31.367223', 1);
INSERT INTO `sys_login_log` VALUES (310, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.394281', '2025-05-17 04:16:31.394281', 1);
INSERT INTO `sys_login_log` VALUES (311, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.444969', '2025-05-17 04:16:31.444969', 1);
INSERT INTO `sys_login_log` VALUES (312, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.601937', '2025-05-17 04:16:31.601937', 1);
INSERT INTO `sys_login_log` VALUES (313, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.623864', '2025-05-17 04:16:31.623864', 1);
INSERT INTO `sys_login_log` VALUES (314, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.685458', '2025-05-17 04:16:31.685458', 1);
INSERT INTO `sys_login_log` VALUES (315, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.706454', '2025-05-17 04:16:31.706454', 1);
INSERT INTO `sys_login_log` VALUES (316, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.907153', '2025-05-17 04:16:31.907153', 1);
INSERT INTO `sys_login_log` VALUES (317, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:31.911293', '2025-05-17 04:16:31.911293', 1);
INSERT INTO `sys_login_log` VALUES (318, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.240892', '2025-05-17 04:16:32.240892', 1);
INSERT INTO `sys_login_log` VALUES (319, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.248536', '2025-05-17 04:16:32.248536', 1);
INSERT INTO `sys_login_log` VALUES (320, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.280703', '2025-05-17 04:16:32.280703', 1);
INSERT INTO `sys_login_log` VALUES (321, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.293284', '2025-05-17 04:16:32.293284', 1);
INSERT INTO `sys_login_log` VALUES (322, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.342363', '2025-05-17 04:16:32.342363', 1);
INSERT INTO `sys_login_log` VALUES (323, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.612085', '2025-05-17 04:16:32.612085', 1);
INSERT INTO `sys_login_log` VALUES (324, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.629430', '2025-05-17 04:16:32.629430', 1);
INSERT INTO `sys_login_log` VALUES (325, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.663703', '2025-05-17 04:16:32.663703', 1);
INSERT INTO `sys_login_log` VALUES (326, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.663900', '2025-05-17 04:16:32.663900', 1);
INSERT INTO `sys_login_log` VALUES (327, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:32.957797', '2025-05-17 04:16:32.957797', 1);
INSERT INTO `sys_login_log` VALUES (328, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.008874', '2025-05-17 04:16:33.008874', 1);
INSERT INTO `sys_login_log` VALUES (329, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.090795', '2025-05-17 04:16:33.090795', 1);
INSERT INTO `sys_login_log` VALUES (330, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.126013', '2025-05-17 04:16:33.126013', 1);
INSERT INTO `sys_login_log` VALUES (331, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.128842', '2025-05-17 04:16:33.128842', 1);
INSERT INTO `sys_login_log` VALUES (332, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.272699', '2025-05-17 04:16:33.272699', 1);
INSERT INTO `sys_login_log` VALUES (333, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.291144', '2025-05-17 04:16:33.291144', 1);
INSERT INTO `sys_login_log` VALUES (334, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.364525', '2025-05-17 04:16:33.364525', 1);
INSERT INTO `sys_login_log` VALUES (335, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.371545', '2025-05-17 04:16:33.371545', 1);
INSERT INTO `sys_login_log` VALUES (336, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.539236', '2025-05-17 04:16:33.539236', 1);
INSERT INTO `sys_login_log` VALUES (337, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.800350', '2025-05-17 04:16:33.800350', 1);
INSERT INTO `sys_login_log` VALUES (338, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:33.815831', '2025-05-17 04:16:33.815831', 1);
INSERT INTO `sys_login_log` VALUES (339, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.041969', '2025-05-17 04:16:34.041969', 1);
INSERT INTO `sys_login_log` VALUES (340, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.059910', '2025-05-17 04:16:34.059910', 1);
INSERT INTO `sys_login_log` VALUES (341, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.116863', '2025-05-17 04:16:34.116863', 1);
INSERT INTO `sys_login_log` VALUES (342, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.280489', '2025-05-17 04:16:34.280489', 1);
INSERT INTO `sys_login_log` VALUES (343, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.287344', '2025-05-17 04:16:34.287344', 1);
INSERT INTO `sys_login_log` VALUES (344, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.294037', '2025-05-17 04:16:34.294037', 1);
INSERT INTO `sys_login_log` VALUES (345, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.295646', '2025-05-17 04:16:34.295646', 1);
INSERT INTO `sys_login_log` VALUES (346, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.519543', '2025-05-17 04:16:34.519543', 1);
INSERT INTO `sys_login_log` VALUES (347, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:34.539279', '2025-05-17 04:16:34.539279', 1);
INSERT INTO `sys_login_log` VALUES (348, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.330383', '2025-05-17 04:16:35.330383', 1);
INSERT INTO `sys_login_log` VALUES (349, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.436247', '2025-05-17 04:16:35.436247', 1);
INSERT INTO `sys_login_log` VALUES (350, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.438238', '2025-05-17 04:16:35.438238', 1);
INSERT INTO `sys_login_log` VALUES (351, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.439554', '2025-05-17 04:16:35.439554', 1);
INSERT INTO `sys_login_log` VALUES (352, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.446831', '2025-05-17 04:16:35.446831', 1);
INSERT INTO `sys_login_log` VALUES (353, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.448321', '2025-05-17 04:16:35.448321', 1);
INSERT INTO `sys_login_log` VALUES (354, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.458649', '2025-05-17 04:16:35.458649', 1);
INSERT INTO `sys_login_log` VALUES (355, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.462744', '2025-05-17 04:16:35.462744', 1);
INSERT INTO `sys_login_log` VALUES (356, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.463404', '2025-05-17 04:16:35.463404', 1);
INSERT INTO `sys_login_log` VALUES (357, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.524753', '2025-05-17 04:16:35.524753', 1);
INSERT INTO `sys_login_log` VALUES (358, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.638172', '2025-05-17 04:16:35.638172', 1);
INSERT INTO `sys_login_log` VALUES (359, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.717065', '2025-05-17 04:16:35.717065', 1);
INSERT INTO `sys_login_log` VALUES (360, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.745536', '2025-05-17 04:16:35.745536', 1);
INSERT INTO `sys_login_log` VALUES (361, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.905020', '2025-05-17 04:16:35.905020', 1);
INSERT INTO `sys_login_log` VALUES (362, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:35.911665', '2025-05-17 04:16:35.911665', 1);
INSERT INTO `sys_login_log` VALUES (363, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.061969', '2025-05-17 04:16:36.061969', 1);
INSERT INTO `sys_login_log` VALUES (364, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.113527', '2025-05-17 04:16:36.113527', 1);
INSERT INTO `sys_login_log` VALUES (365, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.264662', '2025-05-17 04:16:36.264662', 1);
INSERT INTO `sys_login_log` VALUES (366, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.372463', '2025-05-17 04:16:36.372463', 1);
INSERT INTO `sys_login_log` VALUES (367, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.556792', '2025-05-17 04:16:36.556792', 1);
INSERT INTO `sys_login_log` VALUES (368, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.582414', '2025-05-17 04:16:36.582414', 1);
INSERT INTO `sys_login_log` VALUES (369, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.910867', '2025-05-17 04:16:36.910867', 1);
INSERT INTO `sys_login_log` VALUES (370, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:36.956287', '2025-05-17 04:16:36.956287', 1);
INSERT INTO `sys_login_log` VALUES (371, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.005465', '2025-05-17 04:16:37.005465', 1);
INSERT INTO `sys_login_log` VALUES (372, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.059315', '2025-05-17 04:16:37.059315', 1);
INSERT INTO `sys_login_log` VALUES (373, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.107141', '2025-05-17 04:16:37.107141', 1);
INSERT INTO `sys_login_log` VALUES (374, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.129001', '2025-05-17 04:16:37.129001', 1);
INSERT INTO `sys_login_log` VALUES (375, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.143319', '2025-05-17 04:16:37.143319', 1);
INSERT INTO `sys_login_log` VALUES (376, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.241830', '2025-05-17 04:16:37.241830', 1);
INSERT INTO `sys_login_log` VALUES (377, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.288662', '2025-05-17 04:16:37.288662', 1);
INSERT INTO `sys_login_log` VALUES (378, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.369941', '2025-05-17 04:16:37.369941', 1);
INSERT INTO `sys_login_log` VALUES (379, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.461505', '2025-05-17 04:16:37.461505', 1);
INSERT INTO `sys_login_log` VALUES (380, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.790374', '2025-05-17 04:16:37.790374', 1);
INSERT INTO `sys_login_log` VALUES (381, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.809445', '2025-05-17 04:16:37.809445', 1);
INSERT INTO `sys_login_log` VALUES (382, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.814668', '2025-05-17 04:16:37.814668', 1);
INSERT INTO `sys_login_log` VALUES (383, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.820163', '2025-05-17 04:16:37.820163', 1);
INSERT INTO `sys_login_log` VALUES (384, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:37.820405', '2025-05-17 04:16:37.820405', 1);
INSERT INTO `sys_login_log` VALUES (385, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.086311', '2025-05-17 04:16:38.086311', 1);
INSERT INTO `sys_login_log` VALUES (386, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.220428', '2025-05-17 04:16:38.220428', 1);
INSERT INTO `sys_login_log` VALUES (387, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.257116', '2025-05-17 04:16:38.257116', 1);
INSERT INTO `sys_login_log` VALUES (388, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.345830', '2025-05-17 04:16:38.345830', 1);
INSERT INTO `sys_login_log` VALUES (389, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.422002', '2025-05-17 04:16:38.422002', 1);
INSERT INTO `sys_login_log` VALUES (390, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.560034', '2025-05-17 04:16:38.560034', 1);
INSERT INTO `sys_login_log` VALUES (391, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.575866', '2025-05-17 04:16:38.575866', 1);
INSERT INTO `sys_login_log` VALUES (392, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.586890', '2025-05-17 04:16:38.586890', 1);
INSERT INTO `sys_login_log` VALUES (393, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.755886', '2025-05-17 04:16:38.755886', 1);
INSERT INTO `sys_login_log` VALUES (394, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.768683', '2025-05-17 04:16:38.768683', 1);
INSERT INTO `sys_login_log` VALUES (395, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.770942', '2025-05-17 04:16:38.770942', 1);
INSERT INTO `sys_login_log` VALUES (396, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.814988', '2025-05-17 04:16:38.814988', 1);
INSERT INTO `sys_login_log` VALUES (397, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:38.821602', '2025-05-17 04:16:38.821602', 1);
INSERT INTO `sys_login_log` VALUES (398, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.025047', '2025-05-17 04:16:39.025047', 1);
INSERT INTO `sys_login_log` VALUES (399, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.203613', '2025-05-17 04:16:39.203613', 1);
INSERT INTO `sys_login_log` VALUES (400, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.241663', '2025-05-17 04:16:39.241663', 1);
INSERT INTO `sys_login_log` VALUES (401, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.430999', '2025-05-17 04:16:39.430999', 1);
INSERT INTO `sys_login_log` VALUES (402, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.511793', '2025-05-17 04:16:39.511793', 1);
INSERT INTO `sys_login_log` VALUES (403, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.514501', '2025-05-17 04:16:39.514501', 1);
INSERT INTO `sys_login_log` VALUES (404, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.708570', '2025-05-17 04:16:39.708570', 1);
INSERT INTO `sys_login_log` VALUES (405, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.711132', '2025-05-17 04:16:39.711132', 1);
INSERT INTO `sys_login_log` VALUES (406, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.725224', '2025-05-17 04:16:39.725224', 1);
INSERT INTO `sys_login_log` VALUES (407, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:39.814530', '2025-05-17 04:16:39.814530', 1);
INSERT INTO `sys_login_log` VALUES (408, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.087318', '2025-05-17 04:16:40.087318', 1);
INSERT INTO `sys_login_log` VALUES (409, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.087568', '2025-05-17 04:16:40.087568', 1);
INSERT INTO `sys_login_log` VALUES (410, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.215378', '2025-05-17 04:16:40.215378', 1);
INSERT INTO `sys_login_log` VALUES (411, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.508401', '2025-05-17 04:16:40.508401', 1);
INSERT INTO `sys_login_log` VALUES (412, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.511162', '2025-05-17 04:16:40.511162', 1);
INSERT INTO `sys_login_log` VALUES (413, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.512119', '2025-05-17 04:16:40.512119', 1);
INSERT INTO `sys_login_log` VALUES (414, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.542957', '2025-05-17 04:16:40.542957', 1);
INSERT INTO `sys_login_log` VALUES (415, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.843111', '2025-05-17 04:16:40.843111', 1);
INSERT INTO `sys_login_log` VALUES (416, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.844930', '2025-05-17 04:16:40.844930', 1);
INSERT INTO `sys_login_log` VALUES (417, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.853833', '2025-05-17 04:16:40.853833', 1);
INSERT INTO `sys_login_log` VALUES (418, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:40.866477', '2025-05-17 04:16:40.866477', 1);
INSERT INTO `sys_login_log` VALUES (419, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.073406', '2025-05-17 04:16:41.073406', 1);
INSERT INTO `sys_login_log` VALUES (420, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.179143', '2025-05-17 04:16:41.179143', 1);
INSERT INTO `sys_login_log` VALUES (421, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.218751', '2025-05-17 04:16:41.218751', 1);
INSERT INTO `sys_login_log` VALUES (422, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.220963', '2025-05-17 04:16:41.220963', 1);
INSERT INTO `sys_login_log` VALUES (423, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.240038', '2025-05-17 04:16:41.240038', 1);
INSERT INTO `sys_login_log` VALUES (424, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.453795', '2025-05-17 04:16:41.453795', 1);
INSERT INTO `sys_login_log` VALUES (425, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.663358', '2025-05-17 04:16:41.663358', 1);
INSERT INTO `sys_login_log` VALUES (426, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.685976', '2025-05-17 04:16:41.685976', 1);
INSERT INTO `sys_login_log` VALUES (427, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.838596', '2025-05-17 04:16:41.838596', 1);
INSERT INTO `sys_login_log` VALUES (428, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.852741', '2025-05-17 04:16:41.852741', 1);
INSERT INTO `sys_login_log` VALUES (429, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:41.885880', '2025-05-17 04:16:41.885880', 1);
INSERT INTO `sys_login_log` VALUES (430, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.059783', '2025-05-17 04:16:42.059783', 1);
INSERT INTO `sys_login_log` VALUES (431, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.104237', '2025-05-17 04:16:42.104237', 1);
INSERT INTO `sys_login_log` VALUES (432, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.182054', '2025-05-17 04:16:42.182054', 1);
INSERT INTO `sys_login_log` VALUES (433, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.230681', '2025-05-17 04:16:42.230681', 1);
INSERT INTO `sys_login_log` VALUES (434, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.378064', '2025-05-17 04:16:42.378064', 1);
INSERT INTO `sys_login_log` VALUES (435, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.446531', '2025-05-17 04:16:42.446531', 1);
INSERT INTO `sys_login_log` VALUES (436, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.603113', '2025-05-17 04:16:42.603113', 1);
INSERT INTO `sys_login_log` VALUES (437, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.882968', '2025-05-17 04:16:42.882968', 1);
INSERT INTO `sys_login_log` VALUES (438, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.922460', '2025-05-17 04:16:42.922460', 1);
INSERT INTO `sys_login_log` VALUES (439, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:42.933902', '2025-05-17 04:16:42.933902', 1);
INSERT INTO `sys_login_log` VALUES (440, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.094477', '2025-05-17 04:16:43.094477', 1);
INSERT INTO `sys_login_log` VALUES (441, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.101464', '2025-05-17 04:16:43.101464', 1);
INSERT INTO `sys_login_log` VALUES (442, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.104463', '2025-05-17 04:16:43.104463', 1);
INSERT INTO `sys_login_log` VALUES (443, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.108310', '2025-05-17 04:16:43.108310', 1);
INSERT INTO `sys_login_log` VALUES (444, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.166363', '2025-05-17 04:16:43.166363', 1);
INSERT INTO `sys_login_log` VALUES (445, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.211345', '2025-05-17 04:16:43.211345', 1);
INSERT INTO `sys_login_log` VALUES (446, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.242398', '2025-05-17 04:16:43.242398', 1);
INSERT INTO `sys_login_log` VALUES (447, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.242572', '2025-05-17 04:16:43.242572', 1);
INSERT INTO `sys_login_log` VALUES (448, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.272826', '2025-05-17 04:16:43.272826', 1);
INSERT INTO `sys_login_log` VALUES (449, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.280209', '2025-05-17 04:16:43.280209', 1);
INSERT INTO `sys_login_log` VALUES (450, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.280599', '2025-05-17 04:16:43.280599', 1);
INSERT INTO `sys_login_log` VALUES (451, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.522444', '2025-05-17 04:16:43.522444', 1);
INSERT INTO `sys_login_log` VALUES (452, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.713843', '2025-05-17 04:16:43.713843', 1);
INSERT INTO `sys_login_log` VALUES (453, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.739242', '2025-05-17 04:16:43.739242', 1);
INSERT INTO `sys_login_log` VALUES (454, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.810966', '2025-05-17 04:16:43.810966', 1);
INSERT INTO `sys_login_log` VALUES (455, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:43.970335', '2025-05-17 04:16:43.970335', 1);
INSERT INTO `sys_login_log` VALUES (456, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.094948', '2025-05-17 04:16:44.094948', 1);
INSERT INTO `sys_login_log` VALUES (457, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.282935', '2025-05-17 04:16:44.282935', 1);
INSERT INTO `sys_login_log` VALUES (458, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.493149', '2025-05-17 04:16:44.493149', 1);
INSERT INTO `sys_login_log` VALUES (459, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.566486', '2025-05-17 04:16:44.566486', 1);
INSERT INTO `sys_login_log` VALUES (460, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.576341', '2025-05-17 04:16:44.576341', 1);
INSERT INTO `sys_login_log` VALUES (461, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.579913', '2025-05-17 04:16:44.579913', 1);
INSERT INTO `sys_login_log` VALUES (462, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.614303', '2025-05-17 04:16:44.614303', 1);
INSERT INTO `sys_login_log` VALUES (463, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.640762', '2025-05-17 04:16:44.640762', 1);
INSERT INTO `sys_login_log` VALUES (464, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.810250', '2025-05-17 04:16:44.810250', 1);
INSERT INTO `sys_login_log` VALUES (465, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.815538', '2025-05-17 04:16:44.815538', 1);
INSERT INTO `sys_login_log` VALUES (466, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.904220', '2025-05-17 04:16:44.904220', 1);
INSERT INTO `sys_login_log` VALUES (467, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:44.998958', '2025-05-17 04:16:44.998958', 1);
INSERT INTO `sys_login_log` VALUES (468, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.072366', '2025-05-17 04:16:45.072366', 1);
INSERT INTO `sys_login_log` VALUES (469, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.087659', '2025-05-17 04:16:45.087659', 1);
INSERT INTO `sys_login_log` VALUES (470, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.149629', '2025-05-17 04:16:45.149629', 1);
INSERT INTO `sys_login_log` VALUES (471, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.205075', '2025-05-17 04:16:45.205075', 1);
INSERT INTO `sys_login_log` VALUES (472, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.329900', '2025-05-17 04:16:45.329900', 1);
INSERT INTO `sys_login_log` VALUES (473, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.373478', '2025-05-17 04:16:45.373478', 1);
INSERT INTO `sys_login_log` VALUES (474, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.542061', '2025-05-17 04:16:45.542061', 1);
INSERT INTO `sys_login_log` VALUES (475, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.799920', '2025-05-17 04:16:45.799920', 1);
INSERT INTO `sys_login_log` VALUES (476, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.800450', '2025-05-17 04:16:45.800450', 1);
INSERT INTO `sys_login_log` VALUES (477, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:45.842076', '2025-05-17 04:16:45.842076', 1);
INSERT INTO `sys_login_log` VALUES (478, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.024650', '2025-05-17 04:16:46.024650', 1);
INSERT INTO `sys_login_log` VALUES (479, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.082913', '2025-05-17 04:16:46.082913', 1);
INSERT INTO `sys_login_log` VALUES (480, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.149881', '2025-05-17 04:16:46.149881', 1);
INSERT INTO `sys_login_log` VALUES (481, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.183953', '2025-05-17 04:16:46.183953', 1);
INSERT INTO `sys_login_log` VALUES (482, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.347039', '2025-05-17 04:16:46.347039', 1);
INSERT INTO `sys_login_log` VALUES (483, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.579934', '2025-05-17 04:16:46.579934', 1);
INSERT INTO `sys_login_log` VALUES (484, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.645111', '2025-05-17 04:16:46.645111', 1);
INSERT INTO `sys_login_log` VALUES (485, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.739409', '2025-05-17 04:16:46.739409', 1);
INSERT INTO `sys_login_log` VALUES (486, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.755316', '2025-05-17 04:16:46.755316', 1);
INSERT INTO `sys_login_log` VALUES (487, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.816601', '2025-05-17 04:16:46.816601', 1);
INSERT INTO `sys_login_log` VALUES (488, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.883836', '2025-05-17 04:16:46.883836', 1);
INSERT INTO `sys_login_log` VALUES (489, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.893333', '2025-05-17 04:16:46.893333', 1);
INSERT INTO `sys_login_log` VALUES (490, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.920315', '2025-05-17 04:16:46.920315', 1);
INSERT INTO `sys_login_log` VALUES (491, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.963335', '2025-05-17 04:16:46.963335', 1);
INSERT INTO `sys_login_log` VALUES (492, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:46.970995', '2025-05-17 04:16:46.970995', 1);
INSERT INTO `sys_login_log` VALUES (493, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.065723', '2025-05-17 04:16:47.065723', 1);
INSERT INTO `sys_login_log` VALUES (494, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.212795', '2025-05-17 04:16:47.212795', 1);
INSERT INTO `sys_login_log` VALUES (495, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.398323', '2025-05-17 04:16:47.398323', 1);
INSERT INTO `sys_login_log` VALUES (496, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.427097', '2025-05-17 04:16:47.427097', 1);
INSERT INTO `sys_login_log` VALUES (497, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.440205', '2025-05-17 04:16:47.440205', 1);
INSERT INTO `sys_login_log` VALUES (498, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.481620', '2025-05-17 04:16:47.481620', 1);
INSERT INTO `sys_login_log` VALUES (499, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.532030', '2025-05-17 04:16:47.532030', 1);
INSERT INTO `sys_login_log` VALUES (500, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.610322', '2025-05-17 04:16:47.610322', 1);
INSERT INTO `sys_login_log` VALUES (501, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.626652', '2025-05-17 04:16:47.626652', 1);
INSERT INTO `sys_login_log` VALUES (502, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:47.872990', '2025-05-17 04:16:47.872990', 1);
INSERT INTO `sys_login_log` VALUES (503, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.056978', '2025-05-17 04:16:48.056978', 1);
INSERT INTO `sys_login_log` VALUES (504, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.058443', '2025-05-17 04:16:48.058443', 1);
INSERT INTO `sys_login_log` VALUES (505, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.192539', '2025-05-17 04:16:48.192539', 1);
INSERT INTO `sys_login_log` VALUES (506, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.194029', '2025-05-17 04:16:48.194029', 1);
INSERT INTO `sys_login_log` VALUES (507, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.198623', '2025-05-17 04:16:48.198623', 1);
INSERT INTO `sys_login_log` VALUES (508, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.263899', '2025-05-17 04:16:48.263899', 1);
INSERT INTO `sys_login_log` VALUES (509, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.335681', '2025-05-17 04:16:48.335681', 1);
INSERT INTO `sys_login_log` VALUES (510, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.352538', '2025-05-17 04:16:48.352538', 1);
INSERT INTO `sys_login_log` VALUES (511, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.486809', '2025-05-17 04:16:48.486809', 1);
INSERT INTO `sys_login_log` VALUES (512, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.492576', '2025-05-17 04:16:48.492576', 1);
INSERT INTO `sys_login_log` VALUES (513, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.598898', '2025-05-17 04:16:48.598898', 1);
INSERT INTO `sys_login_log` VALUES (514, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.887020', '2025-05-17 04:16:48.887020', 1);
INSERT INTO `sys_login_log` VALUES (515, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:48.890138', '2025-05-17 04:16:48.890138', 1);
INSERT INTO `sys_login_log` VALUES (516, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:49.124242', '2025-05-17 04:16:49.124242', 1);
INSERT INTO `sys_login_log` VALUES (517, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:49.266011', '2025-05-17 04:16:49.266011', 1);
INSERT INTO `sys_login_log` VALUES (518, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:49.285198', '2025-05-17 04:16:49.285198', 1);
INSERT INTO `sys_login_log` VALUES (519, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:49.301615', '2025-05-17 04:16:49.301615', 1);
INSERT INTO `sys_login_log` VALUES (520, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:49.341119', '2025-05-17 04:16:49.341119', 1);
INSERT INTO `sys_login_log` VALUES (521, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:49.388801', '2025-05-17 04:16:49.388801', 1);
INSERT INTO `sys_login_log` VALUES (522, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 04:16:49.478281', '2025-05-17 04:16:49.478281', 1);
INSERT INTO `sys_login_log` VALUES (523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '内网IP', NULL, '2025-05-17 10:54:31.022227', '2025-05-17 10:54:31.022227', 1);
INSERT INTO `sys_login_log` VALUES (524, '127.0.0.1', '', '内网IP', NULL, '2025-05-17 10:55:16.402768', '2025-05-17 10:55:16.402768', 1);
INSERT INTO `sys_login_log` VALUES (525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '内网IP', NULL, '2025-05-17 10:55:52.412061', '2025-05-17 10:55:52.412061', 1);
INSERT INTO `sys_login_log` VALUES (526, '127.0.0.1', '', '内网IP', NULL, '2025-05-20 10:46:07.691200', '2025-05-20 10:46:07.691200', 1);
INSERT INTO `sys_login_log` VALUES (527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '内网IP', NULL, '2025-05-20 10:46:52.843210', '2025-05-20 10:46:52.843210', 1);
INSERT INTO `sys_login_log` VALUES (528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '内网IP', NULL, '2025-05-20 10:47:44.808168', '2025-05-20 10:47:44.808168', 1);
INSERT INTO `sys_login_log` VALUES (529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '内网IP', NULL, '2025-05-20 10:48:04.729811', '2025-05-20 10:48:04.729811', 1);
INSERT INTO `sys_login_log` VALUES (530, '127.0.0.1', '', '内网IP', NULL, '2025-05-20 10:48:24.362981', '2025-05-20 10:48:24.362981', 1);
INSERT INTO `sys_login_log` VALUES (531, '127.0.0.1', '', '内网IP', NULL, '2025-05-20 10:51:47.613475', '2025-05-20 10:51:47.613475', 1);
INSERT INTO `sys_login_log` VALUES (532, '127.0.0.1', '', '内网IP', NULL, '2025-05-20 10:53:04.107853', '2025-05-20 10:53:04.107853', 1);
INSERT INTO `sys_login_log` VALUES (533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '内网IP', NULL, '2025-05-20 10:53:19.925605', '2025-05-20 10:53:19.925605', 1);
INSERT INTO `sys_login_log` VALUES (534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', '内网IP', NULL, '2025-05-20 11:58:10.215860', '2025-05-20 11:58:10.215860', 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT 0,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `order_no` int NULL DEFAULT 0,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keep_alive` tinyint NOT NULL DEFAULT 1,
  `show` tinyint NOT NULL DEFAULT 1,
  `status` tinyint NOT NULL DEFAULT 1,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_ext` tinyint NOT NULL DEFAULT 0,
  `ext_open_mode` tinyint NOT NULL DEFAULT 1,
  `active_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_by` int NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int NULL DEFAULT NULL COMMENT '更新者',
  `permission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识（如：water:device:read）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_d083c28d2cf2adf43dbc929289`(`permission` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, NULL, '/system', '系统管理', 0, 'ant-design:setting-outlined', 254, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (2, 1, '/cms/system/user', '用户管理', 1, 'ant-design:user-outlined', 0, 'system/user/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2025-05-15 20:31:54.000000', 0, 1, NULL, NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (3, 1, '/cms/system/role', '角色管理', 1, 'ep:user', 1, 'system/role/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2025-05-15 20:32:04.000000', 0, 1, NULL, NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (4, 1, '/cms/system/menu', '菜单管理', 1, 'ep:menu', 2, 'system/menu/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2025-05-15 20:32:15.000000', 0, 1, NULL, NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (5, 1, '/system/monitor', '系统监控', 0, 'ep:monitor', 5, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (6, 5, '/system/monitor/online', '在线用户', 1, '', 0, 'system/monitor/online/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (7, 5, '/sys/monitor/login-log', '登录日志', 1, '', 0, 'system/monitor/log/login/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (8, 5, '/system/monitor/serve', '服务监控', 1, '', 4, 'system/monitor/serve/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (9, 1, '/system/schedule', '任务调度', 0, 'ant-design:schedule-filled', 6, '', 0, 0, 1, '2023-11-10 00:31:44.023393', '2025-05-15 20:58:41.000000', 0, 1, NULL, NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (10, 9, '/system/task', '任务管理', 1, '', 0, 'system/schedule/task/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (11, 9, '/system/task/log', '任务日志', 1, '', 0, 'system/schedule/log/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (20, 2, NULL, '新增', 2, '', 0, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (21, 2, '', '删除', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (22, 2, '', '更新', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (23, 2, '', '查询', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (24, 3, '', '新增', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (25, 3, '', '删除', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (26, 3, '', '修改', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (27, 3, '', '查询', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (28, 4, NULL, '新增', 2, NULL, 0, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (29, 4, NULL, '删除', 2, NULL, 0, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (30, 4, '', '修改', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (31, 4, NULL, '查询', 2, NULL, 0, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (32, 6, '', '下线', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (34, 10, '', '新增', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (35, 10, '', '删除', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (36, 10, '', '执行一次', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (37, 10, '', '查询', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (38, 10, '', '运行', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (39, 10, '', '暂停', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (40, 10, '', '更新', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (41, 7, '', '查询登录日志', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (42, 7, '', '查询任务日志', 2, '', 0, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (48, NULL, '/tool', '系统工具', 0, 'ant-design:tool-outlined', 254, '', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (51, 48, '/tool/storage', '存储管理', 1, 'ant-design:appstore-outlined', 2, 'tool/storage/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (52, 51, NULL, '文件上传', 2, '', 0, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (53, 51, NULL, '文件删除', 2, '', 2, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (54, 2, NULL, '修改密码', 2, '', 5, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (61, 1, '/cms/system/dept', '部门管理', 1, 'ant-design:deployment-unit-outlined', 3, 'system/dept/index', 0, 1, 1, '2023-11-10 00:31:44.023393', '2025-05-15 20:32:24.000000', 0, 1, NULL, NULL, 1, NULL);
INSERT INTO `sys_menu` VALUES (62, 61, NULL, '新增', 2, '', 1, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (63, 61, NULL, '更新', 2, '', 2, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (64, 61, NULL, '删除', 2, '', 3, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (65, 61, NULL, '查询', 2, '', 4, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (68, 5, '/health', '健康检查', 1, '', 4, '', 0, 0, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (69, 68, NULL, '网络', 2, '', 0, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (70, 68, NULL, '数据库', 2, '', 0, NULL, 0, 1, 1, '2023-11-10 00:31:44.023393', '2024-02-28 22:05:52.102649', 0, 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (128, NULL, '/dashboard', '大屏可视化', 0, '', 100, '', 1, 1, 1, '2025-05-15 20:18:40.472545', '2025-05-15 20:18:40.472545', 0, 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (129, NULL, '/anal', '用水分析', 0, '', 100, '', 1, 1, 1, '2025-05-15 20:20:40.781881', '2025-05-15 20:31:03.000000', 0, 1, '', 1, 1, NULL);
INSERT INTO `sys_menu` VALUES (130, NULL, '/alarm', '报警管理', 0, '', 100, '', 1, 1, 1, '2025-05-15 20:21:06.625022', '2025-05-15 20:30:55.000000', 0, 1, '', 1, 1, NULL);
INSERT INTO `sys_menu` VALUES (131, NULL, '/dashboard/quota', '定额管理', 0, '', 100, '', 1, 1, 1, '2025-05-15 20:21:53.368030', '2025-05-15 20:27:31.000000', 0, 1, '', 1, 1, NULL);
INSERT INTO `sys_menu` VALUES (132, 131, '/dashboard/quota/dashboard', '定额看板', 1, '', 100, '', 1, 1, 1, '2025-05-15 20:23:19.784047', '2025-05-15 20:23:19.784047', 0, 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (133, 131, '/dashboard/quota/settings', '定额配置', 1, '', 100, '', 1, 1, 1, '2025-05-15 20:24:01.585588', '2025-05-15 20:24:01.585588', 0, 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (134, 130, '/dashboard/alarm/monitor', '报警管理', 1, '', 100, '', 1, 1, 1, '2025-05-15 20:25:46.423863', '2025-05-15 20:25:46.423863', 0, 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (135, 129, '/dashboard/anal/supply', '供水分析', 1, '', 100, '', 1, 1, 1, '2025-05-15 20:26:46.363491', '2025-05-15 20:26:46.363491', 0, 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (136, NULL, '/cms/business/device', '设备管理', 1, '', 100, '', 1, 1, 1, '2025-05-15 20:35:42.852312', '2025-05-15 20:35:42.852312', 0, 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (137, 1, '/cms/business/workOrders', '工单管理', 1, '', 100, '', 1, 1, 1, '2025-05-15 20:37:16.978804', '2025-05-15 20:37:16.978804', 0, 1, '', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (138, 1, '/cms/business/areamanage', '地址管理', 1, '', 100, '', 1, 1, 1, '2025-05-15 20:38:37.237851', '2025-05-15 20:39:27.000000', 0, 1, '', 1, 1, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色标识',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 1,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `default` tinyint NULL DEFAULT NULL,
  `create_by` int NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int NULL DEFAULT NULL COMMENT '更新者',
  `data_scope` tinyint NOT NULL DEFAULT 1 COMMENT '数据权限范围：1-本组织 2-本组织及子组织 3-全部',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_223de54d6badbe43a5490450c3`(`name` ASC) USING BTREE,
  UNIQUE INDEX `IDX_05edc0a51f41bb16b7d8137da9`(`value` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'admin', '管理员', '超级管理员', 1, '2023-11-10 00:31:44.058463', '2024-01-28 21:08:39.000000', NULL, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (2, 'user', '用户', '', 1, '2023-11-10 00:31:44.058463', '2024-01-30 18:44:45.000000', 1, NULL, NULL, 1);
INSERT INTO `sys_role` VALUES (9, 'test', '测试', NULL, 1, '2024-01-23 22:46:52.408827', '2024-01-30 01:04:52.000000', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for sys_role_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menus`;
CREATE TABLE `sys_role_menus`  (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE,
  INDEX `IDX_35ce749b04d57e226d059e0f63`(`role_id` ASC) USING BTREE,
  INDEX `IDX_2b95fdc95b329d66c18f5baed6`(`menu_id` ASC) USING BTREE,
  CONSTRAINT `FK_2b95fdc95b329d66c18f5baed6d` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `FK_35ce749b04d57e226d059e0f633` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menus
-- ----------------------------
INSERT INTO `sys_role_menus` VALUES (1, 1);
INSERT INTO `sys_role_menus` VALUES (1, 2);
INSERT INTO `sys_role_menus` VALUES (1, 3);
INSERT INTO `sys_role_menus` VALUES (1, 4);
INSERT INTO `sys_role_menus` VALUES (1, 5);
INSERT INTO `sys_role_menus` VALUES (1, 6);
INSERT INTO `sys_role_menus` VALUES (1, 7);
INSERT INTO `sys_role_menus` VALUES (1, 8);
INSERT INTO `sys_role_menus` VALUES (1, 9);
INSERT INTO `sys_role_menus` VALUES (1, 10);
INSERT INTO `sys_role_menus` VALUES (1, 11);
INSERT INTO `sys_role_menus` VALUES (1, 20);
INSERT INTO `sys_role_menus` VALUES (1, 21);
INSERT INTO `sys_role_menus` VALUES (1, 22);
INSERT INTO `sys_role_menus` VALUES (1, 23);
INSERT INTO `sys_role_menus` VALUES (1, 24);
INSERT INTO `sys_role_menus` VALUES (1, 25);
INSERT INTO `sys_role_menus` VALUES (1, 26);
INSERT INTO `sys_role_menus` VALUES (1, 27);
INSERT INTO `sys_role_menus` VALUES (1, 28);
INSERT INTO `sys_role_menus` VALUES (1, 29);
INSERT INTO `sys_role_menus` VALUES (1, 30);
INSERT INTO `sys_role_menus` VALUES (1, 31);
INSERT INTO `sys_role_menus` VALUES (1, 32);
INSERT INTO `sys_role_menus` VALUES (1, 34);
INSERT INTO `sys_role_menus` VALUES (1, 35);
INSERT INTO `sys_role_menus` VALUES (1, 36);
INSERT INTO `sys_role_menus` VALUES (1, 37);
INSERT INTO `sys_role_menus` VALUES (1, 38);
INSERT INTO `sys_role_menus` VALUES (1, 39);
INSERT INTO `sys_role_menus` VALUES (1, 40);
INSERT INTO `sys_role_menus` VALUES (1, 41);
INSERT INTO `sys_role_menus` VALUES (1, 42);
INSERT INTO `sys_role_menus` VALUES (1, 48);
INSERT INTO `sys_role_menus` VALUES (1, 51);
INSERT INTO `sys_role_menus` VALUES (1, 52);
INSERT INTO `sys_role_menus` VALUES (1, 53);
INSERT INTO `sys_role_menus` VALUES (1, 54);
INSERT INTO `sys_role_menus` VALUES (1, 61);
INSERT INTO `sys_role_menus` VALUES (1, 62);
INSERT INTO `sys_role_menus` VALUES (1, 63);
INSERT INTO `sys_role_menus` VALUES (1, 64);
INSERT INTO `sys_role_menus` VALUES (1, 65);
INSERT INTO `sys_role_menus` VALUES (1, 68);
INSERT INTO `sys_role_menus` VALUES (1, 69);
INSERT INTO `sys_role_menus` VALUES (1, 70);
INSERT INTO `sys_role_menus` VALUES (2, 1);
INSERT INTO `sys_role_menus` VALUES (2, 5);
INSERT INTO `sys_role_menus` VALUES (2, 6);
INSERT INTO `sys_role_menus` VALUES (2, 7);
INSERT INTO `sys_role_menus` VALUES (2, 8);
INSERT INTO `sys_role_menus` VALUES (2, 9);
INSERT INTO `sys_role_menus` VALUES (2, 10);
INSERT INTO `sys_role_menus` VALUES (2, 11);
INSERT INTO `sys_role_menus` VALUES (2, 32);
INSERT INTO `sys_role_menus` VALUES (2, 34);
INSERT INTO `sys_role_menus` VALUES (2, 35);
INSERT INTO `sys_role_menus` VALUES (2, 36);
INSERT INTO `sys_role_menus` VALUES (2, 37);
INSERT INTO `sys_role_menus` VALUES (2, 38);
INSERT INTO `sys_role_menus` VALUES (2, 39);
INSERT INTO `sys_role_menus` VALUES (2, 40);
INSERT INTO `sys_role_menus` VALUES (2, 41);
INSERT INTO `sys_role_menus` VALUES (2, 42);
INSERT INTO `sys_role_menus` VALUES (2, 48);
INSERT INTO `sys_role_menus` VALUES (2, 51);
INSERT INTO `sys_role_menus` VALUES (2, 52);
INSERT INTO `sys_role_menus` VALUES (2, 53);
INSERT INTO `sys_role_menus` VALUES (2, 68);
INSERT INTO `sys_role_menus` VALUES (2, 69);
INSERT INTO `sys_role_menus` VALUES (2, 70);
INSERT INTO `sys_role_menus` VALUES (9, 1);
INSERT INTO `sys_role_menus` VALUES (9, 2);
INSERT INTO `sys_role_menus` VALUES (9, 3);
INSERT INTO `sys_role_menus` VALUES (9, 4);
INSERT INTO `sys_role_menus` VALUES (9, 5);
INSERT INTO `sys_role_menus` VALUES (9, 6);
INSERT INTO `sys_role_menus` VALUES (9, 7);
INSERT INTO `sys_role_menus` VALUES (9, 8);
INSERT INTO `sys_role_menus` VALUES (9, 9);
INSERT INTO `sys_role_menus` VALUES (9, 10);
INSERT INTO `sys_role_menus` VALUES (9, 11);
INSERT INTO `sys_role_menus` VALUES (9, 20);
INSERT INTO `sys_role_menus` VALUES (9, 21);
INSERT INTO `sys_role_menus` VALUES (9, 22);
INSERT INTO `sys_role_menus` VALUES (9, 23);
INSERT INTO `sys_role_menus` VALUES (9, 24);
INSERT INTO `sys_role_menus` VALUES (9, 25);
INSERT INTO `sys_role_menus` VALUES (9, 26);
INSERT INTO `sys_role_menus` VALUES (9, 27);
INSERT INTO `sys_role_menus` VALUES (9, 28);
INSERT INTO `sys_role_menus` VALUES (9, 29);
INSERT INTO `sys_role_menus` VALUES (9, 30);
INSERT INTO `sys_role_menus` VALUES (9, 31);
INSERT INTO `sys_role_menus` VALUES (9, 32);
INSERT INTO `sys_role_menus` VALUES (9, 34);
INSERT INTO `sys_role_menus` VALUES (9, 35);
INSERT INTO `sys_role_menus` VALUES (9, 36);
INSERT INTO `sys_role_menus` VALUES (9, 37);
INSERT INTO `sys_role_menus` VALUES (9, 38);
INSERT INTO `sys_role_menus` VALUES (9, 39);
INSERT INTO `sys_role_menus` VALUES (9, 40);
INSERT INTO `sys_role_menus` VALUES (9, 41);
INSERT INTO `sys_role_menus` VALUES (9, 42);
INSERT INTO `sys_role_menus` VALUES (9, 54);
INSERT INTO `sys_role_menus` VALUES (9, 61);
INSERT INTO `sys_role_menus` VALUES (9, 62);
INSERT INTO `sys_role_menus` VALUES (9, 63);
INSERT INTO `sys_role_menus` VALUES (9, 64);
INSERT INTO `sys_role_menus` VALUES (9, 65);
INSERT INTO `sys_role_menus` VALUES (9, 68);
INSERT INTO `sys_role_menus` VALUES (9, 69);
INSERT INTO `sys_role_menus` VALUES (9, 70);

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 1,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `limit` int NULL DEFAULT 0,
  `cron` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `every` int NULL DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `job_opts` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_ef8e5ab5ef2fe0ddb1428439ef`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES (2, '定时清空登录日志', 'LogClearJob.clearLoginLog', 0, 1, NULL, NULL, 0, '0 0 3 ? * 1', 0, '', '{\"count\":1,\"key\":\"__default__:2:::0 0 3 ? * 1\",\"cron\":\"0 0 3 ? * 1\",\"jobId\":2}', '定时清空登录日志', '2023-11-10 00:31:44.197779', '2025-05-20 12:06:39.000000');
INSERT INTO `sys_task` VALUES (3, '定时清空任务日志', 'LogClearJob.clearTaskLog', 0, 1, NULL, NULL, 0, '0 0 3 ? * 1', 0, '', '{\"count\":1,\"key\":\"__default__:3:::0 0 3 ? * 1\",\"cron\":\"0 0 3 ? * 1\",\"jobId\":3}', '定时清空任务日志', '2023-11-10 00:31:44.197779', '2025-05-20 12:06:39.000000');
INSERT INTO `sys_task` VALUES (4, '访问百度首页', 'HttpRequestJob.handle', 0, 0, NULL, NULL, 1, '* * * * * ?', NULL, '{\"url\":\"https://www.baidu.com\",\"method\":\"get\"}', NULL, '访问百度首页', '2023-11-10 00:31:44.197779', '2023-11-10 00:31:44.206935');
INSERT INTO `sys_task` VALUES (5, '发送邮箱', 'EmailJob.send', 0, 0, NULL, NULL, -1, '0 0 0 1 * ?', NULL, '{\"subject\":\"这是标题\",\"to\":\"zeyu57@163.com\",\"content\":\"这是正文\"}', NULL, '每月发送邮箱', '2023-11-10 00:31:44.197779', '2023-11-10 00:31:44.206935');

-- ----------------------------
-- Table structure for sys_task_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_task_log`;
CREATE TABLE `sys_task_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 0,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `consume_time` int NULL DEFAULT 0,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_f4d9c36052fdb188ff5c089454b`(`task_id` ASC) USING BTREE,
  CONSTRAINT `FK_f4d9c36052fdb188ff5c089454b` FOREIGN KEY (`task_id`) REFERENCES `sys_task` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_task_log
-- ----------------------------
INSERT INTO `sys_task_log` VALUES (1, 3, 1, NULL, 0, '2024-02-05 03:06:22.037448', '2024-02-05 03:06:22.037448');
INSERT INTO `sys_task_log` VALUES (2, 2, 1, NULL, 0, '2024-02-10 09:42:21.738712', '2024-02-10 09:42:21.738712');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `psalt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NULL DEFAULT 1,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_id` int NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `organization_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `IDX_9e7164b2f1ea1348bc0eb0a7da`(`username` ASC) USING BTREE,
  INDEX `FK_96bde34263e2ae3b46f011124ac`(`dept_id` ASC) USING BTREE,
  INDEX `FK_06844b65d5ddc3a86cccd90c380`(`organization_id` ASC) USING BTREE,
  CONSTRAINT `FK_06844b65d5ddc3a86cccd90c380` FOREIGN KEY (`organization_id`) REFERENCES `sys1_organization` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_96bde34263e2ae3b46f011124ac` FOREIGN KEY (`dept_id`) REFERENCES `sys_dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'a11571e778ee85e82caae2d980952546', 'https://thirdqq.qlogo.cn/g?b=qq&s=100&nk=1743369777', '1743369777@qq.com', '10086', '管理员', 'xQYCspvFb8cAW6GG1pOoUGTLqsuUSO3d', 1, '1743369777', '2023-11-10 00:31:44.104382', '2024-01-29 09:49:43.000000', 'bqy', 1, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (2, 'user', 'dbd89546dec743f82bb9073d6ac39361', 'https://thirdqq.qlogo.cn/g?b=qq&s=100&nk=1743369777', 'luffy@qq.com', '10010', '王路飞', 'qlovDV7pL5dPYPI3QgFFo1HH74nP6sJe', 1, '1743369777', '2023-11-10 00:31:44.104382', '2024-01-29 09:49:57.000000', 'luffy', 8, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (8, 'developer', 'f03fa2a99595127b9a39587421d471f6', '/upload/cfd0d14459bc1a47-202402032141838.jpeg', 'nami@qq.com', '10000', '小贼猫', 'NbGM1z9Vhgo7f4dd2I7JGaGP12RidZdE', 1, '1743369777', '2023-11-10 00:31:44.104382', '2024-02-03 21:41:18.000000', '娜美', 7, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (27, '梁沐宸', '253ea3036c950e08c9b092487673b933', NULL, NULL, NULL, NULL, 'Z-zbjX7odOiVzyd2vN0YC4EymNsRPO0f', 1, NULL, '2025-05-17 02:00:24.794883', '2025-05-17 02:00:24.794883', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (28, '卑国辉', '29c156078f7d6ba3e0494e354f135734', NULL, NULL, NULL, NULL, 'FrUNd0u47Pxo3DyxZ0p-U4Cu8Daj0FRj', 1, NULL, '2025-05-17 02:36:24.524520', '2025-05-17 02:36:24.524520', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (29, '蓟建华', 'fba585004ebda3d92d44867f72bc08f9', NULL, NULL, NULL, NULL, 'Q2i6tvwqYAS3O4h5nQ4E__qBhTlSomxR', 1, NULL, '2025-05-17 02:42:23.840139', '2025-05-17 02:42:23.840139', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (30, '欧国平', '9f0435f6d67be8386d7dfbe4d44a75c7', NULL, NULL, NULL, NULL, 'rF-T1ZdJr6q0dKIBVUNVtifpnEHynhFv', 1, NULL, '2025-05-17 02:45:16.734276', '2025-05-17 02:45:16.734276', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (31, '贲玉珍', 'd396ac43bd02fabb750f8ff13bf1db2c', NULL, NULL, NULL, NULL, '-QZWuJusIPSII2-Argv4nDMV3oupA0dV', 1, NULL, '2025-05-17 02:50:02.079087', '2025-05-17 02:50:02.079087', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (32, '及鑫', '4f4240201b5635ebd9f55612bb052f98', NULL, NULL, NULL, NULL, '1aX_ZNkGhumq6CKnKGeDtn5j6bdYES0D', 1, NULL, '2025-05-17 02:52:27.598894', '2025-05-17 02:52:27.598894', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (33, '邢国芳', '89e3e2c69c53564acf7eed8476aab9d5', NULL, NULL, NULL, NULL, 'aP-NwXOQSJIHkSXgGtQUrpHjDJFS752N', 1, NULL, '2025-05-17 02:59:14.881574', '2025-05-17 02:59:14.881574', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (34, '伯沐阳', '3ac8d18a0ed9d57805d0d7cc845d4c8c', NULL, NULL, NULL, NULL, 'rJhZ-EK6VgK0zcd8u8ZSJdSgJg3ZCzHA', 1, NULL, '2025-05-17 03:01:58.153103', '2025-05-17 03:01:58.153103', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (35, '周悦', 'c5f3a8ecc8d82c4c5afd9b1ce0e6de48', NULL, NULL, NULL, NULL, '0en-7w6fby47DEj3uxCEic3lxDEWGvRV', 1, NULL, '2025-05-17 03:07:34.406821', '2025-05-17 03:07:34.406821', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (36, '郗子欣', '40c1dfdeb11dc67a7a4dfee3cfa960bd', NULL, NULL, NULL, NULL, 'jjiKxSOhpopoeoUQEwXC3MLwe3HMIpIc', 1, NULL, '2025-05-17 03:10:39.545631', '2025-05-17 03:10:39.545631', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (37, '罕治涛', 'fdc3f3294e77eb9ee82cfff4e8a675be', NULL, NULL, NULL, NULL, 'cjFFt3qqKfHHHC-8JfLyeVxkqHj56H2O', 1, NULL, '2025-05-17 03:12:13.081052', '2025-05-17 03:12:13.081052', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (38, '蔺秀珍', '4335f7c423b7bc4aaba60345b2b6ccc7', NULL, NULL, NULL, NULL, 'gWAIFJ5m8xtY8pGa7gvrrUPaBj-WXhE_', 1, NULL, '2025-05-17 03:12:58.195790', '2025-05-17 03:12:58.195790', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (39, '卞苡沫', 'b42df738b98a511e9900d37d66358911', NULL, NULL, NULL, NULL, 's_WN-sGeTvNrUxFSJACBKOCI9f3W7oPR', 1, NULL, '2025-05-17 03:14:41.233790', '2025-05-17 03:14:41.233790', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (40, '辉成', 'f055b92ee69adc9c4fedcc6a66a5e97d', NULL, NULL, NULL, NULL, 'PEBkVqf9JWHouo9CmQSP5bKNEjsQ14Cn', 1, NULL, '2025-05-17 04:07:29.241068', '2025-05-17 04:07:29.241068', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (41, '兴强', 'cbe15ac2e5cd60201ac2d8617f9ed67e', NULL, NULL, NULL, NULL, 'm0A9M_LLevLpjBVjXgOOkZqDiIYyXFcG', 1, NULL, '2025-05-17 04:07:29.297633', '2025-05-17 04:07:29.297633', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (42, '怀娟', 'a2d9c21057bbf5f67a3709998ca700f0', NULL, NULL, NULL, NULL, '1jva20VfGfGIjHT09RBnRZrRfyNGzgZa', 1, NULL, '2025-05-17 04:07:29.304082', '2025-05-17 04:07:29.304082', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (43, '歧阳', 'ce5127d7f6f30671cf7d656ff74cb126', NULL, NULL, NULL, NULL, '4kKpPhsM6X3jqzJAZnYG0XKijto6W0TW', 1, NULL, '2025-05-17 04:07:29.314135', '2025-05-17 04:07:29.314135', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (44, '顿志国', 'c6e0ef971ece33ec39fa2c2d3a986fe1', NULL, NULL, NULL, NULL, 'jhtR2zVp7h3qZ7FqVYIuB1cxg04og38E', 1, NULL, '2025-05-17 04:07:30.018486', '2025-05-17 04:07:30.018486', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (45, '唐若汐', '9cef0be07a3cdf1601d020a2e9b38f58', NULL, NULL, NULL, NULL, '3yA-nUBmZN2arzYtasOAbhiCgeaS_jEw', 1, NULL, '2025-05-17 04:07:30.056198', '2025-05-17 04:07:30.056198', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (46, '蔡语桐', '314413ab6b495fff37f8b16aea29ff46', NULL, NULL, NULL, NULL, 'xqnlrASp1xiVUfeVcIHOmuq1zlGLKnco', 1, NULL, '2025-05-17 04:07:30.265455', '2025-05-17 04:07:30.265455', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (47, '钊丽萍', '7bc0e8742f51833bccc1ecd8309b941f', NULL, NULL, NULL, NULL, '5hNxlScraSzptGBrIeSshWeCufQ4VV53', 1, NULL, '2025-05-17 04:07:30.267188', '2025-05-17 04:07:30.267188', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (48, '易思佳', '6a002b136d0ce4b1a6a96d3f7999ec9d', NULL, NULL, NULL, NULL, 'MsWeYUchBryfhiyRfJAi63nv4XR7GAv2', 1, NULL, '2025-05-17 04:07:30.271224', '2025-05-17 04:07:30.271224', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (49, '萧建华', 'af2509778934dd0adec56d295bddaa6a', NULL, NULL, NULL, NULL, 'olSM28GLiXlor6-FEvlF65RM3JJLB7x0', 1, NULL, '2025-05-17 04:07:30.277350', '2025-05-17 04:07:30.277350', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (50, '卷馨羽', '82dd4a4cfa1d7180c01eabc96bd3ef72', NULL, NULL, NULL, NULL, 'zW-WkK3mSf2qB98H_OcLzz_8MQjagSaw', 1, NULL, '2025-05-17 04:07:30.285609', '2025-05-17 04:07:30.285609', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (51, '书馥君', '583ea09009518a8f9baa646e388bdd12', NULL, NULL, NULL, NULL, 'owe2HaEzeG7ROz86eqcOOOVIgLoD7jDr', 1, NULL, '2025-05-17 04:07:30.288130', '2025-05-17 04:07:30.288130', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (52, '羿丽萍', 'cde729e6674ac5313b1c756c2bb29176', NULL, NULL, NULL, NULL, 't31VYuU1D9ajsMmX696Czh1qrYT0hxZ9', 1, NULL, '2025-05-17 04:07:30.524562', '2025-05-17 04:07:30.524562', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (53, '鄢诗雨', '65873e24ee4ab7d087d0ee585b50f99e', NULL, NULL, NULL, NULL, 'AFU2YzAqKpTxqbZoR_rHeaZLufXqhymC', 1, NULL, '2025-05-17 04:07:30.655139', '2025-05-17 04:07:30.655139', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (54, '局辉', '746cc1699d4b2b95ba82254ba49696ae', NULL, NULL, NULL, NULL, 'Gm0aquiViEzmEQar3XBzzxkblyAzDLHl', 1, NULL, '2025-05-17 04:07:30.668727', '2025-05-17 04:07:30.668727', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (55, '秘成', '68b9ab858e2c26245dc3f4b3bdce6150', NULL, NULL, NULL, NULL, 'nkayljUwjAM99wf1nBoRljD3nY5HRxZa', 1, NULL, '2025-05-17 04:07:30.676163', '2025-05-17 04:07:30.676163', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (56, '表癸霖', 'a07ef9fd5e6b3a365f469d3bf296dd90', NULL, NULL, NULL, NULL, 'nBmlB1_c00b5lH-haM-lIORuBt-LCnd3', 1, NULL, '2025-05-17 04:07:30.754908', '2025-05-17 04:07:30.754908', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (57, '书梓睿', '21a9e72bb5f248bb82ac0e0cf6fecad1', NULL, NULL, NULL, NULL, 'cspebKa2jlU3S-JGl8Kg47KWUTSo-5bM', 1, NULL, '2025-05-17 04:07:30.768438', '2025-05-17 04:07:30.768438', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (58, '施国琴', '2dbc02bccc51fd04b1a93d6184a314f0', NULL, NULL, NULL, NULL, 'dyoZnttbD2RJDscyuHEE1sykHvXEsU9K', 1, NULL, '2025-05-17 04:07:30.769319', '2025-05-17 04:07:30.769319', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_roles`;
CREATE TABLE `sys_user_roles`  (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `IDX_96311d970191a044ec048011f4`(`user_id` ASC) USING BTREE,
  INDEX `IDX_6d61c5b3f76a3419d93a421669`(`role_id` ASC) USING BTREE,
  CONSTRAINT `FK_6d61c5b3f76a3419d93a4216695` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_96311d970191a044ec048011f44` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_roles
-- ----------------------------
INSERT INTO `sys_user_roles` VALUES (1, 1);
INSERT INTO `sys_user_roles` VALUES (2, 2);
INSERT INTO `sys_user_roles` VALUES (8, 2);

-- ----------------------------
-- Table structure for todo
-- ----------------------------
DROP TABLE IF EXISTS `todo`;
CREATE TABLE `todo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 0,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_9cb7989853c4cb7fe427db4b260`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_9cb7989853c4cb7fe427db4b260` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of todo
-- ----------------------------
INSERT INTO `todo` VALUES (1, 'nest.js', NULL, 0, '2023-11-10 00:31:44.139730', '2023-11-10 00:31:44.147629');

-- ----------------------------
-- Table structure for tool_storage
-- ----------------------------
DROP TABLE IF EXISTS `tool_storage`;
CREATE TABLE `tool_storage`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名',
  `fileName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '真实文件名',
  `ext_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tool_storage
-- ----------------------------
INSERT INTO `tool_storage` VALUES (78, '2024-02-03 21:41:16.851178', '2024-02-03 21:41:16.851178', 'cfd0d14459bc1a47-202402032141838.jpeg', 'cfd0d14459bc1a47.jpeg', 'jpeg', '/upload/cfd0d14459bc1a47-202402032141838.jpeg', '图片', '33.92 KB', 1);
INSERT INTO `tool_storage` VALUES (79, '2025-05-17 02:42:28.240516', '2025-05-17 02:42:28.240516', 'bg-202505170242236.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170242236.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (80, '2025-05-17 02:45:20.876220', '2025-05-17 02:45:20.876220', 'bg-202505170245874.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170245874.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (81, '2025-05-17 02:50:06.330103', '2025-05-17 02:50:06.330103', 'bg-202505170250326.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170250326.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (82, '2025-05-17 02:52:31.537536', '2025-05-17 02:52:31.537536', 'bg-202505170252534.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170252534.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (83, '2025-05-17 02:59:19.036038', '2025-05-17 02:59:19.036038', 'bg-202505170259034.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170259034.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (84, '2025-05-17 03:02:01.925630', '2025-05-17 03:02:01.925630', 'bg-202505170302922.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170302922.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (85, '2025-05-17 03:07:37.997945', '2025-05-17 03:07:37.997945', 'bg-202505170307995.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170307995.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (86, '2025-05-17 03:10:43.488465', '2025-05-17 03:10:43.488465', 'bg-202505170310485.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170310485.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (87, '2025-05-17 03:12:17.068127', '2025-05-17 03:12:17.068127', 'bg-202505170312066.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170312066.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (88, '2025-05-17 03:13:02.053116', '2025-05-17 03:13:02.053116', 'bg-202505170313049.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170313049.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (89, '2025-05-17 03:14:44.948773', '2025-05-17 03:14:44.948773', 'bg-202505170314945.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170314945.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (90, '2025-05-17 04:07:39.303663', '2025-05-17 04:07:39.303663', 'bg-202505170407285.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407285.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (91, '2025-05-17 04:07:39.548869', '2025-05-17 04:07:39.548869', 'bg-202505170407459.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407459.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (92, '2025-05-17 04:07:39.548948', '2025-05-17 04:07:39.548948', 'bg-202505170407459.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407459.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (93, '2025-05-17 04:07:39.645745', '2025-05-17 04:07:39.645745', 'bg-202505170407641.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407641.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (94, '2025-05-17 04:07:39.788555', '2025-05-17 04:07:39.788555', 'bg-202505170407745.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407745.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (95, '2025-05-17 04:07:39.788922', '2025-05-17 04:07:39.788922', 'bg-202505170407742.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407742.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (96, '2025-05-17 04:07:39.795094', '2025-05-17 04:07:39.795094', 'bg-202505170407776.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407776.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (97, '2025-05-17 04:07:39.797659', '2025-05-17 04:07:39.797659', 'bg-202505170407782.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407782.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (98, '2025-05-17 04:07:39.819206', '2025-05-17 04:07:39.819206', 'bg-202505170407811.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407811.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (99, '2025-05-17 04:07:39.985449', '2025-05-17 04:07:39.985449', 'bg-202505170407961.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407961.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (100, '2025-05-17 04:07:39.989400', '2025-05-17 04:07:39.989400', 'bg-202505170407984.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407984.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (101, '2025-05-17 04:07:40.095938', '2025-05-17 04:07:40.095938', 'bg-202505170407089.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407089.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (102, '2025-05-17 04:07:40.244580', '2025-05-17 04:07:40.244580', 'bg-202505170407238.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407238.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (103, '2025-05-17 04:07:40.316088', '2025-05-17 04:07:40.316088', 'bg-202505170407308.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407308.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (104, '2025-05-17 04:07:40.961359', '2025-05-17 04:07:40.961359', 'bg-202505170407957.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407957.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (105, '2025-05-17 04:07:41.302825', '2025-05-17 04:07:41.302825', 'bg-202505170407253.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407253.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (106, '2025-05-17 04:07:41.698531', '2025-05-17 04:07:41.698531', 'bg-202505170407694.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407694.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (107, '2025-05-17 04:07:41.903172', '2025-05-17 04:07:41.903172', 'bg-202505170407898.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407898.jpg', '图片', '9.94 KB', 1);
INSERT INTO `tool_storage` VALUES (108, '2025-05-17 04:07:41.903950', '2025-05-17 04:07:41.903950', 'bg-202505170407898.jpg', 'bg.jpg', 'jpg', '/upload/2025-05-17/图片/bg-202505170407898.jpg', '图片', '9.94 KB', 1);

-- ----------------------------
-- Table structure for user_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `user_access_tokens`;
CREATE TABLE `user_access_tokens`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime NOT NULL COMMENT '令牌过期时间',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '令牌创建时间',
  `user_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_e9d9d0c303432e4e5e48c1c3e90`(`user_id` ASC) USING BTREE,
  CONSTRAINT `FK_e9d9d0c303432e4e5e48c1c3e90` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_access_tokens
-- ----------------------------
INSERT INTO `user_access_tokens` VALUES ('4090e66f-3c76-4781-85d9-c29bc9a4ba7a', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDc3MDk1OTksImV4cCI6MTc0Nzc5NTk5OX0.m9SJEuVgngjBHjY5rNXdSVoTnlwFrKHirMAATDp72i4', '2025-05-21 10:53:20', '2025-05-20 10:53:19.888821', 1);
INSERT INTO `user_access_tokens` VALUES ('4f46b83d-9c77-4f21-ad22-549ea2d4a5d5', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDc3MTM0OTAsImV4cCI6MTc0Nzc5OTg5MH0.NImtnJz99POIQAWrmNrcEKpSJQCbj0cHNJ6825XWTT4', '2025-05-21 11:58:10', '2025-05-20 11:58:10.184187', 1);
INSERT INTO `user_access_tokens` VALUES ('5f5854a7-bd58-4c28-a4ad-c01cbf9be228', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDc3MDk1MDcsImV4cCI6MTc0Nzc5NTkwN30.8S916Pkf_IQkBliodotrNheUhFVztYnAnw4MNNk7dT4', '2025-05-21 10:51:48', '2025-05-20 10:51:47.581396', 1);
INSERT INTO `user_access_tokens` VALUES ('891b7b91-7799-4bc9-a6a0-841687bf8bc3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjEsInB2IjoxLCJyb2xlcyI6WyJhZG1pbiJdLCJpYXQiOjE3NDc3MDk1ODQsImV4cCI6MTc0Nzc5NTk4NH0.wIwCsLXShQu4kd8dkeRaXQIm1r7SKeZkLY7qZnGGUjE', '2025-05-21 10:53:04', '2025-05-20 10:53:04.071422', 1);

-- ----------------------------
-- Table structure for user_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `user_refresh_tokens`;
CREATE TABLE `user_refresh_tokens`  (
  `id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime NOT NULL COMMENT '令牌过期时间',
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '令牌创建时间',
  `accessTokenId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `REL_1dfd080c2abf42198691b60ae3`(`accessTokenId` ASC) USING BTREE,
  CONSTRAINT `FK_1dfd080c2abf42198691b60ae39` FOREIGN KEY (`accessTokenId`) REFERENCES `user_access_tokens` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_refresh_tokens
-- ----------------------------
INSERT INTO `user_refresh_tokens` VALUES ('1555bfe3-5e62-4e22-ad53-fe4e10574b40', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiX2xWd0E4ekU1MHJ1aV9kMDQzcFAzIiwiaWF0IjoxNzQ3NzEzNDkwLCJleHAiOjE3NDc3OTk4OTB9.xRODcx8kGEaQtyPwMt_PaaVeolqYJsL-mlWpYbrMYdw', '2025-06-19 11:58:10', '2025-05-20 11:58:10.198498', '4f46b83d-9c77-4f21-ad22-549ea2d4a5d5');
INSERT INTO `user_refresh_tokens` VALUES ('2bc3edb2-e52a-460b-a052-2364b90edd7b', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiWnhMNGM2ZnpZb0RsVjNKdEhEMTFnIiwiaWF0IjoxNzQ3NzA5NTk5LCJleHAiOjE3NDc3OTU5OTl9.w2WI_xSw2w_k2qs1nL9qxGyHYyL-DdsCA05gbppG3aE', '2025-06-19 10:53:20', '2025-05-20 10:53:19.911195', '4090e66f-3c76-4781-85d9-c29bc9a4ba7a');
INSERT INTO `user_refresh_tokens` VALUES ('e28f0abb-bc1d-431e-8888-4bbed68a5dba', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiZUFTREw0Y0wtTEhvVWktY2dlcHVuIiwiaWF0IjoxNzQ3NzA5NTg0LCJleHAiOjE3NDc3OTU5ODR9.L1mXk7Cji4YxFxlWnLfzfB6M8AgBWUD8SF6-luUeT2w', '2025-06-19 10:53:04', '2025-05-20 10:53:04.090281', '891b7b91-7799-4bc9-a6a0-841687bf8bc3');
INSERT INTO `user_refresh_tokens` VALUES ('f29e98ad-1a48-4616-a526-06e0c1cae196', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1dWlkIjoiekhrN2Y1VXR1eFdSdzEyUnlpcW5TIiwiaWF0IjoxNzQ3NzA5NTA3LCJleHAiOjE3NDc3OTU5MDd9.D4Rd_BnCBxPd_FxAHQNiPAJDF7cz6PduaaMvLlZFrq0', '2025-06-19 10:51:48', '2025-05-20 10:51:47.600152', '5f5854a7-bd58-4c28-a4ad-c01cbf9be228');

-- ----------------------------
-- Table structure for water_meter
-- ----------------------------
DROP TABLE IF EXISTS `water_meter`;
CREATE TABLE `water_meter`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `flowRate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '瞬时流量',
  `totalFlow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '累计流量',
  `signalStrength` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '信号强度',
  `device_base_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_2fc10d04d6f929301768f3ce08b`(`device_base_id` ASC) USING BTREE,
  CONSTRAINT `FK_2fc10d04d6f929301768f3ce08b` FOREIGN KEY (`device_base_id`) REFERENCES `device_base` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of water_meter
-- ----------------------------
INSERT INTO `water_meter` VALUES (1, '2025-05-17 02:09:24', '6.67', '0.67', '83.81%', 1);
INSERT INTO `water_meter` VALUES (2, '2025-05-17 02:45:22', '13.09', '1.31', '23.71%', 1);
INSERT INTO `water_meter` VALUES (3, '2025-05-17 02:45:22', '7.73', '0.77', '99.04%', 3);
INSERT INTO `water_meter` VALUES (4, '2025-05-17 02:47:45', '5.65', '0.56', '10.90%', 1);
INSERT INTO `water_meter` VALUES (5, '2025-05-17 02:47:45', '12.60', '1.26', '94.40%', 3);
INSERT INTO `water_meter` VALUES (6, '2025-05-17 02:50:07', '8.40', '0.84', '65.63%', 3);
INSERT INTO `water_meter` VALUES (7, '2025-05-17 02:50:07', '14.93', '1.49', '25.78%', 1);
INSERT INTO `water_meter` VALUES (8, '2025-05-17 02:52:32', '8.31', '0.83', '61.83%', 3);
INSERT INTO `water_meter` VALUES (9, '2025-05-17 02:52:32', '10.61', '1.06', '67.60%', 1);
INSERT INTO `water_meter` VALUES (10, '2025-05-17 02:59:20', '13.29', '1.33', '62.28%', 1);
INSERT INTO `water_meter` VALUES (11, '2025-05-17 02:59:20', '11.66', '1.17', '80.20%', 3);
INSERT INTO `water_meter` VALUES (12, '2025-05-17 03:02:03', '9.52', '0.95', '73.36%', 1);
INSERT INTO `water_meter` VALUES (13, '2025-05-17 03:02:03', '12.37', '1.24', '2.41%', 3);
INSERT INTO `water_meter` VALUES (14, '2025-05-17 03:07:39', '6.32', '0.63', '61.08%', 3);
INSERT INTO `water_meter` VALUES (15, '2025-05-17 03:07:39', '7.82', '0.78', '84.14%', 1);
INSERT INTO `water_meter` VALUES (16, '2025-05-17 03:10:08', '6.04', '0.60', '23.96%', 1);
INSERT INTO `water_meter` VALUES (17, '2025-05-17 03:10:08', '13.97', '1.40', '47.54%', 3);

-- ----------------------------
-- Table structure for water_quota_management
-- ----------------------------
DROP TABLE IF EXISTS `water_quota_management`;
CREATE TABLE `water_quota_management`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `quota_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '定额名称',
  `quota_type` enum('AREA','DEVICE','ORGANIZATION','USER') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '定额类型(区域/设备/组织/用户)',
  `quota_value` decimal(12, 3) NOT NULL COMMENT '定额值(m³)',
  `quota_period` enum('DAILY','WEEKLY','MONTHLY','QUARTERLY','YEARLY') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '定额周期',
  `start_date` date NOT NULL COMMENT '开始日期',
  `end_date` date NULL DEFAULT NULL COMMENT '结束日期(空表示永久有效)',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态(0禁用 1启用)',
  `alert_threshold` decimal(5, 2) NULL DEFAULT 90.00 COMMENT '预警阈值(%)',
  `related_id` int NOT NULL COMMENT '关联ID(根据类型关联区域/设备/组织/用户)',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` int NULL DEFAULT NULL COMMENT '创建人',
  `update_by` int NULL DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IDX_quota_related`(`quota_type` ASC, `related_id` ASC) USING BTREE,
  INDEX `FK_quota_creator`(`create_by` ASC) USING BTREE,
  INDEX `FK_quota_updater`(`update_by` ASC) USING BTREE,
  CONSTRAINT `FK_quota_creator` FOREIGN KEY (`create_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_quota_updater` FOREIGN KEY (`update_by`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用水定额管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of water_quota_management
-- ----------------------------

-- ----------------------------
-- Table structure for water_usage_analysis
-- ----------------------------
DROP TABLE IF EXISTS `water_usage_analysis`;
CREATE TABLE `water_usage_analysis`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `analysis_period` enum('HOURLY','DAILY','WEEKLY','MONTHLY','YEARLY') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分析周期',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `total_flow` decimal(12, 3) NOT NULL COMMENT '总用水量(m³)',
  `avg_flow_rate` decimal(10, 3) NOT NULL COMMENT '平均流量(m³/h)',
  `peak_flow_time` datetime NULL DEFAULT NULL COMMENT '峰值流量时间',
  `peak_flow_value` decimal(10, 3) NULL DEFAULT NULL COMMENT '峰值流量值(m³/h)',
  `device_id` int NULL DEFAULT NULL COMMENT '关联设备ID',
  `area_id` int NULL DEFAULT NULL COMMENT '关联区域ID',
  `organization_id` int NULL DEFAULT NULL COMMENT '关联组织ID',
  `analysis_result` json NULL COMMENT '分析结果(JSON格式)',
  `abnormal_flag` tinyint NOT NULL DEFAULT 0 COMMENT '异常标志(0正常 1异常)',
  `abnormal_desc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常描述',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_water_usage_device`(`device_id` ASC) USING BTREE,
  INDEX `FK_water_usage_area`(`area_id` ASC) USING BTREE,
  INDEX `FK_water_usage_org`(`organization_id` ASC) USING BTREE,
  CONSTRAINT `FK_water_usage_area` FOREIGN KEY (`area_id`) REFERENCES `location_area` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_water_usage_device` FOREIGN KEY (`device_id`) REFERENCES `device_base` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_water_usage_org` FOREIGN KEY (`organization_id`) REFERENCES `sys1_organization` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用水分析表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of water_usage_analysis
-- ----------------------------

-- ----------------------------
-- Table structure for work_order
-- ----------------------------
DROP TABLE IF EXISTS `work_order`;
CREATE TABLE `work_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `orderId` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '工单ID',
  `faultLevel` tinyint NULL DEFAULT NULL COMMENT '故障等级(1-5)',
  `faultLocation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '故障地点',
  `faultType` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '故障类型',
  `faultDesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '故障描述',
  `orderStatus` tinyint NOT NULL DEFAULT 0 COMMENT '状态(0:待处理 1:处理中 2:待审核 3:已通过 4:已驳回)',
  `device_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_a490e26fd8a367646340efd57d8`(`device_id` ASC) USING BTREE,
  CONSTRAINT `FK_a490e26fd8a367646340efd57d8` FOREIGN KEY (`device_id`) REFERENCES `device_base` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_order
-- ----------------------------
INSERT INTO `work_order` VALUES (1, '2025-05-15 21:38:58.697549', '2025-05-17 04:07:42.373000', 'WO1747316338694', 1, '5栋教学楼', '网络故障', '灯泡坏了灯泡坏了灯泡坏了', 4, NULL);
INSERT INTO `work_order` VALUES (2, '2025-05-15 21:39:21.375748', '2025-05-15 21:39:21.375748', 'WO1747316361372', 1, '6栋五楼', '设备故障', '漏水了漏水了漏水了', 0, NULL);
INSERT INTO `work_order` VALUES (3, '2025-05-17 02:45:21.511062', '2025-05-17 02:45:21.511062', 'WO1747421121508', 25, 'magna fugiat', 'Ut incididunt dolore in minim', 'dolor', 0, NULL);
INSERT INTO `work_order` VALUES (4, '2025-05-17 02:48:42.006275', '2025-05-17 02:48:42.006275', 'WO1747421322003', 25, 'magna fugiat', 'Ut incididunt dolore in minim', 'dolor', 0, NULL);
INSERT INTO `work_order` VALUES (5, '2025-05-17 02:50:06.809963', '2025-05-17 02:50:06.809963', 'WO1747421406806', 25, 'magna fugiat', 'Ut incididunt dolore in minim', 'dolor', 0, NULL);
INSERT INTO `work_order` VALUES (6, '2025-05-17 02:52:32.089154', '2025-05-17 02:52:32.089154', 'WO1747421552087', 25, 'magna fugiat', 'Ut incididunt dolore in minim', 'dolor', 0, NULL);
INSERT INTO `work_order` VALUES (7, '2025-05-17 02:59:19.405073', '2025-05-17 02:59:19.405073', 'WO1747421959403', 25, 'magna fugiat', 'Ut incididunt dolore in minim', 'dolor', 0, NULL);
INSERT INTO `work_order` VALUES (8, '2025-05-17 03:02:02.376643', '2025-05-17 03:02:02.376643', 'WO1747422122373', 25, 'magna fugiat', 'Ut incididunt dolore in minim', 'dolor', 0, NULL);
INSERT INTO `work_order` VALUES (9, '2025-05-17 03:07:38.479272', '2025-05-17 03:07:38.479272', 'WO1747422458475', 25, 'magna fugiat', 'Ut incididunt dolore in minim', 'dolor', 0, NULL);

-- ----------------------------
-- Table structure for work_order_records
-- ----------------------------
DROP TABLE IF EXISTS `work_order_records`;
CREATE TABLE `work_order_records`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `type` enum('report','process','complete','reject','approve') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '记录类型(report:上报 process:处理中 complete:完成 reject:驳回 approve:审核通过)',
  `images` json NULL COMMENT '图片URL数组',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '维修地点',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '维修描述',
  `processTime` datetime NULL DEFAULT NULL COMMENT '处理时间',
  `completeTime` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `reviewTime` datetime NULL DEFAULT NULL COMMENT '审核时间',
  `operator_id` int NULL DEFAULT NULL,
  `reviewer_id` int NULL DEFAULT NULL,
  `work_order_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_64a0fc10ee5315d4c70164d5386`(`operator_id` ASC) USING BTREE,
  INDEX `FK_6a47f1403498813551c82b5cb2b`(`reviewer_id` ASC) USING BTREE,
  INDEX `FK_c67b1f1a722fe36c4e5bf475e3e`(`work_order_id` ASC) USING BTREE,
  CONSTRAINT `FK_64a0fc10ee5315d4c70164d5386` FOREIGN KEY (`operator_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_6a47f1403498813551c82b5cb2b` FOREIGN KEY (`reviewer_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_c67b1f1a722fe36c4e5bf475e3e` FOREIGN KEY (`work_order_id`) REFERENCES `work_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work_order_records
-- ----------------------------
INSERT INTO `work_order_records` VALUES (1, '2025-05-15 21:38:58.725145', '2025-05-15 21:38:58.725145', 'report', '[]', '5栋教学楼', '灯泡坏了灯泡坏了灯泡坏了', NULL, NULL, NULL, 1, NULL, 1);
INSERT INTO `work_order_records` VALUES (2, '2025-05-15 21:39:21.395979', '2025-05-15 21:39:21.395979', 'report', '[]', '6栋五楼', '漏水了漏水了漏水了', NULL, NULL, NULL, 1, NULL, 2);
INSERT INTO `work_order_records` VALUES (4, '2025-05-17 02:45:21.531363', '2025-05-17 02:45:21.531363', 'report', '[\"https://loremflickr.com/400/400?lock=6385382699773720\"]', 'magna fugiat', 'dolor', NULL, NULL, NULL, 1, NULL, 3);
INSERT INTO `work_order_records` VALUES (6, '2025-05-17 02:45:21.796542', '2025-05-17 02:45:21.796542', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 02:45:22', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (7, '2025-05-17 02:48:42.025511', '2025-05-17 02:48:42.025511', 'report', '[\"https://loremflickr.com/400/400?lock=6385382699773720\"]', 'magna fugiat', 'dolor', NULL, NULL, NULL, 1, NULL, 4);
INSERT INTO `work_order_records` VALUES (8, '2025-05-17 02:50:06.830262', '2025-05-17 02:50:06.830262', 'report', '[\"https://loremflickr.com/400/400?lock=6385382699773720\"]', 'magna fugiat', 'dolor', NULL, NULL, NULL, 1, NULL, 5);
INSERT INTO `work_order_records` VALUES (9, '2025-05-17 02:50:06.988184', '2025-05-17 02:50:06.988184', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 02:50:07', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (10, '2025-05-17 02:52:32.109353', '2025-05-17 02:52:32.109353', 'report', '[\"https://loremflickr.com/400/400?lock=6385382699773720\"]', 'magna fugiat', 'dolor', NULL, NULL, NULL, 1, NULL, 6);
INSERT INTO `work_order_records` VALUES (11, '2025-05-17 02:52:32.300359', '2025-05-17 02:52:32.300359', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 02:52:32', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (12, '2025-05-17 02:59:19.427047', '2025-05-17 02:59:19.427047', 'report', '[\"https://loremflickr.com/400/400?lock=6385382699773720\"]', 'magna fugiat', 'dolor', NULL, NULL, NULL, 1, NULL, 7);
INSERT INTO `work_order_records` VALUES (13, '2025-05-17 02:59:19.646253', '2025-05-17 02:59:19.646253', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 02:59:20', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (14, '2025-05-17 03:02:02.396957', '2025-05-17 03:02:02.396957', 'report', '[\"https://loremflickr.com/400/400?lock=6385382699773720\"]', 'magna fugiat', 'dolor', NULL, NULL, NULL, 1, NULL, 8);
INSERT INTO `work_order_records` VALUES (15, '2025-05-17 03:02:02.584582', '2025-05-17 03:02:02.584582', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 03:02:03', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (16, '2025-05-17 03:07:38.497264', '2025-05-17 03:07:38.497264', 'report', '[\"https://loremflickr.com/400/400?lock=6385382699773720\"]', 'magna fugiat', 'dolor', NULL, NULL, NULL, 1, NULL, 9);
INSERT INTO `work_order_records` VALUES (17, '2025-05-17 03:07:38.685504', '2025-05-17 03:07:38.685504', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 03:07:39', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (18, '2025-05-17 03:10:44.044919', '2025-05-17 03:10:44.044919', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 03:10:44', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (19, '2025-05-17 03:12:17.596852', '2025-05-17 03:12:17.596852', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 03:12:18', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (20, '2025-05-17 03:13:02.507937', '2025-05-17 03:13:02.507937', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 03:13:03', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (21, '2025-05-17 03:14:45.458141', '2025-05-17 03:14:45.458141', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 03:14:45', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (22, '2025-05-17 04:07:40.172765', '2025-05-17 04:07:40.172765', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:40', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (23, '2025-05-17 04:07:40.212964', '2025-05-17 04:07:40.212964', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:40', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (24, '2025-05-17 04:07:40.276047', '2025-05-17 04:07:40.276047', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:40', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (25, '2025-05-17 04:07:40.318373', '2025-05-17 04:07:40.318373', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:40', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (26, '2025-05-17 04:07:40.470338', '2025-05-17 04:07:40.470338', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:40', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (27, '2025-05-17 04:07:40.492389', '2025-05-17 04:07:40.492389', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:40', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (28, '2025-05-17 04:07:40.536560', '2025-05-17 04:07:40.536560', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (29, '2025-05-17 04:07:40.604258', '2025-05-17 04:07:40.604258', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (30, '2025-05-17 04:07:40.669809', '2025-05-17 04:07:40.669809', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (31, '2025-05-17 04:07:40.673674', '2025-05-17 04:07:40.673674', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (32, '2025-05-17 04:07:40.678470', '2025-05-17 04:07:40.678470', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (33, '2025-05-17 04:07:40.711682', '2025-05-17 04:07:40.711682', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (34, '2025-05-17 04:07:40.873184', '2025-05-17 04:07:40.873184', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (35, '2025-05-17 04:07:41.041018', '2025-05-17 04:07:41.041018', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:41', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (36, '2025-05-17 04:07:41.724886', '2025-05-17 04:07:41.724886', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:42', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (37, '2025-05-17 04:07:41.937555', '2025-05-17 04:07:41.937555', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:42', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (38, '2025-05-17 04:07:42.116613', '2025-05-17 04:07:42.116613', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:42', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (39, '2025-05-17 04:07:42.336280', '2025-05-17 04:07:42.336280', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:42', NULL, 1, 1);
INSERT INTO `work_order_records` VALUES (40, '2025-05-17 04:07:42.395309', '2025-05-17 04:07:42.395309', 'reject', NULL, NULL, NULL, NULL, NULL, '2025-05-17 04:07:42', NULL, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
