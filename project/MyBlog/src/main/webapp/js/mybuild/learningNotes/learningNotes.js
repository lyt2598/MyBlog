function getLearningNotesBaseHtml() {
	var html = '<div class="lnLeft"><div class="lnUserInfo"><div class="userHead"><img src="#"/></div>'
			+ '<div class="userInfo"><div class="one">'
			+ '<span>LiaoYingTai</span>'
			+ '</div><div class="two">'
			+ '<a id="ln-qq" target="_blank" href="" data-toggle="tooltip" title="联系Ta-QQ"><i class="fa fa-qq" aria-hidden="true"></i></a>'
			+ '<a id="ln-github" target="_blank" href="" data-toggle="tooltip" title="进入GitHub"><i class="fa fa-github" aria-hidden="true"></i></a>'
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
			+ '</div></div><div class="lnContext"><div id="lnTitle"><div class="menu"><h3></h3>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="浏览次数"><i class="fa fa-eye" aria-hidden="true"></i><span id="menu-viewCount" class="menu-title">浏览次数</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="转发次数"><i class="fa fa-code-fork" aria-hidden="true"></i><span id="menu-relayCount" class="menu-title">转发次数</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="评论次数"><i class="fa fa-comments" aria-hidden="true"></i><span id="menu-commentCount" class="menu-title">评论次数</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="发表时间"><i class="fa fa-clock-o" aria-hidden="true"></i><span id="menu-pubTime" class="menu-title">发表时间</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="最后修改时间"><i class="fa fa-clock-o" aria-hidden="true"></i><span id="menu-modTime" class="menu-title">最后修改时间</span></a>'
			+ '</div></div><div id="lnValue"></div><div id="lnBottom">'
			+ '<a href="" data-toggle="tooltip" title="上一篇">上一篇：</a>'
			+ '<a href="" data-toggle="tooltip" title="下一篇">下一篇：</a>'
			+ '</div></div>';

	return html;
}

function getLearningNotesInfo(url, lnId) {
	$
			.ajax({
				url : url + "/learningNotes",
				method : "post",
				data : "lnId=" + lnId,
				dataType : "json",
				success : function(data) {
					var obj = eval(data);
					if (obj.status == 1) {
						$(".userHead img").attr(
								"src",
								url + "/img/user/head/"
										+ obj.result.userInfo.userInfo_HeadImg);
						$("#ln-qq")
								.attr(
										"href",
										"http://wpa.qq.com/msgrd?v=3&uin="
												+ obj.result.userInfo.userInfo_QQaccount
												+ "&site=qq&menu=yes");
						$("#ln-github").attr("href",
								obj.result.userInfo.userInfo_GitHub);
						$("#ln-wechat").attr("title",
								obj.result.userInfo.userInfo_QQaccount);
						$("#ln-email").attr("title",
								obj.result.userInfo.userInfo_Email);
						$("#lnTitle h3").html(
								obj.result.learningNotes.learningNotes_Title);
						$("#lnValue").html(
								obj.result.learningNotes.learningNotes_Context);
						$("#menu-viewCount")
								.html(
										obj.result.learningNotes.learningNotes_ViewCount
												+ "次");
						$("#menu-relayCount")
								.html(
										obj.result.learningNotes.learningNotes_RelayCount
												+ "次");
						$("#menu-commentCount")
								.html(
										obj.result.learningNotes.learningNotes_CommentCount
												+ "次");
						var temp_date = new Date(
								obj.result.learningNotes.learningNotes_PubDate)
								.format("yyyy年MM月dd日");
						$("#menu-pubTime").html(temp_date);
						temp_date = new Date(
								obj.result.learningNotes.learningNotes_ModDate)
								.format("yyyy年MM月dd日");
						$("#menu-modTime").html(temp_date);
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