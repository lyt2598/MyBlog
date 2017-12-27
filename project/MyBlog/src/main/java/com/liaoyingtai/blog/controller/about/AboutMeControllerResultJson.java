package com.liaoyingtai.blog.controller.about;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultJson;
import com.liaoyingtai.blog.entity.about.AboutMe;
import com.liaoyingtai.blog.service.about.AboutMeService;

@Controller
public class AboutMeControllerResultJson extends MyExceptionResolverResultJson {

	@Autowired
	private AboutMeService aboutMeService;

	@RequestMapping(value = "aboutMe", method = { RequestMethod.POST })
	public @ResponseBody
	AboutMe aboutMe(String uid) throws Exception {
		AboutMe aboutMe = aboutMeService.getAboutMeByUserId(uid);
		aboutMeService.updateAboutMeViewCountByUserId(aboutMe, uid, 1);
		return aboutMe;
	}

}
