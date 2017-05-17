package com.zuxia.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.zuxia.dao.IEmployeeDao;
import com.zuxia.model.Emps;

/**
 * 实现操作员工信息的接口
 * @author Administrator lixiaojie
 * @version 1.0
 * @datetime 2016-10-21 20:12
 * 
 */
@SuppressWarnings("unchecked")
public class EmployeeDaoImpl implements IEmployeeDao {

	//映射对象sessionFactory
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void deleteEmps(Integer empid) {
		//得到session
		Session session = sessionFactory.getCurrentSession();
		//实例化实体类
		Emps emps=new Emps();
		emps.setEmpId(empid);
		//删除
		session.delete(emps);
	}

	@Override
	public Emps getEmpsID(Integer empid) {
		//得到session
		Session session = sessionFactory.getCurrentSession();
		//得到数据
		Emps emps = (Emps) session.get(Emps.class, empid);
		
		return emps;
	}

	
	@Override
	public List<Emps> getEmpsList() {
		//定义hql
		String hql="From Emps ";
		//得到数据集合
		List<Emps> list = sessionFactory.getCurrentSession().createQuery(hql).list();
		//返回集合	
		return list;
	}

	@Override
	public List<Emps> getEmpsList(Integer empid) {
		return null;
	}

	@Override
	public void insertEmpsInfo(Emps emps) {
		//得到session
		Session session = sessionFactory.getCurrentSession();
		//保存
		session.save(emps);
	}

	@Override
	public void updateEmps(Emps emps) {
		//得到session
		Session session = sessionFactory.getCurrentSession();
		//修改
		session.update(emps);
	}
	
}
