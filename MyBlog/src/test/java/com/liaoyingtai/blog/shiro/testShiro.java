package com.liaoyingtai.blog.shiro;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.junit.Test;

public class testShiro {

	@Test
	public void testHelloWord() {
		Factory<SecurityManager> factory = new IniSecurityManagerFactory(
				"classpath:shiro.ini");
		SecurityManager securityManager = factory.getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		Subject subject = SecurityUtils.getSubject();
		System.out.println("1");
		UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(
				"zhang", "123");
		System.out.println("1");
		try {
			subject.login(usernamePasswordToken);
			System.out.println("1");
		} catch (Exception e) {
			System.out.println("验证失败");
		}
		System.out.println(subject.isAuthenticated());
		subject.logout();
	}
}
