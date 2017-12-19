package com.liaoyingtai.blog.entity.learningNotes;

import java.util.Date;

public class LearningNotesComment {

	private int myBlog_LearningNotes_Comment_id;
	private String learningNotes_Comment_Context;
	private Date learningNotes_Comment_PubDate;
	private int learningNotes_Comment_PubUser;
	private int learningNotes_Comment_LearningNotes_id;

	public LearningNotesComment() {
		super();
	}

	public LearningNotesComment(int myBlog_LearningNotes_Comment_id,
			String learningNotes_Comment_Context,
			Date learningNotes_Comment_PubDate,
			int learningNotes_Comment_PubUser,
			int learningNotes_Comment_LearningNotes_id) {
		super();
		this.myBlog_LearningNotes_Comment_id = myBlog_LearningNotes_Comment_id;
		this.learningNotes_Comment_Context = learningNotes_Comment_Context;
		this.learningNotes_Comment_PubDate = learningNotes_Comment_PubDate;
		this.learningNotes_Comment_PubUser = learningNotes_Comment_PubUser;
		this.learningNotes_Comment_LearningNotes_id = learningNotes_Comment_LearningNotes_id;
	}

	public int getMyBlog_LearningNotes_Comment_id() {
		return myBlog_LearningNotes_Comment_id;
	}

	public void setMyBlog_LearningNotes_Comment_id(
			int myBlog_LearningNotes_Comment_id) {
		this.myBlog_LearningNotes_Comment_id = myBlog_LearningNotes_Comment_id;
	}

	public String getLearningNotes_Comment_Context() {
		return learningNotes_Comment_Context;
	}

	public void setLearningNotes_Comment_Context(
			String learningNotes_Comment_Context) {
		this.learningNotes_Comment_Context = learningNotes_Comment_Context;
	}

	public Date getLearningNotes_Comment_PubDate() {
		return learningNotes_Comment_PubDate;
	}

	public void setLearningNotes_Comment_PubDate(
			Date learningNotes_Comment_PubDate) {
		this.learningNotes_Comment_PubDate = learningNotes_Comment_PubDate;
	}

	public int getLearningNotes_Comment_PubUser() {
		return learningNotes_Comment_PubUser;
	}

	public void setLearningNotes_Comment_PubUser(
			int learningNotes_Comment_PubUser) {
		this.learningNotes_Comment_PubUser = learningNotes_Comment_PubUser;
	}

	public int getLearningNotes_Comment_LearningNotes_id() {
		return learningNotes_Comment_LearningNotes_id;
	}

	public void setLearningNotes_Comment_LearningNotes_id(
			int learningNotes_Comment_LearningNotes_id) {
		this.learningNotes_Comment_LearningNotes_id = learningNotes_Comment_LearningNotes_id;
	}

	@Override
	public String toString() {
		return "LearningNotesComment [myBlog_LearningNotes_Comment_id="
				+ myBlog_LearningNotes_Comment_id
				+ ", learningNotes_Comment_Context="
				+ learningNotes_Comment_Context
				+ ", learningNotes_Comment_PubDate="
				+ learningNotes_Comment_PubDate
				+ ", learningNotes_Comment_PubUser="
				+ learningNotes_Comment_PubUser
				+ ", learningNotes_Comment_LearningNotes_id="
				+ learningNotes_Comment_LearningNotes_id + "]";
	}

}
