package cn.myegames.blog.controller.learningNotes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.myegames.blog.entity.learningNotes.LearningNotesCustom;
import cn.myegames.blog.service.learningNotes.LearningNotesService;

@Controller
@RequestMapping("learningNotes/json/")
public class LearningNotesControllerResultJson {

	@Autowired
	private LearningNotesService learningNotesService;

	@ResponseBody
	@RequestMapping(value = "getLearningNotesList", method = { RequestMethod.POST })
	public LearningNotesCustom getLearningNotesList(
			LearningNotesCustom learningNotesCustom) throws Exception {
		learningNotesCustom = learningNotesService
				.getLearningNotesList(learningNotesCustom);
		return learningNotesCustom;
	}

}
