package com.smy.model;

/**
  * 文件名：Purview_Info.java
  * 描述： 权限视图
  * 修改人： YangJie
  * 修改时间：2017年6月9日 下午5:59:35
  * 修改内容：
 */
public class Purview_Info {

	 private int pid;
	 
	 private int menu_id;
	 
	 private String pname;
	 
	 private String actionPath;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(int menuId) {
		menu_id = menuId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getActionPath() {
		return actionPath;
	}

	public void setActionPath(String actionPath) {
		this.actionPath = actionPath;
	}

	public Purview_Info(int pid, int menuId, String pname, String actionPath) {
		super();
		this.pid = pid;
		menu_id = menuId;
		this.pname = pname;
		this.actionPath = actionPath;
	}

	public Purview_Info() {
		super();
	}
	
	 
}
