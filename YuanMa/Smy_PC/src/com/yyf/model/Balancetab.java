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
	
	private double deposit;//押金

	private int paystatus;
	
	public int getPaystatus() {
		return paystatus;
	}

	public void setPaystatus(int paystatus) {
		this.paystatus = paystatus;
	}

	public double getDeposit() {
		return deposit;
	}

	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	private int status;//状态


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
				+ balance + ", deposit=" + deposit + ", status=" + status + "]";
	}

	public Balancetab(String balanceId, String kuaikeId, String zhifupwd, double balance, double deposit, int status) {
		super();
		this.balanceId = balanceId;
		this.kuaikeId = kuaikeId;
		this.zhifupwd = zhifupwd;
		this.balance = balance;
		this.deposit = deposit;
		this.status = status;
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
