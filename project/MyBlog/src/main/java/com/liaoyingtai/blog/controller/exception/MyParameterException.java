package com.liaoyingtai.blog.controller.exception;

public class MyParameterException extends Exception {

	private static final long serialVersionUID = -5581473160637020537L;

	private String message;

	public MyParameterException(String message) {
		super(message);
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
