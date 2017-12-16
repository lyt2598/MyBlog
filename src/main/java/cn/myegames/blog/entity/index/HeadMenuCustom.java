package cn.myegames.blog.entity.index;

import java.util.List;

public class HeadMenuCustom extends HeadMenu {

	private List<HeadMenu> blogHeadMenus;

	public List<HeadMenu> getBlogHeadMenus() {
		return blogHeadMenus;
	}

	public void setBlogHeadMenus(List<HeadMenu> blogHeadMenus) {
		this.blogHeadMenus = blogHeadMenus;
	}

	@Override
	public String toString() {
		return "MyBlogHeadMenuCustom [blogHeadMenus=" + blogHeadMenus + "]";
	}

}