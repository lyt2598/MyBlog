package com.liaoyingtai.blog.service.learningNotes.impl;

import java.io.File;
import java.util.UUID;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;
import com.liaoyingtai.blog.controller.exception.upload.UpLoadConfigNotFoundException;
import com.liaoyingtai.blog.service.learningNotes.LNUploadFileService;

@Service("lnUploadFileService")
public class LNUploadServiceImpl implements LNUploadFileService {

	@Value("${uploadSavePath.learningNotesImg}")
	private String savePath;
	@Value("${uploadResultPath.learningNotes}")
	private String resultPath;

	@PostConstruct
	public void init() throws Exception {
		if (savePath == null || "".equals(savePath)) {
			throw new UpLoadConfigNotFoundException("保存路径不能为空");
		}
	}

	@SuppressWarnings("deprecation")
	public String upLoadFile(String uid, MultipartFile file,
			HttpServletRequest request) throws Exception {
		String temp_savePath = request.getRealPath("/")
				+ savePath.replace("#uid", uid);
		if (file == null) {
			throw new BaseExceptionCustom("上传的文件不能为空");
		}
		File temp_file = new File(temp_savePath);
		// 判断保存路径文件夹是否存在，不存在则建立新文件夹
		if (!temp_file.exists()) {
			temp_file.mkdir();
		}
		String fileName = file.getOriginalFilename();
		fileName = UUID.randomUUID()
				+ fileName.substring(fileName.lastIndexOf("."));
		temp_savePath = temp_savePath + "/" + fileName;
		temp_file = new File(temp_savePath);
		// 将文件写入到磁盘当中
		file.transferTo(temp_file);
		String resultURL = resultPath + uid + "/" + fileName;
		return resultURL;
	}
}
