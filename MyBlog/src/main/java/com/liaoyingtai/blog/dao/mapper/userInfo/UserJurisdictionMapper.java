package com.liaoyingtai.blog.dao.mapper.userInfo;

import com.liaoyingtai.blog.entity.userInfo.UserJurisdiction;

public interface UserJurisdictionMapper {

	/**
	 * 通过权限ID（主键）查询权限信息
	 * 
	 * @param id 权限ID（主键）
	 * @return 权限信息
	 * @throws Exception
	 */
	public UserJurisdiction getUserJurisdictionById(int id) throws Exception;

}
