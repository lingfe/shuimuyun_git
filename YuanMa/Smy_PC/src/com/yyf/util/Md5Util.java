package com.yyf.util;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * 
 * 文件名：Md5Util.java 描述： 登陆密码加密 修改人： lijie 修改时间：2017年5月24日 上午11:02:23 修改内容：
 */
public class Md5Util {
	public static String md5(String pwd) {
		return DigestUtils.md5Hex(pwd);
	}

	public static void main(String[] args) {
		String pwd = "123456asdasf@#4";
		System.out.println(md5(pwd) + "//");
		System.out.println(md5(pwd));
	}
}
