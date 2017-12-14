package cn.myegames.blog.controller.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.myegames.blog.entity.index.MyBlogHeadMenuCustom;
import cn.myegames.blog.service.index.IndexService;

@Controller
public class IndexController {

	@Autowired
	private IndexService indexService;

	@RequestMapping(value = "index", method = { RequestMethod.GET })
	public String index(Model model) throws Exception {
		List<MyBlogHeadMenuCustom> myBlogHeadMenu = indexService
				.getIndexHeadMenu();
		model.addAttribute("index_head_menu", myBlogHeadMenu);
		return "baseView/framework";
	}

}
