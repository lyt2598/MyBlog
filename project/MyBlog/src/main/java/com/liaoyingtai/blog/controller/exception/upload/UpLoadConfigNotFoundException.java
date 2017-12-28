package com.liaoyingtai.blog.controller.exception.upload;

import com.liaoyingtai.blog.controller.exception.BaseExceptionCustom;

/**
 * 上传文件配置项找不到
 * 
 * @author Lyt
 * 
 */
@SuppressWarnings("serial")
public class UpLoadConfigNotFoundException extends BaseExceptionCustom {

	public UpLoadConfigNotFoundException(String message) {
		super(message);
	}

}
