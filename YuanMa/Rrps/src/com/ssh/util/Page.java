package com.ssh.util;

import java.util.List;

public class Page<T> {
	private int currentPage;//当前页
	private int size=3;//每一页显示条数
	private int sumCount;//总条数
	private int sumPage;//总页数——注意：由总条数和每一页显示条数决定
	private List<T> list;
	private int first=1;//首页
	private int last;//尾页
	private int upper;//上一页
	private int down;//下一页
	
	public int getUpper() {
		return upper;
	}
	public void setUpper(int upper) {
		this.upper = upper;
	}
	public int getDown() {
		return down;
	}
	public void setDown(int down) {
		this.down = down;
	}
	public void setLast(int last) {
		this.last = last;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public Page() {
		super();
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getSumCount() {
		return sumCount;
	}
	
	public void setSumCount(int sumCount) {
		this.sumCount = sumCount;
		//总页数的判断
		this.sumPage = this.sumCount % this.size ==0 ? this.sumCount / this.size : this.sumCount / this.size + 1;
		//上一页
		this.upper = this.currentPage > 1 ?this.currentPage -1 : this.currentPage;
		//下一页
		this.down = this.currentPage < this.sumPage ? this.currentPage +1: this.sumPage;
		//尾页
		this.last=this.sumPage;
	}
	
	public int getSumPage() {
		return sumPage;
	}
	public void setSumPage(int sumPage) {
		this.sumPage = sumPage;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getFirst() {
		return first;
	}
	public void setFirst(int first) {
		this.first = first;
	}
	public int getLast() {
		return last;
	}
}
