$(document).ready(function(e) {
	getLearningNotestList(1, 20);
});

function search() {
	var searchData = $("#searchData").val();
	getLearningNotestList(1, 20, searchData);
}

function getLearningNotestList(page, limit, title) {
	if (title == "undefined" || title == null) {
		title = "";
	}
	var uid = $("#currentViewsUser", window.parent.document).val();
	var requestURL = window.parent.locationValue
			+ "/learningNotes/json/getLearningNotesList.action";
	requestLearningNotestList(uid, title, page, limit, requestURL);
}

function requestLearningNotestList(uid, title, page, limit, requestURL) {
	$.ajax({
		url : requestURL,
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
				$("#table-body").html(getLoadingHtml("没有查询到文章列表信息"));
			} else {
				// 生成列表信息
				var tableHtml = getTableList(obj.learningNotes);
				$("#table-body").html(tableHtml);
			}
			// 设置分页页码
			var pagingHtml = getPagingHtml(title, obj.page, obj.totalPage,
					obj.limit);
			$("#paging").html(pagingHtml);
		},
		error : function(e) {
			console.log(e);
		},
		complete : function(e) {
			window.parent.loadFrame();
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
		html += '</td><td><a href="">' + tableList[i].learningNotes_Title
				+ '</a>';
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
