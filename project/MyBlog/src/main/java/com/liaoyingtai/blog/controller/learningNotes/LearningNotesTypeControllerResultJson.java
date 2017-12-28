package com.liaoyingtai.blog.controller.learningNotes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultJson;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesType;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesTypeService;
import com.liaoyingtai.blog.utils.ResultUtils;

@Controller
public class LearningNotesTypeControllerResultJson extends
		MyExceptionResolverResultJson {

	@Autowired
	private LearningNotesTypeService learningNotesTypeService;

	@RequestMapping(value = "getLNType", method = { RequestMethod.POST })
	public @ResponseBody
	ResultUtils getLNType() throws Exception {
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		Map<String, Object> result = new HashMap<String, Object>();
		List<LearningNotesType> learningNotesTypes = learningNotesTypeService
				.getLearningNotesTypes();
		result.put("lnType", learningNotesTypes);
		resultUtils.setResult(result);
		return resultUtils;
	}
}
