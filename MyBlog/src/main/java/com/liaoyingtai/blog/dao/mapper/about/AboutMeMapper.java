package com.liaoyingtai.blog.dao.mapper.about;

import com.liaoyingtai.blog.entity.about.AboutMe;

public interface AboutMeMapper {

	/**
	 * 通过用户ID查询个人介绍信息
	 * 
	 * @param userId
	 *            用户id
	 * @return
	 * @throws Exception
	 */
	public AboutMe getAboutMeInfoByUserId(String userId) throws Exception;

	/**
	 * 插入个人介绍信息
	 * 
	 * @param aboutMe
	 *            个人介绍信息
	 * @throws Exception
	 */
	public void insertAboutMeInfo(AboutMe aboutMe) throws Exception;

	/**
	 * 修改个人介绍信息
	 * 
	 * @param aboutMe
	 *            个人介绍信息（需要传递一个完整的对象，userInfo可以不传）
	 * @throws Exception
	 */
	public void updateAboutMeInfo(AboutMe aboutMe) throws Exception;
}
