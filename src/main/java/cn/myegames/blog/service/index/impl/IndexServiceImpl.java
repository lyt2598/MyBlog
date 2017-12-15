package cn.myegames.blog.service.index.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.myegames.blog.dao.mapper.index.MyBlogHeadMenuMapper;
import cn.myegames.blog.entity.index.MyBlogHeadMenuCustom;
import cn.myegames.blog.service.index.IndexService;

@Transactional
@Service("indexService")
public class IndexServiceImpl implements IndexService {

	@Autowired
	private MyBlogHeadMenuMapper myBlogHeadMenuMapper;

	public List<MyBlogHeadMenuCustom> getIndexHeadMenu(
			MyBlogHeadMenuCustom selectParam) throws Exception {
		List<MyBlogHeadMenuCustom> myBlogHeadMenu = myBlogHeadMenuMapper
				.getHeadMenuInfo(selectParam);
		if (myBlogHeadMenu.size() <= 0) {
			throw new Exception("user menu is not found（用户菜单没有找到）");
		}
		return myBlogHeadMenu;
	}

}
