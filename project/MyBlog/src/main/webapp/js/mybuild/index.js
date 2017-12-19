$(document).ready(function(e) {
	$("#indexMenu li").click(function() {
		var obj = $(this).hasClass("dropdown");
		if (obj == false) {
			$("#indexMenu li").removeClass("active");
			$(this).addClass("active");
		}
	});
	$("#indexMenu .dropdown li").click(function() {
		$("#indexMenu li").removeClass("active");
		$(this).closest(".dropdown").addClass("active");
	});
});

// document.domain = "xxx.com";//如果跨域就需要设置此项
function loadFrame() {
	var ifm = document.getElementById("indexFrame");
	var obj;
	try {
		obj = ifm.contentDocument;
	} catch (e) {
		obj = ifm.contentWindow.document;
	}
	var subWeb = document.frames ? document.frames["indexFrame"].document : obj;
	if (ifm != null && subWeb != null) {
		ifm.setAttribute('height', 'auto');
		ifm.height = subWeb.body.scrollHeight;
	}
}