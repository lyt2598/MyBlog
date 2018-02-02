package com.liaoyingtai.blog.service.headMenu.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.controller.exception.userInfo.UserRegisteredException;
import com.liaoyingtai.blog.dao.mapper.headMenu.HeadMenuMapper;
import com.liaoyingtai.blog.entity.headMenu.HeadMenu;
import com.liaoyingtai.blog.entity.headMenu.HeadMenuCustom;
import com.liaoyingtai.blog.service.headMenu.HeadMenuService;

@Transactional
@Service("headMenuService")
public class HeadMenuServiceImpl implements HeadMenuService {

	@Autowired
	private HeadMenuMapper headMenuMapper;

	public List<HeadMenuCustom> getIndexHeadMenu(String uid) throws Exception {
		if (uid == null || "".equals(uid)) {
			throw new BaseExceptionCustom("参数错误：查询用户菜单时用户ID不能为空");
		}
		HeadMenuCustom selectParam = new HeadMenuCustom();
		selectParam.setHeadMenu_UserId(uid);
		List<HeadMenuCustom> myBlogHeadMenu = headMenuMapper.getHeadMenuInfo(selectParam);
		if (myBlogHeadMenu.size() <= 0) {
			throw new BaseExceptionCustom("user menu is not found（用户菜单没有找到）");
		}
		return myBlogHeadMenu;
	}

	public void insertIndexHeadMenu(List<HeadMenu> headMenuInfo, String userId) throws Exception {
		if (userId == null || "".equals(userId)) {
			throw new UserRegisteredException("參數錯誤：创建菜单时用户ID不能为空");
		}
		if (headMenuInfo == null) {
			headMenuInfo = getDefaultHeadMenu(userId);
		}
		for (HeadMenu menu : headMenuInfo) {
			headMenuMapper.insertHeadMenuInfo(menu);
		}
	}

	private List<HeadMenu> getDefaultHeadMenu(String userId) {
		List<HeadMenu> headMenus = new ArrayList<HeadMenu>();
		HeadMenu headMenu = new HeadMenu(0, "首页", "index/" + userId, 0, userId, "fa-university");
		headMenus.add(headMenu);
		headMenu = new HeadMenu(0, "个人介绍", "aboutMe/" + userId, 0, userId, "fa-address-card-o");
		headMenus.add(headMenu);
		headMenu = new HeadMenu(0, "学习笔记", "learningNotesList/" + userId, 0, userId, "fa-book");
		headMenus.add(headMenu);
		headMenu = new HeadMenu(0, "给我留言", "message/board.action", 0, userId, "fa-commenting");
		headMenus.add(headMenu);
		return headMenus;
	}

}
