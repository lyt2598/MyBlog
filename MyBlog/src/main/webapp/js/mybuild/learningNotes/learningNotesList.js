//搜索文章
function search(uid) {
	var searchData = $("#searchData").val();
	getLearningNotestList(uid, 1, 20, searchData);
}
// 读取文章列表信息
function getLearningNotestList(uid, page, limit, title) {
	if (title == "undefined" || title == null) {
		title = "";
	}
	requestLearningNotestList(uid, title, page, limit);
}
// 读取文章列表信息请求
function requestLearningNotestList(uid, title, page, limit) {
	$.ajax({
		url : basePath + '/getLearningNotesList',
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
			if (obj.status == 1) {
				var learningNotesList = obj.result.learningNotesList;
				if (learningNotesList.learningNotes == null
						|| learningNotesList.learningNotes.length <= 0) {
					// 没有泪飙信息
					$("#table-body").html(getNullHtml("没有查询到文章列表信息"));
				} else {
					// 生成列表信息
					var tableHtml = getTableList(
							learningNotesList.learningNotes, uid);
					$("#table-body").html(tableHtml);
					// 设置分页页码
					var pagingHtml = getPagingHtml(uid, title,
							learningNotesList.page,
							learningNotesList.totalPage,
							learningNotesList.limit);
					$("#paging").html(pagingHtml);
				}
			} else {
				alert(obj.message);
			}
		},
		error : function(e) {
			console.log(e);
		}
	});
}
// 读取文章列表html
function getTableList(tableList, uid) {
	var html;
	var intervalHtml = '<tr><td colspan="5"></td></tr>';
	for (var i = 0; i < tableList.length; i++) {
		html += '';
		if (tableList[i].learningNotes_Stick == 1) {
			html += '<tr><td class="textAlign ln-hidden"><a class="a-i" title="置頂文章"><i class="fa fa-thumb-tack i-pink" aria-hidden="true"></i></a>';
		} else {
			// 当前文章不是置顶状态的时候,判断上一篇文章是否是置顶状态,如果上一篇是置顶状态，当前文章不是，则表示已经到了置顶文章和非置顶文章的分割处
			if (i > 1 && tableList[i - 1].learningNotes_Stick == 1) {
				html += intervalHtml;
			}
			html = html
					+ '<tr><td class="textAlign ln-hidden"><i class="fa fa-list-alt" aria-hidden="true"></i>';
		}
		html += '</td><td><div class="lnTitle"><span class="lnListType">['
				+ tableList[i].learningNotesType.learningNotes_Type_Name
				+ ']</span>&nbsp;<a href="' + basePath + '/learningNotes/'
				+ uid + '/' + tableList[i].myBlog_LearningNotes_id
				+ '"  title="' + tableList[i].learningNotes_Title + '">'
				+ tableList[i].learningNotes_Title + '</a>';
		if (tableList[i].learningNotes_Private == 1) {
			html += '<a class="a-i" title="此文章仅自己可见"><i class="fa fa-eye-slash i-red" aria-hidden="true"></i></a>';
		}
		if (tableList[i].learningNotes_Private == 2) {
			html += '<a class="a-i" title="此文章已被举报多次,禁止显示.请立即修改"><i class="fa fa-exclamation-triangle i-yellow" aria-hidden="true"></i></a>';
		}
		html += '</div></td><td class="ln-hidden"><i class="fa fa-clock-o i-default" aria-hidden="true"></i>'
				+ new Date(tableList[i].learningNotes_PubDate)
						.format("yyyy年MM月dd日")
				+ '</td><td class="ln-hidden"><i class="fa fa-eye i-default" aria-hidden="true"></i>'
				+ tableList[i].learningNotes_ViewCount
				+ '</td>'
				+ '<td class="ln-hidden"><i class="fa fa-commenting-o i-default" aria-hidden="true"></i><span id = "sourceId::'
				+ '/learningNotes/'
				+ tableList[i].learningNotes_PubUser
				+ '/'
				+ tableList[i].myBlog_LearningNotes_id
				+ '" class = "cy_cmt_count" ></span><script id="cy_cmt_num" src="https://changyan.sohu.com/upload/plugins/plugins.list.count.js?clientId=cytqfnp8B">'
				+ '</script></td></tr>';
	}
	return html;
}
// 读取文章列表界面
function getLearningNotesListBaseHtml(uid) {
	var html = '<div class="lnBody"><div class="page-header"><h1>学习笔记 <small>学无止境</small></h1></div>'
			+ '<p>以下文章均为个人学习时得出的结论以及碰到的问题的整理,如果有不对的地方欢迎大家指出。</p>'
			+ '<div class="table-menu"><form class="bs-example bs-example-form form-inline" onsubmit="return false;">'
			+ '<div class="input-group"><input type="text" id="searchData" class="form-control" placeholder="请输入需要查询的内容">'
			+ '<span class="input-group-btn"><button title="点击查询" class="btn btn-default" onclick="search(\''
			+ uid
			+ '\')">'
			+ '<i class="fa fa-search" aria-hidden="true"></i>&nbsp;</button></span></div></form>'
			// + '<div class="panel panel-default"><div class="panel-body"
			// id="lnTags"><span class="label
			// label-default">PostgreSQL</span></div></div>'
			+ '</div><table class="table table-striped table-bordered table-condensed"><thead>'
			+ '<tr> <th class="textAlign ln-hidden">#</th>'
			+ '<th>文章标题</th> <th class="ln-hidden">发布时间</th>'
			+ '<th class="ln-hidden">浏览次数</th>'
			+ '<th class="ln-hidden">评论次数</th> </tr> </thead>'
			+ '<tbody id="table-body"></tbody> </table> <div id="paging" align="center"></div></div>';
	return html;
}
// 校验当前是否有用户登录
/*
 * function checkUserLogin() { $.ajax({ url : basePath +
 * "/userInfo/checkUserLogin", method : "POST", dataType : "json", success :
 * function(data) { var obj = eval(data); if (obj.status == 1) {
 * $("#pubLN").removeAttr("style"); } }, error : function(e) {
 * alert("校验用户是否登陆时出错啦！"); console.log(e); } }) }
 */