package com.liaoyingtai.blog.controller.exception.userInfo;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;

/**
 * 用户注册异常
 * 
 * @author Lyt
 * 
 */
@SuppressWarnings("serial")
public class UserRegisteredException extends BaseExceptionCustom {

	public UserRegisteredException(String errorMsg) {
		super(errorMsg);
	}

}
