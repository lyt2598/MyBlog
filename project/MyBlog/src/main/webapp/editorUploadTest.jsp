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
		//editor.uploadImgServer = 'http://localhost:8080/MyBlog/upload/uploadLearningNotesImg'
		editor.customConfig.debug = location.href
				.indexOf('wangeditor_debug_mode=1') > 0
		editor.customConfig.uploadImgServer = 'http://localhost:8080/MyBlog/upload/uploadLearningNotesImg'
		editor.customConfig.uploadImgMaxSize = 2 * 1024 * 1024
		editor.customConfig.uploadFileName = 'learningNotesFile'
		editor.customConfig.uploadImgHeaders = {
			'Accept' : 'multipart/form-data'
		}
		//editor.customConfig.customUploadImg = function(files, insert) {
			// files 是 input 中选中的文件列表
			// insert 是获取图片 url 后，插入到编辑器的方法
			// 上传代码返回结果之后，将图片插入到编辑器中
			//insert(imgUrl)
		//}
		/* editor.customConfig.uploadImgHooks = {
			// 图片上传出错时触发      xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
			 error : function(xhr, editor) {
				alert("2:" + xhr);
			},
			fail : function(xhr, editor, result) {
				alert("1:" + xhr);
			}, 
		} */
		editor.create()
	</script>
</body>
</html>
