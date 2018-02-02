package com.liaoyingtai.blog.service.userinfo;

import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public interface UserInfoService {

	/**
	 * 添加用户(注册用户)
	 * 
	 * userInfo_Account,userInfo_Password,userInfo_Name,userInfo_Email,
	 * 
	 * 以上字段为必填字段
	 * 
	 * @param userInfo
	 *            用户信息
	 * @throws Exception
	 */
	public void insertUserInfo(UserInfo userInfo) throws Exception;

	/**
	 * 查询用户名是否已经存在
	 * 
	 * @param account
	 *            用户名
	 * @return true：存在 false：不存在
	 * @throws Exception
	 */
	public boolean getCheckAccountAlreadyExist(String account) throws Exception;

	/**
	 * 通过ID查询用戶信息
	 * 
	 * @param userId
	 *            用户id
	 * @return
	 * @throws Exception
	 */
	public UserInfo getUserInfoById(String userId) throws Exception;

	/**
	 * 通过用户账号和密码验证用户账号密码信息是否正确
	 * 
	 * @param userAccount
	 *            用户账号
	 * @param password
	 *            用户密码
	 * @return 用户账号和密码匹配返回用戶信息，用户账号密码匹配失败抛出BaseExceptionCustom
	 * @throws Exception
	 */
	public UserInfo getCheckUserAccountAndPassword(String userAccount, String password) throws Exception;

	/**
	 * 读取用户部分可显示信息
	 * 
	 * @param userId
	 *            用户id
	 * @return 用户信息
	 * @throws Exception
	 */
	public UserInfo getPortionUserInfoById(String userId) throws Exception;

}
