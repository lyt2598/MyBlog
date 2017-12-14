package cn.myegames.blog.entity.index;

import java.util.List;

public class MyBlogHeadMenuCustom extends MyBlogHeadMenu {

	private List<MyBlogHeadMenu> blogHeadMenus;

	public List<MyBlogHeadMenu> getBlogHeadMenus() {
		return blogHeadMenus;
	}

	public void setBlogHeadMenus(List<MyBlogHeadMenu> blogHeadMenus) {
		this.blogHeadMenus = blogHeadMenus;
	}

	@Override
	public String toString() {
		return "MyBlogHeadMenuCustom [blogHeadMenus=" + blogHeadMenus + "]";
	}

}
