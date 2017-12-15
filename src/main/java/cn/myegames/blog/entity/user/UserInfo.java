package cn.myegames.blog.entity.user;

import java.util.Date;

public class UserInfo {

	private int myBlog_UserInfo_id;
	private String userInfo_Account;
	private String userInfo_Password;
	private String userInfo_Phone;
	private String userInfo_Tel;
	private String userInfo_Email;
	private String userInfo_QQaccount;
	private String userInfo_HeadImg;
	private String userInfo_GitHub;
	private Date userInfo_RegTime;
	private Date userInfo_Birthday;
	private int userInfo_Status;
	private UserJurisdiction userJurisdiction;

	public UserInfo() {
		super();
	}

	public UserInfo(int myBlog_UserInfo_id, String userInfo_Account,
			String userInfo_Password, String userInfo_Phone,
			String userInfo_Tel, String userInfo_Email,
			String userInfo_QQaccount, String userInfo_HeadImg,
			String userInfo_GitHub, Date userInfo_RegTime,
			Date userInfo_Birthday, int userInfo_Status,
			UserJurisdiction userJurisdiction) {
		super();
		this.myBlog_UserInfo_id = myBlog_UserInfo_id;
		this.userInfo_Account = userInfo_Account;
		this.userInfo_Password = userInfo_Password;
		this.userInfo_Phone = userInfo_Phone;
		this.userInfo_Tel = userInfo_Tel;
		this.userInfo_Email = userInfo_Email;
		this.userInfo_QQaccount = userInfo_QQaccount;
		this.userInfo_HeadImg = userInfo_HeadImg;
		this.userInfo_GitHub = userInfo_GitHub;
		this.userInfo_RegTime = userInfo_RegTime;
		this.userInfo_Birthday = userInfo_Birthday;
		this.userInfo_Status = userInfo_Status;
		this.userJurisdiction = userJurisdiction;
	}

	public int getMyBlog_UserInfo_id() {
		return myBlog_UserInfo_id;
	}

	public void setMyBlog_UserInfo_id(int myBlog_UserInfo_id) {
		this.myBlog_UserInfo_id = myBlog_UserInfo_id;
	}

	public String getUserInfo_Account() {
		return userInfo_Account;
	}

	public void setUserInfo_Account(String userInfo_Account) {
		this.userInfo_Account = userInfo_Account;
	}

	public String getUserInfo_Password() {
		return userInfo_Password;
	}

	public void setUserInfo_Password(String userInfo_Password) {
		this.userInfo_Password = userInfo_Password;
	}

	public String getUserInfo_Phone() {
		return userInfo_Phone;
	}

	public void setUserInfo_Phone(String userInfo_Phone) {
		this.userInfo_Phone = userInfo_Phone;
	}

	public String getUserInfo_Tel() {
		return userInfo_Tel;
	}

	public void setUserInfo_Tel(String userInfo_Tel) {
		this.userInfo_Tel = userInfo_Tel;
	}

	public String getUserInfo_Email() {
		return userInfo_Email;
	}

	public void setUserInfo_Email(String userInfo_Email) {
		this.userInfo_Email = userInfo_Email;
	}

	public String getUserInfo_QQaccount() {
		return userInfo_QQaccount;
	}

	public void setUserInfo_QQaccount(String userInfo_QQaccount) {
		this.userInfo_QQaccount = userInfo_QQaccount;
	}

	public String getUserInfo_HeadImg() {
		return userInfo_HeadImg;
	}

	public void setUserInfo_HeadImg(String userInfo_HeadImg) {
		this.userInfo_HeadImg = userInfo_HeadImg;
	}

	public String getUserInfo_GitHub() {
		return userInfo_GitHub;
	}

	public void setUserInfo_GitHub(String userInfo_GitHub) {
		this.userInfo_GitHub = userInfo_GitHub;
	}

	public Date getUserInfo_RegTime() {
		return userInfo_RegTime;
	}

	public void setUserInfo_RegTime(Date userInfo_RegTime) {
		this.userInfo_RegTime = userInfo_RegTime;
	}

	public Date getUserInfo_Birthday() {
		return userInfo_Birthday;
	}

	public void setUserInfo_Birthday(Date userInfo_Birthday) {
		this.userInfo_Birthday = userInfo_Birthday;
	}

	public int getUserInfo_Status() {
		return userInfo_Status;
	}

	public void setUserInfo_Status(int userInfo_Status) {
		this.userInfo_Status = userInfo_Status;
	}

	public UserJurisdiction getUserJurisdiction() {
		return userJurisdiction;
	}

	public void setUserJurisdiction(UserJurisdiction userJurisdiction) {
		this.userJurisdiction = userJurisdiction;
	}

	@Override
	public String toString() {
		return "UserInfo [myBlog_UserInfo_id=" + myBlog_UserInfo_id
				+ ", userInfo_Account=" + userInfo_Account
				+ ", userInfo_Password=" + userInfo_Password
				+ ", userInfo_Phone=" + userInfo_Phone + ", userInfo_Tel="
				+ userInfo_Tel + ", userInfo_Email=" + userInfo_Email
				+ ", userInfo_QQaccount=" + userInfo_QQaccount
				+ ", userInfo_HeadImg=" + userInfo_HeadImg
				+ ", userInfo_GitHub=" + userInfo_GitHub
				+ ", userInfo_RegTime=" + userInfo_RegTime
				+ ", userInfo_Birthday=" + userInfo_Birthday
				+ ", userInfo_Status=" + userInfo_Status
				+ ", userJurisdiction=" + userJurisdiction + "]";
	}

}
