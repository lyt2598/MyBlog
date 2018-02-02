<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>个人介绍 - Nerver Give Up</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="../baseView/pageBaseJS.jsp"%>
<%@ include file="../baseView/pageBaseCSS.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/aboutMe/aboutMe.css" />
<script
	src="${pageContext.request.contextPath }/js/mybuild/aboutMe/aboutMe.js"></script>
</head>

<body>
	<%@ include file="../baseView/pageBody.jsp"%>
	<script type="text/javascript">
		$(document).ready(function(e) {
			var uid = '${userId}';
			var url = '${pageContext.request.contextPath }';
			/* loadPageContent(url, uid); */
			var html = getAboutBaseHtml();
			setPanelBody(html);
			getAboutMe(url, uid);
		});
	</script>
</body>
</html>
