<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'uploadTest.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<div id="editor">
		<p>
			欢迎使用 <b>wangEditor</b> 富文本编辑器
		</p>
	</div>

	<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
	<script src="./editor/wangEditor.min.js"></script>
	<script type="text/javascript">
		var E = window.wangEditor
		var editor = new E('#editor')
		editor.customConfig.uploadImgMaxLength = 5
		editor.customConfig.debug = location.href
				.indexOf('wangeditor_debug_mode=1') > 0
		editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/upload/uploadLearningNotesImg'
		editor.customConfig.uploadImgMaxSize = 2 * 1024 * 1024
		editor.customConfig.uploadFileName = 'learningNotesFile'
		editor.customConfig.uploadImgHooks = {
			customInsert : function(insertImg, result, editor) {
				var url = result.url
				insertImg(url)
			}
		}
		editor.create()
	</script>
</body>
</html>
