function getAboutBaseHtml() {
	var html = '<div><div class="about_me_head">'
			+ '<div class="about_me_head_img" align="center"><img alt="头像" id="headImg" />'
			+ '</div><div class="about_me_name"><p id="name"></p><p>'
			+ '<i class="fa fa-envelope" aria-hidden="true"></i> Email：<span id="email"></span>'
			+ '</p></div></div><div class="about_me_context"></div></div>';
	return html;
}

function getAboutMe(url, uid) {
	$.ajax({
		url : url + "/aboutMe",
		method : "post",
		data : "uid=" + uid,
		dataType : 'json',
		beforeSend : function() {
			$(".about_me_context").html(getLoaingHtml("正在加载中..."));
		},
		success : function(data) {
			var obj = eval(data);
			$(".about_me_name #name").html(obj.userInfo.userInfo_Name);
			$(".about_me_name #email").html(
					'<a href="mailto:' + obj.userInfo.userInfo_Email + '">'
							+ obj.userInfo.userInfo_Email + '</a>');
			$(".about_me_head_img #headImg").attr("src",
					url + "/img/user/head/" + obj.userInfo.userInfo_HeadImg);
			if (obj.myBlog_AboutMe_id != 0) {
				var contactHtml = getContactHtml(obj);
				var context = [ obj.aboutMe_Describe, obj.aboutMe_Skill,
						obj.aboutMe_Development, obj.aboutMe_Hobby,
						obj.aboutMe_Other, contactHtml ];
				var html = getAboutMeListHtml(context);
				$(".about_me_context").html(html);
			} else {
				$(".about_me_context").html(
						"<h1 style='text-align:center;'>这家伙很懒，什么都没有写!</h1>");
			}
		},
		error : function(e) {
			$(".about_me_context").html(
					"<h1 style='text-align:center;'>读取时出错，请刷新页面重试！</h1>");
		}
	});
}

function getLoaingHtml(text) {
	var html = '<h1 style="text-align:center;"><i class="fa fa-repeat loading-logo" aria-hidden="true"></i>&nbsp;'
			+ text + '</h1>';
	return html;
}
// 读取一行html
function getAboutMeListHtml(context) {
	var html = '<ul class="context_list">';
	var icon = [ "fa-commenting-o", "fa-cogs ", "fa-bug", "fa-music",
			"fa-bookmark-o", "fa-phone-square" ];
	var title = [ "个人描述", "技能介绍", "开发经验", "爱好介绍", "其他描述", "联系方式" ];
	var temp_html = "";
	for (var i = 0; i < title.length; i++) {
		if (context[i] != null && context[i] != '') {
			temp_html += '<li><div class="list_right"><h1><i class="fa '
					+ icon[i]
					+ '" aria-hidden="true"></i><span class="list_right_title">'
					+ title[i] + '</span>'
					+ '</h1><pre class="list_right_context">' + context[i]
					+ '</pre></div></li>';
		}
	}
	html = html + temp_html + '</ul>';
	if (temp_html == '') {
		html = "<h1 style='text-align:center;'>这家伙很懒，什么都没有写!</h1>";
	}
	return html;
}
// 读取联系方式html
function getContactHtml(obj) {
	var html = '';
	if (obj.aboutMe_QQAccount == 1 && obj.userInfo.userInfo_QQaccount != null
			&& obj.userInfo.userInfo_QQaccount != "") {
		html += '<p><i class="fa fa-qq" aria-hidden="true"></i>&nbsp;QQ号码：<a href="http://wpa.qq.com/msgrd?v=3&uin='
				+ obj.userInfo.userInfo_QQaccount
				+ '&site=qq&menu=yes" target="_blank">'
				+ obj.userInfo.userInfo_QQaccount + '</a></p>';
	}
	if (obj.aboutMe_Tel == 1 && obj.userInfo.userInfo_Tel != null
			&& obj.userInfo.userInfo_Tel != "") {
		html += '<p><i class="fa fa-fax" aria-hidden="true"></i>&nbsp;电话号码：'
				+ obj.userInfo.userInfo_Tel + '</p>';
	}
	if (obj.aboutMe_Phone == 1 && obj.userInfo.userInfo_Phone != null
			&& obj.userInfo.userInfo_Phone != "") {
		html += '<p><i class="fa fa-phone-square" aria-hidden="true"></i>&nbsp;手机号码：'
				+ obj.userInfo.userInfo_Phone + '</p>';
	}
	if (obj.aboutMe_GitHub == 1 && obj.userInfo.userInfo_GitHub != null
			&& obj.userInfo.userInfo_GitHub != "") {
		html += '<p><i class="fa fa-github" aria-hidden="true"></i>&nbsp;GitHub：<a href="'
				+ obj.userInfo.userInfo_GitHub
				+ '" target="_blank">'
				+ obj.userInfo.userInfo_GitHub + '</a></p>';
	}
	html += '<p><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;Email：<a href="mailto:'
			+ obj.userInfo.userInfo_Email
			+ '">'
			+ obj.userInfo.userInfo_Email
			+ '</a></p>';
	return html;
}