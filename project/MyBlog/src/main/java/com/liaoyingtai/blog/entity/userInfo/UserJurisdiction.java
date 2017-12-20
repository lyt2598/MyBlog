package com.liaoyingtai.blog.entity.userInfo;

public class UserJurisdiction {

	private int myBlog_User_Jurisdiction_id;
	private String user_Jurisdiction_Name;
	private int user_Jurisdiction_AdminPage;
	private int user_Jurisdiction_LearningNotes;

	public UserJurisdiction() {
		super();
	}

	public UserJurisdiction(int myBlog_User_Jurisdiction_id,
			String user_Jurisdiction_Name, int user_Jurisdiction_AdminPage,
			int user_Jurisdiction_LearningNotes) {
		super();
		this.myBlog_User_Jurisdiction_id = myBlog_User_Jurisdiction_id;
		this.user_Jurisdiction_Name = user_Jurisdiction_Name;
		this.user_Jurisdiction_AdminPage = user_Jurisdiction_AdminPage;
		this.user_Jurisdiction_LearningNotes = user_Jurisdiction_LearningNotes;
	}

	public int getMyBlog_User_Jurisdiction_id() {
		return myBlog_User_Jurisdiction_id;
	}

	public void setMyBlog_User_Jurisdiction_id(int myBlog_User_Jurisdiction_id) {
		this.myBlog_User_Jurisdiction_id = myBlog_User_Jurisdiction_id;
	}

	public String getUser_Jurisdiction_Name() {
		return user_Jurisdiction_Name;
	}

	public void setUser_Jurisdiction_Name(String user_Jurisdiction_Name) {
		this.user_Jurisdiction_Name = user_Jurisdiction_Name;
	}

	public int getUser_Jurisdiction_AdminPage() {
		return user_Jurisdiction_AdminPage;
	}

	public void setUser_Jurisdiction_AdminPage(int user_Jurisdiction_AdminPage) {
		this.user_Jurisdiction_AdminPage = user_Jurisdiction_AdminPage;
	}

	public int getUser_Jurisdiction_LearningNotes() {
		return user_Jurisdiction_LearningNotes;
	}

	public void setUser_Jurisdiction_LearningNotes(
			int user_Jurisdiction_LearningNotes) {
		this.user_Jurisdiction_LearningNotes = user_Jurisdiction_LearningNotes;
	}

	@Override
	public String toString() {
		return "UserJurisdiction [myBlog_User_Jurisdiction_id="
				+ myBlog_User_Jurisdiction_id + ", user_Jurisdiction_Name="
				+ user_Jurisdiction_Name + ", user_Jurisdiction_AdminPage="
				+ user_Jurisdiction_AdminPage
				+ ", user_Jurisdiction_LearningNotes="
				+ user_Jurisdiction_LearningNotes + "]";
	}

}
