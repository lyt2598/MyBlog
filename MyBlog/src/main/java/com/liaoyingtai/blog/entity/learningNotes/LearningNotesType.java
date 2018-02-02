package com.liaoyingtai.blog.entity.learningNotes;

public class LearningNotesType {

	private int myBlog_LearningNotes_Type_id;
	private String learningNotes_Type_Name;

	public LearningNotesType() {
		super();
	}

	public LearningNotesType(int myBlog_LearningNotes_Type_id,
			String learningNotes_Type_Name) {
		super();
		this.myBlog_LearningNotes_Type_id = myBlog_LearningNotes_Type_id;
		this.learningNotes_Type_Name = learningNotes_Type_Name;
	}

	public int getMyBlog_LearningNotes_Type_id() {
		return myBlog_LearningNotes_Type_id;
	}

	public void setMyBlog_LearningNotes_Type_id(int myBlog_LearningNotes_Type_id) {
		this.myBlog_LearningNotes_Type_id = myBlog_LearningNotes_Type_id;
	}

	public String getLearningNotes_Type_Name() {
		return learningNotes_Type_Name;
	}

	public void setLearningNotes_Type_Name(String learningNotes_Type_Name) {
		this.learningNotes_Type_Name = learningNotes_Type_Name;
	}

}
