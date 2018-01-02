package com.liaoyingtai.blog.controller.learningNotes;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultPage;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotes;
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

	@RequestMapping(value = "pubLearningNotes", method = { RequestMethod.POST })
	public String pubLearningNotes(HttpSession session, Model model,
			LearningNotes learningNotes) throws Exception {
		// 从session中读取当前用户的id来发表文章
		// UserInfo userInfo = (UserInfo) session.getAttribute("currentUser");
		// String uid = userInfo.getMyBlog_UserInfo_id();
		String uid = "54b70f611f46181e1bfe7e3714bb2eeb";
		learningNotes.setLearningNotes_PubUser(uid);
		learningNotesService.insertLearningNotesList(uid, learningNotes);
		model.addAttribute("userId", uid);
		return "learningNotesList/" + uid;
	}

}
