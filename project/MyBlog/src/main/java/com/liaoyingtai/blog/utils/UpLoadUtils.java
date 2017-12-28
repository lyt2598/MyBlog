package com.liaoyingtai.blog.utils;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class UpLoadUtils {

	// @JsonIgnore：忽略该字段
	@JsonIgnore
	public final static int UPLOAD_OK = 1;
	@JsonIgnore
	public final static int UPLOAD_ERROR = -1;

	private int status;// 1:上传成功 -1：上传失败
	private String message;// 一般用于上传失败后显示错误信息
	private String url;// 文件保存路径

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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
