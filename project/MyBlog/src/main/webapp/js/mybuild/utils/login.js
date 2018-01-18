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
	if (bool == true) {
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
	var username_regex = /^[0-9a-zA-z_]{6,12}$/
	if (username == null || username == "") {
		setErrorMessage("用户名不能为空");
	} else if (!username_regex.test(username)) {
		setErrorMessage("用户名格式不正确,用户名长度必须为6-12位");
	} else {
		setDefaultMessagt();
		return true;
	}
	return false;
}
// 检查用户昵称
function checkName(name) {
	var name_regex = /^([0-9a-zA-z_]{6,12})|([\u4e00-\u9fa5]{3,6})$/;
	if (name == null || name == "") {
		setErrorMessage("昵称不能为空");
	} else if (!name_regex.test(name)) {
		setErrorMessage("昵称格式不正确，昵称为3-6个汉字或6-12字母");
	} else {
		setDefaultMessagt();
		return true;
	}
	return false;
}
// 检查用户密码
function checkPassWord(password) {
	var password_regex = /^[0-9a-zA-z_\.\+\-_]{6,12}$/
	if (password == null || password == "") {
		setErrorMessage("密码不能为空");
	} else if (!password_regex.test(password)) {
		setErrorMessage("密码格式不正确，密码长度为6-18位，可包含.+-_");
	} else {
		setDefaultMessagt();
		return true;
	}
	return false;
}
// 检查用户再次输入密码
function checkPassWord1(password1) {
	console.log("校验再次输入密码");
	var password = $(".login-password").val();
	if (password1 == null || password1 == "") {
		setErrorMessage("请再次输入密码");
	} else if (password != password1) {
		setErrorMessage("两次密码输入不一致");
	} else {
		setDefaultMessagt();
		return true;
	}
	return false;
}
// 检查邮箱
function checkEmail(email) {
	console.log("校验邮箱");
	var email_regex = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
	if (email == null || email == "") {
		setErrorMessage("邮箱不能为空");
	} else if (!email_regex.test(email)) {
		setErrorMessage("邮箱格式不正确");
	} else {
		setDefaultMessagt();
		return true;
	}
	return false;
}
// 检查验证码
function checkCheckCode(checkcode) {
	console.log("校验验证码");
	var checkCode_regex = /^[0-9a-zA-Z]{4}$/
	if (checkcode == null || checkcode == "") {
		setErrorMessage("验证码不能为空");
	} else if (!checkCode_regex.test(checkcode)) {
		setErrorMessage("验证码格式不正确,验证码位4位字符");
	} else {
		setDefaultMessagt();
		return true;
	}
	return false;
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
// 设置成功提示警告
function setSuccessMessage(text) {
	var loginMessage = $("#loginMessage");
	var errorMessage = "<strong>恭喜！</strong>";
	loginMessage.attr("class", "alert alert-success");
	loginMessage.html(errorMessage + text);
}

var bool = false;// 用于存放用户名是否已经存在的判断
// 检查用户名是否已经存在(注册时用)
function checkAccountAlreadyExist(account) {
	if (checkUserName(account) == false) {
		return false;
	}
	var url = window.parent.locationValue;
	$.ajax({
		url : url + "/userInfo/checkAccountAlreadyExist.action",
		method : "POST",
		data : "account=" + account,
		dataType : "json",
		success : function(data) {
			var obj = eval(data);
			// false:表示不存在 true表示存在
			if (obj.status == 1) {
				bool = obj.result;
				if (bool == false) {
					setSuccessMessage("该账号可以使用");
				} else {
					setErrorMessage("该账号已被注册");
				}
			} else {
				setErrorMessage("校验时发生未知异常,请与管理员取的联系！" + obj.result);
			}
		},
		error : function(e) {
			setErrorMessage("校验时发生未知异常,请与管理员取的联系！");
		}
	});
}