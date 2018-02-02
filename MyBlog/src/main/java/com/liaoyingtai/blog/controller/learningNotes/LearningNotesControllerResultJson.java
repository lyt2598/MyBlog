package com.liaoyingtai.blog.controller.learningNotes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.controller.exception.MyExceptionResolverResultJson;
import com.liaoyingtai.blog.controller.validator.group.learningNotes.PublishLearningNotesValidatorGroup;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotes;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesService;
import com.liaoyingtai.blog.utils.ResultUtils;

@Controller
public class LearningNotesControllerResultJson extends MyExceptionResolverResultJson {

	@Autowired
	private LearningNotesService learningNotesService;

	// 获取学习笔记文章列表
	@RequestMapping(value = "/getLearningNotesList", method = { RequestMethod.POST })
	public @ResponseBody ResultUtils getLearningNotesList(HttpServletRequest request, String uid,
			LearningNotesCustom learningNotesCustom) throws Exception {
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		// 读取当前登录的用户
		UserInfo userInfo = (UserInfo) request.getSession().getAttribute("currentUser");
		learningNotesCustom.setLearningNotes_PubUser(uid);
		learningNotesCustom = learningNotesService.getLearningNotesList(userInfo, learningNotesCustom);
		Map<String, Object> result = new HashMap<>();
		result.put("learningNotesList", learningNotesCustom);
		resultUtils.setResult(result);
		return resultUtils;
	}

	// 发表学习笔记
	@RequestMapping(value = "/publish/pubLearningNotes", method = { RequestMethod.POST })
	public @ResponseBody ResultUtils pubLearningNotes(HttpSession session,
			@Validated(value = { PublishLearningNotesValidatorGroup.class }) LearningNotes learningNotes,
			BindingResult bindingResult) throws Exception {
		if (bindingResult.hasErrors()) {
			// 只返回第一个错误
			String errorMsg = bindingResult.getAllErrors().get(0).getDefaultMessage();
			throw new BaseExceptionCustom(errorMsg);
		}
		// 从session中读取当前用户的id来发表文章
		UserInfo userInfo = (UserInfo) session.getAttribute("currentUser");
		// 暂时先自己写权限判断用户是否登陆，到时候整合Shiro后再做修改
		if (userInfo == null) {
			throw new BaseExceptionCustom("请先登陆后再执行此操作！");
		}
		String uid = userInfo.getMyBlog_UserInfo_id();
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

	// 读取学习笔记文章内容
	@RequestMapping(value = "/learningNotes", method = { RequestMethod.POST })
	public @ResponseBody ResultUtils learningNotes(Integer lnId) throws Exception {
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		LearningNotes learningNotes = learningNotesService.getLearningNotesById(lnId);
		// 将数据库中的文章数据修改，此处作用是访问次数+1
		learningNotesService.updateLearningNotes(learningNotes.getMyBlog_LearningNotes_id(), learningNotes);
		String userId = learningNotes.getLearningNotes_PubUser();
		LearningNotes topLn = learningNotesService.getTopLearningNotes(lnId, userId);
		LearningNotes nextLn = learningNotesService.getNextLearningNotes(lnId, userId);
		Map<String, Object> result = new HashMap<>();
		result.put("learningNotes", learningNotes);
		result.put("topLearningNotes", topLn);
		result.put("nextLearningNotes", nextLn);
		resultUtils.setResult(result);
		return resultUtils;
	}

	@RequestMapping(value = "/otherLearningNotes/{limit}/{lnId}", method = { RequestMethod.POST })
	public @ResponseBody ResultUtils otherLearningNotes(@PathVariable("lnId") Integer lnId,
			@PathVariable("limit") Integer limit) throws Exception {
		List<LearningNotes> learningNotes = learningNotesService.getOtherLearningNotes(lnId, limit);
		ResultUtils resultUtils = new ResultUtils();
		resultUtils.setStatus(ResultUtils.STATUS_OK);
		Map<String, Object> result = new HashMap<>();
		result.put("otherLearningNotesList", learningNotes);
		resultUtils.setResult(result);
		return resultUtils;
	}
}
