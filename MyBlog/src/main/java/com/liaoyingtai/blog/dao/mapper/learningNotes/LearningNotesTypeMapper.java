package com.liaoyingtai.blog.dao.mapper.learningNotes;

import java.util.List;

import com.liaoyingtai.blog.entity.learningNotes.LearningNotesType;

public interface LearningNotesTypeMapper {

	/**
	 * 查询所有的学习笔记类型
	 * 
	 * @return 返回所有的学习笔记类型信息
	 * @throws Exception
	 */
	public List<LearningNotesType> getLearningNotesTypes() throws Exception;

	/**
	 * 通过学习笔记类型ID查询类型信息
	 * 
	 * @param lnTypeId
	 *            类型id
	 * @return 类型信息
	 * @throws Exception
	 */
	public LearningNotesType getLearningNotesTypeById(String lnTypeId)
			throws Exception;

}
