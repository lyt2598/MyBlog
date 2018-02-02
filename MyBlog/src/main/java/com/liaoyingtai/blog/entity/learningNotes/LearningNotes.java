package com.liaoyingtai.blog.entity.learningNotes;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

import com.liaoyingtai.blog.controller.validator.group.learningNotes.PublishLearningNotesValidatorGroup;
import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public class LearningNotes {

	private int myBlog_LearningNotes_id;

	private String learningNotes_Title;
	@NotNull(message = "{learningNotes.context.notNull}", groups = { PublishLearningNotesValidatorGroup.class })
	@NotBlank(message = "{learningNotes.context.notBlank}", groups = { PublishLearningNotesValidatorGroup.class })
	private String learningNotes_Context;
	private Date learningNotes_PubDate;
	private int learningNotes_Stick;
	private int learningNotes_Recommend;
	private int learningNotes_Private;
	private int learningNotes_Relay;
	private Date learningNotes_ModDate;
	private int learningNotes_ViewCount;
	private int learningNotes_RelayCount;
	private String learningNotes_PubUser;
	private int learningNotes_Type_id;
	private String learningNotes_Tags;
	private UserInfo userInfo;
	private LearningNotesType learningNotesType;

	public LearningNotes() {
		super();
	}

	public LearningNotes(int myBlog_LearningNotes_id, String learningNotes_Title, String learningNotes_Context,
			Date learningNotes_PubDate, int learningNotes_Stick, int learningNotes_Recommend, int learningNotes_Private,
			int learningNotes_Relay, Date learningNotes_ModDate, int learningNotes_ViewCount,
			int learningNotes_RelayCount, String learningNotes_PubUser, int learningNotes_Type_id,
			String learningNotes_Tags, UserInfo userInfo, LearningNotesType learningNotesType) {
		super();
		this.myBlog_LearningNotes_id = myBlog_LearningNotes_id;
		this.learningNotes_Title = learningNotes_Title;
		this.learningNotes_Context = learningNotes_Context;
		this.learningNotes_PubDate = learningNotes_PubDate;
		this.learningNotes_Stick = learningNotes_Stick;
		this.learningNotes_Recommend = learningNotes_Recommend;
		this.learningNotes_Private = learningNotes_Private;
		this.learningNotes_Relay = learningNotes_Relay;
		this.learningNotes_ModDate = learningNotes_ModDate;
		this.learningNotes_ViewCount = learningNotes_ViewCount;
		this.learningNotes_RelayCount = learningNotes_RelayCount;
		this.learningNotes_PubUser = learningNotes_PubUser;
		this.learningNotes_Type_id = learningNotes_Type_id;
		this.learningNotes_Tags = learningNotes_Tags;
		this.userInfo = userInfo;
		this.learningNotesType = learningNotesType;
	}

	public int getLearningNotes_RelayCount() {
		return learningNotes_RelayCount;
	}

	public void setLearningNotes_RelayCount(int learningNotes_RelayCount) {
		this.learningNotes_RelayCount = learningNotes_RelayCount;
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

	public String getLearningNotes_PubUser() {
		return learningNotes_PubUser;
	}

	public void setLearningNotes_PubUser(String learningNotes_PubUser) {
		this.learningNotes_PubUser = learningNotes_PubUser;
	}

	public int getLearningNotes_Type_id() {
		return learningNotes_Type_id;
	}

	public void setLearningNotes_Type_id(int learningNotes_Type_id) {
		this.learningNotes_Type_id = learningNotes_Type_id;
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

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public LearningNotesType getLearningNotesType() {
		return learningNotesType;
	}

	public void setLearningNotesType(LearningNotesType learningNotesType) {
		this.learningNotesType = learningNotesType;
	}

	public String getLearningNotes_Tags() {
		return learningNotes_Tags;
	}

	public void setLearningNotes_Tags(String learningNotes_Tags) {
		this.learningNotes_Tags = learningNotes_Tags;
	}

	@Override
	public String toString() {
		return "LearningNotes [myBlog_LearningNotes_id=" + myBlog_LearningNotes_id + ", learningNotes_Title="
				+ learningNotes_Title + ", learningNotes_Context=" + learningNotes_Context + ", learningNotes_PubDate="
				+ learningNotes_PubDate + ", learningNotes_Stick=" + learningNotes_Stick + ", learningNotes_Recommend="
				+ learningNotes_Recommend + ", learningNotes_Private=" + learningNotes_Private
				+ ", learningNotes_Relay=" + learningNotes_Relay + ", learningNotes_ModDate=" + learningNotes_ModDate
				+ ", learningNotes_ViewCount=" + learningNotes_ViewCount + ", learningNotes_RelayCount="
				+ learningNotes_RelayCount + ", learningNotes_PubUser=" + learningNotes_PubUser
				+ ", learningNotes_Type_id=" + learningNotes_Type_id + ", learningNotes_Tags=" + learningNotes_Tags
				+ ", userInfo=" + userInfo + ", learningNotesType=" + learningNotesType + "]";
	}

}
