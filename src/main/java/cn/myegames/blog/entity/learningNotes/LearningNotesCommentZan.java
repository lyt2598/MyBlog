package cn.myegames.blog.entity.learningNotes;

public class LearningNotesCommentZan {

	private int myBlog_LearningNotes_Comment_Zan_id;
	private int learningNotes_Comment_Zan_comment_id;
	private int learningNotes_Comment_Zan_user_id;
	private int learningNotes_Comment_Zan_Cai;

	public LearningNotesCommentZan() {
		super();
	}

	public LearningNotesCommentZan(int myBlog_LearningNotes_Comment_Zan_id,
			int learningNotes_Comment_Zan_comment_id,
			int learningNotes_Comment_Zan_user_id,
			int learningNotes_Comment_Zan_Cai) {
		super();
		this.myBlog_LearningNotes_Comment_Zan_id = myBlog_LearningNotes_Comment_Zan_id;
		this.learningNotes_Comment_Zan_comment_id = learningNotes_Comment_Zan_comment_id;
		this.learningNotes_Comment_Zan_user_id = learningNotes_Comment_Zan_user_id;
		this.learningNotes_Comment_Zan_Cai = learningNotes_Comment_Zan_Cai;
	}

	public int getMyBlog_LearningNotes_Comment_Zan_id() {
		return myBlog_LearningNotes_Comment_Zan_id;
	}

	public void setMyBlog_LearningNotes_Comment_Zan_id(
			int myBlog_LearningNotes_Comment_Zan_id) {
		this.myBlog_LearningNotes_Comment_Zan_id = myBlog_LearningNotes_Comment_Zan_id;
	}

	public int getLearningNotes_Comment_Zan_comment_id() {
		return learningNotes_Comment_Zan_comment_id;
	}

	public void setLearningNotes_Comment_Zan_comment_id(
			int learningNotes_Comment_Zan_comment_id) {
		this.learningNotes_Comment_Zan_comment_id = learningNotes_Comment_Zan_comment_id;
	}

	public int getLearningNotes_Comment_Zan_user_id() {
		return learningNotes_Comment_Zan_user_id;
	}

	public void setLearningNotes_Comment_Zan_user_id(
			int learningNotes_Comment_Zan_user_id) {
		this.learningNotes_Comment_Zan_user_id = learningNotes_Comment_Zan_user_id;
	}

	public int getLearningNotes_Comment_Zan_Cai() {
		return learningNotes_Comment_Zan_Cai;
	}

	public void setLearningNotes_Comment_Zan_Cai(
			int learningNotes_Comment_Zan_Cai) {
		this.learningNotes_Comment_Zan_Cai = learningNotes_Comment_Zan_Cai;
	}

	@Override
	public String toString() {
		return "LearningNotesCommentZan [myBlog_LearningNotes_Comment_Zan_id="
				+ myBlog_LearningNotes_Comment_Zan_id
				+ ", learningNotes_Comment_Zan_comment_id="
				+ learningNotes_Comment_Zan_comment_id
				+ ", learningNotes_Comment_Zan_user_id="
				+ learningNotes_Comment_Zan_user_id
				+ ", learningNotes_Comment_Zan_Cai="
				+ learningNotes_Comment_Zan_Cai + "]";
	}

}
