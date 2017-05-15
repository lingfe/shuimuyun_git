package com.ssh.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ConvertDateUtil {

	/**
	 * Date转换为时间字符串(格式化时间)
	 * 
	 * @param date
	 *            Date
	 * @return String
	 */
	public static String convertDate(Date date) {
		if (null == date) {
			return "";
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		return sdf.format(date);
	}

}
