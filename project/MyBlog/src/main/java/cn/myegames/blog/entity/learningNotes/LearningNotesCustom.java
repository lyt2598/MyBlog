package cn.myegames.blog.entity.learningNotes;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_NULL)
public class LearningNotesCustom extends LearningNotes {

	private int page;
	private int limit;
	private int totalPage;
	private int totalCount;
	private int begin;

	private int uid;
	private String title;

	private List<LearningNotes> learningNotes;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public List<LearningNotes> getLearningNotes() {
		return learningNotes;
	}

	public void setLearningNotes(List<LearningNotes> learningNotes) {
		this.learningNotes = learningNotes;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	@Override
	public String toString() {
		return "LearningNotesCustom [page=" + page + ", limit=" + limit
				+ ", totalPage=" + totalPage + ", totalCount=" + totalCount
				+ ", begin=" + begin + ", uid=" + uid + ", title=" + title
				+ ", learningNotes=" + learningNotes + "]";
	}

}
