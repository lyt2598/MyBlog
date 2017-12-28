package com.liaoyingtai.blog.controller.base;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultJson;
import com.liaoyingtai.blog.entity.headMenu.HeadMenuCustom;
import com.liaoyingtai.blog.service.headMenu.HeadMenuService;
import com.liaoyingtai.blog.utils.ResultUtils;

@Controller
public class LoadBaseContentController extends MyExceptionResolverResultJson {

	@Autowired
	private HeadMenuService headMenuService;

	@RequestMapping(value = "/loadContent", method = { RequestMethod.POST })
	public @ResponseBody
	ResultUtils loadContent(String uid) throws Exception {
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		List<HeadMenuCustom> hm = headMenuService.getIndexHeadMenu(uid);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("headMenu", hm);
		resultMap.put("userInfo", null);
		resultUtils.setResult(resultMap);
		return resultUtils;
	}
}
