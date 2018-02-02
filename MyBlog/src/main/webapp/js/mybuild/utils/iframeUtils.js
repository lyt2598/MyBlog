// document.domain = "xxx.com";//如果跨域就需要设置此项
function changeFrameHeight() {
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