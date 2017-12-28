package com.liaoyingtai.blog.service.learningNotes.impl;

import java.io.File;
import java.util.UUID;

import javax.annotation.PostConstruct;

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

	@PostConstruct
	public void init() throws Exception {
		if (savePath == null || "".equals(savePath)) {
			throw new UpLoadConfigNotFoundException("保存路径不能为空");
		}
	}

	public String upLoadFile(String uid, MultipartFile file) throws Exception {
		String temp_savePath = savePath.replace("#uid", uid) + "/"
				+ UUID.randomUUID();
		if (file == null) {
			throw new BaseExceptionCustom("上传的文件不能为空");
		}
		String fileName = file.getOriginalFilename();
		temp_savePath = temp_savePath
				+ fileName.substring(fileName.lastIndexOf("."));
		File temp_file = new File(temp_savePath);
		// 将文件写入到磁盘当中
		file.transferTo(temp_file);
		return savePath;
	}

}
