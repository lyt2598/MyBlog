package cn.myegames.blog.entity.learningNotes;

public class LearningNotesReportDisposeType {

	private int myBlog_LearningNotes_Report_Dispose_Type_id;
	private String learningNotes_Report_Dispose_Type_Name;

	public LearningNotesReportDisposeType() {
		super();
	}

	public LearningNotesReportDisposeType(
			int myBlog_LearningNotes_Report_Dispose_Type_id,
			String learningNotes_Report_Dispose_Type_Name) {
		super();
		this.myBlog_LearningNotes_Report_Dispose_Type_id = myBlog_LearningNotes_Report_Dispose_Type_id;
		this.learningNotes_Report_Dispose_Type_Name = learningNotes_Report_Dispose_Type_Name;
	}

	public int getMyBlog_LearningNotes_Report_Dispose_Type_id() {
		return myBlog_LearningNotes_Report_Dispose_Type_id;
	}

	public void setMyBlog_LearningNotes_Report_Dispose_Type_id(
			int myBlog_LearningNotes_Report_Dispose_Type_id) {
		this.myBlog_LearningNotes_Report_Dispose_Type_id = myBlog_LearningNotes_Report_Dispose_Type_id;
	}

	public String getLearningNotes_Report_Dispose_Type_Name() {
		return learningNotes_Report_Dispose_Type_Name;
	}

	public void setLearningNotes_Report_Dispose_Type_Name(
			String learningNotes_Report_Dispose_Type_Name) {
		this.learningNotes_Report_Dispose_Type_Name = learningNotes_Report_Dispose_Type_Name;
	}

	@Override
	public String toString() {
		return "LearningNotesReportDisposeType [myBlog_LearningNotes_Report_Dispose_Type_id="
				+ myBlog_LearningNotes_Report_Dispose_Type_id
				+ ", learningNotes_Report_Dispose_Type_Name="
				+ learningNotes_Report_Dispose_Type_Name + "]";
	}

}
