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
	 * 通過ID查询用戶信息
	 * 
	 * @param userId
	 *            用户id
	 * @return
	 * @throws Exception
	 */
	public UserInfo getUserInfoById(String userId) throws Exception;

}
