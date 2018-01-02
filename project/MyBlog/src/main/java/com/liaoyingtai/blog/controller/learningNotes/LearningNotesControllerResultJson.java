package com.liaoyingtai.blog.controller.learningNotes;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultJson;
import com.liaoyingtai.blog.controller.validator.group.learningNotes.PublishLearningNotesValidatorGroup;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotes;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesService;
import com.liaoyingtai.blog.utils.ResultUtils;

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

	@RequestMapping(value = "/publish/pubLearningNotes", method = { RequestMethod.POST })
	public @ResponseBody
	ResultUtils pubLearningNotes(
			HttpSession session,
			@Validated(value = { PublishLearningNotesValidatorGroup.class }) LearningNotes learningNotes)
			throws Exception {
		// 从session中读取当前用户的id来发表文章
		// UserInfo userInfo = (UserInfo) session.getAttribute("currentUser");
		// String uid = userInfo.getMyBlog_UserInfo_id();
		String uid = "54b70f611f46181e1bfe7e3714bb2eeb";
		learningNotes.setLearningNotes_PubUser(uid);
		learningNotesService.insertLearningNotesList(uid, learningNotes);
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		// 将发表文章的用户id返回，前台用做跳转参数
		resultMap.put("userId", uid);
		resultUtils.setResult(resultMap);
		return resultUtils;
	}
}
