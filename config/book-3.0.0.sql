/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2018-05-27 19:03:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book_info`
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `book_id` int(11) NOT NULL auto_increment,
  `book_sort_id` int(11) default NULL,
  `book_name` varchar(15) default NULL,
  `book_author` varchar(15) default NULL,
  `book_price` decimal(5,2) default NULL,
  `book_type` varchar(15) default NULL,
  `book_publish` varchar(15) default NULL,
  `book_sum` int(255) default NULL,
  `book_mark` varchar(255) default NULL,
  PRIMARY KEY  (`book_id`),
  KEY `book_sort_id` (`book_sort_id`),
  CONSTRAINT `book_info_ibfk_1` FOREIGN KEY (`book_sort_id`) REFERENCES `book_sort` (`book_sort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES ('3', '2', 'Java', '别先生', '29.90', '物理类', '科学出版社', '25', null);
INSERT INTO `book_info` VALUES ('4', '2', 'hadoop', '别先生', '26.00', '科学类', '科学出版社', '24', null);
INSERT INTO `book_info` VALUES ('5', '4', '活着', '余华', '56.00', '文学类', '人民出版社', '21', null);
INSERT INTO `book_info` VALUES ('6', '3', '概率论与数理统计', '严伟', '52.00', '数学类', '机械工业出版社', '47', null);
INSERT INTO `book_info` VALUES ('7', '4', 'gfdg', 'fdgdg', '78.00', '文学类', 'ff', '455', null);

-- ----------------------------
-- Table structure for `book_sort`
-- ----------------------------
DROP TABLE IF EXISTS `book_sort`;
CREATE TABLE `book_sort` (
  `book_sort_id` int(11) NOT NULL auto_increment,
  `book_sort_name` varchar(255) default NULL,
  `book_sort_extend` varchar(255) default NULL,
  `book_sort_mark` varchar(255) default NULL,
  PRIMARY KEY  (`book_sort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_sort
-- ----------------------------
INSERT INTO `book_sort` VALUES ('1', '科学类', '科学类', '科学类');
INSERT INTO `book_sort` VALUES ('2', '物理类', '物理类', '物理类');
INSERT INTO `book_sort` VALUES ('3', '数学类', '数学类', '数学类');
INSERT INTO `book_sort` VALUES ('4', '文学类', '文学类', '文学类');

-- ----------------------------
-- Table structure for `record_info`
-- ----------------------------
DROP TABLE IF EXISTS `record_info`;
CREATE TABLE `record_info` (
  `record_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `book_id` int(11) default NULL,
  `book_name` varchar(15) default NULL,
  `book_author` varchar(15) default NULL,
  `book_price` decimal(5,2) default NULL,
  `book_type` varchar(15) default NULL,
  `book_publish` varchar(15) default NULL,
  `user_name` varchar(15) default NULL,
  `record_time` datetime default NULL,
  PRIMARY KEY  (`record_id`),
  KEY `FK_Reference_1` (`user_id`),
  KEY `FK_Reference_2` (`book_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_info
-- ----------------------------

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_account` varchar(30) default NULL,
  `user_pw` varchar(200) default NULL,
  `user_number` varchar(15) default NULL,
  `user_name` varchar(10) default NULL,
  `user_age` int(11) default NULL,
  `user_sex` varchar(5) default NULL,
  `user_mark` varchar(5) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'zhangsan', '123456', '123456789', '小别同志', '23', '保密', '普通学生');
INSERT INTO `user_info` VALUES ('2', '小鱼', '123456', '1415925547', '于得水', '22', '男', null);
INSERT INTO `user_info` VALUES ('3', '小刘', '123456', '1415925548', '刘备', '23', '男', '1');
INSERT INTO `user_info` VALUES ('5', '654821', 'e10adc3949ba59abbe56e057f20f883e', '2015068955', '5555', '22', '保密', '普通学生');
INSERT INTO `user_info` VALUES ('6', '123456', 'e10adc3949ba59abbe56e057f20f883e', '123456', '烦烦烦', '56', '女', '普通会员');
INSERT INTO `user_info` VALUES ('7', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '45455656', '顶顶顶', '12', '女', '管理员');
INSERT INTO `user_info` VALUES ('8', 'gzcxe', '7426104bccb013f8a5066f23e85606cf', '201506110078', '蔡晓儿', '21', '女', '普通会员');
