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

}
