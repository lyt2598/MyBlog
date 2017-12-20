package com.liaoyingtai.blog.service.learningNotes.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.dao.mapper.learningNotes.LearningNotesMapper;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotes;
import com.liaoyingtai.blog.entity.learningNotes.LearningNotesCustom;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;
import com.liaoyingtai.blog.service.learningNotes.LearningNotesService;

@Service("learningNotes")
@Transactional
public class LearningNotesServiceImpl implements LearningNotesService {

	@Autowired
	private LearningNotesMapper learningNotesMapper;

	public LearningNotesCustom getLearningNotesList(UserInfo currentUser,
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
			throw new BaseExceptionCustom("用户ID输入有误");
		}
		selectParam.setLimit(limit);
		selectParam.setPage(page);
		if (currentUser == null
				|| currentUser.getMyBlog_UserInfo_id() != selectParam.getUid()) {
			selectParam.setLearningNotes_Private(0);
		} else {
			// 任意设置一个非0的值即可查询所有文章
			selectParam.setLearningNotes_Private(1);
		}
		int totalCount = learningNotesMapper
				.getLearningNotesListCount(selectParam);
		if (totalCount > 0) {
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
		}
		return selectParam;
	}

}
