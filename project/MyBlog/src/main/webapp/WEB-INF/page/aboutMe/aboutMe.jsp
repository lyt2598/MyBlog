<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>个人介绍</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/aboutMe/aboutMe.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/font-awesome/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/bootstrap/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/aboutMe/aboutMe.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/base.css" />
</head>

<body style="margin:0px; padding:0px;">
	<div class="about_me_body">
		<div class="about_me_head">
			<div class="about_me_head_img" align="center">
				<img alt="头像" id="headImg" />
			</div>
			<div class="about_me_name">
				<p id="name"></p>
				<p>
					<i class="fa fa-envelope" aria-hidden="true"></i> Email：<span
						id="email"></span>
				</p>
			</div>
		</div>
		<div class="col-sm-2"></div>
		<div class="about_me_context col-sm-8"></div>
	</div>
</body>
</html>
