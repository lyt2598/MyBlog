<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>LYT - Blog - Nerver Give Up</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/referenced/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css/mybuild/myhead.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/font-awesome/font-awesome.min.css">
<script src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
</head>

<body
	style="background:#f5e5c1 url(${pageContext.request.contextPath }/img/bg.jpg) 50% top scroll no-repeat">
	<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<span class="navbar-brand">LYT - Blog - Nerver Give Up</span>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="${pageContext.request.contextPath}/index.action">首页</a></li>
				<li><a href="#">个人介绍</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">博文列表<b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">生活情况</a></li>
						<li class="divider"></li>
						<li><a href="#">真情流露</a></li>
						<li class="divider"></li>
						<li><a href="#">其他</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">学习笔记<b class="caret"></b>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">Java</a></li>
						<li class="divider"></li>
						<li><a href="#">Python</a></li>
						<li class="divider"></li>
						<li><a href="#">前端</a></li>
						<li class="divider"></li>
						<li><a href="#">其他</a></li>
					</ul></li>
				<li><a href="#">给我留言</a></li>
				<li><a href="#">关于本站</a></li>
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
			<img src="img/logo.png" height="200px" width="200px" />
			<h1>
				LYT - 个人博客 - Nerver Give Up <br> <a href=''><span>http://blog.myegames.cn</span></a>&nbsp;<a
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
			<div class="panel-body">
				<iframe src="www.baidu.com"></iframe>
			</div>
			<div class="panel-footer" align="center">
				本网站源码均在<a href="https://github.com/lyt2598/MyBlog" target="_blank"><i
					class="fa fa-github" aria-hidden="true"></i>GitHub</a>上 — Lyt
				企鹅：31448522
			</div>
		</div>
	</div>
</body>
</html>