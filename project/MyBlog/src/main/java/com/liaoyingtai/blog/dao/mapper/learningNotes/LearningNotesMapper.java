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
	public List<LearningNotes> getLearningNotesList(LearningNotesCustom selectParam) throws Exception;

	/**
	 * 读取学习笔记文章数量
	 * 
	 * @param selectParam
	 *            查询参数，目前只有uid
	 * @return
	 * @throws Exception
	 */
	public int getLearningNotesListCount(LearningNotesCustom selectParam) throws Exception;

	/**
	 * 添加学习笔记文章
	 * 
	 * @param insertParam
	 *            添加的学习笔记内容
	 * @throws Exception
	 */
	public void insertLearningNotes(LearningNotes insertParam) throws Exception;

	/**
	 * 通过文章id查询文章信息
	 * 
	 * @param lnId
	 *            文章id
	 * @return
	 * @throws Exception
	 */
	public LearningNotes getLearningNotesById(Integer lnId) throws Exception;

	/**
	 * 修改学习笔记文章信息
	 * 
	 * @param updateParam
	 *            修改的学习笔记内容
	 * @throws Exception
	 */
	public void updateLearningNotes(LearningNotes updateParam) throws Exception;

}
