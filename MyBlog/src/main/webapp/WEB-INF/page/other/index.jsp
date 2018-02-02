<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>个人主页&nbsp;-&nbsp;Nerver&nbsp;Give&nbsp;Up</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="../baseView/pageBaseCSS.jsp"%>
<%@ include file="../baseView/pageBaseJS.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/other/index.css">
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/dateFormat.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/other/index.js"></script>
</head>

<body>
	<%@ include file="../baseView/pageBody.jsp"%>
	<script type="text/javascript">
		$(document).ready(function(e) {
			var userId = '${userId}';
			var html = loadIndexContextHtml();
			setPanelBody(html);
			getIndexLN(userId);
			// 读取用户信息
			getUserInfo(userId);
			//读取系统时间
			getTimeHtml();
			//读取搜索框
			getSearchHtml();
		});
	</script>
</body>
</html>