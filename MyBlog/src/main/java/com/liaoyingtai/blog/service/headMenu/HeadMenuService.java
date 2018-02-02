package com.liaoyingtai.blog.service.headMenu;

import java.util.List;

import com.liaoyingtai.blog.entity.headMenu.HeadMenu;
import com.liaoyingtai.blog.entity.headMenu.HeadMenuCustom;

public interface HeadMenuService {

	/**
	 * 读取首页头部菜单项
	 * 
	 * @param uid
	 *            用户ID
	 * @return 返回头部菜单信息
	 * @throws Exception
	 */
	public List<HeadMenuCustom> getIndexHeadMenu(String uid) throws Exception;

	/**
	 * 添加首页顶部菜单项信息
	 * 
	 * @param headMenuInfo
	 *            菜单信息（如果参数为null就使用默认的菜单信息）
	 * @param userId
	 *            用户ID
	 * @throws Exception
	 */
	public void insertIndexHeadMenu(List<HeadMenu> headMenuInfo, String userId)
			throws Exception;

}
