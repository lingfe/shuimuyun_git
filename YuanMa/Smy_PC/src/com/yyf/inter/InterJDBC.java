package com.yyf.inter;

import java.util.List;

/**
 * 
 * 文件名：InterJDBC.java 描述： 公共的数据访问接口 修改人： lijie 修改时间：2017年5月16日 下午4:41:43 修改内容：
 */
public interface InterJDBC<T> {

	/**
	 * 
	 * 添加
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午4:39:15
	 * @param 实体数据
	 */
	public void add(T t);

	/**
	 * 
	 * 查询所有
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午4:40:16
	 * @return 数据集合
	 */
	public List<T> query();

	/**
	 * 
	 * 查询行
	 * 
	 * @author lijie
	 * @created 2017年5月16日 下午4:40:56
	 * @return 结果
	 */
	public int queryCount();
}
