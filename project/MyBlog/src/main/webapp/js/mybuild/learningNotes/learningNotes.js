function getLearningNotesBaseHtml() {
	var html = '<div class="lnLeft"><div class="lnUserInfo"><div class="userHead"><img src="#"/></div>'
			+ '<div class="userInfo"><div class="one">'
			+ '<span>LiaoYingTai</span>'
			+ '</div><div class="two">'
			+ '<a id="ln-qq" target"_blank" href="" data-toggle="tooltip" title="联系Ta-QQ"><i class="fa fa-qq" aria-hidden="true"></i></a>'
			+ '<a id="ln-github" target"_blank" href="" data-toggle="tooltip" title="进入GitHub"><i class="fa fa-github" aria-hidden="true"></i></a>'
			+ '<a id="ln-wechat" href="javascript:void(0);" data-toggle="tooltip" title="WeChat：ppctg______lyt"><i class="fa fa-weixin" aria-hidden="true"></i></a>'
			+ '<a id="ln-email" href="javascript:void(0);" data-toggle="tooltip" title="邮箱：lyt2598@qq.com"><i class="fa fa-envelope" aria-hidden="true"></i></a>'
			+ '<a id="ln-fans" href="" data-toggle="tooltip" title="成为Ta粉丝"><i class="fa fa-heart-o" aria-hidden="true"></i></a>'
			+ '<a id="ln-nofans" href="" data-toggle="tooltip" title="取消粉Ta"><i class="fa fa-heart" aria-hidden="true"></i></a>'
			+ '<a id="ln-atte" href="" data-toggle="tooltip" title="关注Ta"><i class="fa fa-star" aria-hidden="true"></i></a>'
			+ '<a id="ln-noatte" href="" data-toggle="tooltip" title="取消关注Ta"><i class="fa fa-star-o" aria-hidden="true"></i></a>'
			+ '</div>'
			+ '</div></div><div class="lnList">'
			+ '<div class="title">Ta的其他文章<div class="more"><a href="">更多&nbsp;>></a></div></div>'
			+ '<div class="list"><ul><li>1</li><li>1</li><li>1</li><li>1</li><li>1</li></ul></div>'
			+ '</div></div><div class="lnContext"></div>';

	return html;
}

function getLearningNotesInfo(url, lnId) {
	$.ajax({
		url : url + "/learningNotes",
		method : "post",
		data : "lnId=" + lnId,
		dataType : "json",
		success : function(data) {
			var obj = eval(data);
			if (obj.status == 1) {
				$(".userHead img").attr("src",
						obj.result.userInfo.userInfo_HeadImg);
				$("#ln-qq").attr(
						"href",
						"http://wpa.qq.com/msgrd?v=3&uin="
								+ obj.result.userInfo.userInfo_QQaccount
								+ "&site=qq&menu=yes");
				$("#ln-github").attr("href",
						obj.result.userInfo.userInfo_GitHub);
				$("#ln-wechat").attr("title",
						obj.result.userInfo.userInfo_QQaccount);
				$("#ln-email")
						.attr("title", obj.result.userInfo.userInfo_Email);
			} else {
				alert(obj.message);
			}
		},
		error : function(e) {
			alert("加载文章过程中发生未知错误！\n错误可在控制台中查看~\n" + e);
			console.log(e);
		}
	})
}