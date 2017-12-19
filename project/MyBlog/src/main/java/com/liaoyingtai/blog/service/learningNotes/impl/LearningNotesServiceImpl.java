package com.liaoyingtai.blog.service.learningNotes.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liaoyingtai.blog.dao.mapper.learningNotes.LearningNotesMapper;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotes;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesService;

@Service("learningNotes")
@Transactional
public class LearningNotesServiceImpl implements LearningNotesService {

	@Autowired
	private LearningNotesMapper learningNotesMapper;

	public LearningNotesCustom getLearningNotesList(
			LearningNotesCustom selectParam) throws Exception {
		int page = selectParam.getPage();
		int limit = selectParam.getLimit();
		if (page <= 0) {
			page = 1;
		}
		if (limit <= 0) {
			limit = 10;
		}
		if (selectParam.getUid() <= 0) {
			throw new Exception("用户ID输入有误");
		}
		selectParam.setLimit(limit);
		selectParam.setPage(page);
		int totalCount = learningNotesMapper
				.getLearningNotesListCount(selectParam);
		if (totalCount <= 0) {
			return null;
		}
		selectParam.setTotalCount(totalCount);
		int totalPage = totalCount / limit;
		if (totalCount % limit != 0) {
			totalPage++;
		}
		selectParam.setTotalPage(totalPage);
		int begin = (page - 1) * limit;
		selectParam.setBegin(begin);
		List<LearningNotes> learningNotes = learningNotesMapper
				.getLearningNotesList(selectParam);
		selectParam.setLearningNotes(learningNotes);
		return selectParam;
	}

}
