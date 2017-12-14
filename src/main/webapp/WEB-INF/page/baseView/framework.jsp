<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>LYT - 个人主页 - Nerver Give Up</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/referenced/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css/mybuild/myhead.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/font-awesome/font-awesome.min.css">
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
</head>

<body
	style="background:#f5e5c1 url(${pageContext.request.contextPath }/img/bg.jpg) 50% top scroll no-repeat">
	<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<span class="navbar-brand">LYT - 个人主页</span>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-left">
				<c:forEach var="index_menu" items="${index_head_menu }"
					varStatus="index">
					<c:choose>
						<c:when
							test="${index_menu.headMenu_URL==null || index_menu.headMenu_URL==''}">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" target="indexFrame">${index_menu.headMenu_Name}<b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<c:forEach var="index_cMenu"
										items="${index_menu.blogHeadMenus }">
										<li><a
											href="${pageContext.request.contextPath}/${index_cMenu.headMenu_URL}"
											target="indexFrame">${index_cMenu.headMenu_Name}</a></li>
										<li class="divider"></li>
									</c:forEach>
								</ul></li>
						</c:when>
						<c:otherwise>
							<li ${index.index==0?'class="active"':'' }
								id="index_menu_${index_menu.headMenu_URL}"><a
								href="${pageContext.request.contextPath}/${index_menu.headMenu_URL}"
								target="indexFrame">${index_menu.headMenu_Name}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><i class="fa fa-plus" aria-hidden="true"></i>
						注册</a></li>
				<li><a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i>
						登录</a></li>
				<li><a href="#"><i class="fa fa-sign-out"
						aria-hidden="true"></i> 退出</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="logo-div">
			<h1>
				LYT - 个人主页 - Nerver Give Up <br> <a href=''><span>http://blog.myegames.cn</span></a>&nbsp;<a
					href="https://github.com/lyt2598/MyBlog" target="_blank"><i
					class="fa fa-github" aria-hidden="true"></i></a> <a
					href="http://wpa.qq.com/msgrd?v=3&uin=31448522&site=qq&menu=yes"
					target="_blank"><i class="fa fa-qq" aria-hidden="true"></i></a>
			</h1>
		</div>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Nerver Give Up</h3>
			</div>
			<!-- ${pageContext.request.contextPath }/index.action -->
			<div class="panel-body">
				<iframe src="${pageContext.request.contextPath }/MyJsp.jsp"
					onload="loadFrame()" id="indexFrame" name="indexFrame"
					scrolling="no" height="100"></iframe>
				<script>
					//document.domain = "xxx.com";//如果跨域就需要设置此项
					function loadFrame() {
						var ifm = document.getElementById("indexFrame");
						var obj;
						try {
							obj = ifm.contentDocument;
						} catch (e) {
							obj = ifm.contentWindow.document;
						}
						var subWeb = document.frames ? document.frames["indexFrame"].document
								: obj;
						if (ifm != null && subWeb != null) {
							ifm.height = subWeb.body.scrollHeight;
						}
					}
				</script>
			</div>
			<div class="panel-footer" align="center">
				本网站源码均在<a href="https://github.com/lyt2598/MyBlog" target="_blank"><i
					class="fa fa-github" aria-hidden="true"></i>GitHub</a>上，联系方式：<a
					href="http://wpa.qq.com/msgrd?v=3&uin=31448522&site=qq&menu=yes"
					target="_blank"><i class="fa fa-qq" aria-hidden="true"></i>
					31448522</a> — Lyt
			</div>
		</div>
	</div>
</body>
</html>