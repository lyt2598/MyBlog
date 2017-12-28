package com.liaoyingtai.blog.controller.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.utils.UpLoadUtils;

public class UpLoadExceptionResolver {

	@ExceptionHandler
	public @ResponseBody
	UpLoadUtils resolveException(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3) {
		arg3.printStackTrace();
		if (!(arg3 instanceof BaseExceptionCustom)) {
			arg3 = new BaseExceptionCustom("运行过程中发生未知异常");
		}
		UpLoadUtils upLoadUtils = new UpLoadUtils();
		upLoadUtils.setStatus(-1);
		upLoadUtils.setMessage(arg3.getMessage());
		upLoadUtils.setUrl("");
		return upLoadUtils;
	}

}
