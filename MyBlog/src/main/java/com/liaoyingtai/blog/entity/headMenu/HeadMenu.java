package com.liaoyingtai.blog.entity.headMenu;

import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public class HeadMenu {

	private int myBlog_HeadMenu_id;
	private String headMenu_Name;
	private String headMenu_URL;
	private int headMenu_Father;
	private String headMenu_UserId;
	private String headMenu_Icon;
	private UserInfo userInfo;

	public HeadMenu() {
		super();
	}

	public HeadMenu(int myBlog_HeadMenu_id, String headMenu_Name, String headMenu_URL, int headMenu_Father,
			String headMenu_UserId, String headMenu_Icon) {
		super();
		this.myBlog_HeadMenu_id = myBlog_HeadMenu_id;
		this.headMenu_Name = headMenu_Name;
		this.headMenu_URL = headMenu_URL;
		this.headMenu_Father = headMenu_Father;
		this.headMenu_UserId = headMenu_UserId;
		this.headMenu_Icon = headMenu_Icon;
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

	public String getHeadMenu_Icon() {
		return headMenu_Icon;
	}

	public void setHeadMenu_Icon(String headMenu_Icon) {
		this.headMenu_Icon = headMenu_Icon;
	}

	@Override
	public String toString() {
		return "HeadMenu [myBlog_HeadMenu_id=" + myBlog_HeadMenu_id + ", headMenu_Name=" + headMenu_Name
				+ ", headMenu_URL=" + headMenu_URL + ", headMenu_Father=" + headMenu_Father + ", headMenu_UserId="
				+ headMenu_UserId + ", headMenu_Icon=" + headMenu_Icon + ", userInfo=" + userInfo + "]";
	}

}
