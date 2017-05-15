package com.ssh.dao;

import java.security.NoSuchAlgorithmException;


public interface Md5Service {

	public String getMd5Code(String password) throws NoSuchAlgorithmException;
	
}
