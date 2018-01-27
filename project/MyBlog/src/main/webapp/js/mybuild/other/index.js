function loadIndexContextHtml() {
	var html = '<div id="indexContext">'
			+ '<div id="indexRight" class="lnHidden"></div>'
			+ '<div id="indexLeft"></div>' + '</div>';
	return html;
}

function getIndexLN(uid) {
	$
			.ajax({
				url : basePath + '/getLearningNotesList',
				data : "uid=" + uid + "&page=1&limit=10",
				method : "post",
				dataType : "json",
				success : function(data) {
					var obj = eval(data);
					if (obj.status == 1) {
						getLearningNotesList(obj.result.learningNotesList.learningNotes);
					} else {
						alert(obj.message);
						console.log.log(obj.result.exception);
					}
				},
				error : function(e) {
					alert("读取首页文章时出错,请刷新后重试！");
					console.log.log(e);
				}
			})
}
// 读取首页笔记列表
function getLearningNotesList(lnList) {
	var html = "";
	for (var i = 0; i < lnList.length; i++) {
		var imgSrc = getFirstImgSrc(lnList[i].learningNotes_Context);
		html += '<div class="lnContext boxShadow">'
				+ '<div class="lnImg"><img src="'
				+ imgSrc
				+ '" alt="文章图片" class="img-thumbnail"></div>'
				+ '<div class="lnValue"><a href=""><span class="lnTitle"><span class="lnType lnHidden">[ '
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
				+ '<div class="lnView lnHidden"><span class="view"><i class="fa fa-eye i-default" aria-hidden="true"></i>浏览次数：'
				+ lnList[i].learningNotes_ViewCount
				+ '</span><span class="view"><i class="fa fa-commenting-o i-default" aria-hidden="true"></i>评论次数：<span id = "sourceId::'
				+ '/learningNotes/'
				+ lnList[i].learningNotes_PubUser
				+ '/'
				+ lnList[i].myBlog_LearningNotes_id
				+ '" class = "cy_cmt_count" ></span><script id="cy_cmt_num" src="https://changyan.sohu.com/upload/plugins/plugins.list.count.js?clientId=cytqfnp8B">'
				+ '</script></span></div>' + '</div></div>';
	}
	$("#indexLeft").html(html);
}
// 读取第一张图片路径
function getFirstImgSrc(text) {
	var regexp = new RegExp("(<img.*src=\"\.*?\>)");
	var value = text.match(regexp);
	if (value == null) {
		return basePath + "/img/learningNotes/default.png";
	}
	regexp = /src="([^"]*)"/g;
	var resultSrc = value[0].match(regexp);
	if (resultSrc == null) {
		return basePath + "/img/learningNotes/default.png";
	}
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
	getUserInfoHtml();
}

// 读取用户信息
function getUserInfoHtml(userInfo) {
	var html = '<div class="boxShadow rightList"><div id="baseUserInfo">'
			+ '<div id="userInfoHeadImg"><img src="'
			+ basePath
			+ '/img/user/head/default.png" class="img-circle"></div>'
			+ '<div id="userInfo"><span class="userInfoSpan"><i class="fa fa-user" aria-hidden="true"></i>LiaoYingTai</span><span class="userInfoSpan"><i class="fa fa-envelope" aria-hidden="true"></i>lyt2598@aliyun.com</span></div>'
			+ '</div><hr>' + '' + '</div>';
	$("#indexRight").html(html);
}