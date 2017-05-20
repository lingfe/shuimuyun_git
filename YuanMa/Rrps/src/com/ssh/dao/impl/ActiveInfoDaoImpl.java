package com.ssh.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssh.dao.IActiveInfoDao;
import com.ssh.model.Activeinfo;
import com.ssh.util.PageModel;

/**
 * 礼品 操作 Dao实现类 时间：2016年11月18日09:37:58 操作人 ： 吴金科
 * 
 * dao注解 持久层
 */
@Repository
public class ActiveInfoDaoImpl implements IActiveInfoDao {

	/**
	 * 自动注入 sessionFactory
	 */
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * 操作人：吴金科 时间：2016年11月19日10:01:05 描述：查询所有的礼品信息表（没有分页）
	 * 
	 */
	@SuppressWarnings("unchecked")
	@Override()
	public ArrayList<Activeinfo> queryActiveinfoList() {

		// 得到 session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "from Activeinfo a where a.aiStatus = 1";

		// 执行 查询方法
		Query query = session.createQuery(hql);

		// 返回一个集合
		ArrayList<Activeinfo> list = (ArrayList<Activeinfo>) query.list();

		return list;
	}

	/**
	 * 操作人：吴金科 时间：2016年11月19日10:01:05 描述：添加 礼品信息
	 * 
	 */
	@Override
	public void saveActiveinfo(Activeinfo activeinfo) {

		// 得到session
		Session session = sessionFactory.getCurrentSession();

		// 调用 session的save方法 讲数据保存到数据库
		session.save(activeinfo);
	}

	/**
	 * 操作人：吴金科 时间：2016年11月19日10:01:05 描述：修改某一个礼品信息表
	 * 
	 */
	@Override
	public int updateActiveinfo(Activeinfo activeinfo) {

		// 得到 session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "update Activeinfo a set a.aiBeginTime=?,a.aiEndTime=?,a.aiPhoto=?,a.aiContent=?,a.aiCount=?,a.aiGiftName=?,a.aiScore=?,a.aiName=? where a.aiId=?";

		// 执行 创建的hql 语句
		Query query = session.createQuery(hql);

		// 设置参数值
		query.setDate(0, activeinfo.getAiBeginTime());
		query.setDate(1, activeinfo.getAiEndTime());
		query.setString(2, activeinfo.getAiPhoto());
		query.setString(3, activeinfo.getAiContent());
		query.setInteger(4, activeinfo.getAiCount());
		query.setString(5, activeinfo.getAiGiftName());
		query.setInteger(6, activeinfo.getAiScore());
		query.setString(7, activeinfo.getAiName());
		query.setInteger(8, activeinfo.getAiId());

		// 得到 受影响行数
		int count = query.executeUpdate();

		// 返回 出去
		return count;
	}

	/**
	 * 操作人：吴金科 时间：2016年11月19日10:01:05 描述：分页查询所有的礼品信息表 后台
	 * 
	 */
	@SuppressWarnings("unchecked")
	@Override
	public PageModel<Activeinfo> queryPageActiveInfoList(int pageNo) {

		// 创建分页模型
		PageModel<Activeinfo> model = new PageModel<Activeinfo>();

		// 创建一个数据的list
		List<Activeinfo> activeinfos = new ArrayList<Activeinfo>();

		// 得到session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "from Activeinfo a order by a.aiId desc";

		// 创建 查询语句 （执行）
		Query query = session.createQuery(hql);

		// 设置 显示 哪一页
		model.setPageIndex(pageNo);

		// 设置 每一页 显示的数据
		model.setPageNum(5);

		// 查询 出总的数据行数
		model.setNumCount(selActiveCount());

		// 进行分页 设置数据
		query.setFirstResult((model.getPageIndex() - 1) * model.getPageNum())
				.setMaxResults(model.getPageNum());

		// 返回 一个集合 并且 用list 接受
		activeinfos = query.list();

		// 将 list 放入 model 中
		model.setList(activeinfos);

		// 返回出去
		return model;
	}

	/**
	 * 操作人：吴金科 时间：2016年11月19日10:01:05 描述：分页查询所有的礼品信息表 前台
	 * 
	 */
	@SuppressWarnings("unchecked")
	@Override
	public PageModel<Activeinfo> queryActiveInfoListPage(int pageNo) {

		// 创建分页模型
		PageModel<Activeinfo> model = new PageModel<Activeinfo>();

		// 创建一个数据的list
		List<Activeinfo> activeinfos = new ArrayList<Activeinfo>();

		// 得到session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "from Activeinfo a where a.aiStatus = 1 and a.aiCount > 0";

		// 创建 查询语句 （执行）
		Query query = session.createQuery(hql);

		// 设置 显示 哪一页
		model.setPageIndex(pageNo);

		// 设置 每一页 显示的数据
		model.setPageNum(5);

		// 查询 出总的数据行数
		model.setNumCount(selActiveCountAll());

		// 进行分页 设置数据
		query.setFirstResult((model.getPageIndex() - 1) * model.getPageNum())
				.setMaxResults(model.getPageNum());

		// 返回 一个集合 并且 用list 接受
		activeinfos = query.list();

		// 将 list 放入 model 中
		model.setList(activeinfos);

		// 返回出去
		return model;
	}

	/**
	 * 查询礼品的总行数
	 * 
	 * @return 返回总行数 后台
	 */
	public Integer selActiveCount() {

		// 得到 session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "select count(*) from Activeinfo";

		// 执行 查询方法
		Query query = session.createQuery(hql);

		// 唯一的返回结果集
		String strCount = query.uniqueResult().toString();

		// 强转成为 integer
		int count = Integer.parseInt(strCount);

		return count;
	}

	/**
	 * 查询礼品的总行数
	 * 
	 * @return 返回总行数 前台
	 */
	public Integer selActiveCountAll() {

		// 得到 session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "select count(*) from Activeinfo a where a.aiStatus = 1 and a.aiCount > 0";

		// 执行 查询方法
		Query query = session.createQuery(hql);

		// 唯一的返回结果集
		String strCount = query.uniqueResult().toString();

		// 强转成为 integer
		int count = Integer.parseInt(strCount);
		System.out.println("状态为1的礼品总条数：" + count);
		return count;
	}

	/**
	 * 根据id查询礼品的详细信息
	 */
	@Override
	public Activeinfo queryByAiIdActiveInfo(Integer aiId) {

		// 得到 session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "from Activeinfo a where a.aiId = ?";

		// 执行查询语句
		Query query = session.createQuery(hql);

		// 设置 查询的条件
		query.setInteger(0, aiId);

		// 返回一个数据对象
		Activeinfo activeinfo = (Activeinfo) query.uniqueResult();

		return activeinfo;
	}

	/**
	 * 根据修改 礼品 库存
	 */
	@Override
	public void updateActiveInfoAiCount(Integer aiId) {
		// 得到 session
		Session session = sessionFactory.getCurrentSession();

		// 创建 hql 语句
		String hql = "update Activeinfo a set a.aiCount=a.aiCount - 1 where a.aiId=?";

		// 执行 创建的hql 语句
		Query query = session.createQuery(hql);
		// 设置参数值
		query.setInteger(0, aiId);

		// 得到 受影响行数
		query.executeUpdate();
	}

}
