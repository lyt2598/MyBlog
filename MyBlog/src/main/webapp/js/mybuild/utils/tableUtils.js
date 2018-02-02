function getLoadingHtml(text) {
	var html = '<th><td colspan="5" class="textAlign table-load"><i class="fa fa-repeat loading-logo" aria-hidden="true"></i>'
			+ text + '</td></th>';
	return html;
}

function getNullHtml(text) {
	var html = '<th><td colspan="5" class="textAlign table-load">' + text
			+ '</td></th>';
	return html;
}

function getPagingHtml(uid, title, currentPage, totalPage, limit) {
	var html = '<ul class="pagination">';
	if (currentPage <= 1) {
		html += '<li class="disabled"><a href="javascript:void(0);">&laquo;</a></li>';
		/* html += '<li class="disabled"><a href="javascript:void(0);">&lt;</a></li>'; */
	} else {
		html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\''
				+ uid
				+ '\',\'1\',\''
				+ limit
				+ '\',\''
				+ title
				+ '\')">&laquo;</a></li>';
		/*
		 * html += '<li><a href="javascript:void(0);"
		 * onclick="getLearningNotestList(,\'' + uid + '\',\'' + (currentPage -
		 * 1) + '\',\'' + limit + '\',\'' + title + '\')">&lt;</a></li>';
		 */
	}
	var starPage = 1;
	var endPage = 5;
	if (totalPage > 5 && currentPage >= 3) {
		if (currentPage + 2 <= totalPage) {
			starPage = currentPage - 2;
			endPage = currentPage + 2;
		} else {
			starPage = totalPage - 4;// 减4是因为包含了当前页，只需要显示前面的4页页码
			endPage = totalPage;
		}
	} else if (totalPage <= 5) {
		endPage = totalPage;
	}
	for (; starPage <= endPage; starPage++) {
		if (totalPage == 1) {
			html += '<li class="disabled"><a href="javascript:void(0);">'
					+ starPage + '</a></li>'
		} else if (starPage == currentPage) {
			html += '<li class="active"><a href="javascript:void(0);">'
					+ starPage + '</a></li>'
		} else {
			html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\''
					+ uid
					+ '\',\''
					+ starPage
					+ '\',\''
					+ limit
					+ '\',\''
					+ title + '\')">' + starPage + '</a></li>'
		}
	}
	if (totalPage == 1 || currentPage >= totalPage) {
		/* html += '<li class="disabled"><a href="javascript:void(0);">&gt;</a></li>'; */
		html += '<li class="disabled"><a href="javascript:void(0);">&raquo;</a></li>';
	} else {
		/*
		 * html += '<li><a href="javascript:void(0);"
		 * onclick="getLearningNotestList(\'' + uid + '\',\'' + (currentPage +
		 * 1) + '\',\'' + limit + '\',\'' + title + '\')">&gt;</a></li>';
		 */
		html += '<li><a href="javascript:void(0);" onclick="getLearningNotestList(\''
				+ uid
				+ '\',\''
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