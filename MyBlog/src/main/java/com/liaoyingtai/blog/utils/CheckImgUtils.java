package com.liaoyingtai.blog.utils;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

public class CheckImgUtils {

	private int strLength = 4;// 验证阿妈长度
	private String strValues = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";// 验证码上要显示的内容
	private int imgWidth = 200;// 图片宽度
	private int imgHeight = 80;// 图片高度
	private Color[] strColors = { Color.red, Color.blue, Color.yellow, Color.green };// 字体颜色
	private Color bgColor = Color.PINK;
	private Random random = new Random();// 用来生成随机数对象
	private String resultStr;

	/**
	 * 读取随机一个字母
	 * 
	 * @return
	 */
	private char getStrValue() {
		int index = random.nextInt(strValues.length());
		char resultStr = strValues.charAt(index);
		return resultStr;
	}

	/**
	 * 读取随机字体颜色
	 * 
	 * @return
	 */
	private Color getStrColor() {
		int index = random.nextInt(strColors.length);
		Color color = strColors[index];
		return color;
	}

	/**
	 * 读取验证码
	 * 
	 * @throws Exception
	 */
	public BufferedImage getCheckImg() throws Exception {
		BufferedImage bImage = new BufferedImage(this.imgWidth, this.imgHeight, BufferedImage.TYPE_INT_RGB);
		Graphics2D graphics2d = bImage.createGraphics();
		graphics2d.setColor(bgColor);
		graphics2d.fillRect(0, 0, this.imgWidth, this.imgHeight);
		StringBuffer sBuffer = new StringBuffer();
		for (int i = 1; i <= this.strLength; i++) {
			graphics2d.setFont(new Font("Times New Roman", Font.ITALIC, this.imgHeight));
			String str = String.valueOf(getStrValue());
			sBuffer.append(str);
			graphics2d.setColor(getStrColor());
			graphics2d.drawString(str, 16 * i + random.nextInt(7), this.imgHeight - random.nextInt(6));
			graphics2d.setColor(Color.black);
			graphics2d.drawLine(0, random.nextInt(this.imgHeight), this.imgWidth, random.nextInt(this.imgHeight));
		}
		this.resultStr = sBuffer.toString();
		bImage.flush();
		return bImage;
	}

	public String getCheckStr() {
		return this.resultStr;
	}

}
