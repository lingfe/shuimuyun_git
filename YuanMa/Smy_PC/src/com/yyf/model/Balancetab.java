package com.yyf.model;

/**
  * 文件名：Balancetab.java
  * 描述： 余额支付
  * 修改人： 杨杰
  * 修改时间：2017年6月21日 上午11:15:55
  * 修改内容：
 */
public class Balancetab {

	private  String balanceId;//余额支付Id
	
	private  String kuaikeId;// 快客Id
	
	private  String zhifupwd; //支付密码
	
	private  double balance;//余额
	
	private String xiaId;//下单ID
	
	private double deposit;//押金
	
	public double getDeposit() {
		return deposit;
	}

	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}

	public Balancetab(String balanceId, String kuaikeId, String zhifupwd, double balance, String xiaId, double deposit,
			int status) {
		super();
		this.balanceId = balanceId;
		this.kuaikeId = kuaikeId;
		this.zhifupwd = zhifupwd;
		this.balance = balance;
		this.xiaId = xiaId;
		this.deposit = deposit;
		this.status = status;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	private int status;//状态

	public String getXiaId() {
		return xiaId;
	}

	public void setXiaId(String xiaId) {
		this.xiaId = xiaId;
	}

	public String getBalanceId() {
		return balanceId;
	}

	public Balancetab() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Balancetab [balanceId=" + balanceId + ", kuaikeId=" + kuaikeId + ", zhifupwd=" + zhifupwd + ", balance="
				+ balance + ", xiaId=" + xiaId + ", deposit=" + deposit + ", status=" + status + "]";
	}

	

	public void setBalanceId(String balanceId) {
		this.balanceId = balanceId;
	}

	public String getKuaikeId() {
		return kuaikeId;
	}

	public void setKuaikeId(String kuaikeId) {
		this.kuaikeId = kuaikeId;
	}

	public String getZhifupwd() {
		return zhifupwd;
	}

	public void setZhifupwd(String zhifupwd) {
		this.zhifupwd = zhifupwd;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	
}
