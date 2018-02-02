package com.liaoyingtai.blog.controller.userInfo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.shiro.crypto.hash.Md5Hash;
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

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultPage;
import com.liaoyingtai.blog.controller.exception.userInfo.UserRegisteredException;
import com.liaoyingtai.blog.controller.validator.group.userInfo.RegUserInfoValidatorGroup;
import com.liaoyingtai.blog.entity.userInfo.UserInfoCustom;
import com.liaoyingtai.blog.service.userinfo.UserInfoService;

@Controller
@RequestMapping("/userInfo")
public class UserInfoController extends MyExceptionResolverResultPage {

	@Autowired
	private UserInfoService userInfoService;

	@RequestMapping(value = "/regUser", method = { RequestMethod.GET })
	public String regUserPage(HttpSession session) throws Exception {
		String token = new Md5Hash(UUID.randomUUID().toString(), "token").toString();
		session.setAttribute("regToken", token);
		return "other/reg";
	}

	// 注册用户信息
	@RequestMapping(value = "/regUser", method = { RequestMethod.POST })
	public String regUser(Model model,
			@Validated(value = { RegUserInfoValidatorGroup.class }) @ModelAttribute UserInfoCustom userInfo,
			BindingResult result) throws Exception {
		if (result.hasErrors()) {// 判断校验是否有错误信息
			List<ObjectError> oList = result.getAllErrors();
			model.addAttribute("userInfo", userInfo);
			model.addAttribute("errorList", oList);
			// 返回校验失败的信息
			return "other/reg";
		} else {
			// 校验成功继续执行
			userInfoService.insertUserInfo(userInfo);
		}
		return "redirect:/login";
	}

	// 验证用户名是否已经被注册
	@RequestMapping(value = "/checkAccountAlreadyExist", method = { RequestMethod.POST })
	public @ResponseBody Map<String, Object> checkAccountAlreadyExist(String account) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		try {
			resultMap.put("status", 1);// 1表示查询成功
			boolean bool = userInfoService.getCheckAccountAlreadyExist(account);
			resultMap.put("result", bool);
		} catch (UserRegisteredException e) {
			resultMap.put("status", 0);// 0表示查询失败(包括报错)
			resultMap.put("result", e.getMessage());
		}
		return resultMap;
	}

	// 进入登录页面
	@RequestMapping(value = "/login", method = { RequestMethod.GET })
	public String login() throws Exception {
		return "other/login";
	}

}
