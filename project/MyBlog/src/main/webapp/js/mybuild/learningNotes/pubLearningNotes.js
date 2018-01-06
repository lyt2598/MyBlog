// 读取编辑文章界面
function getPubLNBaseHtml(url) {
	var html = '<div class="pubTitle">标题：<input id="pubTitleValue" type="text"/><span class="pubTitleMsg">如果标题为空，默认使用当前日期作为标题内容。</span></div>'
			+ '<div id="editor"></div><div class="pubConfig">显示设置：'
			+ '<label><input type="checkbox" id="lnStick">置顶博文</label>'
			+ '<label><input type="checkbox" id="lnPrivate">仅自己可见</label>'
			+ '</div><div class="pubConfig">其他设置：'
			+ '<label><input type="checkbox" id="lnRelay" checked="checked">允许转发</label>'
			+ '<label><input type="checkbox" id="lnComment" checked="checked">允许评论</label>'
			+ '</div><div class="pubConfig">文章类别：<select id="pubType"></select><span class="pubTitleMsg">&nbsp;*</span></div>'
			+ '</div><div class="pubConfig">关键字：<input type="text" id="pubTags" onchange="keywordFormat()">'
			+ '<span class="pubTitleMsg">关键字用逗号[ , ]隔开</span></div><div class="pubSubmit" align="center">'
			+ '<button type="button" class="btn btn-success" id="publishLN"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;立即发表学习笔记</button>'
			+ '<button type="button" class="btn btn-warning"><i class="fa fa-file-text" aria-hidden="true"></i>&nbsp;保存到草稿箱</button></div>';
	return html;
}
// 读取文章类型
function getLNType(url) {
	$.ajax({
		url : url + "/getLNType",
		method : "post",
		dataType : "json",
		success : function(data) {
			var obj = eval(data);
			if (obj.status == 1) {
				var result = obj.result.lnType;
				$("#pubType").append("<option value='-1'>请选择文章类型</option>");
				for (var i = 0; i < result.length; i++) {
					$("#pubType").append(
							"<option value='"
									+ result[i].myBlog_LearningNotes_Type_id
									+ "'>" + result[i].learningNotes_Type_Name
									+ "</option>");
				}
			} else {
				alert(obj.message);
			}
		},
		error : function(e) {
			alert("请求出错,请刷新页面重新请求。错误信息：" + e);
			console.log(e);
		}
	})
}
// 发表文章
function pubLearningNotes(editor, url) {
	var title = $("#pubTitleValue").val();
	var context = editor.txt.html();
	if (editor.txt.text() == "") {
		alert("请输入正文内容");
		return;
	}
	var lnStick = 0;
	if ($("#lnStick").is(':checked')) {
		lnStick = 1;
	}
	var lnPrivate = 0;
	if ($("#lnPrivate").is(':checked')) {
		lnPrivate = 1;
	}
	var lnRelay = 0;
	if ($("#lnRelay").is(':checked')) {
		lnRelay = 1;
	}
	var lnComment = 0;
	if ($("#lnComment").is(':checked')) {
		lnComment = 1;
	}
	var pubType = $("#pubType").val();
	if (pubType == -1) {
		alert("请选择文章类型！")
		return;
	}
	var pubTags = $("#pubTags").val();
	$.ajax({
		url : url + "/publish/pubLearningNotes",
		method : 'post',
		data : "learningNotes_Title=" + title + "&learningNotes_Context="
				+ context + "&learningNotes_Stick=" + lnStick
				+ "&learningNotes_Private=" + lnPrivate
				+ "&learningNotes_Relay=" + lnRelay + "&learningNotes_Comment="
				+ lnComment + "&learningNotes_Tags=" + pubTags
				+ "&learningNotes_Type_id=" + pubType,
		dataType : 'json',
		success : function(data) {
			var obj = eval(data);
			if (obj.status == 1) {
				var uid = obj.result.userId;
				window.location.href = url + "/learningNotesList/" + uid;
			} else {
				alert("发布文章出错啦！\n错误信息：" + obj.message)
			}
		},
		error : function(e) {
			alert("发布文章出错啦！\n错误信息：" + e);
			console.log(e);
		}
	})
}
// 关键字格式化
function keywordFormat() {
	var value = $("#pubTags").val();
	value = value.replace("，", ",");
	$("#pubTags").val(value);
}