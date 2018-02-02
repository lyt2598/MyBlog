package com.liaoyingtai.blog.entity.userInfo;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import com.liaoyingtai.blog.controller.validator.group.userInfo.LoginUserInfoValidatorGroup;

public class UserInfoCustom extends UserInfo {

	@NotNull(message = "{userInfo.checkcode.notNull}", groups = { LoginUserInfoValidatorGroup.class })
	@NotBlank(message = "{userInfo.checkcode.notBlank}", groups = { LoginUserInfoValidatorGroup.class })
	@Length(min = 4, max = 4, message = "{userInfo.checkcode.length}", groups = { LoginUserInfoValidatorGroup.class })
	private String checkCode;

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

}
