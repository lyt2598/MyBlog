package com.liaoyingtai.blog.controller.exception;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.userInfo.UserRegisteredException;
import com.liaoyingtai.blog.utils.ResultUtils;

public class MyExceptionResolverResultJson {

	@ExceptionHandler
	public @ResponseBody ResultUtils resolveException(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
			Exception arg3) {
		if (!(arg3 instanceof BaseExceptionCustom) && !(arg3 instanceof UserRegisteredException)) {
			arg3 = new BaseExceptionCustom("运行过程中发生未知异常,请立即与管理员取的联系！");
		}
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_ERROR);
		resultUtils.setMessage(arg3.getMessage());
		Map<String, Object> exMap = new HashMap<>();
		exMap.put("exception", arg3);
		resultUtils.setResult(exMap);
		return resultUtils;
	}
}
