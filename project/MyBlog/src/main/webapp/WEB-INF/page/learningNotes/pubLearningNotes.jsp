<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'pubLearningNotes.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<%@ include file="../baseView/pageBaseJS.jsp"%>
<%@ include file="../baseView/pageBaseCSS.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/learningNotes/learningNotes.css">
<script
	src="${pageContext.request.contextPath }/editor/wangEditor.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/learningNotes/learningNotesList.js"></script>
</head>

<body>
	<%@ include file="../baseView/pageBody.jsp"%>
	<script type="text/javascript">
		$(document).ready(
				function(e) {
					var url = '${pageContext.request.contextPath }';
					var html = getPubLNBaseHtml();
					setPanelBody(html);
					getLNType(url);
					var E = window.wangEditor;
					var editor = new E('#editor');
					editor.customConfig.uploadImgMaxLength = 5;
					editor.customConfig.debug = location.href
							.indexOf('wangeditor_debug_mode=1') > 0;
					editor.customConfig.uploadImgServer = url
							+ '/upload/uploadLearningNotesImg';
					editor.customConfig.uploadImgMaxSize = 2 * 1024 * 1024;
					editor.customConfig.uploadFileName = 'learningNotesFile';
					editor.customConfig.uploadImgHooks = {
						customInsert : function(insertImg, result, editor) {
							var url = result.url
							insertImg(url)
						}
					}
					editor.create();
					$('#publishLN').click(function() {
						pubLearningNotes(editor);
					});
				})
	</script>
</body>
</html>
