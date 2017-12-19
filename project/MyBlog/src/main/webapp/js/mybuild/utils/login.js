function submitLogin() {
	var username = $(".login-username").val();
	if (checkUserName(username) == false) {
		return false;
	}
	var password = $(".login-password").val();
	if (checkPassWord(password) == false) {
		return false;
	}
	var checkcode = $(".login-checkcode").val();
	if (checkCheckCode(checkcode) == false) {
		return false;
	}
	// 通过校验后提交表单
}

function checkUserName(username) {
	if (username == null || username == "") {
		$(".login-username").css("border-color", "red");
		setErrorMessage("用户名不能为空");
		return false;
	} else {
		$(".login-username").css("border-color", "green");
		setDefaultMessagt();
	}
	return true;
}
function checkPassWord(password) {
	if (password == null || password == "") {
		$(".login-password").css("border-color", "red");
		setErrorMessage("密码不能为空");
	} else {
		$(".login-password").css("border-color", "green");
		setDefaultMessagt();
	}
}
function checkCheckCode(checkcode) {
	if (checkcode == null || checkcode == "") {
		$(".login-checkcode").css("border-color", "red");
		setErrorMessage("验证码不能为空");
	} else {
		$(".login-checkcode").css("border-color", "green");
		setDefaultMessagt();
	}
}
function setErrorMessage(text) {
	var loginMessage = $("#loginMessage");
	var errorMessage = "<strong>错误！</strong>";
	loginMessage.attr("class", "alert alert-danger");
	loginMessage.html(errorMessage + text);
	try {
		window.parent.loadFrame();
	} catch (e) {
	}
}

function setDefaultMessagt() {
	var loginMessage = $("#loginMessage");
	loginMessage.attr("class", "");
	loginMessage.html("");
	try {
		window.parent.loadFrame();
	} catch (e) {
	}
}