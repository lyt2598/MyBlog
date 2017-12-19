package com.liaoyingtai.blog.dao.mapper.learningNotes;

import java.util.List;

import com.liaoyingtai.blog.entity.learningNotes.LearningNotes;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;

public interface LearningNotesMapper {

	/**
	 * 读取学习笔记文章列表
	 * 
	 * @param selectParam
	 *            查询参数，目前只有uid
	 * @return
	 * @throws Exception
	 */
	public List<LearningNotes> getLearningNotesList(
			LearningNotesCustom selectParam) throws Exception;

	/**
	 * 读取学习笔记文章数量
	 * 
	 * @param selectParam
	 *            查询参数，目前只有uid
	 * @return
	 * @throws Exception
	 */
	public int getLearningNotesListCount(LearningNotesCustom selectParam)
			throws Exception;

}
