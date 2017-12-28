package com.liaoyingtai.blog.service.learningNotes;

import org.springframework.web.multipart.MultipartFile;

public interface LNUploadFileService {

	/**
	 * 上传文件
	 * @param uid 用户id
	 * @param file 需要上传的文件
	 * @return
	 * @throws Exception
	 */
	public String upLoadFile(String uid, MultipartFile file) throws Exception;
}
