package cn.myegames.blog.service.index;

import java.util.List;

import cn.myegames.blog.entity.index.MyBlogHeadMenu;

public interface IndexService {

	/**
	 * 读取首页头部菜单项
	 * 
	 * @return 返回头部菜单信息
	 * @throws Exception
	 */
	public List<MyBlogHeadMenu> getIndexHeadMenu() throws Exception;

}
