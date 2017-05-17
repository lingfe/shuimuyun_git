package com.zuxia.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;

import com.zuxia.dao.IDepartmentDao;
import com.zuxia.model.Depts;

/**
 * 实现操作部门信息的接口
 * @author Administrator lixiaojie
 * @version 1.0
 * @datetime 2016-10-21
 * 
 */
@SuppressWarnings("unchecked")
public class DepartmentDaoImpl implements IDepartmentDao {

	//映射对象sessionFactory
	
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//根据id查询部门信息的方法,返回Depts实体
	@Override
	public Depts getDempartmentID(Integer deptid) {
		//首先得到session
		Session session = sessionFactory.getCurrentSession();
		//得到数据
		Depts depts = (Depts) session.get(Depts.class, deptid);
		
		//返回数据
		return depts;
		
	}

	//查询部门所有信息的方法，返回list集合
	@Override
	public List<Depts> getDempartmentList() {
		//定义Hql
		String hql="From Depts ";
		//得到集合
		List<Depts> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		//返回集合
		return list;
	}

	//根据id查询部门信息的方法,返回list集合
	@Override
	public List<Depts> getDempartmentList(Integer deptid) {
		
		
		
		return null;
	}
	
	
	
	
	
}
