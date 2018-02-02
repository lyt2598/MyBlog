package com.liaoyingtai.blog.utils;

import java.util.Map;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class ResultUtils {

	// @JsonIgnore：忽略字段
	@JsonIgnore
	public final static int STATUS_OK = 1;
	@JsonIgnore
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

	public Map<String, Object> getResult() {
		return result;
	}

	public void setResult(Map<String, Object> result) {
		this.result = result;
	}

}
