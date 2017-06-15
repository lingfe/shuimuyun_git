package com.smy.model;

/**
  * 文件名：User_purview_Info.java
  * 描述： 权限设置
  * 修改人： YangJie
  * 修改时间：2017年6月9日 下午6:00:24
  * 修改内容：
 */
public class User_purview_Info {

	private int upid;
	
	private int userid;
	
	private String purview_ids;

	public int getUpid() {
		return upid;
	}

	public void setUpid(int upid) {
		this.upid = upid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getPurview_ids() {
		return purview_ids;
	}

	public void setPurview_ids(String purviewIds) {
		purview_ids = purviewIds;
	}
	
	
}
