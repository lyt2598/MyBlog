package com.liaoyingtai.blog.service.about;

import com.liaoyingtai.blog.entity.about.AboutMe;

public interface AboutMeService {

	/**
	 * 通过用户名查询该用户个人介绍信息
	 * 
	 * @param userId
	 *            用户id
	 * @return 返回个人介绍信息
	 * @throws Exception
	 */
	public AboutMe getAboutMeByUserId(String userId) throws Exception;

	/**
	 * 添加个人介绍信息
	 * 
	 * @param aboutMe
	 *            个人介绍信息,如果为空使用默认信息
	 * @param userId
	 *            用户id
	 * @throws Exception
	 */
	public void insertAboutMeInfo(AboutMe aboutMe, String userId)
			throws Exception;

}
