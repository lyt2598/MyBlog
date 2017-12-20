package com.liaoyingtai.blog.controller.exception.userInfo;

/**
 * 用户注册异常
 * 
 * @author Lyt
 * 
 */
@SuppressWarnings("serial")
public class UserRegisteredException extends Exception {

	private String errorMsg;

	public UserRegisteredException(String errorMsg) {
		super();
		this.errorMsg = errorMsg;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

}
