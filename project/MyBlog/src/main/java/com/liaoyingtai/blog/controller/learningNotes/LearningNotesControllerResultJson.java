package com.liaoyingtai.blog.controller.learningNotes;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesService;

@Controller
@RequestMapping("learningNotes/json/")
public class LearningNotesControllerResultJson {

	@Autowired
	private LearningNotesService learningNotesService;

	@RequestMapping(value = "getLearningNotesList", method = { RequestMethod.POST })
	public @ResponseBody
	LearningNotesCustom getLearningNotesList(HttpServletRequest request,
			LearningNotesCustom learningNotesCustom) throws Exception {
		// 读取当前登录的用户
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(
				"currentUser");
		learningNotesCustom = learningNotesService.getLearningNotesList(
				userInfo, learningNotesCustom);
		return learningNotesCustom;
	}

}
