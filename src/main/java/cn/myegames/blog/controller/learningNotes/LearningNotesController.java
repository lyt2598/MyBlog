package cn.myegames.blog.controller.learningNotes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.myegames.blog.service.learningNotes.LearningNotesService;

@Controller
@RequestMapping("learningNotes")
public class LearningNotesController {

	@Autowired
	private LearningNotesService learningNotesService;

	@RequestMapping(value = "getLearningNotesList", method = { RequestMethod.GET })
	public String getLearningNotesList() throws Exception {
		return "learningNotes/learningNotesList";
	}

}
