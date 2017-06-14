package com.smy.model;

import java.util.List;

/**
  * 文件名：PageModel.java
  * 描述： 分页实体
  * 修改人： YangJie
  * 修改时间：2017年6月9日 下午5:59:19
  * 修改内容：
 */
public class PageModel<T> {

	//定义属性
	private int size = 10;
	
	private int sumCount;
	
	private int currentPage;
	
	private int sumPage;//总页数
	
	//首页
	private int first = 1;
	
	//上
	private int upper;
	
	private int down;
	
	private int last;
	
	private List<T> list;
	
	

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
		
		//计算出总的页数
		this.sumPage = (int)Math.ceil(this.sumCount / (float)this.size); 
		
		//计算出上一页，下一页，尾页
		this.upper = this.currentPage - 1 <=1 ? 1 : this.currentPage - 1;
		this.down = this.currentPage + 1 >= sumPage ? sumPage : this.currentPage + 1;
		this.last = this.sumPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getSumPage() {
		return sumPage;
	}

	public int getFirst() {
		return first;
	}

	public void setFirst(int first) {
		this.first = first;
	}

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

	public int getLast() {
		return last;
	}

	public void setLast(int last) {
		this.last = last;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}
	
	
	
}
