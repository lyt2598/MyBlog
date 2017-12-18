package cn.myegames.blog.entity.learningNotes;

import java.util.Date;

import cn.myegames.blog.entity.user.UserInfo;

public class LearningNotes {

	private int myBlog_LearningNotes_id;
	private String learningNotes_Title;
	private String learningNotes_Context;
	private Date learningNotes_PubDate;
	private UserInfo userInfo;
	private int learningNotes_Stick;
	private int learningNotes_Recommend;
	private int learningNotes_Private;
	private int learningNotes_Comment;
	private int learningNotes_Relay;
	private Date learningNotes_ModDate;
	private int learningNotes_ViewCount;
	private int learningNotes_RelayCount;
	private int learningNotes_CommentCount;
	private LearningNotesType learningNotesType;

	public LearningNotes() {
		super();
	}

	public LearningNotes(int myBlog_LearningNotes_id,
			String learningNotes_Title, String learningNotes_Context,
			Date learningNotes_PubDate, UserInfo userInfo,
			int learningNotes_Stick, int learningNotes_Recommend,
			int learningNotes_Private, int learningNotes_Comment,
			int learningNotes_Relay, Date learningNotes_ModDate,
			int learningNotes_ViewCount, int learningNotes_RelayCount,
			int learningNotes_CommentCount, LearningNotesType learningNotesType) {
		super();
		this.myBlog_LearningNotes_id = myBlog_LearningNotes_id;
		this.learningNotes_Title = learningNotes_Title;
		this.learningNotes_Context = learningNotes_Context;
		this.learningNotes_PubDate = learningNotes_PubDate;
		this.userInfo = userInfo;
		this.learningNotes_Stick = learningNotes_Stick;
		this.learningNotes_Recommend = learningNotes_Recommend;
		this.learningNotes_Private = learningNotes_Private;
		this.learningNotes_Comment = learningNotes_Comment;
		this.learningNotes_Relay = learningNotes_Relay;
		this.learningNotes_ModDate = learningNotes_ModDate;
		this.learningNotes_ViewCount = learningNotes_ViewCount;
		this.learningNotes_RelayCount = learningNotes_RelayCount;
		this.learningNotes_CommentCount = learningNotes_CommentCount;
		this.learningNotesType = learningNotesType;
	}

	public int getLearningNotes_RelayCount() {
		return learningNotes_RelayCount;
	}

	public void setLearningNotes_RelayCount(int learningNotes_RelayCount) {
		this.learningNotes_RelayCount = learningNotes_RelayCount;
	}

	public int getLearningNotes_CommentCount() {
		return learningNotes_CommentCount;
	}

	public void setLearningNotes_CommentCount(int learningNotes_CommentCount) {
		this.learningNotes_CommentCount = learningNotes_CommentCount;
	}

	public int getMyBlog_LearningNotes_id() {
		return myBlog_LearningNotes_id;
	}

	public void setMyBlog_LearningNotes_id(int myBlog_LearningNotes_id) {
		this.myBlog_LearningNotes_id = myBlog_LearningNotes_id;
	}

	public String getLearningNotes_Title() {
		return learningNotes_Title;
	}

	public void setLearningNotes_Title(String learningNotes_Title) {
		this.learningNotes_Title = learningNotes_Title;
	}

	public String getLearningNotes_Context() {
		return learningNotes_Context;
	}

	public void setLearningNotes_Context(String learningNotes_Context) {
		this.learningNotes_Context = learningNotes_Context;
	}

	public Date getLearningNotes_PubDate() {
		return learningNotes_PubDate;
	}

	public void setLearningNotes_PubDate(Date learningNotes_PubDate) {
		this.learningNotes_PubDate = learningNotes_PubDate;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public int getLearningNotes_Stick() {
		return learningNotes_Stick;
	}

	public void setLearningNotes_Stick(int learningNotes_Stick) {
		this.learningNotes_Stick = learningNotes_Stick;
	}

	public int getLearningNotes_Recommend() {
		return learningNotes_Recommend;
	}

	public void setLearningNotes_Recommend(int learningNotes_Recommend) {
		this.learningNotes_Recommend = learningNotes_Recommend;
	}

	public int getLearningNotes_Private() {
		return learningNotes_Private;
	}

	public void setLearningNotes_Private(int learningNotes_Private) {
		this.learningNotes_Private = learningNotes_Private;
	}

	public int getLearningNotes_Comment() {
		return learningNotes_Comment;
	}

	public void setLearningNotes_Comment(int learningNotes_Comment) {
		this.learningNotes_Comment = learningNotes_Comment;
	}

	public int getLearningNotes_Relay() {
		return learningNotes_Relay;
	}

	public void setLearningNotes_Relay(int learningNotes_Relay) {
		this.learningNotes_Relay = learningNotes_Relay;
	}

	public Date getLearningNotes_ModDate() {
		return learningNotes_ModDate;
	}

	public void setLearningNotes_ModDate(Date learningNotes_ModDate) {
		this.learningNotes_ModDate = learningNotes_ModDate;
	}

	public int getLearningNotes_ViewCount() {
		return learningNotes_ViewCount;
	}

	public void setLearningNotes_ViewCount(int learningNotes_ViewCount) {
		this.learningNotes_ViewCount = learningNotes_ViewCount;
	}

	public LearningNotesType getLearningNotesType() {
		return learningNotesType;
	}

	public void setLearningNotesType(LearningNotesType learningNotesType) {
		this.learningNotesType = learningNotesType;
	}

}
