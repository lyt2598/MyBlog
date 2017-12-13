package cn.myegames.blog.dao.mapper.index;

import java.util.List;

import cn.myegames.blog.entity.index.MyBlogHeadMenu;

public interface MyBlogHeadMenuMapper {

	//读取首页头部菜单项内容
	public List<MyBlogHeadMenu> getHeadMenuInfo() throws Exception;
	
}
