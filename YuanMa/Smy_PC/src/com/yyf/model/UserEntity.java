package com.yyf.model;

public class UserEntity {
	private Integer uid;
	private String uname;
	private String upass;
	private String phone;
	private String email;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserEntity() {
		super();
	}
	/**
	 * 
	 * @param uid
	 * @param uname
	 * @param upass
	 * @param phone
	 * @param email
	 */
	public UserEntity(Integer uid, String uname, String upass, String phone, String email) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upass = upass;
		this.phone = phone;
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserEntity [uid=" + uid + ", uname=" + uname + ", upass=" + upass + ", phone=" + phone + ", email="
				+ email + "]";
	}

}
