package com.liaoyingtai.blog.service.learningNotes.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
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

	public LearningNotesCustom getLearningNotesList(UserInfo currentUser, LearningNotesCustom selectParam)
			throws Exception {
		int page = selectParam.getPage();
		int limit = selectParam.getLimit();
		if (page <= 0) {
			page = 1;
		}
		if (limit <= 0) {
			limit = 10;
		}
		if (selectParam.getLearningNotes_PubUser() == null || "".equals(selectParam.getLearningNotes_PubUser())) {
			throw new BaseExceptionCustom("参数错误：查询文章时用户ID不能为空");
		}
		selectParam.setLimit(limit);
		selectParam.setPage(page);
		if (currentUser == null
				|| !currentUser.getMyBlog_UserInfo_id().equals(selectParam.getLearningNotes_PubUser())) {
			selectParam.setLearningNotes_Private(0);
		} else {
			// 任意设置一个非0的值即可查询所有文章
			selectParam.setLearningNotes_Private(1);
		}
		// 将id设置为0，不加入查询条件，具体看learningNotesMapper配置
		selectParam.setMyBlog_LearningNotes_id(0);
		int totalCount = learningNotesMapper.getLearningNotesListCount(selectParam);
		if (totalCount > 0) {
			selectParam.setTotalCount(totalCount);
			int totalPage = totalCount / limit;
			if (totalCount % limit != 0) {
				totalPage++;
			}
			selectParam.setTotalPage(totalPage);
			int begin = (page - 1) * limit;
			selectParam.setBegin(begin);
			List<LearningNotes> learningNotes = learningNotesMapper.getLearningNotesList(selectParam);
			selectParam.setLearningNotes(learningNotes);
		}
		return selectParam;
	}

	public void insertLearningNotesList(String uid, LearningNotes learningNotes) throws Exception {
		if (uid == null || "".equals(uid)) {
			throw new BaseExceptionCustom("参数错误：发表文章时用户ID不能为空");
		}
		if (learningNotes.getLearningNotes_Context() == null || "".equals(learningNotes.getLearningNotes_Context())) {
			throw new BaseExceptionCustom("参数错误：发表文章时正文内容不能为空");
		}
		Date pubDate = new Date();
		// 如果标题为空，那么使用当前时间作为标题
		if (learningNotes.getLearningNotes_Title() == null || "".equals(learningNotes.getLearningNotes_Title())) {
			String date = new SimpleDateFormat("yyyy年MM月dd日").format(pubDate);
			learningNotes.setLearningNotes_Title(date);
		}
		learningNotes.setLearningNotes_PubDate(pubDate);
		learningNotes.setLearningNotes_ModDate(pubDate);
		learningNotesMapper.insertLearningNotes(learningNotes);
	}

	@Override
	public LearningNotes getLearningNotesById(Integer lnId) throws Exception {
		if (lnId == null || lnId == 0) {
			throw new BaseExceptionCustom("参数错误：查询文章时文章id不能为空");
		}
		LearningNotes learningNotes = learningNotesMapper.getLearningNotesById(lnId);
		int viewCount = learningNotes.getLearningNotes_ViewCount() + 1;
		learningNotes.setLearningNotes_ViewCount(viewCount);
		return learningNotes;
	}

	@Override
	public void updateLearningNotes(Integer lnId, LearningNotes learningNotes) throws Exception {
		if (lnId == null || lnId <= 0) {
			throw new BaseExceptionCustom("参所错误：请填写需要修改的文章id");
		}
		learningNotes.setMyBlog_LearningNotes_id(lnId);
		learningNotesMapper.updateLearningNotes(learningNotes);
	}

	@Override
	public LearningNotes getTopLearningNotes(Integer lnId, String userId) throws Exception {
		if (lnId == null || lnId <= 0) {
			throw new BaseExceptionCustom("参数错误：请填写需要读取的文章id");
		}
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：请填写需要读取的文章的发表用户id");
		}
		LearningNotesCustom learningNotesCustom = new LearningNotesCustom();
		learningNotesCustom.setMyBlog_LearningNotes_id(lnId);
		learningNotesCustom.setLearningNotes_Private(0);
		learningNotesCustom.setLearningNotes_PubUser(userId);
		learningNotesCustom.setLimit(1);
		LearningNotes learningNotes = learningNotesMapper.getTopLearningNotes(learningNotesCustom);
		return learningNotes;
	}

	@Override
	public LearningNotes getNextLearningNotes(Integer lnId, String userId) throws Exception {
		if (lnId == null || lnId <= 0) {
			throw new BaseExceptionCustom("参数错误：请填写需要读取的文章id");
		}
		if (userId == null || "".equals(userId)) {
			throw new BaseExceptionCustom("参数错误：请填写需要读取的文章的发表用户id");
		}
		LearningNotesCustom learningNotesCustom = new LearningNotesCustom();
		learningNotesCustom.setMyBlog_LearningNotes_id(lnId);
		learningNotesCustom.setLearningNotes_Private(0);
		learningNotesCustom.setLearningNotes_PubUser(userId);
		learningNotesCustom.setLimit(1);
		LearningNotes learningNotes = learningNotesMapper.getNextLearningNotes(learningNotesCustom);
		return learningNotes;
	}

	@Override
	public List<LearningNotes> getOtherLearningNotes(int lnId, int limit) throws Exception {
		if (lnId <= 0) {
			throw new BaseExceptionCustom("参数错误：请填写需要读取的文章id");
		}
		if (limit <= 0) {
			limit = 10;
		}
		LearningNotesCustom learningNotesCustom = new LearningNotesCustom();
		learningNotesCustom.setLearningNotes_Private(0);
		learningNotesCustom.setMyBlog_LearningNotes_id(lnId);
		learningNotesCustom.setLimit(limit);
		List<LearningNotes> learningNotes = learningNotesMapper.getOtherLearningNotes(learningNotesCustom);
		return learningNotes;
	}

}
