package com.liaoyingtai.blog.shiro;

import java.security.NoSuchAlgorithmException;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;

public class shiroTest {

	public static void main(String[] args) throws NoSuchAlgorithmException {
		Factory<SecurityManager> factory = new IniSecurityManagerFactory(
				"classpath:shiro.ini");
		SecurityManager securityManager = factory.getInstance();
		SecurityUtils.setSecurityManager(securityManager);
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(
				"zhang", "1234");
		String md5=new Md5Hash("hello", "123").toString();
		System.out.println(md5);
		try {
			subject.login(usernamePasswordToken);
		} catch (Exception e) {
			System.out.println("验证失败");
		}
		System.out.println(subject.isAuthenticated());
		subject.logout();
	}
}
