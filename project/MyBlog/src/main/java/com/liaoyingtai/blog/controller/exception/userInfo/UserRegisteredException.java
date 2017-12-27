package com.liaoyingtai.blog.controller.exception.userInfo;

/**
 * 用户注册异常
 * 
 * @author Lyt
 * 
 */
@SuppressWarnings("serial")
public class UserRegisteredException extends Exception {

	public UserRegisteredException(String errorMsg) {
		super(errorMsg);
	}

}
