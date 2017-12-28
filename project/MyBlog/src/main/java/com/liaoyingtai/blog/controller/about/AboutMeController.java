package com.liaoyingtai.blog.controller.about;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultPage;

@Controller
public class AboutMeController extends MyExceptionResolverResultPage {

	@RequestMapping(value = "aboutMe/{userId}", method = { RequestMethod.GET })
	public String aboutMe(Model model, @PathVariable("userId") String uid)
			throws Exception {
		model.addAttribute("userId", uid);
		return "aboutMe/aboutMe";
	}
}
