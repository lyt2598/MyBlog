package com.liaoyingtai.blog.entity.learningNotes;

import java.util.Date;

public class LearningNotesReport {

	private int myBlog_LearningNotes_Report_id;
	private String learningNotes_Report_Context;
	private Date learningNotes_Report_PubDate;
	private int learningNotes_Report_PubUser;
	private int learningNotes_Report_ln_id;
	private int learningNotes_Report_Dispose;
	private int learningNotes_Report_Dispose_Type_id;
	private String learningNotes_Report_Dispose_Context;
	private int learningNotes_Report_Type_id;

	public LearningNotesReport() {
		super();
	}

	public LearningNotesReport(int myBlog_LearningNotes_Report_id,
			String learningNotes_Report_Context,
			Date learningNotes_Report_PubDate,
			int learningNotes_Report_PubUser, int learningNotes_Report_ln_id,
			int learningNotes_Report_Dispose,
			int learningNotes_Report_Dispose_Type_id,
			String learningNotes_Report_Dispose_Context,
			int learningNotes_Report_Type_id) {
		super();
		this.myBlog_LearningNotes_Report_id = myBlog_LearningNotes_Report_id;
		this.learningNotes_Report_Context = learningNotes_Report_Context;
		this.learningNotes_Report_PubDate = learningNotes_Report_PubDate;
		this.learningNotes_Report_PubUser = learningNotes_Report_PubUser;
		this.learningNotes_Report_ln_id = learningNotes_Report_ln_id;
		this.learningNotes_Report_Dispose = learningNotes_Report_Dispose;
		this.learningNotes_Report_Dispose_Type_id = learningNotes_Report_Dispose_Type_id;
		this.learningNotes_Report_Dispose_Context = learningNotes_Report_Dispose_Context;
		this.learningNotes_Report_Type_id = learningNotes_Report_Type_id;
	}

	public int getMyBlog_LearningNotes_Report_id() {
		return myBlog_LearningNotes_Report_id;
	}

	public void setMyBlog_LearningNotes_Report_id(
			int myBlog_LearningNotes_Report_id) {
		this.myBlog_LearningNotes_Report_id = myBlog_LearningNotes_Report_id;
	}

	public String getLearningNotes_Report_Context() {
		return learningNotes_Report_Context;
	}

	public void setLearningNotes_Report_Context(
			String learningNotes_Report_Context) {
		this.learningNotes_Report_Context = learningNotes_Report_Context;
	}

	public Date getLearningNotes_Report_PubDate() {
		return learningNotes_Report_PubDate;
	}

	public void setLearningNotes_Report_PubDate(
			Date learningNotes_Report_PubDate) {
		this.learningNotes_Report_PubDate = learningNotes_Report_PubDate;
	}

	public int getLearningNotes_Report_PubUser() {
		return learningNotes_Report_PubUser;
	}

	public void setLearningNotes_Report_PubUser(int learningNotes_Report_PubUser) {
		this.learningNotes_Report_PubUser = learningNotes_Report_PubUser;
	}

	public int getLearningNotes_Report_ln_id() {
		return learningNotes_Report_ln_id;
	}

	public void setLearningNotes_Report_ln_id(int learningNotes_Report_ln_id) {
		this.learningNotes_Report_ln_id = learningNotes_Report_ln_id;
	}

	public int getLearningNotes_Report_Dispose() {
		return learningNotes_Report_Dispose;
	}

	public void setLearningNotes_Report_Dispose(int learningNotes_Report_Dispose) {
		this.learningNotes_Report_Dispose = learningNotes_Report_Dispose;
	}

	public int getLearningNotes_Report_Dispose_Type_id() {
		return learningNotes_Report_Dispose_Type_id;
	}

	public void setLearningNotes_Report_Dispose_Type_id(
			int learningNotes_Report_Dispose_Type_id) {
		this.learningNotes_Report_Dispose_Type_id = learningNotes_Report_Dispose_Type_id;
	}

	public String getLearningNotes_Report_Dispose_Context() {
		return learningNotes_Report_Dispose_Context;
	}

	public void setLearningNotes_Report_Dispose_Context(
			String learningNotes_Report_Dispose_Context) {
		this.learningNotes_Report_Dispose_Context = learningNotes_Report_Dispose_Context;
	}

	public int getLearningNotes_Report_Type_id() {
		return learningNotes_Report_Type_id;
	}

	public void setLearningNotes_Report_Type_id(int learningNotes_Report_Type_id) {
		this.learningNotes_Report_Type_id = learningNotes_Report_Type_id;
	}

	@Override
	public String toString() {
		return "LearningNotesReport [myBlog_LearningNotes_Report_id="
				+ myBlog_LearningNotes_Report_id
				+ ", learningNotes_Report_Context="
				+ learningNotes_Report_Context
				+ ", learningNotes_Report_PubDate="
				+ learningNotes_Report_PubDate
				+ ", learningNotes_Report_PubUser="
				+ learningNotes_Report_PubUser
				+ ", learningNotes_Report_ln_id=" + learningNotes_Report_ln_id
				+ ", learningNotes_Report_Dispose="
				+ learningNotes_Report_Dispose
				+ ", learningNotes_Report_Dispose_Type_id="
				+ learningNotes_Report_Dispose_Type_id
				+ ", learningNotes_Report_Dispose_Context="
				+ learningNotes_Report_Dispose_Context
				+ ", learningNotes_Report_Type_id="
				+ learningNotes_Report_Type_id + "]";
	}

}
