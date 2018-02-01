/*
Navicat MySQL Data Transfer

Source Server         : 阿里云
Source Server Version : 50173
Source Host           : bdm278066451.my3w.com:3306
Source Database       : bdm278066451_db

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-02-01 15:32:15
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
INSERT INTO `myblog_aboutme` VALUES ('3', '<p>后端技术：JAVA（主攻）、Python（业余）、PHP（业余）</p><p>前端技术：HTML、CSS、JQuery、JavaScript、AJAX、Json、BootStrap、Echarts等</p><p>数据库：SQLServer、MySQL、PostgreSQL</p><p>JAVA框架：Spring、SpringMVC、MyBatis、Struts2、Hibernate、ICE（分布式框架）</p><p>业余技术：易语言</p><p>其他：Maven、Tomcat、Git等</p>', '电子竞技、听歌、旅游', '<p>2017年6月毕业于湖南科技职业学院软件开发专业，在学校期间参加学校创办的虚拟公司进行自主学习，每个学期都会根据自己所学的知识制作小型练手项目。</p><p>2017年2月份进入湖南星岳天璇科技有限公司进行实训，经过3个月的实训转正成为正式员工，在公司参与JAVAWeb端的开发工作。</p>', '<p>开发经历：</p><p>一、在校期间开发经历：<p><p>1.C/S结构：图书馆管理系统、超市购物管理系统、JQQ桌面应用</p><p>2.采用Servlet编写在线音乐网站。</p><p>3.采用Struts2和Hibernate编写个人博客和论坛。</p><p>4.采用Struts2、Spring、Hibernate编写购物网站和个人博客（模仿新浪博客编写）</p><p>5.采用PHP语言编写论坛。</p><p>二、工作期间开发经历</p><p>1.JAVA开发北斗导航监控系统（正在进行中，Web）</p><p>2.Python开发株洲县智慧渌口大数据分析服务决策系统（正在进行中，Web）。</p><p>三、业余时间开发经历：</p><p>1.NGU个人主页（正在开发中...）</p>', '<p>自我描述：</p><p>1.勤奋认真，做事热情积极，较强的责任心。</p><p>2.环境适应能力强，能够很快的适应新的环境。</p><p>3.具备团队合作意识，善于协调团队中的人际关系。</p><p>4.能够虚心接受他人的意见与建议，对符合的予以采纳。</p><p>5.自主学习能力强和思维逻辑能力强，对不懂的知识求知欲望能力强。</p><p>6.有较强的创新能力。</p>', '54b70f611f46181e1bfe7e3714bb2eeb', '1', '1', '1', '1', '0000000397', '2017-12-26 12:20:30');

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
  `headMenu_Icon` varchar(32) NOT NULL,
  PRIMARY KEY (`myBlog_HeadMenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_headmenu
-- ----------------------------
INSERT INTO `myblog_headmenu` VALUES ('7', '首页', 'index/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb', 'fa-home');
INSERT INTO `myblog_headmenu` VALUES ('8', '个人介绍', 'aboutMe/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb', 'fa-graduation-cap');
INSERT INTO `myblog_headmenu` VALUES ('9', '学习笔记', 'learningNotesList/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb', 'fa-book');
INSERT INTO `myblog_headmenu` VALUES ('10', '给我留言', 'message/board/54b70f611f46181e1bfe7e3714bb2eeb', '00000000000', '54b70f611f46181e1bfe7e3714bb2eeb', 'fa-commenting');

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
  `learningNotes_ViewCount` int(10) unsigned zerofill NOT NULL,
  `learningNotes_Type_id` int(11) NOT NULL,
  `learningNotes_Tags` varchar(255) NOT NULL,
  `learningNotes_RelayCount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`myBlog_LearningNotes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46368 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myblog_learningnotes
-- ----------------------------
INSERT INTO `myblog_learningnotes` VALUES ('46357', 'a标签超出部分隐藏以及设置inline-block后，不在同一水平线上的问题', '<p><strong>今天在编写前端代码时，因为需求，需要将&lt;a&gt;标签超出部分隐藏。</strong></p><p><strong>在隐藏过程中遇到了一点小问题，顺便记录一下。</strong></p><p><strong>原样式：<br/></strong></p><p><img src=\"http://www.liaoyingtai.com/images/20180123/1516689455231072695.png\" alt=\"1516689455231072695.png\"/></p><p><strong>1.隐藏&lt;a&gt;标签超出部分内容，并显示省略号</strong></p><p><strong>代码如下：</strong></p><pre class=\"html\">display:inline-block;\nwidth:&nbsp;500px;\noverflow:&nbsp;hidden;\nword-break:&nbsp;keep-all;\nwhite-space:&nbsp;nowrap;\ntext-overflow:&nbsp;ellipsis;</pre><p><br/>display:inline-block是为了把内容显示在一行当中</p><p><strong>overflow: hidden;<br/>word-break: keep-all;<br/>white-space: nowrap;<br/>text-overflow: ellipsis;</strong></p><p><strong>以上四项则可以实现对超出部分的内容进行隐藏操作，<span style=\"color:#FF0000\">注意：要设置width</span></strong></p><p><strong><span style=\"color:#FF0000\"><span style=\"color:#000000\">效果如下图：</span></span></strong></p><p><strong><span style=\"color:#FF0000\"><span style=\"color:#000000\"><img src=\"http://www.liaoyingtai.com/images/20180123/1516689455239061545.png\" alt=\"1516689455239061545.png\"/></span></span></strong></p><p><strong><span style=\"color:#FF0000\"><span style=\"color:#000000\">但是效果不是很满意，为什么呢？因为前面&lt;a&gt;标签和前面的标签不在同一水平线上，所以还需要修改。</span></span></strong></p><p><strong><span style=\"color:#FF0000;\"><span style=\"color:#000000\">在度娘查询一波后，发现<span style=\"color:#3333FF\">vertical-align: top;<span style=\"color:#000000\">可以实现我的要求，让两个标签能够在同一行显示。</span></span></span></span></strong></p><p><strong><span style=\"color:#FF0000;\"><span style=\"color:#000000;\"></span></span></strong></p><pre class=\"html\">width:&nbsp;500px;\nvertical-align:&nbsp;top;\ndisplay:&nbsp;inline-block;\noverflow:&nbsp;hidden;\nword-break:&nbsp;keep-all;\nwhite-space:&nbsp;nowrap;\ntext-overflow:&nbsp;ellipsis;</pre><p><strong><span style=\"color:#FF0000;\"><span style=\"color:#000000;\"><span style=\"color:#3333FF\"><span style=\"background-color:rgb(0,0,0);\"></span></span><span style=\"background-color:rgb(255,255,255);\"><span style=\"color:#FFCC33\">vertical-aline 介绍：<span style=\"font-family:Verdana, Arial, &#39;宋体&#39;\">该属性定义行内元素的基线相对于该元素所在行的基线的垂直对齐。</span></span></span></span></span></strong></p><p><span style=\"background-color:rgb(255,255,255);\"><span style=\"color:#FFCC33\"><span style=\"font-family:Verdana, Arial, &#39;宋体&#39;\"><span style=\"line-height:18px;\">也就是说，我在这个元素 加了vertical-aline属性之后，其他和他同一行的带有inline 属性的元素就会根据vertical-aline的值来与他对齐。</span></span></span></span></p><p><strong><span style=\"color:#FF0000\"><span style=\"color:#000000\">于是在代码中添加上，达到我想要的效果，如下图：</span></span></strong></p><p><strong><span style=\"color:#FF0000\"><span style=\"color:#000000\"><img src=\"http://www.liaoyingtai.com/images/20180123/1516689455272085934.png\" alt=\"1516689455272085934.png\"/></span></span></strong></p><p><strong><span style=\"color:#FF0000\"><span style=\"color:#000000\">这个样子就很完美了，正是我想要的结果。</span></span></strong></p><p><img src=\"http://www.liaoyingtai.com/images/20180123/1516689455290003354.png\" alt=\"1516689455290003354.png\"/></p><p><br/></p>', '2018-01-23 14:39:23', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-23 14:39:23', '0000000036', '11', '标签超出隐藏', '0');
INSERT INTO `myblog_learningnotes` VALUES ('46360', 'ajax请求时传递参数方式问题记录', '<p>今天在修改代码的过程中发现一个bug，记录一下。</p><p>在ajax请求时，参数是用&amp;拼接起来的，然而当参数中有 &amp; 特殊符号时，用&amp;拼接就会出现问题。</p><p>如下：<br/></p><pre class=\"brush:js;toolbar:false\">var&nbsp;title=&quot;abc&amp;desga&lt;&quot;\n$.ajax({\n&nbsp;&nbsp;&nbsp;&nbsp;url:xxx.action,\n&nbsp;&nbsp;&nbsp;&nbsp;data:&quot;username=&quot;+username+&quot;&amp;title=&quot;+title,\n&nbsp;&nbsp;&nbsp;&nbsp;......(略)\n})</pre><p>当title的内容中带有&amp;这种特殊符号时，请求的时候会把&amp;后面的当成是另外一个参数，导致提交的参数与实际的参数不符。</p><p>解决方法：</p><p>通过将&amp;拼接的参数改成json字符串格式的参数，即可解决，如下。</p><pre class=\"brush:html;toolbar:false\">data:{&quot;username&quot;:username,&quot;title&quot;:title}</pre><p>在请求的时候data可以通过&amp;拼接参数，也可以通过json字符串来传递参数。</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\"><strong>注：在使用富文本编辑器时，如果你的富文本编辑器中存在例如：&lt;a&gt;这样的标签，那么富文本编辑器是会将&lt;和&gt;转换成&amp;lt;&nbsp; &amp;gt;的，如果使用&amp;拼接参数，那么就会出现如上所说的问题，解决方法也如上一样即可解决。</strong></span><br/></p><p><br/></p>', '2018-01-23 15:03:31', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-23 15:03:31', '0000000093', '10', '', '0');
INSERT INTO `myblog_learningnotes` VALUES ('46363', 'SpringMVC通过<context:property-placeholder/>映入多个配置文件问题', '<p>今天在编写个人主页的时候&nbsp; 遇到一个问题</p><p>那就是有多个配置文件通过&lt;context:property-placeholder/&gt;引入</p><p>但是在启动tomcat后一直报如下错误</p><pre class=\"brush:java;toolbar:false\">java.lang.IllegalArgumentException:&nbsp;Could&nbsp;not&nbsp;resolve&nbsp;placeholder&nbsp;&#39;*&#39;&nbsp;in&nbsp;value&nbsp;&quot;*&quot;</pre><p>代码：</p><pre class=\"brush:xml;toolbar:false\">&lt;context:property-placeholder&nbsp;location=&quot;classpath:uploadConfig.properties&quot;&nbsp;/&gt;\n&lt;context:property-placeholder&nbsp;location=&quot;classpath:jdbc.properties&quot;&nbsp;/&gt;</pre><p>经过一番资料的查询之后，发现是因为<strong><span style=\"color: rgb(255, 0, 0);\">在加载的时候，加载了第一个&lt;context:property-placeholder/&gt;，就不会加载第二个了</span></strong>。\n所以就会导致第二个配置文件没有被引入，在使用第二个文件中的内容时，找不到第二个文件中的内容，也就报出了这个错误。</p><p><br/></p><p>如上所示，直接写多个&lt;context:property-placeholder&gt;标签的话在引入配置文件/资源文件在使用这些文件中的内容时，只有第一个文件能够访问到，其他后面的文件访问是访问不到的。</p><p><br/></p><p><strong>解决办法：</strong></p><p>在peoperty-placeholder添加一个<strong><span style=\"color: rgb(255, 0, 0);\">ignore-unresolvable</span></strong>属性设置为<span style=\"color: rgb(255, 0, 0);\"><strong>true</strong></span>，<span style=\"color: rgb(255, 0, 0);\">每个property-placeholder都需要加</span>。</p><p><br/></p><p>修改后代码如下：</p><pre class=\"brush:xml;toolbar:false\">&lt;context:property-placeholder&nbsp;location=&quot;classpath:uploadConfig.properties&quot;&nbsp;ignore-unresolvable=&quot;true&quot;&nbsp;/&gt;&nbsp;&nbsp;\n&lt;context:property-placeholder&nbsp;location=&quot;classpath:jdbc.properties&quot;&nbsp;ignore-unresolvable=&quot;true&quot;&nbsp;/&gt;</pre><p><br/></p>', '2018-01-29 16:33:01', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-29 16:33:01', '0000000039', '18', 'Spring,SpringMVC,property-placeholder,Spring引入多个资源文件', '0');
INSERT INTO `myblog_learningnotes` VALUES ('46366', 'SSM整合UEditor方法', '<p>首先，先了解一下UEditor是干什么的？UEditor是由百度web前端研发部开发所见即所得富文本web编辑器，具有轻量，可定制，注重用户体验等特点，开源基于MIT协议，允许自由使用和修改代码...</p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517274097733007760.png\" title=\"1517274097733007760.png\" alt=\"图片.png\"/></p><p>如何使用UEditor到我们的项目当中呢？</p><p>首先去要到官网下载相应版本的Demo.<a href=\"http://ueditor.baidu.com/website/download.html\" target=\"_blank\" title=\"点击进入下载\">点击进入下载</a></p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517274221316019885.png\" title=\"1517274221316019885.png\" alt=\"图片.png\"/></p><p>接下来我以Jsp版本为示例演示导入过程，工程目录如下</p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517274426461093932.png\" title=\"1517274426461093932.png\" alt=\"OWYGY~BAOOKA7])0}CTJ5DV.png\"/></p><p>该项目使用Maven进行管理</p><p>首先打开src-&gt;main-&gt;webapp目录，将下载好的UEditor解压后的文件夹放置此目录下：</p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517274575614088868.png\" title=\"1517274575614088868.png\" alt=\"图片.png\"/></p><p>在ueditor的jsp目录下有一个lib目录，需要将里面的jar包复制到WEB-INF下的lib目录下：</p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517274682686056357.png\" title=\"1517274682686056357.png\" alt=\"图片.png\"/></p><p>其他依赖包在我其他框架以及引用了，所以这里不需要再引用了。</p><p>然后在你需要使用UEditor的网页上引入以下文件即可：</p><pre class=\"brush:html;toolbar:false\">&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.config.js&quot;&gt;&lt;/script&gt;\n&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.all.min.js&quot;&gt;&nbsp;&lt;/script&gt;\n&lt;!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败--&gt;\n&lt;!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文--&gt;\n&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;lang/zh-cn/zh-cn.js&quot;&gt;&lt;/script&gt;</pre><p>然后可通过查看解压出来的Demo中目录下的index.html了解命令使用方法。</p><p>下面给出Demo和效果截图：</p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517275595823080530.png\" title=\"1517275595823080530.png\" alt=\"图片.png\"/></p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517275617948047876.png\" title=\"1517275617948047876.png\" alt=\"图片.png\"/><br/></p><p>常用API如下：<a href=\"http://fex.baidu.com/ueditor/#api-common\" target=\"_blank\" title=\"点击进入查看常用api详情\">点击进入查看常用api详情</a></p><p>具体操作可到UEditor官网查看文档：<a href=\"http://fex.baidu.com/ueditor/#start-start\" target=\"_blank\" title=\"点击查看Ueditor官网文档\">点击查看Ueditor官网文档 <br/></a></p><p>到这里Ueditor整合方法就整合完了<br/></p>', '2018-01-30 09:27:49', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-30 09:27:49', '0000000020', '1', 'Java,Ueditor,SSM整合Ueditor,Ueditor整合教程', '0');
INSERT INTO `myblog_learningnotes` VALUES ('46367', 'UEditor之上传图片到服务器', '<p>开始写了SSM整合UEditor的整合，接着上一篇，现在写一下整合之后上传图片功能。</p><p>首先在src-&gt;main-&gt;webapp-&gt;ueditor-&gt;jsp目录下找到config.json文件</p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517280778179034676.png\" title=\"1517280778179034676.png\" alt=\"图片.png\"/></p><p>打开config.json文件，里面都是一些上传的配置项，接下来就以上传图片为例。</p><p>首先看到最顶部的image*的配置</p><p><img src=\"http://www.liaoyingtai.com/images/../images/20180130/1517280880520076751.png\" title=\"1517280880520076751.png\" alt=\"图片.png\"/></p><p>imageActionName:用来上传图片的action名字，imageFieldName:上传时文件绑定的参数名字</p><p>imageUrlPrefix:此配置项用在图片上传成功后返回的路径前缀、imagePathFormat：此配置项为上传的图片保存的位置</p><p>imagePathFormat中可用如下格式化路径代码：</p><pre class=\"brush:java;toolbar:false\">{filename}&nbsp;&nbsp;//会替换成文件名&nbsp;[要注意中文文件乱码问题]\n{rand:6}&nbsp;&nbsp;&nbsp;&nbsp;//会替换成随机数,后面的数字是随机数的位数\n{time}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成时间戳\n{yyyy}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成四位年份\n{yy}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成两位年份\n{mm}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成两位月份\n{dd}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成两位日期\n{hh}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成两位小时\n{ii}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成两位分钟\n{ss}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//会替换成两位秒</pre><p><strong><span style=\"color: rgb(255, 0, 0);\">imagePathFormat如果以/开头，表示在网站的根目录下，</span></strong></p><p>例：网站根目录是 &quot;D://apache/www/&quot;，imagePathFormat 参数设置为 &quot;/upload/image/{filename}&quot;，那么上传位置在 &quot;D://apache/www/upload/image/&quot; 目录下。</p><p><span style=\"color: rgb(255, 0, 0);\"><strong>imagePathFormat如果不是以/开头的相对目录时，默认位置还是在网站根目录下，可通过设置相对路径来决定文件上传的位置</strong></span></p><p>例1：网站根目录是 &quot;D://apache/www/&quot;，imagePathFormat 参数设置为 &quot;ueditor/php/upload/{filename}&quot;，那么上传位置在 &quot;D://apache/www/ueditor/php/upload/&quot; 目录下。</p><p>例2：网站根目录是 &quot;D://apache/www/&quot;，imagePathFormat 参数设置为 &quot;../upload/{filename}&quot;，那么上传位置在 &quot;D://apache/upload/&quot; 目录下。</p><p><br/></p><p>关于上传路径返回的路径：</p><p>后台执行上传结束后，返回路径是按照 <span style=\"color: rgb(255, 0, 0);\"><strong>imagePathFormat</strong></span> 配置项替换后的字符串，原样输出到前端。</p><p>例1：上传文件名为 123.jpg，imagePathFormat 参数设置为 &quot;/ueditor/jsp/upload/{filename}&quot;，那么返回路径是 &quot;/ueditor/jsp/upload/123.jpg&quot;。</p><p>例2：上传文件名为 123.jpg，imagePathFormat 参数设置为 &quot;../upload/{filename}&quot;，那么返回路径是 &quot;../upload/123.jpg&quot;。</p><p><br/></p><p><span style=\"color: rgb(255, 0, 0);\">注：如果设置<span style=\"color: rgb(255, 0, 0); background-color: rgb(255, 255, 0);\"><strong>imageUrlPrefix</strong></span><strong>后，那么返回的路径是 <span style=\"color: rgb(255, 0, 0); background-color: rgb(255, 255, 0);\"><strong>imageUrlPrefix</strong></span>+<span style=\"color: rgb(255, 0, 0); background-color: rgb(255, 255, 0);\"><strong>imagePathFormat</strong></span></strong><strong><span style=\"color: rgb(255, 0, 0);\">的值</span></strong></span></p><p><span style=\"color: rgb(255, 0, 0);\"><span style=\"color: rgb(255, 0, 0);\">例如：<span style=\"color: rgb(255, 0, 0);\"><span style=\"color: rgb(255, 0, 0); background-color: rgb(255, 255, 0);\"><strong>imageUrlPrefix</strong></span></span>参数为&quot;http://www.liaoyingtai.com&quot;,<span style=\"color: rgb(255, 0, 0);\"><strong><span style=\"color: rgb(255, 0, 0); background-color: rgb(255, 255, 0);\"><strong>imagePathFormat</strong></span></strong></span>的值为/ueditor/jsp/upload/{filename},</span></span></p><p><span style=\"color: rgb(255, 0, 0);\"><span style=\"color: rgb(255, 0, 0);\">那么返回的内容就是</span></span>http://www.liaoyingtai.com/ueditor/jsp/upload/123.jpg<span style=\"color: rgb(255, 0, 0);\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"color: rgb(255, 0, 0);\"><br/></span></span></span></span></p><p><span style=\"color: rgb(255, 0, 0);\">那么如果<span style=\"color: rgb(255, 0, 0);\"><strong><span style=\"color: rgb(255, 0, 0); background-color: rgb(255, 255, 0);\"><strong>imagePathFormat</strong></span></strong><span style=\"color: rgb(255, 0, 0);\">使用的是例2的参数，那么返回的内容就是<span style=\"color: rgb(255, 0, 0);\"><span style=\"color: rgb(255, 0, 0);\"></span></span></span></span></span>http://www.liaoyingtai.com/../upload/123.jpg<br/></p><br/>', '2018-01-30 11:25:35', '54b70f611f46181e1bfe7e3714bb2eeb', '0', '0', '0', '1', '2018-01-30 11:25:35', '0000000081', '23', 'UEditor,UEditor上传图片', '0');

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
  `userInfo_WeChat` varchar(32) DEFAULT NULL,
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
INSERT INTO `myblog_userinfo` VALUES ('54b70f611f46181e1bfe7e3714bb2eeb', 'lyt2598', '8a52b47556cb367db7bede4d4feca95e', 'LiaoYingTai', '133173090**', '0123-1234567', 'ppctg______lyt', 'lyt2598@aliyun.com', '31448522', 'default.png', 'https://github.com/lyt2598/MyBlog', '2017-12-21 10:55:52', null, '0', '1');
