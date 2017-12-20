package com.liaoyingtai.blog.controller.userInfo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.userInfo.UserRegisteredException;
import com.liaoyingtai.blog.controller.validator.userInfo.RegUserInfoValidatorGroup;
import com.liaoyingtai.blog.entity.userInfo.UserInfoCustom;
import com.liaoyingtai.blog.service.userinfo.UserInfoService;

@Controller
public class UserInfoController {

	@Autowired
	private UserInfoService userInfoService;

	@RequestMapping(value = "/regUser", method = { RequestMethod.GET })
	public String regUserPage() throws Exception {
		return "baseView/reg";
	}

	@RequestMapping(value = "/regUser", method = { RequestMethod.POST })
	public String regUser(
			Model model,
			@Validated(value = { RegUserInfoValidatorGroup.class }) @ModelAttribute UserInfoCustom userInfo,
			BindingResult result) throws Exception {
		if (result.hasErrors()) {
			List<ObjectError> oList = result.getAllErrors();
			model.addAttribute("userInfo", userInfo);
			model.addAttribute("errorList", oList);
			// 返回校验失败的信息
			return "baseView/reg";
		} else {
			// 校验成功继续执行
			userInfoService.insertUserInfo(userInfo);
		}
		return "baseView/login";
	}

	@RequestMapping(value = "/checkAccountAlreadyExist", method = { RequestMethod.POST })
	public @ResponseBody
	Map<String, Object> checkAccountAlreadyExist(String account)
			throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try {
			resultMap.put("status", 1);// 1表示查询成功
			boolean bool = userInfoService.getCheckAccountAlreadyExist(account);
			resultMap.put("result", bool);
		} catch (UserRegisteredException e) {
			resultMap.put("status", 0);// 0表示查询失败(包括报错)
			resultMap.put("result", e.getErrorMsg());
		}
		return resultMap;
	}
}
