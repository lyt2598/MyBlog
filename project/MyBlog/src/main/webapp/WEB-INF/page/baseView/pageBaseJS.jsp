<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/loadPageContent.js"></script>
<script>
	var basePath = '${pageContext.request.contextPath}';
	//登陆窗口被隐藏时动作
	$(function() {
		$('#loginModal').on('hide.bs.modal', function() {
			$("#loginModal #login_username").val("");
			$("#loginModal #login_password").val("");
			$("#loginModal #login_checkcode").val("");
			$("#loginModal #loginMessage").html("");
			$("#loginModal #loginMessage").removeAttr("class");
		})
	});
</script>