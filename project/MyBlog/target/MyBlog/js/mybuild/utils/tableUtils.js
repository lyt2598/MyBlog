function getLoadingHtml(text) {
	var html = '<th><td colspan="5" class="textAlign table-load"><i class="fa fa-repeat table-load-logo" aria-hidden="true"></i>'
			+ text + '</td></th>';
	return html;
}

function getNullHtml(text) {
	var html = '<th><td colspan="5" class="textAlign table-load">' + text
			+ '</td></th>';
	return html;
}

function getPagingHtml(title, currentPage, totalPage, limit) {
	var html = '<ul class="pagination">';
	if (currentPage <= 1) {
		html += '<li class="disabled"><a href="javascript:void(0);">&laquo;</a></li>';
		html += '<li class="disabled"><a href="javascript:void(0);">上一页</a></li>';
	} else {
		html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\'1\',\''
				+ limit + '\',\'' + title + '\')">&laquo;</a></li>';
		html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\''
				+ (currentPage - 1)
				+ '\',\''
				+ limit
				+ '\',\''
				+ title
				+ '\')">上一页</a></li>';
	}
	for (var i = 1; i <= totalPage; i++) {
		if (totalPage == 1) {
			html += '<li class="disabled"><a href="javascript:void(0);">' + i
					+ '</a></li>'
		} else if (i == currentPage) {
			html += '<li class="active"><a href="javascript:void(0);">' + i
					+ '</a></li>'
		} else {
			html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\''
					+ i
					+ '\',\''
					+ limit
					+ '\',\''
					+ title
					+ '\')">'
					+ i
					+ '</a></li>'
		}
	}
	if (totalPage == 1 || currentPage >= totalPage) {
		html += '<li class="disabled"><a href="javascript:void(0);">下一页</a></li>';
		html += '<li class="disabled"><a href="javascript:void(0);">&raquo;</a></li>';
	} else {
		html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\''
				+ (currentPage + 1)
				+ '\',\''
				+ limit
				+ '\',\''
				+ title
				+ '\')">下一页</a></li>';
		html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\''
				+ totalPage
				+ '\',\''
				+ limit
				+ '\',\''
				+ title
				+ '\')">&raquo;</a></li>';
	}
	html += '</ul>';
	return html;
}