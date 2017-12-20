package com.liaoyingtai.blog.dao.mapper.userInfo;

import com.liaoyingtai.blog.entity.userInfo.UserInfo;

public interface UserInfoMapper {

	/**
	 * 注册用户
	 * 
	 * @param userInfo
	 *            用户信息
	 * @throws Exception
	 */
	public void insertUserInfo(UserInfo userInfo) throws Exception;

	/**
	 * * 通过用户账号查询用户信息
	 * 
	 * @param userAccount
	 *            用户账号
	 * @return 用户信息
	 * @throws Exception
	 */
	public UserInfo getUserInfoByAccount(String userAccount) throws Exception;

}
