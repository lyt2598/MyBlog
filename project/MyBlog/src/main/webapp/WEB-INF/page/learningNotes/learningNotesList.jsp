<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>博文列表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@ include file="../baseView/pageBaseJS.jsp"%>
<%@ include file="../baseView/pageBaseCSS.jsp"%>
<!-- 页面级样式 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/learningNotes/learningNotes.css" />
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/dataFormat.js"></script>
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
			var url = '${pageContext.request.contextPath }';
			var html = getLearningNotesListBaseHtml(url, uid);
			setPanelBody(html);
			getLearningNotestList(url, uid, 1, 20);
			$("#searchData").keydown(function(e) {
				if (e.keyCode == 13) {
					search(url, uid);
				}
			});
		})
	</script>
</body>
</html>
