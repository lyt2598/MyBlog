package com.liaoyingtai.blog.service.index.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.dao.mapper.index.HeadMenuMapper;
import com.liaoyingtai.blog.entity.index.HeadMenuCustom;
import com.liaoyingtai.blog.service.index.IndexService;

@Transactional
@Service("indexService")
public class IndexServiceImpl implements IndexService {

	@Autowired
	private HeadMenuMapper myBlogHeadMenuMapper;

	public List<HeadMenuCustom> getIndexHeadMenu(HeadMenuCustom selectParam)
			throws Exception {
		List<HeadMenuCustom> myBlogHeadMenu = myBlogHeadMenuMapper
				.getHeadMenuInfo(selectParam);
		if (myBlogHeadMenu.size() <= 0) {
			throw new BaseExceptionCustom("user menu is not found（用户菜单没有找到）");
		}
		return myBlogHeadMenu;
	}

}
