function getLearningNotesBaseHtml() {
	var html = '<div class="lnLeft ln-hidden"><div class="lnUserInfo"><div class="userHead"><img src="#"/></div>'
			+ '<div class="userInfo"><div class="one">'
			+ '<span class="userName"></span>'
			+ '</div><div class="two">'
			+ '<a class="ln-qq" target="_blank" href="" data-toggle="tooltip" title="联系Ta-QQ"><i class="fa fa-qq" aria-hidden="true"></i></a>'
			+ '<a class="ln-github" target="_blank" href="" data-toggle="tooltip" title="进入GitHub"><i class="fa fa-github" aria-hidden="true"></i></a>'
			+ '<a class="ln-wechat" href="javascript:void(0);" data-toggle="tooltip" title="WeChat：ppctg______lyt"><i class="fa fa-weixin" aria-hidden="true"></i></a>'
			+ '<a class="ln-email" href="javascript:void(0);" data-toggle="tooltip" title="邮箱：lyt2598@qq.com"><i class="fa fa-envelope" aria-hidden="true"></i></a>'
			+ '</div>'
			+ '</div></div><div class="lnList">'
			+ '<div class="title">Ta的其他文章<div class="more"><a href="">更多&nbsp;>></a></div></div>'
			+ '<div class="list"><ul><li>1</li><li>1</li><li>1</li><li>1</li><li>1</li></ul></div></div>'
			+ '<div class="lnList"><div id="cyReping" role="cylabs" data-use="reping"></div>'
			+ '</div><div class="lnList"><div id="cyHotnews" role="cylabs" data-use="hotnews"></div></div></div><div class="lnContext"><div id="lnTitle"><div class="menu"><span style="color:#999;">标题：</span><p id="lnTitle_Span"></p><hr/><div class="hiddenUserInfo">'
			+ '<img src="#"/><span class="userName"></span>'
			+ '<a class="ln-qq" target="_blank" href="" data-toggle="tooltip" title="联系Ta-QQ"><i class="fa fa-qq" aria-hidden="true"></i></a>'
			+ '<a class="ln-github" target="_blank" href="" data-toggle="tooltip" title="进入GitHub"><i class="fa fa-github" aria-hidden="true"></i></a>'
			+ '<a class="ln-wechat" href="javascript:void(0);" data-toggle="tooltip" title="WeChat：ppctg______lyt"><i class="fa fa-weixin" aria-hidden="true"></i></a>'
			+ '<a class="ln-email" href="javascript:void(0);" data-toggle="tooltip" title="邮箱：lyt2598@qq.com"><i class="fa fa-envelope" aria-hidden="true"></i></a></div>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="浏览次数"><i class="fa fa-eye" aria-hidden="true"></i><span id="menu-viewCount" class="menu-title">0次</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="转发次数"><i class="fa fa-code-fork" aria-hidden="true"></i><span id="menu-relayCount" class="menu-title">0次</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="评论次数"><i class="fa fa-comments" aria-hidden="true"></i><span id="menu-commentCount" class="menu-title">'
			+ '<span href="#SOHUCS" id="changyan_count_unit">0</span>次</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="发表时间"><i class="fa fa-clock-o" aria-hidden="true"></i><span id="menu-pubTime" class="menu-title">发表时间</span></a>'
			+ '<a href="javascript:void(0);" data-toggle="tooltip" title="最后修改时间"><i class="fa fa-clock-o" aria-hidden="true"></i><span id="menu-modTime" class="menu-title">最后修改时间</span></a>'
			+ '</div></div><div id="lnValue"></div><div id="lnEmoji" class="ln-hidden"><div id="cyEmoji" role="cylabs" data-use="emoji" sourceid="'
			+ window.location.pathname
			+ '"></div></div><div id="lnBottom">'
			+ '<a href="" data-toggle="tooltip" title="上一篇" class="lnTitleA" id="topLn"></a>'
			+ '<a href="" data-toggle="tooltip" title="下一篇" class="lnTitleA" id="nextLn">下一篇：</a>'
			+ '</div><div id="message" class="ln-hidden"><div id="SOHUCS" sid="'
			+ window.location.pathname + '" ></div></div></div>';
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
						$(".userHead img")
								.attr(
										"src",
										url
												+ "/img/user/head/"
												+ obj.result.learningNotes.userInfo.userInfo_HeadImg);
						$(".hiddenUserInfo img")
								.attr(
										"src",
										url
												+ "/img/user/head/"
												+ obj.result.learningNotes.userInfo.userInfo_HeadImg);
						$(".userName")
								.html(
										obj.result.learningNotes.userInfo.userInfo_Name);
						$(".ln-qq")
								.attr(
										"href",
										"http://wpa.qq.com/msgrd?v=3&uin="
												+ obj.result.learningNotes.userInfo.userInfo_QQaccount
												+ "&site=qq&menu=yes");
						$(".ln-github")
								.attr(
										"href",
										obj.result.learningNotes.userInfo.userInfo_GitHub);
						$(".ln-wechat")
								.attr(
										"title",
										obj.result.learningNotes.userInfo.userInfo_QQaccount);
						$(".ln-email")
								.attr(
										"title",
										obj.result.learningNotes.userInfo.userInfo_Email);
						$("#lnTitle #lnTitle_Span").html(
								obj.result.learningNotes.learningNotes_Title);
						$("title").html(
								obj.result.learningNotes.learningNotes_Title
										+ " - 个人主页 - Nerver Give Up");
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
								.append(
										'<script type="text/javascript" src="https://assets.changyan.sohu.com/upload/plugins/plugins.count.js">');
						var temp_date = new Date(
								obj.result.learningNotes.learningNotes_PubDate)
								.format("yyyy年MM月dd日");
						$("#menu-pubTime").html(temp_date);
						temp_date = new Date(
								obj.result.learningNotes.learningNotes_ModDate)
								.format("yyyy年MM月dd日");
						$("#menu-modTime").html(temp_date);
						$(".lnLeft")
								.append(
										'<script type="text/javascript" charset="utf-8"'
												+ 'src="https://changyan.itc.cn/js/lib/jquery.js"></script>'
												+ '<script type="text/javascript" charset="utf-8"'
												+ 'src="https://changyan.sohu.com/js/changyan.labs.https.js?appid=cytqfnp8B"></script>');
						if (obj.result.topLearningNotes != null) {
							var topLn = obj.result.topLearningNotes;
							$("#topLn").attr(
									"href",
									basePath + "/learningNotes/"
											+ topLn.learningNotes_PubUser + "/"
											+ topLn.myBlog_LearningNotes_id);
							$("#topLn")
									.html("上一篇：" + topLn.learningNotes_Title);
						} else {
							$("#topLn").remove();
						}
						if (obj.result.nextLearningNotes != null) {
							var nextLn = obj.result.nextLearningNotes;
							$("#nextLn").attr(
									"href",
									basePath + "/learningNotes/"
											+ nextLn.learningNotes_PubUser
											+ "/"
											+ nextLn.myBlog_LearningNotes_id);
							$("#nextLn").html(
									"下一篇：" + nextLn.learningNotes_Title);
						} else {
							$("#nextLn").remove();
						}
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