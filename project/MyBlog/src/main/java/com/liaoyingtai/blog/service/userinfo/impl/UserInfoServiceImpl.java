package com.liaoyingtai.blog.service.userinfo.impl;

import java.util.Date;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liaoyingtai.blog.controller.exception.userInfo.UserRegisteredException;
import com.liaoyingtai.blog.dao.mapper.userInfo.UserInfoMapper;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.entity.userInfo.UserJurisdiction;
import com.liaoyingtai.blog.service.userinfo.UserInfoService;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper userInfoMapper;

	public void insertUserInfo(UserInfo userInfo) throws Exception {
		if (userInfo.getUserInfo_Account() == null
				|| "".equals(userInfo.getUserInfo_Account())) {
			throw new UserRegisteredException("用户账号不能为空或''");
		}
		if (userInfo.getUserInfo_Password() == null
				|| "".equals(userInfo.getUserInfo_Password())) {
			throw new UserRegisteredException("密码不能为空或''");
		}
		if (userInfo.getUserInfo_Name() == null
				|| "".equals(userInfo.getUserInfo_Name())) {
			throw new UserRegisteredException("昵称不能为空或''");
		}
		if (userInfo.getUserInfo_Email() == null
				|| "".equals(userInfo.getUserInfo_Email())) {
			throw new UserRegisteredException("邮箱不能为空或''");
		}
		String account = userInfo.getUserInfo_Account();
		if (userInfoMapper.getUserInfoByAccount(account) != null) {
			throw new UserRegisteredException("用户名已被注册,请重新填写");
		}
		String password = userInfo.getUserInfo_Password();
		password = new Md5Hash(password, "lyt2598").toString();
		userInfo.setUserInfo_Password(password);
		userInfo.setUserInfo_HeadImg("default.jpg");
		userInfo.setUserInfo_Status(0);
		userInfo.setUserInfo_RegTime(new Date());
		UserJurisdiction userJurisdiction = new UserJurisdiction();
		userJurisdiction.setMyBlog_User_Jurisdiction_id(1);
		userInfo.setUserJurisdiction(userJurisdiction);
		userInfoMapper.insertUserInfo(userInfo);
	}

	public boolean getCheckAccountAlreadyExist(String account) throws Exception {
		if (account == null || "".equals(account)) {
			throw new UserRegisteredException("用户名不能为空");
		}
		if (userInfoMapper.getUserInfoByAccount(account) != null) {
			return true;
		}
		return false;
	}
}
