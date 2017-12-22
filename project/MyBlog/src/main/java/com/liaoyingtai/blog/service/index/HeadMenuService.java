package com.liaoyingtai.blog.service.index;

import java.util.List;

import com.liaoyingtai.blog.entity.index.HeadMenu;
import com.liaoyingtai.blog.entity.index.HeadMenuCustom;

public interface HeadMenuService {

	/**
	 * 读取首页头部菜单项
	 * 
	 * @param selectParam
	 *            查詢條件,目前只能通过UserId来进行查找
	 * @return 返回头部菜单信息
	 * @throws Exception
	 */
	public List<HeadMenuCustom> getIndexHeadMenu(HeadMenuCustom selectParam)
			throws Exception;

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
