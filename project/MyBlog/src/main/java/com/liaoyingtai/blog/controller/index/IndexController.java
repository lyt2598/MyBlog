package com.liaoyingtai.blog.controller.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liaoyingtai.blog.entity.index.HeadMenuCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.service.index.HeadMenuService;
import com.liaoyingtai.blog.service.userinfo.UserInfoService;

@Controller
public class IndexController {

	@Autowired
	private HeadMenuService indexService;
	@Autowired
	private UserInfoService userInfoService;

	@RequestMapping(value = "index/{userId}", method = { RequestMethod.GET })
	public String index(Model model, @PathVariable("userId") String uid)
			throws Exception {
		HeadMenuCustom headMenuCustom = new HeadMenuCustom();
		headMenuCustom.setHeadMenu_UserId(uid);
		List<HeadMenuCustom> myBlogHeadMenu = indexService
				.getIndexHeadMenu(headMenuCustom);
		UserInfo userInfo = userInfoService.getUserInfoById(uid);
		model.addAttribute("index_head_menu", myBlogHeadMenu);
		model.addAttribute("userInfo", userInfo);
		return "baseView/framework";
	}
}
