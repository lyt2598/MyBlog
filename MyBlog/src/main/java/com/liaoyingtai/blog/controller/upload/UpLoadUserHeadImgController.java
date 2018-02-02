package com.liaoyingtai.blog.controller.upload;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.liaoyingtai.blog.controller.exception.UpLoadExceptionResolver;
import com.liaoyingtai.blog.utils.UpLoadUtils;

@Controller
@RequestMapping("upload")
public class UpLoadUserHeadImgController extends UpLoadExceptionResolver {

	@RequestMapping(value = "/uploadUserHead", method = { RequestMethod.POST })
	public UpLoadUtils uploadUserHead() throws Exception {
		UpLoadUtils upLoadUtils = new UpLoadUtils();
		upLoadUtils.setStatus(1);

		return upLoadUtils;
	}

}
