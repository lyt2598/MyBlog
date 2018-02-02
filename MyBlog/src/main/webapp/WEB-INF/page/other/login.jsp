<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/bootstrap/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/login.js"></script>
</head>

<body style="margin: 20px; height: 550px;">
	<div class="page-header">
		<h1>
			登陆<small>Login</small>
		</h1>
	</div>
	<div class="col-sm-8">
		<div id="myCarousel" class="carousel slide">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img
						src="${pageContext.request.contextPath }/img/loginPage/slide1.png"
						width="100%" height="100%" />
				</div>
				<div class="item">
					<img
						src="${pageContext.request.contextPath }/img/loginPage/slide2.png"
						width="100%" height="100%" />
				</div>
				<div class="item">
					<img
						src="${pageContext.request.contextPath }/img/loginPage/slide3.png"
						width="100%" height="100%" />
				</div>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;
			</a> <a class="carousel-control right" href="#myCarousel"
				data-slide="next">&rsaquo; </a>
		</div>
	</div>
	<div class="col-sm-4">
		<div class="panel panel-primary">
			<div class="panel-body">
				<div id="loginMessage"></div>
				<form role="form">
					<div class="form-group">
						<label for="name">用户名</label> <input type="text"
							class="form-control login-username" placeholder="请输入用户名"
							onblur="checkUserName(this.value)">
					</div>
					<div class="form-group">
						<label for="name">密码</label> <input type="password"
							class="form-control login-password" placeholder="请输入用户口令"
							onblur="checkPassWord(this.value)">
					</div>
					<div class="form-group">
						<label for="name">验证码</label><input type="text"
							class="form-control login-checkcode" placeholder="请输入验证码"
							onblur="checkCheckCode(this.value)">
					</div>
					<div class="form-group">
						<img src="${pageContext.request.contextPath }/img/aboutme_top.jpg"
							class="img-rounded" height="100px" width="100%"
							title="看不清？点击即可更换" />
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-primary col-sm-12"
							onclick="submitLogin()">立即登录</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
