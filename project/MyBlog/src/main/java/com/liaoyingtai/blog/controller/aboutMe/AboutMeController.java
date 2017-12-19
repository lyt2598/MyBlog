package com.liaoyingtai.blog.controller.aboutMe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("about")
public class AboutMeController {

	@RequestMapping(value = "aboutMe", method = { RequestMethod.GET })
	public String aboutMe() throws Exception {
		return "aboutMe/aboutMe";
	}

}
