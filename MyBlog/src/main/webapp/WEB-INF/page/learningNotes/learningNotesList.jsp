<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>学习笔记列表 - Nerver Give Up</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="../baseView/pageBaseJS.jsp"%>
<%@ include file="../baseView/pageBaseCSS.jsp"%>
<!-- 页面级样式 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/learningNotes/learningNotesList.css" />
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/dateFormat.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/tableUtils.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/learningNotes/learningNotesList.js"></script>
</head>

<body>
	<%@ include file="../baseView/pageBody.jsp"%>
	<script type="text/javascript">
		$(document).ready(function(e) {
			var uid = '${userId}';
			var html = getLearningNotesListBaseHtml(uid);
			//checkUserLogin();
			setPanelBody(html);
			getLearningNotestList(uid, 1, 20);
			$("#searchData").keydown(function(e) {
				if (e.keyCode == 13) {
					search(uid);
				}
			});
		})
	</script>
</body>
</html>
