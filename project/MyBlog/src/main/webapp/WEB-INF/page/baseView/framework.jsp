<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>${userInfo.userInfo_Name }&nbsp;-&nbsp;个人主页&nbsp;-&nbsp;Nerver&nbsp;Give&nbsp;Up</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/utils/loginBox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/font-awesome/font-awesome.min.css">
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/mybuild/index.js"></script>

<script>
	var locationValue = "${pageContext.request.contextPath}"
</script>

</head>

<body
	style="background:#f5e5c1 url(${pageContext.request.contextPath }/img/bg.jpg) 50% top scroll no-repeat;">
	<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<span class="navbar-brand">NGU&nbsp;-&nbsp;个人主页</span>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-left" id="indexMenu">
				<c:set var="onlyOne" value="1" />
				<c:forEach var="index_menu" items="${index_head_menu }"
					varStatus="index">
					<!-- 当前访问的用户ID，方便子页面获取 -->
					<c:if test="${onlyOne==1 }">
						<c:set var="onlyOne" value="0" />
						<input type="hidden" value="${index_menu.headMenu_UserId }"
							id="currentViewsUser" />
					</c:if>
					<c:choose>
						<c:when
							test="${index_menu.headMenu_URL==null || index_menu.headMenu_URL==''}">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${index_menu.headMenu_Name}<b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<c:forEach var="index_cMenu"
										items="${index_menu.blogHeadMenus }">
										<li class="divider"></li>
										<li><a
											href="${pageContext.request.contextPath}/${index_cMenu.headMenu_URL}"
											${index_menu.hearMenu_IFrame==0?'':'target="indexFrame"' }>${index_cMenu.headMenu_Name}</a></li>
									</c:forEach>
								</ul></li>
						</c:when>
						<c:otherwise>
							<li id="index_menu_${index_menu.headMenu_URL}"><a
								href="${pageContext.request.contextPath}/${index_menu.headMenu_URL}"
								${index_menu.hearMenu_IFrame==0?'':'target="indexFrame"' }>${index_menu.headMenu_Name}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" target="indexFrame"> <img alt="头像"
						src="${pageContext.request.contextPath }/img/user/head/22343358.png"
						width="20" height="20">&nbsp;<b class="caret"></b>
				</a>
					<ul class="dropdown-menu dropdown-menu-sw">
						<li class="dropdown-header">当前用户：<strong
							style="font-size: 16px;">lyt2598de</strong></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/#"
							target="indexFrame"><span class="dropdown-menu-left-logo"><i
									class="fa fa-cog" aria-hidden="true"></i> </span>个人中心</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/#"
							target="indexFrame"><span class="dropdown-menu-left-logo"><i
									class="fa fa-plus-square" aria-hidden="true"></i> </span>生活分享</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/#"
							target="indexFrame"><span class="dropdown-menu-left-logo"><i
									class="fa fa-plus-square" aria-hidden="true"></i> </span>学习笔记</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/#"
							target="indexFrame"><span class="dropdown-menu-left-logo"><i
									class="fa fa-plus-square" aria-hidden="true"></i> </span>进入后台</a></li>
						<li class="divider"></li>
						<li><a href="${pageContext.request.contextPath}/loginOut"
							target="indexFrame"><span class="dropdown-menu-left-logo"><i
									class="fa fa-sign-out" aria-hidden="true"></i> </span>注销</a></li>
						<li class="divider"></li>
					</ul></li>
				<li><a href="${pageContext.request.contextPath }/regUser"
					target="indexFrame"><i class="fa fa-plus" aria-hidden="true"></i>
						注册</a></li>
				<li><a href="javascript:void(0)" data-toggle="modal"
					data-target="#loginModal"><i class="fa fa-sign-in"
						aria-hidden="true"></i> 登录</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="logo-div">
			<h1>
				${userInfo.userInfo_Name } - 个人主页 - Nerver Give Up <br>
				<!-- <div class="subText">
					<a href=''><span>http://www.liaoyingtai.com</span></a>&nbsp;<a
						href="https://github.com/lyt2598/MyBlog" target="_blank"><i
						class="fa fa-github" aria-hidden="true"></i></a> <a
						href="http://wpa.qq.com/msgrd?v=3&uin=31448522&site=qq&menu=yes"
						target="_blank"><i class="fa fa-qq" aria-hidden="true"></i></a>
				</div> -->
			</h1>
		</div>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Nerver Give Up</h3>
			</div>
			<!-- <ol class="breadcrumb breadcrumb-default">
				<li><a href="#">Home</a></li>
				<li><a href="#">2013</a></li>
				<li class="active">十一月</li>
			</ol> -->
			<!-- ${pageContext.request.contextPath }/index.action -->
			<div class="my-panel-body">
				<iframe src="${pageContext.request.contextPath }/login"
					onload="loadFrame()" id="indexFrame" name="indexFrame"
					scrolling="no" height="100"></iframe>
			</div>
			<div class="panel-footer" align="center">
				本网站源码均在<a href="https://github.com/lyt2598/MyBlog" target="_blank"><i
					class="fa fa-github" aria-hidden="true"></i>GitHub</a>上，联系方式：<a
					href="http://wpa.qq.com/msgrd?v=3&uin=31448522&site=qq&menu=yes"
					target="_blank"><i class="fa fa-qq" aria-hidden="true"></i>
					31448522</a> — Lyt
			</div>
		</div>
		<div class="body-footer">
			<p>
				友情链接：<a href="http://www.baidu.com" target="_black">百度</a>&nbsp;&nbsp;<a
					href="http://fzhnb.com" target="_black">豪豪商城</a>
			</p>
			<p>Copyright&copy; Nerver Give Up - lyt 版权所有</p>
			<p>Design by DanceSmile 湘ICP备XXXXXXXXXXXXXX号-1</p>
		</div>
	</div>
	<%@ include file="loginModal.jsp"%>
</body>
</html>