package cn.myegames.blog.service.index;

import java.util.List;

import cn.myegames.blog.entity.index.HeadMenuCustom;

public interface IndexService {

	/**
	 * 读取首页头部菜单项
	 * 
	 * @param selectParam 查詢條件,目前只能通过UserId来进行查找
	 * @return 返回头部菜单信息
	 * @throws Exception
	 */
	public List<HeadMenuCustom> getIndexHeadMenu(HeadMenuCustom selectParam) throws Exception;

}
