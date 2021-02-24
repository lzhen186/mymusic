/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 22/02/2021 19:59:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '1');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '收藏类型(0歌曲,1歌单)',
  `song_id` int(11) NULL DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) NULL DEFAULT NULL COMMENT '歌单id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '评论(0歌曲,1歌单)',
  `song_id` int(11) NULL DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) NULL DEFAULT NULL COMMENT '歌单id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '收藏时间',
  `up` int(11) NULL DEFAULT 0 COMMENT '评论点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(1男0女)',
  `phone_num` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `birth` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `avator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '前端用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for list_song
-- ----------------------------
DROP TABLE IF EXISTS `list_song`;
CREATE TABLE `list_song`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NULL DEFAULT NULL COMMENT '歌曲id',
  `song_list_id` int(11) NULL DEFAULT NULL COMMENT '歌单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '歌单包含歌曲列表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `song_list_id` int(11) NULL DEFAULT NULL COMMENT '歌单id',
  `consumer_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `score` int(11) NULL DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `consumer_id`(`song_list_id`, `consumer_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评价' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别(0女1男2组合3不明)',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `birth` datetime(0) NULL DEFAULT NULL COMMENT '生日',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地区',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '歌手' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES (11, '周杰伦', 1, '/img/singerPic/16139943297915.jpg', '1980-02-05 00:00:00', '台湾', '跨时代歌手');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singer_id` int(11) NULL DEFAULT NULL COMMENT '歌手id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌名',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲图片',
  `lyric` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '歌词',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌曲地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '歌曲' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (11, 11, '周杰伦-早安', '早安', '2021-02-22 19:44:44', '2021-02-22 19:55:46', '/img/songPic/16139943082575.jpg', '[00:00.60]刘瑞琦 - 早安\n[00:01.60]词：管力\n[00:02.60]曲：郑楠\n[00:25.26]做梦的枕头说它不想醒喔\n[00:37.28]沉默的闹钟说它不想赢喔\n[00:48.09]像岸上的鱼群梦见海洋\n[00:54.45]像迷路的信梦见远方\n[00:59.36]我梦见你\n[01:07.21]我们左顾右盼小心翼翼\n[01:12.20]走在一阵叫做未来的春雨里\n[01:18.15]早安淋湿的好奇\n[01:21.05]早安最温柔的你\n[01:23.85]Good Morning\n[01:26.76]Good Morning\n[01:31.40]我们翻山越岭不期而遇\n[01:36.24]走在一片叫做梦想的阳光里\n[01:41.79]早安被晒干的记忆\n[01:45.10]早安最快乐的你\n[01:47.85]Good Morning\n[02:13.34]吵架的麻雀说它不想停喔\n[02:25.30]时间躲在被子里深呼吸喔\n[02:36.11]像冬天的候鸟飞向南方\n[02:42.52]像失踪的云飞向月光\n[02:47.32]我飞向你\n[02:55.33]我们左顾右盼小心翼翼\n[03:00.13]走在一阵叫做未来的春雨里\n[03:06.14]早安淋湿的好奇\n[03:09.10]早安最温柔的你\n[03:11.75]Good Morning\n[03:37.31]我们翻山越岭不期而遇\n[03:42.11]走在一片叫做梦想的阳光里\n[03:47.77]早安被晒干的记忆\n[03:51.07]早安最快乐的你\n[03:53.87]Good Morning', '/song/刘瑞琦 - 早安.mp3');

-- ----------------------------
-- Table structure for song_list
-- ----------------------------
DROP TABLE IF EXISTS `song_list`;
CREATE TABLE `song_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '歌单图片',
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '歌单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song_list
-- ----------------------------
INSERT INTO `song_list` VALUES (21, '好听的歌', '/img/songListPic/1613994407982bg.jpg', '几首好听的歌', '流行');

SET FOREIGN_KEY_CHECKS = 1;
