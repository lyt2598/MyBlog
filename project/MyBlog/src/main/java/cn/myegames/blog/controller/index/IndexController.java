package cn.myegames.blog.controller.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.myegames.blog.entity.index.HeadMenuCustom;
import cn.myegames.blog.service.index.IndexService;

@Controller
public class IndexController {

	@Autowired
	private IndexService indexService;

	@RequestMapping(value = "index/{userId}", method = { RequestMethod.GET })
	public String index(Model model, @PathVariable("userId") int uid)
			throws Exception {
		HeadMenuCustom myBlogHeadMenuCustom = new HeadMenuCustom();
		myBlogHeadMenuCustom.setHeadMenu_UserId(uid);
		List<HeadMenuCustom> myBlogHeadMenu = indexService
				.getIndexHeadMenu(myBlogHeadMenuCustom);
		model.addAttribute("index_head_menu", myBlogHeadMenu);
		return "baseView/framework";
	}
}
