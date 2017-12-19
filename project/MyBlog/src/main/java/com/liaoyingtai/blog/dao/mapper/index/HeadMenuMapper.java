package com.liaoyingtai.blog.dao.mapper.index;

import java.util.List;

import com.liaoyingtai.blog.entity.index.HeadMenuCustom;

public interface HeadMenuMapper {

	/**
	 * 读取首页头部菜单项内容
	 * @param selectParam 输入查询条件,目前能输入UserId作为查询条件,后续根据需求进行更改
	 * @return
	 * @throws Exception
	 */
	public List<HeadMenuCustom> getHeadMenuInfo(
			HeadMenuCustom selectParam) throws Exception;

}
