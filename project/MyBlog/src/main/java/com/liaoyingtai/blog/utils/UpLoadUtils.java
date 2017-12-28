package com.liaoyingtai.blog.utils;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class UpLoadUtils {

	// @JsonIgnore：忽略该字段
	@JsonIgnore
	public final static int UPLOAD_OK = 1;
	@JsonIgnore
	public final static int UPLOAD_ERROR = -1;

	private int status;// 1:上传成功 -1：上传失败
	private String message;// 一般用于上传失败后显示错误信息

	// 使用wangEditor上传时需要返回的内容
	private int errno;// 上传状态 0：成功 其他值：失败
	private List<String> data;// 上传成功后的文件路径

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

	public List<String> getData() {
		return data;
	}

	public void setData(List<String> data) {
		this.data = data;
	}

	public int getErrno() {
		return errno;
	}

	public void setErrno(int errno) {
		this.errno = errno;
	}

	public static int getUploadOk() {
		return UPLOAD_OK;
	}

	public static int getUploadError() {
		return UPLOAD_ERROR;
	}

}
