package com.ssh.services.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.dao.IActiveInfoDao;
import com.ssh.model.Activeinfo;
import com.ssh.service.IActiveInfoService;
import com.ssh.util.PageModel;

/**
 * 礼品 操作 SERVICE实现类 时间：2016年11月18日09:37:58
 * 
 * @author 吴金科
 * 
 */
@Service
public class ActiveInfoServiceImpl implements IActiveInfoService {

	/**
	 * 注入礼品Dao类接口
	 */
	@Autowired
	private IActiveInfoDao activeInfoDao;

	/**
	 * 重写 实现类的方法 查询所有的数据
	 */
	@Override
	@Transactional
	public ArrayList<Activeinfo> queryActiveinfoList() {
		// 调用 Dao中的查询方法
		return activeInfoDao.queryActiveinfoList();
	}

	/**
	 * 重写 实现类的方法 添加礼品信息
	 */
	@Override
	@Transactional
	public void saveActiveinfo(Activeinfo activeinfo) {
		// 调用 Dao中的添加方法
		activeInfoDao.saveActiveinfo(activeinfo);
	}

	/**
	 * 重写 实现类的方法 修改礼品信息
	 */
	@Override
	@Transactional
	public int updateActiveinfo(Activeinfo activeinfo) {
		// 调用 Dao中的修改方法
		return activeInfoDao.updateActiveinfo(activeinfo);
	}

	/**
	 * 重写 实现类的方法 分页查询
	 */
	@Override
	@Transactional
	public PageModel<Activeinfo> queryPageActiveInfoList(int pageNo) {
		// 调用 Dao中的分页查询方法
		return activeInfoDao.queryPageActiveInfoList(pageNo);
	}

	/**
	 * 根据id查询
	 */
	@Override
	@Transactional
	public Activeinfo queryByAiIdActiveInfo(Integer aiId) {
		return activeInfoDao.queryByAiIdActiveInfo(aiId);
	}

	/**
	 * 前台瀑布流 查询所有的礼品
	 */
	@Override
	@Transactional
	public PageModel<Activeinfo> queryActiveInfoListPage(int pageNo) {
		return activeInfoDao.queryActiveInfoListPage(pageNo);
	}

	/**
	 * 根据id 修改礼品的数量
	 */
	@Override
	@Transactional
	public void updateActiveInfoAiCount(Integer aiId) {
		activeInfoDao.updateActiveInfoAiCount(aiId);
	}

}
