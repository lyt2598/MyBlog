package cn.myegames.blog.service.index.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.myegames.blog.dao.mapper.index.MyBlogHeadMenuMapper;
import cn.myegames.blog.entity.index.MyBlogHeadMenu;
import cn.myegames.blog.service.index.IndexService;

@Transactional
@Service("indexService")
public class IndexServiceImpl implements IndexService {

	@Autowired
	private MyBlogHeadMenuMapper myBlogHeadMenuMapper;

	public List<MyBlogHeadMenu> getIndexHeadMenu() throws Exception {
		List<MyBlogHeadMenu> myBlogHeadMenu = myBlogHeadMenuMapper
				.getHeadMenuInfo();
		return myBlogHeadMenu;
	}

}
