package com.liaoyingtai.blog.utils;

import java.util.Map;

public class ResultUtils {

	public final static int STATUS_OK = 1;
	public final static int STATUS_ERROR = -1;

	private int status;// 1:成功 -1:失败
	private String message;// 一把失败时传递错误信息
	private Map<String, Object> result;

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public static int getStatusOk() {
		return STATUS_OK;
	}

	public static int getStatusError() {
		return STATUS_ERROR;
	}

	public Map<String, Object> getResult() {
		return result;
	}

	public void setResult(Map<String, Object> result) {
		this.result = result;
	}

}
