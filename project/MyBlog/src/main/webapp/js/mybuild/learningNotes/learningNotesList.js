function search(url, uid) {
	var searchData = $("#searchData").val();
	getLearningNotestList(url, uid, 1, 20, searchData);
}

function getLearningNotestList(url, uid, page, limit, title) {
	if (title == "undefined" || title == null) {
		title = "";
	}
	requestLearningNotestList(uid, title, page, limit, url);
}

function requestLearningNotestList(uid, title, page, limit, requestURL) {
	$.ajax({
		url : requestURL + '/getLearningNotesList',
		data : "uid=" + uid + "&page=" + page + "&limit=" + limit + "&title="
				+ title,
		method : "POST",
		dataType : "json",
		async : true,
		beforeSend : function(e) {
			$("#table-body").html(getLoadingHtml("正在加载中..."));
		},
		success : function(data) {
			var obj = eval(data);
			if (obj == null || obj.learningNotes == null
					|| obj.learningNotes.length <= 0) {
				// 没有泪飙信息
				$("#table-body").html(getNullHtml("没有查询到文章列表信息"));
			} else {
				// 生成列表信息
				var tableHtml = getTableList(obj.learningNotes);
				$("#table-body").html(tableHtml);
				// 设置分页页码
				var pagingHtml = getPagingHtml(title, obj.page, obj.totalPage,
						obj.limit);
				$("#paging").html(pagingHtml);
			}
		},
		error : function(e) {
			console.log(e);
		}
	});
}

function getTableList(tableList) {
	var html;
	var intervalHtml = '<tr><td colspan="5"></td></tr>';
	for (var i = 0; i < tableList.length; i++) {
		html += '';
		if (tableList[i].learningNotes_Stick == 1) {
			html += '<tr><td class="textAlign"><a class="a-i" title="置頂文章"><i class="fa fa-thumb-tack i-pink" aria-hidden="true"></i></a>';
		} else {
			// 当前文章不是置顶状态的时候,判断上一篇文章是否是置顶状态,如果上一篇是置顶状态，当前文章不是，则表示已经到了置顶文章和非置顶文章的分割处
			if (i > 1 && tableList[i - 1].learningNotes_Stick == 1) {
				html += intervalHtml;
			}
			html = html
					+ '<tr><td class="textAlign"><i class="fa fa-list-alt" aria-hidden="true"></i>';
		}
		html += '</td><td><a href=""><span class="lnListType">['
				+ tableList[i].learningNotesType.learningNotes_Type_Name + ']</span>&nbsp;'
				+ tableList[i].learningNotes_Title + '</a>';
		if (tableList[i].learningNotes_Private == 1) {
			html += '<a class="a-i" title="此文章仅自己可见"><i class="fa fa-eye-slash i-red" aria-hidden="true"></i></a>';
		}
		if (tableList[i].learningNotes_Private == 2) {
			html += '<a class="a-i" title="此文章已被举报多次,禁止显示.请立即修改"><i class="fa fa-exclamation-triangle i-yellow" aria-hidden="true"></i></a>';
		}
		html += '</td><td><i class="fa fa-clock-o i-blue" aria-hidden="true"></i>'
				+ new Date(tableList[i].learningNotes_PubDate)
						.format("yyyy年MM月dd日")
				+ '</td><td><i class="fa fa-eye i-blue" aria-hidden="true"></i>'
				+ tableList[i].learningNotes_ViewCount
				+ '</td>'
				+ '<td><i class="fa fa-commenting-o i-blue" aria-hidden="true"></i>'
				+ tableList[i].learningNotes_CommentCount + '</td></tr>';
	}
	return html;
}

function getLearningNotesListBaseHtml(url, uid) {
	var html = '<div class="lnBody"><div class="page-header"><h1>学习笔记 <small>学无止境</small></h1></div>'
			+ '<p>以下文章均为个人学习时得出的结论以及碰到的问题的整理,如果有不对的地方欢迎大家指出。</p>'
			+ '<div class="table-menu"><button type="button" class="btn btn-primary" onclick="pubLN(\''
			+ url
			+ '\')">'
			+ '<i class="fa fa-pencil-square-o" aria-hidden="true"></i>'
			+ '我要发表学习笔记 </button><div class="searchDiv"><input type="text" id="searchData" placeholder="请输入需要查询的内容">'
			+ '<button title="点击查询" onclick="search(\''
			+ url
			+ '\',\''
			+ uid
			+ '\')">'
			+ '<i class="fa fa-search" aria-hidden="true"></i></button> </div> </div>'
			+ '<table class="table table-bordered table-condensed"><thead>'
			+ '<tr class="success"> <th class="textAlign" style="width:5%;">#</th>'
			+ '<th>文章标题</th> <th style="width:10%; min-width:155px;">发布时间</th>'
			+ '<th style="width:5%; min-width:100px;">浏览次数</th>'
			+ '<th style="width:5%; min-width:100px;">评论次数</th> </tr> </thead>'
			+ '<tbody id="table-body"></tbody> </table> <div id="paging" align="center"></div></div>';
	return html;
}

function pubLN(url) {
	window.location.href = url + "/pubLearningNotes";
}

function getPubLNBaseHtml(url) {
	var html = '<div class="pubTitle">标题：<input id="pubTitleValue" type="text"/></div>'
			+ '<div id="editor"></div><div class="pubConfig">显示设置：'
			+ '<label><input type="checkbox">置顶博文</label>'
			+ '<label><input type="checkbox">仅自己可见</label>'
			+ '</div><div class="pubConfig">其他设置：'
			+ '<label><input type="checkbox">允许转发</label>'
			+ '<label><input type="checkbox">允许评论</label>'
			+ '</div><div class="pubConfig">文章类别：<select id="pubType"></select></div>'
			+ '</div><div class="pubConfig">关键字：<input type="text" id="pubTags"><span class="pubTitleMsg">关键字用英文逗号[ , ]隔开</span></div>'
			+ '<div class="pubSubmit" align="center">'
			+ '<button type="button" class="btn btn-success"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;立即发表学习笔记</button>'
			+ '<button type="button" class="btn btn-warning"><i class="fa fa-file-text" aria-hidden="true"></i>&nbsp;保存到草稿箱</button></div>';
	return html;
}

function getLNType(url) {
	$.ajax({
		url : url + "/getLNType",
		method : "post",
		dataType : "json",
		success : function(data) {
			var obj = eval(data);
			if (obj.status == 1) {
				var result = obj.result.lnType;
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