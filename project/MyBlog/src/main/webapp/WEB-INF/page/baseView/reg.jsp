<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'reg.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/bootstrap/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/login.js"></script>
</head>

<body style="margin: 20px;height: 800px;">
	<div class="page-header">
		<h1>
			注册<small>成为我们中的一员</small>
		</h1>
	</div>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
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
				<form action="${pageContext.request.contextPath }/regUser.action"
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
						<img src="${pageContext.request.contextPath }/img/aboutme_top.jpg"
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
</body>
</html>
