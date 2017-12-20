package com.liaoyingtai.blog.service.learningNotes;

import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public interface LearningNotesService {

	/**
	 * 查询学习笔记文章列表
	 * 
	 * @param currentUser 当前登录用户信息
	 * @param selectParam 查询参数
	 * @return
	 * @throws Exception
	 */
	public LearningNotesCustom getLearningNotesList(UserInfo currentUser,
			LearningNotesCustom selectParam) throws Exception;

}
