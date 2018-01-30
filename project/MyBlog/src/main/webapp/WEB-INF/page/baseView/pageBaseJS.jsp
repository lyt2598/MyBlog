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
		$("[data-toggle='tooltip']").tooltip();
		$('#loginModal').on('hide.bs.modal', function() {
			$("#loginModal #login_username").val("");
			$("#loginModal #login_password").val("");
			$("#loginModal #login_checkcode").val("");
			$("#loginModal #loginMessage").html("");
			$("#loginModal #loginMessage").removeAttr("class");
			var bp = document.createElement('script');
			var curProtocol = window.location.protocol.split(':')[0];
			if (curProtocol === 'https') {
				bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
			} else {
				bp.src = 'http://push.zhanzhang.baidu.com/push.js';
			}
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(bp, s);
		});
		$(window).scroll(function() {
			if ($(window).scrollTop() > 100) {
				$("#goTop").fadeIn(1500);
			} else {
				$("#goTop").fadeOut(1500);
			}
		});
		//当点击跳转链接后，回到页面顶部位置
		$("#goTop").click(function() {
			if ($('html').scrollTop()) {
				$('html').animate({
					scrollTop : 0
				}, 100);//动画效果
				return false;
			}
			$('body').animate({
				scrollTop : 0
			}, 100);
			return false;
		});
	});
</script>