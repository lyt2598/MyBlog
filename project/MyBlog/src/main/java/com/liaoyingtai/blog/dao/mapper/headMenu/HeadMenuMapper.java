package com.liaoyingtai.blog.dao.mapper.headMenu;

import java.util.List;

import com.liaoyingtai.blog.entity.headMenu.HeadMenu;
import com.liaoyingtai.blog.entity.headMenu.HeadMenuCustom;

public interface HeadMenuMapper {

	/**
	 * 读取首页头部菜单项内容
	 * 
	 * @param selectParam
	 *            输入查询条件,目前能输入UserId作为查询条件,后续根据需求进行更改
	 * @return
	 * @throws Exception
	 */
	public List<HeadMenuCustom> getHeadMenuInfo(HeadMenu selectParam)
			throws Exception;

	/**
	 * 添加首页头部菜单项
	 * 
	 * @param headMenu
	 * @throws Exception
	 */
	public void insertHeadMenuInfo(HeadMenu headMenu) throws Exception;
}
