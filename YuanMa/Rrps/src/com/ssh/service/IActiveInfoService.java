package com.ssh.service;

import java.util.ArrayList;

import com.ssh.model.Activeinfo;
import com.ssh.util.PageModel;

/**
 * 
 * 礼品 操作 service接口 时间：2016年11月18日09:37:58 操作人 ： 吴金科
 * 
 * @author Administrator
 * 
 */
public interface IActiveInfoService {

	/**
	 * 查询 可以兑换的礼品信息
	 * 
	 * @return 返回一个 所有数据集合
	 */
	public ArrayList<Activeinfo> queryActiveinfoList();

	/**
	 * 添加礼品
	 * 
	 * @param activeinfo
	 *            添加礼品的信息
	 */
	public void saveActiveinfo(Activeinfo activeinfo);

	/**
	 * 修改 兑换礼品的信息
	 * 
	 * @param activeinfo
	 *            要修改礼品的什么信息
	 * @return 返回一个受影响行数
	 */
	public int updateActiveinfo(Activeinfo activeinfo);

	/**
	 * 分页查询 所有的礼品
	 * 
	 * @param pageNo
	 *            当前页是第几页
	 * @return 返回一个带有数据的分页模型
	 */
	public PageModel<Activeinfo> queryPageActiveInfoList(int pageNo);

	/**
	 * 根据id查询他的详细信息
	 * 
	 * @param aiId
	 * @return
	 */
	public Activeinfo queryByAiIdActiveInfo(Integer aiId);

	/**
	 * 分页查询 所有的礼品
	 * 
	 * @param pageNo
	 *            当前页是第几页
	 * @return 返回一个带有数据的分页模型
	 */
	public PageModel<Activeinfo> queryActiveInfoListPage(int pageNo);

	/**
	 * 根据 id 修改 礼品的库存
	 * 
	 * @param aiId
	 */
	public void updateActiveInfoAiCount(Integer aiId);

}