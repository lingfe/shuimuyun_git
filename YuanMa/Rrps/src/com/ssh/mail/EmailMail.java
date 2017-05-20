package com.ssh.mail;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class EmailMail {
	public Integer sendMail(String userMail, String name, String pass) {

		Integer code = 1;

		// 创建Properties类，用于记录邮箱的一些属性
		final Properties properties = new Properties();

		// 发送邮件必须进行身份验证（SMTP方式）
		properties.put("mail.smtp.auth", "true");

		// 写明smtp的服务器
		properties.put("mail.smtp.host", "smtp.163.com");

		// 创建QQ端口号
		properties.put("mail.smtp.port", "25");

		// 注明自己的账号
		properties.put("mail.user", "facelay@163.com");

		// 此处的密码就是前面说的16位STMP口令
		properties.put("mail.password", "facelay925467");

		// 构建授权信息，进行smtp身份验证
		Authenticator authenticator = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				// 用户名、密码
				String userName = properties.getProperty("mail.user");
				String password = properties.getProperty("mail.password");
				return new PasswordAuthentication(userName, password);
			}
		};

		try {

			// 使用环境属性和授权信息，创建邮件会话
			Session mailSession = Session
					.getInstance(properties, authenticator);
			// 创建邮件消息
			MimeMessage message = new MimeMessage(mailSession);
			// 设置发件人
			InternetAddress form = new InternetAddress(properties
					.getProperty("mail.user"));
			message.setFrom(form);

			// 设置收件人的邮箱
			InternetAddress to = new InternetAddress(userMail);
			message.setRecipient(RecipientType.TO, to);

			// 设置密送，其他的收件人不能看到密送的邮件地址
			InternetAddress bcc = new InternetAddress("HappyShop@qq.com");
			message.setRecipient(RecipientType.CC, bcc);

			// 设置邮件标题
			message.setSubject("来自【一元夺宝】的邮件");

			// 设置邮件的内容体
			message
					.setContent(
							"<b>欢迎您使用【一元夺宝】！您的邮箱是：&nbsp;&nbsp;"
									+ "<b style='font-size:18px;color:#ff9900'>"
									+ name
									+ "</b></b>，验证码是：<b style='font-size:18px;color:#ff9900'>"
									+ pass + "</b>，"
									+ "打死都不能告诉别人哦！<br/><br/><br/><b>【一元夺宝】</b>",
							"text/html;charset=UTF-8");

			// 最后发送邮件
			Transport.send(message);
		} catch (Exception e) {
			code = 0;
		}
		return code;
	}
}
