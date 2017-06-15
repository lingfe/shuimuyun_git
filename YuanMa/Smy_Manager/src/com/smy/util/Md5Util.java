package com.smy.util;

import org.apache.commons.codec.digest.DigestUtils;

public class Md5Util {
	public static String md5(String pwd) {
		return DigestUtils.md5Hex(pwd);
	}
}
