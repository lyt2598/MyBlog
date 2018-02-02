package com.liaoyingtai.blog.service.about.impl;

import java.util.Date;

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
		// 以下信息为不返回信息
		aboutMe.getUserInfo().setUserInfo_Account(null);
		aboutMe.getUserInfo().setUserInfo_Password(null);
		aboutMe.getUserInfo().setUserJurisdiction(null);
		aboutMe.getUserInfo().setUserInfo_RegTime(null);
		aboutMe.getUserInfo().setUserInfo_Status(0);
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

	public void insertAboutMeInfo(AboutMe aboutMe, String userId) throws Exception {
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：插入个人介绍时用户ID不能为空");
		}
		if (aboutMe == null) {
			aboutMe = getDefaultAboutMe(userId);
		}
		aboutMeMapper.insertAboutMeInfo(aboutMe);
	}

	private AboutMe getDefaultAboutMe(String userId) {
		// 默认 电话和座机为不显示状态
		AboutMe aboutMe = new AboutMe(0, "", "", "", "", "", userId, 1, 0, 0, 1, new Date(), 0);
		return aboutMe;
	}

	public void updateAboutMeViewCountByUserId(AboutMe aboutMe, String userId, int num) throws Exception {
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：修改个人介绍时用户ID不能为空");
		}
		if (aboutMe == null) {
			throw new BaseExceptionCustom("参数错误：修改个人介绍时个人介绍不能为空");
		}
		if (aboutMe.getAboutMe_UserId() == null || "".equals(aboutMe.getAboutMe_UserId())) {
			throw new BaseExceptionCustom("参数错误：修改个人介绍时个人介绍中的ID不能为空");
		}
		if (!aboutMe.getAboutMe_UserId().equals(userId)) {
			throw new BaseExceptionCustom("参数错误：个人介绍中用户ID与参数中用户ID不一致");
		}
		int viewCount = aboutMe.getAboutMe_ViewCount();
		viewCount += num;
		aboutMe.setAboutMe_ViewCount(viewCount);
		aboutMeMapper.updateAboutMeInfo(aboutMe);
	}
}
