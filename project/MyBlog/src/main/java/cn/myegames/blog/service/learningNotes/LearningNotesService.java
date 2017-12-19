package cn.myegames.blog.service.learningNotes;

import cn.myegames.blog.entity.learningNotes.LearningNotesCustom;

public interface LearningNotesService {

	/**
	 * 查询学习笔记文章列表
	 * @param selectParam
	 * @return
	 * @throws Exception
	 */
	public LearningNotesCustom getLearningNotesList(
			LearningNotesCustom selectParam) throws Exception;

}
