package com.liaoyingtai.blog.entity.learningNotes;

public class LearningNotesReportType {

	private int myBlog_LearningNotes_Report_Type_id;
	private String learningNotes_Report_Type_Name;

	public LearningNotesReportType() {
		super();
	}

	public LearningNotesReportType(int myBlog_LearningNotes_Report_Type_id,
			String learningNotes_Report_Type_Name) {
		super();
		this.myBlog_LearningNotes_Report_Type_id = myBlog_LearningNotes_Report_Type_id;
		this.learningNotes_Report_Type_Name = learningNotes_Report_Type_Name;
	}

	public int getMyBlog_LearningNotes_Report_Type_id() {
		return myBlog_LearningNotes_Report_Type_id;
	}

	public void setMyBlog_LearningNotes_Report_Type_id(
			int myBlog_LearningNotes_Report_Type_id) {
		this.myBlog_LearningNotes_Report_Type_id = myBlog_LearningNotes_Report_Type_id;
	}

	public String getLearningNotes_Report_Type_Name() {
		return learningNotes_Report_Type_Name;
	}

	public void setLearningNotes_Report_Type_Name(
			String learningNotes_Report_Type_Name) {
		this.learningNotes_Report_Type_Name = learningNotes_Report_Type_Name;
	}

	@Override
	public String toString() {
		return "LearningNotesReportType [myBlog_LearningNotes_Report_Type_id="
				+ myBlog_LearningNotes_Report_Type_id
				+ ", learningNotes_Report_Type_Name="
				+ learningNotes_Report_Type_Name + "]";
	}

}
