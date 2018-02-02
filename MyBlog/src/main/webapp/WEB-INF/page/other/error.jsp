<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>错误页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="expires" content="0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/font-awesome/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/other/errorPage.css">
</head>

<body>
	<h1>
		Nerver Give Up - <span>错误页面 </span>
	</h1>
	<div class="w3layout-agileits">
		<h2>500</h2>
		<h3>对不起，出错啦!</h3>
		<p>错误信息如下：</p>
		<p>${errorMsg.message==null || errorMsg.message==''?'运行时发生未知异常,请与管理员取的联系！':errorMsg.message }</p>
		<a href="#"><i class="fa fa-angle-double-left" aria-hidden="true"></i>返回上一页</a>
	</div>
</body>
</html>
