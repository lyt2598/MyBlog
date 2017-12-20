//提交登录
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
	return true;
}
// 提交注册
function submitReg() {
	var username = $(".login-username").val();
	if (checkUserName(username) == false) {
		return false;
	}
	console.log(checkAccountAlreadyExist(username));
	if (checkAccountAlreadyExist(username) == false) {
		return false;
	}
	var password = $(".login-password").val();
	if (checkPassWord(password) == false) {
		return false;
	}
	var password1 = $(".login-password1").val();
	if (checkPassWord1(password) == false) {
		return false;
	}
	var name = $(".login-name").val();
	if (checkName(name) == false) {
		return false;
	}
	var email = $(".login-email").val();
	if (checkEmail(email) == false) {
		return false;
	}
	var checkcode = $(".login-checkcode").val();
	if (checkCheckCode(checkcode) == false) {
		return false;
	}
	return true;
}
// 检查用户账号
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
// 检查用户昵称
function checkName(name) {
	if (name == null || name == "") {
		$(".login-name").css("border-color", "red");
		setErrorMessage("昵称不能为空");
		return false;
	} else {
		$(".login-name").css("border-color", "green");
		setDefaultMessagt();
	}
	return true;
}
// 检查用户密码
function checkPassWord(password) {
	if (password == null || password == "") {
		$(".login-password").css("border-color", "red");
		setErrorMessage("密码不能为空");
		return false;
	} else {
		$(".login-password").css("border-color", "green");
		setDefaultMessagt();
	}
	return true;
}
// 检查用户再次输入密码
function checkPassWord1(password1) {
	var password = $(".login-password").val();
	if (password1 == null || password1 == "") {
		$(".login-password1").css("border-color", "red");
		setErrorMessage("请再次输入密码");
		return false;
	} else if (password != password1) {
		$(".login-password1").css("border-color", "red");
		setErrorMessage("两次密码输入不一致");
		return false;
	} else {
		$(".login-password1").css("border-color", "green");
		setDefaultMessagt();
	}
	return true;
}
// 检查邮箱
function checkEmail(email) {
	if (email == null || email == "") {
		$(".login-email").css("border-color", "red");
		setErrorMessage("邮箱不能为空");
		return false;
	} else {
		$(".login-email").css("border-color", "green");
		setDefaultMessagt();
	}
	return true;
}
// 检查验证码
function checkCheckCode(checkcode) {
	if (checkcode == null || checkcode == "") {
		$(".login-checkcode").css("border-color", "red");
		setErrorMessage("验证码不能为空");
		return false;
	} else {
		$(".login-checkcode").css("border-color", "green");
		setDefaultMessagt();
	}
	return true;
}
// 设置错误提示警告
function setErrorMessage(text) {
	var loginMessage = $("#loginMessage");
	var errorMessage = "<strong>错误！</strong>";
	loginMessage.attr("class", "alert alert-danger");
	loginMessage.html(errorMessage + text);
}
// 设置默认警告(不显示警告)
function setDefaultMessagt() {
	var loginMessage = $("#loginMessage");
	loginMessage.attr("class", "");
	loginMessage.html("");
}

var message = "";
// 检查用户名是否已经存在(注册时用)
function checkAccount(account) {
	var boolean = false;
	var x = function checkAccountAlreadyExist(account) {
		var url = window.parent.locationValue;
		$.ajax({
			url : url + "/checkAccountAlreadyExist.action",
			method : "POST",
			data : "account=" + account,
			dataType : "json",
			success : function(data) {
				var obj = eval(data);
				if (obj.status == 1) {
					boolean = obj.result;
					message = "该账号已被注册";
				} else {
					boolean = false;
					message = obj.result;
				}
			},
			error : function(e) {
				boolean = false;
				message = "用户名校验失败";
			}
		});
	};
	return boolean;
}