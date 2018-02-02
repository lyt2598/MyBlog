package com.liaoyingtai.blog.controller.userInfo;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultJson;
import com.liaoyingtai.blog.controller.validator.group.userInfo.LoginUserInfoValidatorGroup;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.entity.userInfo.UserInfoCustom;
import com.liaoyingtai.blog.service.userinfo.UserInfoService;
import com.liaoyingtai.blog.utils.ResultUtils;

@Controller
@RequestMapping("/userInfo")
public class UserInfoControllerResultJson extends MyExceptionResolverResultJson {

	@Autowired
	private UserInfoService userInfoService;

	/**
	 * 用户登录
	 * 
	 * @param userInfoCustom
	 *            用户信息，用来接收账号、密码和验证码
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/login", method = { RequestMethod.POST })
	public @ResponseBody ResultUtils login(@Validated(LoginUserInfoValidatorGroup.class) UserInfoCustom userInfoCustom,
			BindingResult bindingResult, HttpSession session) throws Exception {
		ResultUtils resultUtils = new ResultUtils();
		if (bindingResult.hasErrors()) {
			// 只返回第一个错误
			String errorMsg = bindingResult.getAllErrors().get(0).getDefaultMessage();
			throw new BaseExceptionCustom(errorMsg);
		}
		String checkCode = userInfoCustom.getCheckCode();
		String sysCheckCode = (String) session.getAttribute("SESSION_CHECK_CODE");
		if (!sysCheckCode.equalsIgnoreCase(checkCode)) {
			throw new BaseExceptionCustom("验证码输入不正确");
		}
		String account = userInfoCustom.getUserInfo_Account();
		String password = userInfoCustom.getUserInfo_Password();
		UserInfo userInfo = userInfoService.getCheckUserAccountAndPassword(account, password);
		session.setAttribute("currentUser", userInfo);
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		resultUtils.setMessage("登陆成功");
		return resultUtils;
	}

	/**
	 * 注销用户 清除session中currentUser
	 * 
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/loginOut")
	public @ResponseBody ResultUtils loginOut(HttpSession session) throws Exception {
		UserInfo userInfo = (UserInfo) session.getAttribute("currentUser");
		if (userInfo == null) {
			throw new BaseExceptionCustom("请先登录后再执行此操作");
		}
		session.removeAttribute("currentUser");
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		return resultUtils;
	}

	/**
	 * 验证当前是否有用户登录
	 * 
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/checkUserLogin")
	public @ResponseBody ResultUtils checkUserLogin(HttpSession session) throws Exception {
		UserInfo userInfo = (UserInfo) session.getAttribute("currentUser");
		if (userInfo == null) {
			throw new BaseExceptionCustom("用户未登陆");
		}
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		return resultUtils;
	}

	@RequestMapping(value = "/baseUserInfo/{userId}", method = { RequestMethod.POST })
	public @ResponseBody ResultUtils baseUserInfo(@PathVariable("userId") String uid) throws Exception {
		UserInfo userInfo = userInfoService.getPortionUserInfoById(uid);
		ResultUtils resultUtils = new ResultUtils();
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("userInfo", userInfo);
		resultUtils.setResult(resultMap);
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		return resultUtils;
	}
}
