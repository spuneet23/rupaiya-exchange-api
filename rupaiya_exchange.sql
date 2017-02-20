/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : rupaiya_exchange

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-02-21 00:11:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for borrowers
-- ----------------------------
DROP TABLE IF EXISTS `borrowers`;
CREATE TABLE `borrowers` (
  `borrower_id` int(25) NOT NULL AUTO_INCREMENT,
  `loan_id` int(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(25) DEFAULT NULL,
  `location` varchar(1000) DEFAULT NULL,
  `cibil_score` int(25) DEFAULT NULL,
  `employment_type` varchar(1000) DEFAULT NULL,
  `annual_income` float(25,0) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `pan_card` varchar(255) DEFAULT NULL,
  `bank_account` int(25) DEFAULT NULL,
  PRIMARY KEY (`borrower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of borrowers
-- ----------------------------
INSERT INTO `borrowers` VALUES ('1', '1', 'Harish', '27', 'Delhi', '733', 'Salaried Employee', '300000', 'SBI', 'SBIN001434', '2003454545');
INSERT INTO `borrowers` VALUES ('2', '2', 'Ramesh', '35', 'Mumbai', '825', 'Business', '500000', 'Swiggy', 'SBIN434353', '323459523');

-- ----------------------------
-- Table structure for loans
-- ----------------------------
DROP TABLE IF EXISTS `loans`;
CREATE TABLE `loans` (
  `loan_id` int(25) unsigned NOT NULL AUTO_INCREMENT,
  `amount` float(100,2) DEFAULT NULL,
  `status` float(100,2) DEFAULT NULL,
  `interest_rate` float(100,2) DEFAULT NULL,
  `purpose` varchar(1000) DEFAULT NULL,
  `amount_left` float(100,2) DEFAULT NULL,
  `tenure` float(100,0) DEFAULT NULL,
  `location` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100029 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of loans
-- ----------------------------
INSERT INTO `loans` VALUES ('1', '100000.00', '0.00', '18.00', 'Personal', '100000.00', '2', 'Delhi');
INSERT INTO `loans` VALUES ('2', '180000.00', '5.00', '16.00', 'Business', '171000.00', '3', 'Mumbai');
INSERT INTO `loans` VALUES ('100017', '420000.00', '0.00', '19.00', 'Marriage', '420000.00', '2', 'Delhi');
INSERT INTO `loans` VALUES ('100018', '420000.00', '0.00', '19.00', 'Marriage', '420000.00', '2', 'Delhi');
INSERT INTO `loans` VALUES ('100027', '34.45', '0.00', '17.20', 'Education', '34.45', '3', 'Bangalore');
INSERT INTO `loans` VALUES ('100028', '380000.00', '0.00', '17.20', 'Education', '380000.00', '3', 'Karnataka');

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1487434951');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1487434955');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'spuneet23', 'JGCqYz4Yf8I7UffvzsawAW7pNVpYJgZi', '$2y$13$pqpzINI0B0Rx1idfR51WB.0mTUS98///6wkjnTMy0Gqmv/Q1YLQZm', null, 'spuneet23@gmail.com', '10', '1487505450', '1487505450', 'spuneet23');
INSERT INTO `user` VALUES ('6', 'ajits731', 'w-QAyja4r-jMARKHG0wwREHVs4c9ipk8', '$2y$13$GvE2KEl.GeKSZD0E65bfueZ2MEY0W1pDA6mr4xMa40.FE8hDERi/m', null, 'ajits731@gmail.com', '10', '1487614238', '1487614238', 'ajits731');
INSERT INTO `user` VALUES ('7', 'ishant', 'D4NsqxT5wRoye47fxetd6GVLfLSKfeIa', '$2y$13$nluEeD6.pPdK3e1lRkI1Kuor8ejUOkxn2H7XoTNNE0B9XuGWAWZIa', null, 'ishantdhawale@gmail.com', '10', '1487615812', '1487615812', 'ishant');
