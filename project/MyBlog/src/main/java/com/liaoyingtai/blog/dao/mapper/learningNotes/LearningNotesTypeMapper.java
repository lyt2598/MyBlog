package com.liaoyingtai.blog.dao.mapper.learningNotes;

import java.util.List;

import com.liaoyingtai.blog.entity.learningNotes.LearningNotesType;

public interface LearningNotesTypeMapper {

	/**
	 * 查询所有的学习笔记类型
	 * @return 返回所有的学习笔记类型信息
	 * @throws Exception
	 */
	public List<LearningNotesType> getLearningNotesTypes() throws Exception;

}
