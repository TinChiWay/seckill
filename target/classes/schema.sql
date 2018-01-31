/*
Navicat MySQL Data Transfer
Source Server         : local
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : seckill
Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001
Date: 2017-08-29 11:35:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for seckill
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill` (
  `seckill_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(120) NOT NULL COMMENT '商品名称',
  `number` int(11) NOT NULL COMMENT '库存',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`seckill_id`),
  KEY `idx_start_time` (`start_time`),
  KEY `idx_end_time` (`end_time`),
  KEY `idx_create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of seckill
-- ----------------------------
INSERT INTO `seckill` VALUES ('1000', '1000元秒杀iPhone6s', '98', '2017-08-24 17:22:40', '2017-08-21 00:00:00', '2017-08-31 00:00:00');
INSERT INTO `seckill` VALUES ('1001', '500元秒杀iPad2', '200', '2017-08-24 17:09:40', '2017-08-21 00:00:00', '2017-08-31 00:00:00');
INSERT INTO `seckill` VALUES ('1002', '300元秒杀小米4', '50', '2017-08-08 17:09:09', '2017-08-21 00:00:00', '2017-08-22 00:00:00');
INSERT INTO `seckill` VALUES ('1003', '200元秒杀红米note', '100', '2017-08-17 17:09:12', '2017-08-21 00:00:00', '2017-08-22 00:00:00');

-- ----------------------------
-- Table structure for success_killed
-- ----------------------------
DROP TABLE IF EXISTS `success_killed`;
CREATE TABLE `success_killed` (
  `seckill_id` bigint(20) NOT NULL COMMENT '秒杀商品id',
  `user_phone` bigint(20) NOT NULL COMMENT '用户手机号',
  `state` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '状态标识：-1无效 0：成功 1：已付款 2：已发货',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`seckill_id`,`user_phone`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀明细';

-- ----------------------------
-- Records of success_killed
-- ----------------------------