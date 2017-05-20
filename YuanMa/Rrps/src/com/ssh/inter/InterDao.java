package com.ssh.inter;

import java.util.List;


/**
 * 公共接口
 * @author 李小杰
 * @version 1.0
 * @datetime 2016-11-16 11:33
 * @param <T> Class类型
 */
public interface InterDao<T> {

	/**
	 * 根据id查询
	 */
	public T selectId(Integer id);
	
	/**
	 * 根据String id查询
	 */
	public T selectId(String id);
	/**
	 * 查询数据所有行
	 */
	public Integer getCount();
	
	/**
	 * 查询所有
	 * @return
	 */
	public List<T> getAllList();
	
	/**
	 * 添加数据
	 * @param t
	 * @return
	 */
	public void insertInfo(T t);
	
	/**
	 * 删除全部数据
	 * @return
	 */
	public void deleteInfo();
	
	/**
	 * 根据id删除数据
	 * 
	 */
	public void deleteInfo(Integer id);
	
	/**
	 * 根据id修改数据
	 */
	public void updateInfo(T t);
	
	/**
	 * 分页查询的方法
	 */
	public List<T> selectPage(Integer index,Integer pageNum);


	
}
