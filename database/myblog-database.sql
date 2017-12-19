/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-12-19 09:39:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for myblog_headmenu
-- ----------------------------
DROP TABLE IF EXISTS `myblog_headmenu`;
CREATE TABLE `myblog_headmenu` (
  `myBlog_HeadMenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `headMenu_Name` varchar(10) NOT NULL,
  `headMenu_URL` varchar(1000) DEFAULT NULL,
  `headMenu_Father` int(11) unsigned zerofill NOT NULL,
  `headMenu_UserId` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_HeadMenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_headmenu
-- ----------------------------
INSERT INTO `myblog_headmenu` VALUES ('1', '首页', 'index/1', '00000000000', '1');
INSERT INTO `myblog_headmenu` VALUES ('2', '个人介绍', 'about/aboutMe.action', '00000000000', '1');
INSERT INTO `myblog_headmenu` VALUES ('3', '生活分享', 'aaaa.action', '00000000000', '1');
INSERT INTO `myblog_headmenu` VALUES ('4', '学习笔记', 'learningNotes/getLearningNotesList.action', '00000000000', '1');
INSERT INTO `myblog_headmenu` VALUES ('5', '给我留言', 'message/board.action', '00000000000', '1');
INSERT INTO `myblog_headmenu` VALUES ('6', '关于本站', 'webInfo/about.action', '00000000000', '1');

-- ----------------------------
-- Table structure for myblog_learningnotes
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes`;
CREATE TABLE `myblog_learningnotes` (
  `myBlog_LearningNotes_id` int(11) NOT NULL AUTO_INCREMENT,
  `learningNotes_Title` varchar(100) NOT NULL,
  `learningNotes_Context` varchar(255) NOT NULL,
  `learningNotes_PubDate` datetime NOT NULL,
  `learningNotes_PubUser` int(11) NOT NULL,
  `learningNotes_Stick` int(11) NOT NULL,
  `learningNotes_Recommend` int(11) NOT NULL,
  `learningNotes_Private` int(11) NOT NULL,
  `learningNotes_Comment` int(11) NOT NULL,
  `learningNotes_Relay` int(11) NOT NULL,
  `learningNotes_ModDate` datetime NOT NULL,
  `learningNotes_RelayCount` int(10) unsigned zerofill NOT NULL,
  `learningNotes_CommentCount` int(10) unsigned zerofill NOT NULL,
  `learningNotes_ViewCount` int(10) unsigned zerofill NOT NULL,
  `learningNotes_Type_id` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes
-- ----------------------------
INSERT INTO `myblog_learningnotes` VALUES ('1', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '1', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('2', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '1', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('3', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '1', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('4', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '1', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('5', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '1', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('6', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '1', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('7', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '1', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('8', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '1', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('9', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '1', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('10', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '1', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('11', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '1', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('12', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '1', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('13', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '1', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('14', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '1', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('15', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '1', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('16', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '1', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('17', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '1', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('18', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '1', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('19', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '1', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('20', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '1', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');

-- ----------------------------
-- Table structure for myblog_learningnotes_comment
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_comment`;
CREATE TABLE `myblog_learningnotes_comment` (
  `myBlog_LearningNotes_Comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `learningNotes_Comment_Context` varchar(255) NOT NULL,
  `learningNotes_Comment_PubDate` datetime NOT NULL,
  `learningNotes_Comment_PubUser` int(11) NOT NULL,
  `learningNotes_Comment_LearningNotes_id` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_comment
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_learningnotes_comment_zan
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_comment_zan`;
CREATE TABLE `myblog_learningnotes_comment_zan` (
  `myBlog_LearningNotes_Comment_Zan_id` int(11) NOT NULL AUTO_INCREMENT,
  `learningNotes_Comment_Zan_comment_id` int(11) NOT NULL,
  `learningNotes_Comment_Zan_user_id` int(11) NOT NULL,
  `learningNotes_Comment_Zan_Cai` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Comment_Zan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_comment_zan
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_learningnotes_report
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_report`;
CREATE TABLE `myblog_learningnotes_report` (
  `myBlog_LearningNotes_Report_id` int(11) NOT NULL,
  `learningNotes_Report_Context` varchar(255) NOT NULL,
  `learningNotes_Report_PubDate` datetime NOT NULL,
  `learningNotes_Report_PubUser` int(11) NOT NULL,
  `learningNotes_Report_ln_id` int(11) NOT NULL,
  `learningNotes_Report_Dispose` int(11) NOT NULL,
  `learningNotes_Report_Dispose_Context` varchar(255) NOT NULL,
  `learningNotes_Report_Dispose_Type_id` int(11) NOT NULL,
  `learningNotes_Report_Type_id` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_report
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_learningnotes_report_dispose_type
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_report_dispose_type`;
CREATE TABLE `myblog_learningnotes_report_dispose_type` (
  `myBlog_LearningNotes_Report_Dispose_Type_id` int(11) NOT NULL,
  `learningNotes_Report_Dispose_Type_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Report_Dispose_Type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_report_dispose_type
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_learningnotes_report_type
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_report_type`;
CREATE TABLE `myblog_learningnotes_report_type` (
  `myBlog_LearningNotes_Report_Type_id` int(11) NOT NULL,
  `learningNotes_Report_Type_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Report_Type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_report_type
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_learningnotes_type
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_type`;
CREATE TABLE `myblog_learningnotes_type` (
  `myBlog_LearningNotes_Type_id` int(11) NOT NULL,
  `learningNotes_Type_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_type
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_learningnotes_zan
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_zan`;
CREATE TABLE `myblog_learningnotes_zan` (
  `myBlog_LearningNotes_Zan_id` int(11) NOT NULL,
  `learningNotes_Zan_ln_id` int(11) NOT NULL,
  `learningNotes_Zan_user_id` int(11) NOT NULL,
  `learningNotes_Zan_Cai` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Zan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_zan
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `myblog_userinfo`;
CREATE TABLE `myblog_userinfo` (
  `myBlog_UserInfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `userInfo_Account` varchar(12) NOT NULL,
  `userInfo_Password` varchar(32) NOT NULL,
  `userInfo_Name` varchar(16) NOT NULL,
  `userInfo_Phone` varchar(11) DEFAULT NULL,
  `userInfo_Tel` varchar(12) DEFAULT NULL,
  `userInfo_Email` varchar(50) NOT NULL,
  `userInfo_QQaccount` varchar(10) DEFAULT NULL,
  `userInfo_HeadImg` varchar(100) NOT NULL,
  `userInfo_GitHub` varchar(1000) DEFAULT NULL,
  `userInfo_RegTime` datetime NOT NULL,
  `userInfo_Birthday` datetime NOT NULL,
  `userInfo_Status` int(11) NOT NULL,
  `userInfo_Jurisdiction_id` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_UserInfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for myblog_user_jurisdiction
-- ----------------------------
DROP TABLE IF EXISTS `myblog_user_jurisdiction`;
CREATE TABLE `myblog_user_jurisdiction` (
  `myBlog_User_Jurisdiction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Jurisdiction_Name` varchar(20) NOT NULL,
  `user_Jurisdiction_AdminPage` int(11) NOT NULL,
  `user_Jurisdiction_LearningNotes` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_User_Jurisdiction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_user_jurisdiction
-- ----------------------------
