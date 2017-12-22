package com.liaoyingtai.blog.entity.index;

import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public class HeadMenu {

	private int myBlog_HeadMenu_id;
	private String headMenu_Name;
	private String headMenu_URL;
	private int headMenu_Father;
	private String headMenu_UserId;
	private int hearMenu_IFrame;
	private UserInfo userInfo;

	public HeadMenu() {
		super();
	}

	public HeadMenu(int myBlog_HeadMenu_id, String headMenu_Name,
			String headMenu_URL, int headMenu_Father, String headMenu_UserId,
			int hearMenu_IFrame) {
		super();
		this.myBlog_HeadMenu_id = myBlog_HeadMenu_id;
		this.headMenu_Name = headMenu_Name;
		this.headMenu_URL = headMenu_URL;
		this.headMenu_Father = headMenu_Father;
		this.headMenu_UserId = headMenu_UserId;
		this.hearMenu_IFrame = hearMenu_IFrame;
	}

	public HeadMenu(int myBlog_HeadMenu_id, String headMenu_Name,
			String headMenu_URL, int headMenu_Father, String headMenu_UserId,
			int hearMenu_IFrame, UserInfo userInfo) {
		super();
		this.myBlog_HeadMenu_id = myBlog_HeadMenu_id;
		this.headMenu_Name = headMenu_Name;
		this.headMenu_URL = headMenu_URL;
		this.headMenu_Father = headMenu_Father;
		this.headMenu_UserId = headMenu_UserId;
		this.hearMenu_IFrame = hearMenu_IFrame;
		this.userInfo = userInfo;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public int getMyBlog_HeadMenu_id() {
		return myBlog_HeadMenu_id;
	}

	public void setMyBlog_HeadMenu_id(int myBlog_HeadMenu_id) {
		this.myBlog_HeadMenu_id = myBlog_HeadMenu_id;
	}

	public String getHeadMenu_Name() {
		return headMenu_Name;
	}

	public void setHeadMenu_Name(String headMenu_Name) {
		this.headMenu_Name = headMenu_Name;
	}

	public String getHeadMenu_URL() {
		return headMenu_URL;
	}

	public void setHeadMenu_URL(String headMenu_URL) {
		this.headMenu_URL = headMenu_URL;
	}

	public int getHeadMenu_Father() {
		return headMenu_Father;
	}

	public void setHeadMenu_Father(int headMenu_Father) {
		this.headMenu_Father = headMenu_Father;
	}

	public String getHeadMenu_UserId() {
		return headMenu_UserId;
	}

	public void setHeadMenu_UserId(String headMenu_UserId) {
		this.headMenu_UserId = headMenu_UserId;
	}

	public int getHearMenu_IFrame() {
		return hearMenu_IFrame;
	}

	public void setHearMenu_IFrame(int hearMenu_IFrame) {
		this.hearMenu_IFrame = hearMenu_IFrame;
	}

	@Override
	public String toString() {
		return "HeadMenu [myBlog_HeadMenu_id=" + myBlog_HeadMenu_id
				+ ", headMenu_Name=" + headMenu_Name + ", headMenu_URL="
				+ headMenu_URL + ", headMenu_Father=" + headMenu_Father
				+ ", headMenu_UserId=" + headMenu_UserId + ", hearMenu_IFrame="
				+ hearMenu_IFrame + "]";
	}

}
