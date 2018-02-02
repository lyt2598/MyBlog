<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>学习笔记 - Nerver Give Up</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@ include file="../baseView/pageBaseJS.jsp"%>
<%@ include file="../baseView/pageBaseCSS.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/learningNotes/learningNotes.css">
<script
	src="${pageContext.request.contextPath }/js/mybuild/learningNotes/learningNotes.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/dateFormat.js"></script>
<script type="text/javascript">
	(function() {
		var appid = 'cytqfnp8B';
		var conf = 'prod_65ef75d90f5c3635d4d6befda898c451';
		var width = window.innerWidth || document.documentElement.clientWidth;
		if (width < 960) {
			window.document
					.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id='
							+ appid + '&conf=' + conf + '"><\/script>');
		} else {
			var loadJs = function(d, a) {
				var c = document.getElementsByTagName("head")[0]
						|| document.head || document.documentElement;
				var b = document.createElement("script");
				b.setAttribute("type", "text/javascript");
				b.setAttribute("charset", "UTF-8");
				b.setAttribute("src", d);
				if (typeof a === "function") {
					if (window.attachEvent) {
						b.onreadystatechange = function() {
							var e = b.readyState;
							if (e === "loaded" || e === "complete") {
								b.onreadystatechange = null;
								a()
							}
						}
					} else {
						b.onload = a
					}
				}
				c.appendChild(b)
			};
			loadJs("https://changyan.sohu.com/upload/changyan.js", function() {
				window.changyan.api.config({
					appid : appid,
					conf : conf
				})
			});
		}
	})();
</script>
</head>

<body>
	<%@ include file="../baseView/pageBody.jsp"%>
	<script type="text/javascript">
		$(document).ready(function(e) {
			var uid = '${userId}';
			var lnId = '${lnId}';
			var url = '${pageContext.request.contextPath }';
			var html = getLearningNotesBaseHtml();
			setPanelBody(html);
			getLearningNotesInfo(lnId);
			getOtherLearningNotesInfo(lnId);
			$("[data-toggle='tooltip']").tooltip();
		})
	</script>
</body>
</html>
