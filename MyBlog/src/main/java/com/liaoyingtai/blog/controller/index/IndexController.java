package com.liaoyingtai.blog.controller.index;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultPage;

@Controller
public class IndexController extends MyExceptionResolverResultPage {

	@RequestMapping(value = "index/{userId}", method = { RequestMethod.GET })
	public String index(Model model, @PathVariable("userId") String uid)
			throws Exception {
		model.addAttribute("userId", uid);
		return "other/index";
	}
}
