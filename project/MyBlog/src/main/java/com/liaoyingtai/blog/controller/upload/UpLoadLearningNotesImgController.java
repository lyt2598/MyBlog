package com.liaoyingtai.blog.controller.upload;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.liaoyingtai.blog.controller.exception.UpLoadExceptionResolver;
import com.liaoyingtai.blog.service.learningNotes.LNUploadFileService;
import com.liaoyingtai.blog.utils.UpLoadUtils;

@Controller
@RequestMapping("/upload")
public class UpLoadLearningNotesImgController extends UpLoadExceptionResolver {

	@Autowired
	private LNUploadFileService lnUploadFileService;

	@RequestMapping(value = "/uploadLearningNotesImg", method = { RequestMethod.POST })
	public @ResponseBody
	UpLoadUtils uploadLearningNotesImg(HttpServletRequest request,
			@RequestParam("learningNotesFile") MultipartFile file)
			throws Exception {
		// UserInfo userInfo = (UserInfo) request.getSession().getAttribute(
		// "currentUser");
		// String uid = userInfo.getMyBlog_UserInfo_id();
		String saveUrl = lnUploadFileService.upLoadFile("1", file, request);
		UpLoadUtils upLoadUtils = new UpLoadUtils();
		upLoadUtils.setStatus(1);
		upLoadUtils.setMessage("上传成功");
		upLoadUtils.setUrl(saveUrl);
		return upLoadUtils;
	}

}
