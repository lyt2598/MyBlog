function loadPageContent(url, uid) {
	$.ajax({
		url : url + "/loadContent",
		data : "uid=" + uid,
		method : "post",
		dataType : "json",
		success : function(data) {
			var obj = eval(data);
			if (obj.status == 1) {
				var headMenu = getHeadMenuHtml(obj.result.headMenu, url);
				$("#indexMenu").html(headMenu);
			} else {
				alert("读取菜单失败，请刷新重试！错误信息如下：\n" + obj.message);
			}
		},
		error : function(e) {
			console.log("读取头部菜单出错：" + e);
		}
	})
}

function getHeadMenuHtml(headMenu, url) {
	var resultHtml = '';
	for (var i = 0; i < headMenu.length; i++) {
		if (headMenu[i].headMenu_URL == null || headMenu[i].headMenu_URL == '') {
			resultHtml = '<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">'
					+ headMenu[i].headMenu_Name
					+ '<b class="caret"></b><ul class="dropdown-menu">';
			for (var j = 0; j < headMenu[i].blogHeadMenus.length; j++) {
				resultHtml += '<li class="divider"></li><li><a href="' + url
						+ '/' + headMenu[i].blogHeadMenus[j].headMenu_URL
						+ '">' + headMenu[i].blogHeadMenus[j].headMenu_Name
						+ '</a></li>';
			}
			resultHtml += '</ul></li>';
		} else {
			resultHtml += '<li><a href="' + url + '/'
					+ headMenu[i].headMenu_URL + '">'
					+ headMenu[i].headMenu_Name + '</a></li>';
		}
	}
	return resultHtml;
}
function setPanelBody(html) {
	$("#panel-body").html(html);
}