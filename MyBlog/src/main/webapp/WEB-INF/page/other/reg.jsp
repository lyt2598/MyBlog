<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'reg.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="../baseView/pageBaseJS.jsp"%>
<%@ include file="../baseView/pageBaseCSS.jsp"%>
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/login.js"></script>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<span class="navbar-brand">NGU&nbsp;-&nbsp;个人主页</span>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-right">
				<li><a
					href="${pageContext.request.contextPath }/userInfo/regUser"
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
		<%@ include file="../baseView/pageLogo.jsp"%>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">Nerver Give Up</h3>
			</div>
			<div class="my-panel-body" id="panel-body" style="margin: 10px;"
				align="center">
				<div class="page-header">
					<h1>
						注册<small>成为我们中的一员</small>
					</h1>
				</div>
				<div style="width: 65%;" align="left">
					<div class="panel panel-primary">
						<div class="panel-body">
							<c:choose>
								<c:when test="${errorList!=null}">
									<div id="loginMessage" class="alert alert-danger">
										<strong>错误信息如下：</strong><br />
										<c:forEach items="${errorList }" var="error">
								${error.defaultMessage }<br />
										</c:forEach>
									</div>
								</c:when>
								<c:otherwise>
									<div id="loginMessage"></div>
								</c:otherwise>
							</c:choose>
							<form
								action="${pageContext.request.contextPath }/userInfo/regUser"
								role="form" onsubmit="return submitReg()" method="post">
								<div class="form-group">
									<label for="name">用户名</label> <input type="text"
										class="form-control login-username" name="userInfo_Account"
										placeholder="请输入用户名"
										onchange="checkAccountAlreadyExist(this.value)"
										onblur="checkAccountAlreadyExist(this.value)"
										value="${userInfo.userInfo_Account }">
								</div>
								<div class="form-group">
									<label for="name">昵称</label> <input type="text"
										class="form-control login-name" name="userInfo_Name"
										placeholder="请输入昵称" value="${userInfo.userInfo_Name }">
								</div>
								<div class="form-group">
									<label for="name">密码</label> <input type="password"
										class="form-control login-password" name="userInfo_Password"
										placeholder="请输入密码">
								</div>
								<div class="form-group">
									<label for="name">再次输入密码</label> <input type="password"
										class="form-control login-password1" placeholder="请再次输入密码">
								</div>
								<div class="form-group">
									<label for="name">邮箱</label> <input type="text"
										class="form-control login-email" name="userInfo_Email"
										placeholder="请输入邮箱" value="${userInfo.userInfo_Email }">
								</div>
								<div class="form-group">
									<label for="name">验证码</label><input type="text"
										class="form-control login-checkcode" name="checkCode"
										placeholder="请输入验证码">
								</div>
								<div class="form-group">
									<img
										src="${pageContext.request.contextPath }/img/aboutme_top.jpg"
										class="img-rounded" height="100px" width="100%"
										title="看不清？点击即可更换" />
								</div>
								<div class="form-group">
									<button type="submit" class="btn btn-primary col-sm-12">立即登录</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-footer" align="center">
				本网站源码均在<a href="https://github.com/lyt2598/MyBlog" target="_blank"><i
					class="fa fa-github" aria-hidden="true"></i>GitHub</a>上，联系方式：<a
					href="http://wpa.qq.com/msgrd?v=3&uin=31448522&site=qq&menu=yes"
					target="_blank"><i class="fa fa-qq" aria-hidden="true"></i>
					31448522</a> — Lyt
			</div>
		</div>
		<%@ include file="../baseView/pageFooter.jsp"%>
	</div>
</body>
</html>
