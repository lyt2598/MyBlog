package cn.myegames.blog.entity.learningNotes;

public class LearningNotesZan {

	private int myBlog_LearningNotes_Zan_id;
	private int learningNotes_Zan_ln_id;
	private int learningNotes_Zan_user_id;
	private int learningNotes_Zan_Cai;

	public LearningNotesZan() {
		super();
	}

	public LearningNotesZan(int myBlog_LearningNotes_Zan_id,
			int learningNotes_Zan_ln_id, int learningNotes_Zan_user_id,
			int learningNotes_Zan_Cai) {
		super();
		this.myBlog_LearningNotes_Zan_id = myBlog_LearningNotes_Zan_id;
		this.learningNotes_Zan_ln_id = learningNotes_Zan_ln_id;
		this.learningNotes_Zan_user_id = learningNotes_Zan_user_id;
		this.learningNotes_Zan_Cai = learningNotes_Zan_Cai;
	}

	public int getMyBlog_LearningNotes_Zan_id() {
		return myBlog_LearningNotes_Zan_id;
	}

	public void setMyBlog_LearningNotes_Zan_id(int myBlog_LearningNotes_Zan_id) {
		this.myBlog_LearningNotes_Zan_id = myBlog_LearningNotes_Zan_id;
	}

	public int getLearningNotes_Zan_ln_id() {
		return learningNotes_Zan_ln_id;
	}

	public void setLearningNotes_Zan_ln_id(int learningNotes_Zan_ln_id) {
		this.learningNotes_Zan_ln_id = learningNotes_Zan_ln_id;
	}

	public int getLearningNotes_Zan_user_id() {
		return learningNotes_Zan_user_id;
	}

	public void setLearningNotes_Zan_user_id(int learningNotes_Zan_user_id) {
		this.learningNotes_Zan_user_id = learningNotes_Zan_user_id;
	}

	public int getLearningNotes_Zan_Cai() {
		return learningNotes_Zan_Cai;
	}

	public void setLearningNotes_Zan_Cai(int learningNotes_Zan_Cai) {
		this.learningNotes_Zan_Cai = learningNotes_Zan_Cai;
	}

	@Override
	public String toString() {
		return "LearningNotesZan [myBlog_LearningNotes_Zan_id="
				+ myBlog_LearningNotes_Zan_id + ", learningNotes_Zan_ln_id="
				+ learningNotes_Zan_ln_id + ", learningNotes_Zan_user_id="
				+ learningNotes_Zan_user_id + ", learningNotes_Zan_Cai="
				+ learningNotes_Zan_Cai + "]";
	}

}
