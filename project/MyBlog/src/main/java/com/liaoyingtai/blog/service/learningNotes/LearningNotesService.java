package com.liaoyingtai.blog.service.learningNotes;

import com.liaoyingtai.blog.entity.learningNotes.LearningNotes;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public interface LearningNotesService {

	/**
	 * 查询学习笔记文章列表
	 * 
	 * @param currentUser
	 *            当前登录用户信息
	 * @param selectParam
	 *            查询参数
	 * @return
	 * @throws Exception
	 */
	public LearningNotesCustom getLearningNotesList(UserInfo currentUser,
			LearningNotesCustom selectParam) throws Exception;

	/**
	 * 發表學習筆記文章
	 * 
	 * @param uid
	 *            用来发表文章的用户，建议使用当前登录的用户
	 * @param learningNotes
	 *            文章信息，如果title为空，那么使用当前时间作为标题，时间格式：yyyy-MM-dd
	 * @throws Exception
	 */
	public void insertLearningNotesList(String uid, LearningNotes learningNotes)
			throws Exception;

}
