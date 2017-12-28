package com.liaoyingtai.blog.service.learningNotes.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.dao.mapper.learningNotes.LearningNotesTypeMapper;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesType;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesTypeService;

@Service("learningNotesTypeService")
public class LearningNotesTypeServiceImpl implements LearningNotesTypeService {

	@Autowired
	private LearningNotesTypeMapper learningNotesTypeMapper;

	public List<LearningNotesType> getLearningNotesTypes() throws Exception {
		List<LearningNotesType> learningNotesTypes = learningNotesTypeMapper
				.getLearningNotesTypes();
		if(learningNotesTypes==null || learningNotesTypes.size()<=0){
			throw new BaseExceptionCustom("查询错误:没有查询到学习笔记类别信息");
		}
		return learningNotesTypes;
	}

}
