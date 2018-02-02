package com.liaoyingtai.blog.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class LoadSpringConfig {

	public static ApplicationContext getApplicationContext() throws Exception {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
		return applicationContext;
	}

}
