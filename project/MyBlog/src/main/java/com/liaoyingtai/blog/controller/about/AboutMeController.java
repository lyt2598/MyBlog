package com.liaoyingtai.blog.controller.about;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.entity.about.AboutMe;
import com.liaoyingtai.blog.service.about.AboutMeService;

@Controller
@RequestMapping("about")
public class AboutMeController {

	@Autowired
	private AboutMeService aboutMeService;

	@RequestMapping(value = "aboutMe", method = { RequestMethod.GET })
	public String aboutMe() throws Exception {
		return "aboutMe/aboutMe";
	}

	@RequestMapping(value = "aboutMe", method = { RequestMethod.POST })
	public @ResponseBody
	AboutMe aboutMe(String uid) throws Exception {
		AboutMe aboutMe = aboutMeService.getAboutMeByUserId(uid);
		return aboutMe;
	}

}