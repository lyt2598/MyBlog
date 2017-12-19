// 弹出登陆窗口
function openLogin() {
	$("#loginBackground").css("display", "block");
	$("#login").css("display", "block");
}
// 关闭登陆窗口
function closeLogin() {
	$("#loginBackground").css("display", "none");
	$("#login").css("display", "none");
}
// 创建登陆窗口(参数为需要添加到的标签)
function getLoginBoxHtml(label) {
	var html = '<div id="loginBackground" class="login-background"></div><div id="login"><div id="login-head">'
			+ '<a id="login-close" href="javascript:void(0)" onclick="closeLogin()"><i class="fa fa-times" aria-hidden="true"></i>'
			+ '</a><span>Nerver Give Up</span></div><div id="login-body"><div id="login-body-content" class="form-horizontal">'
			+ '<div class="form-group" id="login-message"></div><div class="form-group">'
			+ '<label for="username" class="col-sm-3 control-label">用户名：</label>'
			+ '<div class="col-sm-9"><input type="text" class="form-control" id="username" placeholder="请输入用户名">'
			+ '</div></div><div class="form-group"><label for="password" class="col-sm-3 control-label">密 码：</label>'
			+ '<div class="col-sm-9"><input type="password" class="form-control" id="password" placeholder="请输入密码">'
			+ '</div></div><div class="form-group"><label class="col-sm-3 control-label">验证码：</label><div class="col-sm-9">'
			+ '<input type="text" class="form-control" id="firstname" placeholder="请输入验证码"></div></div><div class="form-group">'
			+ '<img alt="" src="" class="col-sm-8" height="80px" /></div><div class="form-group">'
			+ '<button type="submit" class="btn btn-primary col-sm-8">登录</button></div></div></div></div>';
	$(label).append(html);
}