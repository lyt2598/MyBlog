package com.liaoyingtai.blog.service.learningNotes;

import java.util.List;

import com.liaoyingtai.blog.entity.learningNotes.LearningNotesType;

public interface LearningNotesTypeService {
	
	/**
	 * 查询所有的学习笔记类型信息
	 * @return
	 * @throws Exception
	 */
	public List<LearningNotesType> getLearningNotesTypes()throws Exception;

}
