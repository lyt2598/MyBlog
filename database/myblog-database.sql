/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50173
Source Host           : bdm278066451.my3w.com:3306
Source Database       : bdm278066451_db

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-01-22 17:40:36
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
  `aboutMe_Development` varchar(1000) NOT NULL,
  `aboutMe_Other` varchar(1000) NOT NULL,
  `aboutMe_UserId` varchar(32) NOT NULL,
  `aboutMe_QQAccount` int(11) NOT NULL,
  `aboutMe_Tel` int(11) NOT NULL,
  `aboutMe_Phone` int(11) NOT NULL,
  `aboutMe_GitHub` int(11) NOT NULL,
  `aboutMe_ViewCount` int(10) unsigned zerofill NOT NULL,
  `aboutMe_ModDate` datetime NOT NULL,
  PRIMARY KEY (`myBlog_AboutMe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of myblog_aboutme
-- ----------------------------
INSERT INTO `myblog_aboutme` VALUES ('3', '<p>后端技术：JAVA（主攻）、Python（业余）、PHP（业余）</p><p>前端技术：HTML、CSS、JQuery、JavaScript、AJAX、Json、BootStrap、Echarts等</p><p>数据库：SQLServer、MySQL、PostgreSQL</p><p>JAVA框架：Spring、SpringMVC、MyBatis、Struts2、Hibernate、ICE（分布式框架）</p><p>业余技术：易语言</p><p>其他：Maven、Tomcat、Git等</p>', '电子竞技、听歌、旅游', '<p>2017年6月毕业于湖南科技职业学院软件开发专业，在学校期间参加学校创办的虚拟公司进行自主学习，每个学期都会根据自己所学的知识制作小型练手项目。</p><p>2017年2月份进入湖南星岳天璇科技有限公司进行实训，经过3个月的实训转正成为正式员工，在公司参与JAVAWeb端的开发工作。</p>', '<p>开发经历：</p><p>一、在校期间开发经历：<p><p>1.C/S结构：图书馆管理系统、超市购物管理系统、JQQ桌面应用</p><p>2.采用Servlet编写在线音乐网站。</p><p>3.采用Struts2和Hibernate编写个人博客和论坛。</p><p>4.采用Struts2、Spring、Hibernate编写购物网站和个人博客（模仿新浪博客编写）</p><p>5.采用PHP语言编写论坛。</p><p>二、工作期间开发经历</p><p>1.JAVA开发北斗导航监控系统（正在进行中，Web）</p><p>2.Python开发株洲县智慧渌口大数据分析服务决策系统（正在进行中，Web）。</p><p>三、业余时间开发经历：</p><p>1.NGU个人主页（正在开发中...）</p>', '<p>自我描述：</p><p>1.勤奋认真，做事热情积极，较强的责任心。</p><p>2.环境适应能力强，能够很快的适应新的环境。</p><p>3.具备团队合作意识，善于协调团队中的人际关系。</p><p>4.能够虚心接受他人的意见与建议，对符合的予以采纳。</p><p>5.自主学习能力强和思维逻辑能力强，对不懂的知识求知欲望能力强。</p><p>6.有较强的创新能力。</p>', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '1', '1', '0000000274', '2017-12-26 12:20:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
  `learningNotes_Title` varchar(255) NOT NULL,
  `learningNotes_Context` varchar(9999) NOT NULL,
  `learningNotes_PubDate` datetime NOT NULL,
  `learningNotes_PubUser` varchar(32) NOT NULL,
  `learningNotes_Stick` int(11) NOT NULL,
  `learningNotes_Recommend` int(11) NOT NULL,
  `learningNotes_Private` int(11) NOT NULL,
  `learningNotes_Relay` int(11) NOT NULL,
  `learningNotes_ModDate` datetime NOT NULL,
  `learningNotes_RelayCount` int(10) unsigned zerofill NOT NULL,
  `learningNotes_ViewCount` int(10) unsigned zerofill NOT NULL,
  `learningNotes_Type_id` int(11) NOT NULL,
  `learningNotes_Tags` varchar(255) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46347 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes
-- ----------------------------
INSERT INTO `myblog_learningnotes` VALUES ('15858', '发表测试', '<h1>测试h1</h1><h2>测试h2</h2><h3>测试h3</h3><h4>测试h4</h4><h5>测试h5</h5><p>测试正文</p><p><b>加粗</b></p><p><b><i>斜体</i></b></p><p><b><u><i>下划线</i></u></b></p><p><b><strike><u><i>划掉的线</i></u></strike></b></p><p><b><font color=\"#c24f4a\"><strike><u><i>测试颜色</i></u></strike></font></b></p><p><b><span style=\"background-color: rgb(249, 150, 59);\"><font color=\"#c24f4a\"><strike><u><i>测试背景颜色</i></u></strike></font></span></b></p><p><b><span style=\"background-color: rgb(249, 150, 59);\"><strong>?<a href=\"www.baidu.com\" target=\"_blank\">测试超链接</a></strong></span></b></p><ol><li><b><span style=\"background-color: rgb(249, 150, 59);\"><strong>测试有序列表</strong></span></b></li><li><b><span style=\"background-color: rgb(249, 150, 59);\"><strong></strong><strong>测试有序列表</strong></span></b></li></ol><ul><li><b><span style=\"background-color: rgb(249, 150, 59);\"><strong>测试无序列表</strong></span></b></li><li><b><span style=\"background-color: rgb(249, 150, 59);\"><strong>测试无序列表</strong></span></b></li></ul><p align=\"left\"><b><strong>测试居左</strong></b></p><p align=\"center\"><b><strong>测试居中</strong></b></p><p align=\"right\"><b><strong>测试居右</strong></b></p><div align=\"left\"><blockquote><p><b><strong>测试代码</strong></b></p><p><b><strong><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/50/pcmoren_huaixiao_org.png\" alt=\"[坏笑]\" data-w-e=\"1\"><img src=\"http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/60/horse2_thumb.gif\" alt=\"[神马]\" data-w-e=\"1\"><span>??</span></strong></b></p><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><th>&nbsp;测试表格<br></th><th>测试表格 <br></th><th>测试表格 <br></th><th>测试表格 <br></th><th>&nbsp;测试表格<br></th></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><pre><code>测试</code></pre><p><br></p></blockquote></div>', '2018-01-05 15:48:47', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-04 15:48:47', '0000000000', '0000000000', '22', '测试');
INSERT INTO `myblog_learningnotes` VALUES ('46069', '阿斯蒂芬', '<h1>阿斯蒂芬阿斯蒂芬撒地方阿斯蒂芬as各位发售的 <br></h1>', '2018-01-06 15:13:11', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 15:13:11', '0000000000', '0000000000', '8', '');
INSERT INTO `myblog_learningnotes` VALUES ('46070', '2018年01月06日', '\'<p>asdfasd <br/></p>\'', '2018-01-06 16:08:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:08:53', '0000000000', '0000000000', '2', '');
INSERT INTO `myblog_learningnotes` VALUES ('46071', '2018年01月06日', '\'<p>asdfasd <br/></p>\'', '2018-01-06 16:08:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:08:53', '0000000000', '0000000000', '2', '');
INSERT INTO `myblog_learningnotes` VALUES ('46072', '2018年01月06日', '\'<p>faseyh qwefasdgqerqtwsdfasdfasdfasdfasdfasdf<br/></p>\'', '2018-01-06 16:09:40', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:09:40', '0000000000', '0000000000', '3', '');
INSERT INTO `myblog_learningnotes` VALUES ('46073', '2018年01月06日', '<p><img src=\"http://localhost:8080/MyBlog/editor/jsp/upload/20180106/43701515226256054.jpg\"/></p>', '2018-01-06 16:11:06', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:11:06', '0000000000', '0000000000', '12', '');
INSERT INTO `myblog_learningnotes` VALUES ('46074', '2018年01月06日', '<p><img src=\"http://localhost:8080/MyBlog/img/learningNotes/20180106/3831515226695908.jpg\"/></p>', '2018-01-06 16:18:21', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:18:21', '0000000000', '0000000000', '12', '');
INSERT INTO `myblog_learningnotes` VALUES ('46075', '2018年01月06日', '<hr/><hr/><hr/><hr/><p><img src=\"http://localhost:8080/MyBlog/img/learningNotes/20180106/21201515227948910.jpg\" width=\"1243\" height=\"994\"/></p><hr/><hr/><hr/><p><br/></p>', '2018-01-06 16:39:21', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:39:21', '0000000000', '0000000000', '13', '');
INSERT INTO `myblog_learningnotes` VALUES ('46076', '2018年01月06日', '<p><img src=\"http://localhost:8080/MyBlog/img/learningNotes/20180106/70201515228454183.jpg\"/></p>', '2018-01-06 16:47:41', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:47:41', '0000000000', '0000000000', '4', '');
INSERT INTO `myblog_learningnotes` VALUES ('46077', '2018年01月06日', '<p><img src=\"/ueditor/jsp/upload/image/20180106/1515229113223071659.jpg\" title=\"1515229113223071659.jpg\" alt=\"2013042012341399.jpg\"/></p>', '2018-01-06 16:58:52', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 16:58:52', '0000000000', '0000000000', '10', '');
INSERT INTO `myblog_learningnotes` VALUES ('46078', '2018年01月06日', '<p><img src=\"//editor/jsp/upload/image/20180106/1515230451948065118.jpg\" title=\"1515230451948065118.jpg\" alt=\"2013042012341399.jpg\"/><img src=\"//editor/jsp/upload/image/20180106/1515230465593001905.png\" title=\"1515230465593001905.png\" alt=\"u=1023998262,2764287201', '2018-01-06 17:21:28', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:21:28', '0000000000', '0000000000', '8', '');
INSERT INTO `myblog_learningnotes` VALUES ('46079', '2018年01月06日', '<p><img src=\"./editor/jsp/upload/image/20180106/1515230664511001650.png\" title=\"1515230664511001650.png\" alt=\"u=1023998262,2764287201', '2018-01-06 17:24:38', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:24:38', '0000000000', '0000000000', '7', '');
INSERT INTO `myblog_learningnotes` VALUES ('46080', '11111111111', '<p><img src=\"./editor/jsp/upload/image/20180106/1515230732618075885.png\" title=\"1515230732618075885.png\" alt=\"u=1023998262,2764287201', '2018-01-06 17:25:38', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:25:38', '0000000000', '0000000000', '5', '');
INSERT INTO `myblog_learningnotes` VALUES ('46081', '2018年01月06日', '<p><img src=\"/ueditor/jsp/upload/image/20180106/1515231552320045300.jpg\" title=\"1515231552320045300.jpg\" alt=\"2013042012341399.jpg\"/></p>', '2018-01-06 17:39:26', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:39:26', '0000000000', '0000000000', '7', '');
INSERT INTO `myblog_learningnotes` VALUES ('46082', '2018年01月06日', '<p><img src=\"//ueditor/jsp/upload/image/20180106/1515231596940041085.png\" title=\"1515231596940041085.png\" alt=\"u=1023998262,2764287201', '2018-01-06 17:40:07', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:40:07', '0000000000', '0000000000', '5', '');
INSERT INTO `myblog_learningnotes` VALUES ('46083', '2018年01月06日', '<p><img src=\"./ueditor/jsp/upload/image/20180106/1515231636037082443.jpg\" title=\"1515231636037082443.jpg\" alt=\"2013042012341399.jpg\"/></p>', '2018-01-06 17:40:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:40:39', '0000000000', '0000000000', '10', '');
INSERT INTO `myblog_learningnotes` VALUES ('46084', '2018年01月06日', '<p><img src=\"http://localhost:8080/MyBlog/ueditor/jsp/upload/image/20180106/1515231714723091945.jpg\" title=\"1515231714723091945.jpg\" alt=\"2013042012341399.jpg\"/></p>', '2018-01-06 17:42:13', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:42:13', '0000000000', '0000000000', '3', '');
INSERT INTO `myblog_learningnotes` VALUES ('46085', '2018年01月06日', '<p><img src=\"http://localhost:8080/MyBlog/ueditor/jsp/upload/image/20180106/1515231785435014631.jpg\" title=\"1515231785435014631.jpg\" alt=\"8ad4b31c8701a18bcb5ee08f9f2f07082938febd.jpg\"/></p>', '2018-01-06 17:43:14', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:43:14', '0000000000', '0000000000', '7', '');
INSERT INTO `myblog_learningnotes` VALUES ('46086', '2018年01月06日', '<p><img src=\"http://localhost:8080/MyBlog/editor/jsp/upload/image/20180106/1515231859458043294.jpg\" title=\"1515231859458043294.jpg\" alt=\"2013042012341399.jpg\"/></p>', '2018-01-06 17:44:24', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-06 17:44:24', '0000000000', '0000000000', '10', '');
INSERT INTO `myblog_learningnotes` VALUES ('46087', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46088', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46089', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46090', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46091', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46092', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46093', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46094', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46095', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46096', 'test', '<p>test</p>', '2018-01-15 08:41:10', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:10', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46097', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46098', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46099', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46100', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46101', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46102', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46103', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46104', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46105', 'test', '<p>test</p>', '2018-01-15 08:41:15', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:15', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46106', 'test', '<p>test</p>', '2018-01-15 08:41:17', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:17', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46107', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46108', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46109', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46110', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46111', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46112', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46113', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46114', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46115', 'test', '<p>test</p>', '2018-01-15 08:41:19', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:19', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46116', 'test', '<p>test</p>', '2018-01-15 08:41:21', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:21', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46117', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46118', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46119', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46120', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46121', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46122', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46123', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46124', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46125', 'test', '<p>test</p>', '2018-01-15 08:41:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:23', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46126', 'test', '<p>test</p>', '2018-01-15 08:41:25', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:25', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46127', 'test', '<p>test</p>', '2018-01-15 08:41:26', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:26', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46128', 'test', '<p>test</p>', '2018-01-15 08:41:26', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:26', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46129', 'test', '<p>test</p>', '2018-01-15 08:41:27', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:27', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46130', 'test', '<p>test</p>', '2018-01-15 08:41:27', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:27', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46131', 'test', '<p>test</p>', '2018-01-15 08:41:27', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:27', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46132', 'test', '<p>test</p>', '2018-01-15 08:41:27', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:27', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46133', 'test', '<p>test</p>', '2018-01-15 08:41:27', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:27', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46134', 'test', '<p>test</p>', '2018-01-15 08:41:27', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:27', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46135', 'test', '<p>test</p>', '2018-01-15 08:41:27', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:27', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46136', 'test', '<p>test</p>', '2018-01-15 08:41:29', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:29', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46137', 'test', '<p>test</p>', '2018-01-15 08:41:30', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:30', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46138', 'test', '<p>test</p>', '2018-01-15 08:41:30', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:30', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46139', 'test', '<p>test</p>', '2018-01-15 08:41:30', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:30', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46140', 'test', '<p>test</p>', '2018-01-15 08:41:30', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:30', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46141', 'test', '<p>test</p>', '2018-01-15 08:41:30', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:30', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46142', 'test', '<p>test</p>', '2018-01-15 08:41:31', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:31', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46143', 'test', '<p>test</p>', '2018-01-15 08:41:31', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:31', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46144', 'test', '<p>test</p>', '2018-01-15 08:41:31', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:31', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46145', 'test', '<p>test</p>', '2018-01-15 08:41:31', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:31', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46146', 'test', '<p>test</p>', '2018-01-15 08:41:33', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:33', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46147', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46148', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46149', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46150', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46151', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46152', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46153', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46154', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46155', 'test', '<p>test</p>', '2018-01-15 08:41:34', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:34', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46156', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46157', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46158', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46159', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46160', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46161', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46162', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46163', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46164', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46165', 'test', '<p>test</p>', '2018-01-15 08:41:36', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:36', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46166', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46167', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46168', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46169', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46170', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46171', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46172', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46173', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46174', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46175', 'test', '<p>test</p>', '2018-01-15 08:41:39', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:39', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46176', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46177', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46178', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46179', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46180', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46181', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46182', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46183', 'test', '<p>test</p>', '2018-01-15 08:41:42', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:42', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46184', 'test', '<p>test</p>', '2018-01-15 08:41:43', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:43', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46185', 'test', '<p>test</p>', '2018-01-15 08:41:43', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:43', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46186', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46187', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46188', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46189', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46190', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46191', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46192', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46193', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46194', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46195', 'test', '<p>test</p>', '2018-01-15 08:41:46', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:46', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46196', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46197', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46198', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46199', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46200', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46201', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46202', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46203', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46204', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46205', 'test', '<p>test</p>', '2018-01-15 08:41:50', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:50', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46206', 'test', '<p>test</p>', '2018-01-15 08:41:51', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:51', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46207', 'test', '<p>test</p>', '2018-01-15 08:41:51', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:51', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46208', 'test', '<p>test</p>', '2018-01-15 08:41:51', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:51', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46209', 'test', '<p>test</p>', '2018-01-15 08:41:52', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:52', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46210', 'test', '<p>test</p>', '2018-01-15 08:41:52', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:52', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46211', 'test', '<p>test</p>', '2018-01-15 08:41:52', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:52', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46212', 'test', '<p>test</p>', '2018-01-15 08:41:52', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:52', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46213', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46214', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46215', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46216', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46217', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46218', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46219', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46220', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46221', 'test', '<p>test</p>', '2018-01-15 08:41:53', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:53', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46222', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46223', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46224', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46225', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46226', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46227', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46228', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46229', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46230', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46231', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46232', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46233', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46234', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46235', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46236', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46237', 'test', '<p>test</p>', '2018-01-15 08:41:54', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:54', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46238', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46239', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46240', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46241', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46242', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46243', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46244', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46245', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46246', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46247', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46248', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46249', 'test', '<p>test</p>', '2018-01-15 08:41:55', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:55', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46250', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46251', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46252', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46253', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46254', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46255', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46256', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46257', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46258', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46259', 'test', '<p>test</p>', '2018-01-15 08:41:56', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:56', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46260', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46261', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46262', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46263', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46264', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46265', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46266', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46267', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46268', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46269', 'test', '<p>test</p>', '2018-01-15 08:41:57', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:57', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46270', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46271', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46272', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46273', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46274', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46275', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46276', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46277', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46278', 'test', '<p>test</p>', '2018-01-15 08:41:58', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:58', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46279', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46280', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46281', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46282', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46283', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46284', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46285', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46286', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46287', 'test', '<p>test</p>', '2018-01-15 08:41:59', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:41:59', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46288', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46289', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46290', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46291', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46292', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46293', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46294', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46295', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46296', 'test', '<p>test</p>', '2018-01-15 08:42:00', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:00', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46297', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46298', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46299', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46300', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46301', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46302', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46303', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46304', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46305', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46306', 'test', '<p>test</p>', '2018-01-15 08:42:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:01', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46307', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46308', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46309', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46310', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46311', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46312', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46313', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46314', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46315', 'test', '<p>test</p>', '2018-01-15 08:42:02', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:02', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46316', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46317', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46318', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46319', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46320', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46321', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46322', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46323', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46324', 'test', '<p>test</p>', '2018-01-15 08:42:03', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:03', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46325', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46326', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46327', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46328', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46329', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46330', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46331', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000001', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46332', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46333', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46334', 'test', '<p>test</p>', '2018-01-15 08:42:04', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:04', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46335', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000001', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46336', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46337', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46338', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46339', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46340', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46341', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46342', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46343', 'test', '<p>test</p>', '2018-01-15 08:42:05', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:05', '0000000000', '0000000000', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46344', 'test', '<p>test</p>', '2018-01-15 08:42:06', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:06', '0000000000', '0000000002', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46345', 'test', '<p>test</p>', '2018-01-15 08:42:06', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-15 08:42:06', '0000000000', '0000000001', '22', '·è¿ñ²âÊÔ·¢±í²©ÎÄ');
INSERT INTO `myblog_learningnotes` VALUES ('46346', 'aaa', '<p><img src=\"http://img.baidu.com/hi/jx2/j_0001.gif\"/></p>', '2018-01-18 16:35:47', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-18 16:35:47', '0000000000', '0000000100', '1', '');

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
-- Table structure for myblog_learningnotes_type
-- ----------------------------
DROP TABLE IF EXISTS `myblog_learningnotes_type`;
CREATE TABLE `myblog_learningnotes_type` (
  `myBlog_LearningNotes_Type_id` int(11) NOT NULL AUTO_INCREMENT,
  `learningNotes_Type_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`myBlog_LearningNotes_Type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes_type
-- ----------------------------
INSERT INTO `myblog_learningnotes_type` VALUES ('1', 'Java');
INSERT INTO `myblog_learningnotes_type` VALUES ('2', 'PHP');
INSERT INTO `myblog_learningnotes_type` VALUES ('3', 'Python');
INSERT INTO `myblog_learningnotes_type` VALUES ('4', 'HTML');
INSERT INTO `myblog_learningnotes_type` VALUES ('5', 'JavaScript');
INSERT INTO `myblog_learningnotes_type` VALUES ('6', 'JQuery');
INSERT INTO `myblog_learningnotes_type` VALUES ('7', 'Bootstrap');
INSERT INTO `myblog_learningnotes_type` VALUES ('8', 'Echarts');
INSERT INTO `myblog_learningnotes_type` VALUES ('9', 'Maven');
INSERT INTO `myblog_learningnotes_type` VALUES ('10', 'Ajax');
INSERT INTO `myblog_learningnotes_type` VALUES ('11', 'CSS');
INSERT INTO `myblog_learningnotes_type` VALUES ('12', 'Json');
INSERT INTO `myblog_learningnotes_type` VALUES ('13', 'MySQL');
INSERT INTO `myblog_learningnotes_type` VALUES ('14', 'SQLServer');
INSERT INTO `myblog_learningnotes_type` VALUES ('15', 'PostgreSQL');
INSERT INTO `myblog_learningnotes_type` VALUES ('16', 'Tomcat');
INSERT INTO `myblog_learningnotes_type` VALUES ('17', 'Git');
INSERT INTO `myblog_learningnotes_type` VALUES ('18', 'Spring');
INSERT INTO `myblog_learningnotes_type` VALUES ('19', 'Struts');
INSERT INTO `myblog_learningnotes_type` VALUES ('20', 'MyBatis');
INSERT INTO `myblog_learningnotes_type` VALUES ('21', 'Hibernate');
INSERT INTO `myblog_learningnotes_type` VALUES ('22', '易语言');
INSERT INTO `myblog_learningnotes_type` VALUES ('23', '其他');

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
INSERT INTO `myblog_userinfo` VALUES ('54b70f611f46181e1bfe7e3714bb2eeb', 'lyt2598', '8a52b47556cb367db7bede4d4feca95e', 'LiaoYingTai', '133173090**', '0123-1234567', 'lyt2598@aliyun.com', '31448522', 'default.png', 'https://github.com/lyt2598/MyBlog', '2017-12-21 10:55:52', null, '0', '1');
