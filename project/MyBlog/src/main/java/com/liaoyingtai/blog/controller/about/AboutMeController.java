package com.liaoyingtai.blog.controller.about;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultPage;
import com.liaoyingtai.blog.service.about.AboutMeService;

@Controller
public class AboutMeController extends MyExceptionResolverResultPage {

	@Autowired
	private AboutMeService aboutMeService;

	@RequestMapping(value = "aboutMe/{userId}", method = { RequestMethod.GET })
	public String aboutMe(Model model, @PathVariable("userId") String uid)
			throws Exception {
		model.addAttribute("userId", uid);
		return "aboutMe/aboutMe";
	}

}
