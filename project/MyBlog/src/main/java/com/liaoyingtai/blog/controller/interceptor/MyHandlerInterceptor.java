package com.liaoyingtai.blog.controller.interceptor;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.liaoyingtai.blog.entity.headMenu.HeadMenuCustom;
import com.liaoyingtai.blog.service.headMenu.HeadMenuService;

public class MyHandlerInterceptor implements HandlerInterceptor {

	@Autowired
	private HeadMenuService headMenuService;

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		return true;
	}

	@SuppressWarnings("unchecked")
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// 加载头部菜单信息
		if (modelAndView != null) {
			HttpSession session = request.getSession();
			List<HeadMenuCustom> list = (List<HeadMenuCustom>) session
					.getAttribute("headMenu");
			if (list == null || list.size() <= 0) {
				Map<String, Object> modelMap = modelAndView.getModel();
				String uid = (String) modelMap.get("userId");
				list = headMenuService.getIndexHeadMenu(uid);
				session.setAttribute("headMenuList", list);
			}
		}
	}

	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

}
