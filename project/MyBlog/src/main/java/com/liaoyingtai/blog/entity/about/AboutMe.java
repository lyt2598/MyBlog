package com.liaoyingtai.blog.entity.about;

import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public class AboutMe {

	private int myBlog_AboutMe_id;
	private String aboutMe_Skill;
	private String aboutMe_Hobby;
	private String aboutMe_Describe;
	private String aboutMe_Other;
	private String aboutMe_UserId;
	private int aboutMe_QQAccount;
	private int aboutMe_Tel;
	private int aboutMe_Phone;
	private int aboutMe_GitHub;
	private UserInfo userInfo;

	public AboutMe() {
		super();
	}

	public AboutMe(int myBlog_AboutMe_id, String aboutMe_Skill,
			String aboutMe_Hobby, String aboutMe_Describe,
			String aboutMe_Other, String aboutMe_UserId, int aboutMe_QQAccount,
			int aboutMe_Tel, int aboutMe_Phone, int aboutMe_GitHub) {
		super();
		this.myBlog_AboutMe_id = myBlog_AboutMe_id;
		this.aboutMe_Skill = aboutMe_Skill;
		this.aboutMe_Hobby = aboutMe_Hobby;
		this.aboutMe_Describe = aboutMe_Describe;
		this.aboutMe_Other = aboutMe_Other;
		this.aboutMe_UserId = aboutMe_UserId;
		this.aboutMe_QQAccount = aboutMe_QQAccount;
		this.aboutMe_Tel = aboutMe_Tel;
		this.aboutMe_Phone = aboutMe_Phone;
		this.aboutMe_GitHub = aboutMe_GitHub;
	}

	public int getMyBlog_AboutMe_id() {
		return myBlog_AboutMe_id;
	}

	public void setMyBlog_AboutMe_id(int myBlog_AboutMe_id) {
		this.myBlog_AboutMe_id = myBlog_AboutMe_id;
	}

	public String getAboutMe_Skill() {
		return aboutMe_Skill;
	}

	public void setAboutMe_Skill(String aboutMe_Skill) {
		this.aboutMe_Skill = aboutMe_Skill;
	}

	public String getAboutMe_Hobby() {
		return aboutMe_Hobby;
	}

	public void setAboutMe_Hobby(String aboutMe_Hobby) {
		this.aboutMe_Hobby = aboutMe_Hobby;
	}

	public String getAboutMe_Describe() {
		return aboutMe_Describe;
	}

	public void setAboutMe_Describe(String aboutMe_Describe) {
		this.aboutMe_Describe = aboutMe_Describe;
	}

	public String getAboutMe_Other() {
		return aboutMe_Other;
	}

	public void setAboutMe_Other(String aboutMe_Other) {
		this.aboutMe_Other = aboutMe_Other;
	}

	public String getAboutMe_UserId() {
		return aboutMe_UserId;
	}

	public void setAboutMe_UserId(String aboutMe_UserId) {
		this.aboutMe_UserId = aboutMe_UserId;
	}

	public int getAboutMe_QQAccount() {
		return aboutMe_QQAccount;
	}

	public void setAboutMe_QQAccount(int aboutMe_QQAccount) {
		this.aboutMe_QQAccount = aboutMe_QQAccount;
	}

	public int getAboutMe_Tel() {
		return aboutMe_Tel;
	}

	public void setAboutMe_Tel(int aboutMe_Tel) {
		this.aboutMe_Tel = aboutMe_Tel;
	}

	public int getAboutMe_Phone() {
		return aboutMe_Phone;
	}

	public void setAboutMe_Phone(int aboutMe_Phone) {
		this.aboutMe_Phone = aboutMe_Phone;
	}

	public int getAboutMe_GitHub() {
		return aboutMe_GitHub;
	}

	public void setAboutMe_GitHub(int aboutMe_GitHub) {
		this.aboutMe_GitHub = aboutMe_GitHub;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	@Override
	public String toString() {
		return "AboutMe [myBlog_AboutMe_id=" + myBlog_AboutMe_id
				+ ", aboutMe_Skill=" + aboutMe_Skill + ", aboutMe_Hobby="
				+ aboutMe_Hobby + ", aboutMe_Describe=" + aboutMe_Describe
				+ ", aboutMe_Other=" + aboutMe_Other + ", aboutMe_UserId="
				+ aboutMe_UserId + ", aboutMe_QQAccount=" + aboutMe_QQAccount
				+ ", aboutMe_Tel=" + aboutMe_Tel + ", aboutMe_Phone="
				+ aboutMe_Phone + ", aboutMe_GitHub=" + aboutMe_GitHub
				+ ", userInfo=" + userInfo + "]";
	}

}
