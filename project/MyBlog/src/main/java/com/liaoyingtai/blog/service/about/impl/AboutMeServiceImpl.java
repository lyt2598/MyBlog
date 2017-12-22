package com.liaoyingtai.blog.service.about.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.dao.mapper.about.AboutMeMapper;
import com.liaoyingtai.blog.entity.about.AboutMe;
import com.liaoyingtai.blog.service.about.AboutMeService;

@Service("aboutMeService")
public class AboutMeServiceImpl implements AboutMeService {

	@Autowired
	private AboutMeMapper aboutMeMapper;

	public AboutMe getAboutMeByUserId(String userId) throws Exception {
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：查询用户介绍时用户ID不能为空");
		}
		AboutMe aboutMe = aboutMeMapper.getAboutMeInfoByUserId(userId);
		// 判断以下信息是否显示在页面上
		if (aboutMe.getAboutMe_Tel() == 0) {
			aboutMe.getUserInfo().setUserInfo_Tel(null);
		}
		if (aboutMe.getAboutMe_GitHub() == 0) {
			aboutMe.getUserInfo().setUserInfo_GitHub(null);
		}
		if (aboutMe.getAboutMe_Phone() == 0) {
			aboutMe.getUserInfo().setUserInfo_Phone(null);
		}
		if (aboutMe.getAboutMe_QQAccount() == 0) {
			aboutMe.getUserInfo().setUserInfo_QQaccount(null);
		}
		return aboutMe;
	}

	public void insertAboutMeInfo(AboutMe aboutMe, String userId)
			throws Exception {
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：插入个人信息时用户ID不能为空");
		}
		if (aboutMe == null) {
			aboutMe = getDefaultAboutMe(userId);
		}
		aboutMeMapper.insertAboutMeInfo(aboutMe);
	}

	private AboutMe getDefaultAboutMe(String userId) {
		// 默认 电话和座机为不显示状态
		AboutMe aboutMe = new AboutMe(0, "", "", "", "", userId, 1, 0, 0, 1);
		return aboutMe;
	}
}
