package com.liaoyingtai.blog.controller.exception;

@SuppressWarnings("serial")
public class BaseExceptionCustom extends Exception {

	private String errorMsg;

	public BaseExceptionCustom(String errorMsg) {
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
