package com.liaoyingtai.blog.controller.learningNotes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultPage;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesService;

@Controller
public class LearningNotesController extends MyExceptionResolverResultPage {

	@Autowired
	private LearningNotesService learningNotesService;

	@RequestMapping(value = "learningNotesList/{userId}", method = { RequestMethod.GET })
	public String learningNotesList(Model model,
			@PathVariable("userId") String uid) throws Exception {
		model.addAttribute("userId", uid);
		return "learningNotes/learningNotesList";
	}

	@RequestMapping(value = "pubLearningNotes", method = { RequestMethod.GET })
	public String pubLearningNotes(Model model) throws Exception {
		// 需要判断当前用户是否已经登录,如果没有登录就跳转到登录页面
		// 将当前用户的ID设置到model中，拦截器要通过id获取头部菜单
		model.addAttribute("userId", "54b70f611f46181e1bfe7e3714bb2eeb");
		return "learningNotes/pubLearningNotes";
	}

}
