package com.liaoyingtai.blog.controller.interceptor;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultPage;
import com.liaoyingtai.blog.entity.headMenu.HeadMenuCustom;
import com.liaoyingtai.blog.service.headMenu.HeadMenuService;

public class MyHandlerInterceptor extends MyExceptionResolverResultPage implements HandlerInterceptor {

	@Autowired
	private HeadMenuService headMenuService;

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		return true;
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// 加载头部菜单信息
		if (modelAndView != null) {
			Map<String, Object> modelMap = modelAndView.getModel();
			String uid = (String) modelMap.get("userId");
			List<HeadMenuCustom> list = headMenuService.getIndexHeadMenu(uid);
			request.getSession().setAttribute("headMenuList", list);
		}
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

}
