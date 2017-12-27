/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50173
Source Host           : bdm278066451.my3w.com:3306
Source Database       : bdm278066451_db

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-12-27 10:56:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for myblog_aboutme
-- ----------------------------
DROP TABLE IF EXISTS `myblog_aboutme`;
CREATE TABLE `myblog_aboutme` (
  `myBlog_AboutMe_id` int(11) NOT NULL AUTO_INCREMENT,
  `aboutMe_Skill` varchar(1000) NOT NULL,
  `aboutMe_Hobby` varchar(1000) NOT NULL,
  `aboutMe_Describe` varchar(1000) NOT NULL,
  `aboutMe_Other` varchar(1000) NOT NULL,
  `aboutMe_UserId` varchar(32) NOT NULL,
  `aboutMe_QQAccount` int(11) NOT NULL,
  `aboutMe_Tel` int(11) NOT NULL,
  `aboutMe_Phone` int(11) NOT NULL,
  `aboutMe_GitHub` int(11) NOT NULL,
  `aboutMe_ViewCount` int(10) unsigned zerofill NOT NULL,
  `aboutMe_ModDate` datetime NOT NULL,
  `aboutMe_Development` varchar(1000) NOT NULL,
  PRIMARY KEY (`myBlog_AboutMe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of myblog_aboutme
-- ----------------------------
INSERT INTO `myblog_aboutme` VALUES ('3', '<p>后端技术：JAVA（主攻）、Python（业余）、PHP（业余）、易语言（业余）</p><p>前端技术：HTML、CSS、JQuery、JavaScript、AJAX、Json、BootStrap、Echarts等</p><p>数据库：SQLServer、MySQL、PostgreSQL</p><p>JAVA框架：Spring、SpringMVC、MyBatis、Struts2、Hibernate、ICE（分布式框架）</p><p>其他：Maven、Tomcat、Git等</p>', '电子竞技、听歌、旅游', '<p>2017年6月毕业于湖南科技职业学院软件开发专业，在学校期间参加学校创办的虚拟公司进行自主学习，每个学期都会根据自己所学的知识制作小型练手项目。</p><p>2017年2月份进入湖南星岳天璇科技有限公司进行实训，经过3个月的实训转正成为正式员工，在公司参与JAVAWeb端的开发工作。</p>', '<p>自我描述：</p><p>1.勤奋认真，做事热情积极，较强的责任心。</p><p>2.环境适应能力强，能够很快的适应新的环境。</p><p>3.具备团队合作意识，善于协调团队中的人际关系。</p><p>4.能够虚心接受他人的意见与建议，对符合的予以采纳。</p><p>5.自主学习能力强和思维逻辑能力强，对不懂的知识求知欲望能力强。</p><p>6.有较强的创新能力。</p>', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '1', '1', '0000000045', '2017-12-26 12:20:30', '<p>开发经历：</p><p>一、在校期间开发经历：<p><p>1.C/S结构：图书馆管理系统、超市购物管理系统、JQQ桌面应用</p><p>2.采用Servlet编写在线音乐网站。</p><p>3.采用Struts2和Hibernate编写个人博客和论坛。</p><p>4.采用Struts2、Spring、Hibernate编写购物网站和个人博客（模仿新浪博客编写）</p><p>5.采用PHP语言编写论坛。</p><p>二、工作期间开发经历</p><p>1.JAVA开发北斗导航监控系统（正在进行中，Web）</p><p>2.Python开发株洲县智慧渌口大数据分析服务决策系统（正在进行中，Web）。</p>');

-- ----------------------------
-- Table structure for myblog_headmenu
-- ----------------------------
DROP TABLE IF EXISTS `myblog_headmenu`;
CREATE TABLE `myblog_headmenu` (
  `myBlog_HeadMenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `headMenu_Name` varchar(10) NOT NULL,
  `headMenu_URL` varchar(1000) DEFAULT NULL,
  `headMenu_Father` int(11) unsigned zerofill NOT NULL,
  `headMenu_UserId` varchar(32) NOT NULL,
  PRIMARY KEY (`myBlog_HeadMenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_headmenu
-- ----------------------------
INSERT INTO `myblog_headmenu` VALUES ('7', '首页', 'index/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb');
INSERT INTO `myblog_headmenu` VALUES ('8', '个人介绍', 'aboutMe/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb');
INSERT INTO `myblog_headmenu` VALUES ('9', '学习笔记', 'learningNotesList/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb');
INSERT INTO `myblog_headmenu` VALUES ('10', '给我留言', 'message/board/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb');

-- ----------------------------
-- Table structure for myblog_learningnotes
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes`;
CREATE TABLE `myblog_learningnotes` (
  `myBlog_LearningNotes_id` int(11) NOT NULL AUTO_INCREMENT,
  `learningNotes_Title` varchar(100) NOT NULL,
  `learningNotes_Context` varchar(255) NOT NULL,
  `learningNotes_PubDate` datetime NOT NULL,
  `learningNotes_PubUser` varchar(32) NOT NULL,
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
INSERT INTO `myblog_learningnotes` VALUES ('1', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('2', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('3', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('4', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('5', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('6', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('7', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('8', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('9', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('10', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('11', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('12', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('13', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('14', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('15', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('16', '测试文章1', '11111111111111111111111', '2017-12-15 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '1', '1', '1', '2017-12-15 17:04:38', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('17', '测试文章2', '11111111111111111111111', '2017-12-11 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '1', '0', '1', '1', '2017-12-15 17:04:44', '0000000000', '0000000000', '0000000000', '1');
INSERT INTO `myblog_learningnotes` VALUES ('18', '测试文章3', '11111111111111111111111', '2017-12-14 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '2', '1', '1', '2017-12-15 17:04:46', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('19', '测试文章5', '11111111111111111111111', '2017-12-16 17:03:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '0', '1', '1', '1', '2017-12-15 17:04:48', '0000000000', '0000000000', '0000000001', '1');
INSERT INTO `myblog_learningnotes` VALUES ('20', '测试文章4', '11111111111111111111111', '2017-12-15 17:28:15', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '0', '1', '1', '2017-12-15 17:04:47', '0000000000', '0000000000', '0000000000', '1');

-- ----------------------------
-- Table structure for myblog_learningnotes_comment
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_comment`;
CREATE TABLE `myblog_learningnotes_comment` (
  `myBlog_LearningNotes_Comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `learningNotes_Comment_Context` varchar(255) NOT NULL,
  `learningNotes_Comment_PubDate` datetime NOT NULL,
  `learningNotes_Comment_PubUser` varchar(32) NOT NULL,
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
  `learningNotes_Comment_Zan_user_id` varchar(32) NOT NULL,
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
  `learningNotes_Report_PubUser` varchar(32) NOT NULL,
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
  `learningNotes_Zan_user_id` varchar(32) NOT NULL,
  `learningNotes_Zan_Cai` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Zan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_zan
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

-- ----------------------------
-- Table structure for myblog_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `myblog_userinfo`;
CREATE TABLE `myblog_userinfo` (
  `myBlog_UserInfo_id` varchar(32) NOT NULL,
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
  `userInfo_Birthday` datetime DEFAULT NULL,
  `userInfo_Status` int(11) NOT NULL,
  `userInfo_Jurisdiction_id` int(11) NOT NULL,
  PRIMARY KEY (`myBlog_UserInfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_userinfo
-- ----------------------------
INSERT INTO `myblog_userinfo` VALUES ('54b70f611f46181e1bfe7e3714bb2eeb', 'lyt2598', '8a52b47556cb367db7bede4d4feca95e', 'LiaoYingTai', '13317309073', '0123-1234567', 'lyt2598@qq.com', '31448522', 'default.png', 'https://github.com/lyt2598/MyBlog', '2017-12-21 10:55:52', null, '0', '1');
