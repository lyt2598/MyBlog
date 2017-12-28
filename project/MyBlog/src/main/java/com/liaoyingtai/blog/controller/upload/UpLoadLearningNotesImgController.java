package com.liaoyingtai.blog.controller.upload;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
@RequestMapping("upload")
public class UpLoadLearningNotesImgController extends UpLoadExceptionResolver {

	@Autowired
	private LNUploadFileService lnUploadFileService;

	@RequestMapping(value = "/uploadLearningNotesImg", method = { RequestMethod.POST })
	public @ResponseBody
	UpLoadUtils uploadLearningNotesImg(HttpSession session,
			@RequestParam("learningNotesFile") MultipartFile file)
			throws Exception {
		// UserInfo userInfo = (UserInfo) session.getAttribute("currentUser");
		// String uid = userInfo.getMyBlog_UserInfo_id();
		String saveUrl = lnUploadFileService.upLoadFile("1", file);
		UpLoadUtils upLoadUtils = new UpLoadUtils();
		upLoadUtils.setStatus(1);
		upLoadUtils.setMessage("上传成功");
		List<String> data = new ArrayList<String>();
		data.add(saveUrl);
		upLoadUtils.setData(data);
		upLoadUtils.setErrno(0);
		return upLoadUtils;
	}
}
