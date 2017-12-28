package com.liaoyingtai.blog.controller.learningNotes;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultJson;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesService;

@Controller
public class LearningNotesControllerResultJson extends
		MyExceptionResolverResultJson {

	@Autowired
	private LearningNotesService learningNotesService;

	@RequestMapping(value = "getLearningNotesList", method = { RequestMethod.POST })
	public @ResponseBody
	LearningNotesCustom getLearningNotesList(HttpServletRequest request,
			String uid, LearningNotesCustom learningNotesCustom)
			throws Exception {
		// 读取当前登录的用户
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute(
				"currentUser");
		learningNotesCustom.setLearningNotes_PubUser(uid);
		learningNotesCustom = learningNotesService.getLearningNotesList(
				userInfo, learningNotesCustom);
		return learningNotesCustom;
	}

}
