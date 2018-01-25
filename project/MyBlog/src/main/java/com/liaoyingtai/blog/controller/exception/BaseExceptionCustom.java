package com.liaoyingtai.blog.controller.exception;

/**
 * 基础异常类型
 * 
 * @author Lyt
 *
 */
@SuppressWarnings("serial")
public class BaseExceptionCustom extends Exception {

	private String message;

	public BaseExceptionCustom(String errorMsg) {
		super(errorMsg);
		this.message = errorMsg;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
