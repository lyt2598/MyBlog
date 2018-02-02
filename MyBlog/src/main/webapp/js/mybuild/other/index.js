function loadIndexContextHtml() {
	var html = '<div id="indexContext">'
			+ '<div id="indexRight" class="lnHidden"><div class="boxShadow rightList" align="center"><div class="title">当前时间</div>'
			+ '<div class="dataTime rightContext"></div></div>'
			+ '<div class="boxShadow rightList"><div class="title">用户资料</div><div class="indexUserInfo rightContext"></div>'
			+ '</div><div class="boxShadow rightList" align="center"><div class="title">网站分享</div><div class="baiduFX rightContext">'
			+ getBaiduFXHTML()
			+ '</div></div></div>'
			+ '<div id="indexLeft"><div class="lnContext boxShadow loadingIndex" align="center">'
			+ '<i class="fa fa-repeat loading-logo" aria-hidden="true"></i>正在加载中...</div></div></div>';
	return html;
}

function getIndexLN(uid) {
	$
			.ajax({
				url : basePath + '/getLearningNotesList',
				data : "uid=" + uid + "&page=1&limit=5",
				method : "post",
				dataType : "json",
				beforSend : function() {
					$("#indexLeft").html(html);
				},
				success : function(data) {
					var obj = eval(data);
					if (obj.status == 1) {
						getLearningNotesList(obj.result.learningNotesList.learningNotes);
					} else {
						alert(obj.message);
						console.log(obj.result.exception);
					}
				},
				error : function(e) {
					alert("读取首页文章时出错,请刷新后重试！");
					console.log(e);
				}
			})
}
// 读取首页笔记列表
function getLearningNotesList(lnList) {
	var html = "";
	for (var i = 0; i < lnList.length; i++) {
		var imgSrc = getFirstImgSrc(lnList[i].learningNotes_Context);
		// console.log(imgSrc);
		html += '<div class="lnContext boxShadow">'
				+ '<div class="lnImg"><img '
				+ imgSrc
				+ ' alt="文章图片" class="img-thumbnail"></div>'
				+ '<div class="lnValue"><a href="'
				+ basePath
				+ '/learningNotes/'
				+ lnList[i].learningNotes_PubUser
				+ '/'
				+ lnList[i].myBlog_LearningNotes_id
				+ '"><span class="lnTitle"><span class="lnType lnHidden">[ '
				+ lnList[i].learningNotesType.learningNotes_Type_Name
				+ ' ]</span>'
				+ lnList[i].learningNotes_Title
				+ '</span></a>'
				+ '<div class="lnText">'
				+ getContext(lnList[i].learningNotes_Context)
				+ '</div>'
				+ '<div class="lnMore" onclick="goLearningNotes(\''
				+ lnList[i].learningNotes_PubUser
				+ '\',\''
				+ lnList[i].myBlog_LearningNotes_id
				+ '\')">阅读全文</div>'
				+ '<div class="lnView lnHidden"><span class="view"><span class="badge"><i class="fa fa-eye i-default" aria-hidden="true"></i>浏览次数：'
				+ lnList[i].learningNotes_ViewCount
				+ '</span></span><span class="view"><span class="badge"><i class="fa fa-commenting-o i-default" aria-hidden="true"></i>评论次数：<span id = "sourceId::'
				+ '/learningNotes/'
				+ lnList[i].learningNotes_PubUser
				+ '/'
				+ lnList[i].myBlog_LearningNotes_id
				+ '" class = "cy_cmt_count" ></span></span><script id="cy_cmt_num" src="https://changyan.sohu.com/upload/plugins/plugins.list.count.js?clientId=cytqfnp8B">'
				+ '</script></span></div>' + '</div></div>';
	}
	$("#indexLeft").html(html);
}
// 读取第一张图片路径
function getFirstImgSrc(text) {
	var regexp = new RegExp("(<img.*src=\"\.*?\>)");
	var value = text.match(regexp);
	if (value == null) {
		return "src=\"" + basePath + "/img/learningNotes/default.png\"";
	}
	regexp = /src="([^"]*)"/g;
	var resultSrc = value[0].match(regexp);
	if (resultSrc == null) {
		return "src=\"" + basePath + "/img/learningNotes/default.png\"";
	}
	resultSrc = resultSrc[0];
	return resultSrc;
}
// 读取纯文本内容，剔除html标签
function getContext(text) {
	var reTag = /<(?:.|\s)*?>/g;
	return text.replace(reTag, "");
}
// 跳转到文章信息界面
function goLearningNotes(uId, lnId) {
	location.href = basePath + "/learningNotes/" + uId + "/" + lnId;
}

function getUserInfo(uid) {
	$.ajax({
		url : basePath + "/userInfo/baseUserInfo/" + uid,
		method : "post",
		dataType : "json",
		success : function(data) {
			var obj = eval(data);
			if (obj.status == 1) {
				getUserInfoHtml(obj.result.userInfo);
			} else {
				alert(obj.message);
				console.log(obj.result.exception);
			}
		},
		error : function(e) {
			alert("读取首页用户信息时出错,请刷新后重试！");
			console.log(e);
		}
	})
}

// 读取用户信息
function getUserInfoHtml(userInfo) {
	var html = '<div id="baseUserInfo"><div id="userInfoHeadImg"><a href="'
			+ basePath
			+ '/aboutMe/'
			+ userInfo.myBlog_UserInfo_id
			+ '"><img src="'
			+ basePath
			+ '/img/user/head/'
			+ userInfo.userInfo_HeadImg
			+ '" class="img-circle"></a></div>'
			+ '<div id="userInfo"><span class="userInfoSpan" data-toggle="tooltip" data-placement="top" data-original-title="用户名字"><i class="fa fa-user" aria-hidden="true"></i>'
			+ userInfo.userInfo_Name
			+ '</span><span class="userInfoSpan" data-toggle="tooltip" data-placement="top" data-original-title="用户邮箱"><a href="mailto:'
			+ userInfo.userInfo_Email
			+ '"><i class="fa fa-envelope" aria-hidden="true"></i>'
			+ userInfo.userInfo_Email
			+ '</a></span></div>'
			+ '</div><hr>'
			+ '<span class="userInfoSpan" data-toggle="tooltip" data-placement="top" data-original-title="QQ"><i class="fa fa-qq" aria-hidden="true"></i>QQ：'
			+ userInfo.userInfo_QQaccount
			+ '</span>'
			+ '<span class="userInfoSpan" data-toggle="tooltip" data-placement="top" data-original-title="微信"><i class="fa fa-weixin" aria-hidden="true"></i>微信：'
			+ userInfo.userInfo_WeChat
			+ '</span>'
			+ '<span class="userInfoSpan" data-toggle="tooltip" data-placement="top" data-original-title="GitHub"><i class="fa fa-github-square" aria-hidden="true"></i>GitHub：<a href="'
			+ userInfo.userInfo_GitHub
			+ '" target="_black">点击进入Ta的GitHub</a></span>' + '</div>';
	$("title").html(
			userInfo.userInfo_Name
					+ "&nbsp;-&nbsp;个人主页&nbsp;-&nbsp;Nerver&nbsp;Give&nbsp;Up");
	$(".indexUserInfo").html(html);
	// 因为网页内容是异步加载的，所以tooltip需要重新激活
	$("[data-toggle='tooltip']").tooltip();
}
function getTimeHtml() {
	var date = new Date().format("yyyy年MM月dd日 hh:mm:ss");
	var html = '<i class="fa fa-clock-o i-default" aria-hidden="true"></i>'
			+ date
	$(".dataTime").html(html);
	setTimeout("getTimeHtml()", 1000);
}
function getSearchHtml() {
	var html = getBaiduFXHTML();// 读取百度分享HTML代码
	console.log(html);
	$(".mySearch").html(html);
}