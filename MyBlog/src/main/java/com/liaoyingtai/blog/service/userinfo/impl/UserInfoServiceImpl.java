package com.liaoyingtai.blog.service.userinfo.impl;

import java.util.Date;
import java.util.UUID;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.controller.exception.userInfo.UserRegisteredException;
import com.liaoyingtai.blog.dao.mapper.userInfo.UserInfoMapper;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.entity.userInfo.UserJurisdiction;
import com.liaoyingtai.blog.service.about.AboutMeService;
import com.liaoyingtai.blog.service.headMenu.HeadMenuService;
import com.liaoyingtai.blog.service.userinfo.UserInfoService;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper userInfoMapper;
	@Autowired
	private HeadMenuService headMenuService;
	@Autowired
	private AboutMeService aboutMeService;

	public void insertUserInfo(UserInfo userInfo) throws Exception {
		if (userInfo.getUserInfo_Account() == null || "".equals(userInfo.getUserInfo_Account())) {
			throw new UserRegisteredException("用户账号不能为空或''");
		}
		if (userInfo.getUserInfo_Password() == null || "".equals(userInfo.getUserInfo_Password())) {
			throw new UserRegisteredException("密码不能为空或''");
		}
		if (userInfo.getUserInfo_Name() == null || "".equals(userInfo.getUserInfo_Name())) {
			throw new UserRegisteredException("昵称不能为空或''");
		}
		if (userInfo.getUserInfo_Email() == null || "".equals(userInfo.getUserInfo_Email())) {
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
		String userId = new Md5Hash(UUID.randomUUID().toString(), "lyt2598").toString();
		userInfo.setMyBlog_UserInfo_id(userId);
		// 添加用户信息
		userInfoMapper.insertUserInfo(userInfo);
		// 添加用户菜单信息
		headMenuService.insertIndexHeadMenu(null, userId);
		// 添加用户个人介绍信息
		aboutMeService.insertAboutMeInfo(null, userId);
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

	public UserInfo getUserInfoById(String userId) throws Exception {
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：查询用户信息时用户ID不能为空");
		}
		UserInfo userInfo = userInfoMapper.getUserInfoById(userId);
		return userInfo;
	}

	@Override
	public UserInfo getCheckUserAccountAndPassword(String userAccount, String password) throws Exception {
		if (userAccount == null || "".equals(userAccount)) {
			throw new BaseExceptionCustom("用户账号不能为空");
		}
		if (password == null || "".equals(password)) {
			throw new BaseExceptionCustom("用户密码不能为空");
		}
		UserInfo userInfo = userInfoMapper.getUserInfoByAccount(userAccount);
		password = new Md5Hash(password, "lyt2598").toString();
		if (userInfo == null || !password.equals(userInfo.getUserInfo_Password())) {
			throw new BaseExceptionCustom("用户账号或密码输入不正确");
		}
		return userInfo;
	}

	@Override
	public UserInfo getPortionUserInfoById(String userId) throws Exception {
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：查询用户信息时用户ID不能为空");
		}
		UserInfo userInfo = userInfoMapper.getPortionUserInfoById(userId);
		return userInfo;
	}
}