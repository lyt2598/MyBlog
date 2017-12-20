package com.liaoyingtai.blog.entity.userInfo;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class UserInfoCustom extends UserInfo {

	@NotNull(message = "{userInfo.checkcode.notNull}")
	@NotBlank(message = "{userInfo.checkcode.notBlank}")
	@Length(min = 4, max = 4, message = "{userInfo.checkcode.length}")
	private String checkCode;

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

}
