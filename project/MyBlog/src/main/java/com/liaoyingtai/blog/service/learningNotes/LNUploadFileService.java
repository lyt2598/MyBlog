package com.liaoyingtai.blog.service.learningNotes;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface LNUploadFileService {

	/**
	 * 上传文件
	 * 
	 * @param uid
	 *            用户id
	 * @param file
	 *            需要上传的文件
	 * @param request
	 *            用来取文件存放路径全路径
	 * @return 返回路径：url
	 *         格式例如：<b>http://localhost:8080/MyBlog/img/learningNotes/</
	 *         b>+<b>uid</b>+<b>/</b>+<b>fileName</b>
	 * @throws Exception
	 */
	public String upLoadFile(String uid, MultipartFile file,
			HttpServletRequest request) throws Exception;
}
