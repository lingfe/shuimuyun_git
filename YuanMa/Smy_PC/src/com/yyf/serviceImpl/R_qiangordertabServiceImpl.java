package com.yyf.serviceImpl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.mapper.R_qiangordertabMapper;
import com.yyf.model.R_kuaiketab;
import com.yyf.model.R_qiangordertab;
import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_qiangordertabService;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 文件名：R_qiangordertabServiceImpl.java 描述： 我要抢单 修改人： 杨杰 修改时间：2017年5月18日
 * 下午6:47:16 修改内容：
 */
@Service
public class R_qiangordertabServiceImpl implements R_qiangordertabService {

	/* 添加依赖注入 */
	@Autowired
	private R_qiangordertabMapper qiangordertabMapper;
	//注入下单
	@Autowired
	private IR_xiaordertabMapper xiaordertabMapper;
	

	@Override
	public List<R_xiaordertab> queryIdStatus(String kuaikeId, int status) {
		return qiangordertabMapper.queryIdStatus(kuaikeId, status);
	}
	
	
	/**
	 * 添加一条枪弹记录信息
	 * @author 杨杰     
	 * @created 2017年6月13日 上午10:47:12  
	 * @param qiangId 枪弹Id
	 * @param xiaId 下单ID
	 * @param kuaikeId 快客ID
	 * @param status  抢单状态
	 * @param qiangDate  抢单日期 
	 * @return
	 */
	@Override
	@Transactional
	public int Insert(String qiangId, String xiaId, String kuaikeId, int status, Date qiangDate) {
		
		xiaordertabMapper.updateStatus(R_xiaordertabEnum.YJD.ordinal(), xiaId);
		
		int count = qiangordertabMapper.Insert(qiangId, xiaId, kuaikeId, status, qiangDate);
		
		return count;
	}

	/**
	 * 查询抢单信息 得到一个List集合对象
	 * 
	 * @author 杨杰
	 * @created 2017年5月19日 上午9:50:29
	 * @return 返回一个List集合对象
	 */
	@Override
	public List<R_qiangordertab> query() {
		List<R_qiangordertab> query = qiangordertabMapper.query();
		return query;
	}

	/**
	 * 得到抢单数据的总条数
	 * 
	 * @author 杨杰
	 * @created 2017年5月19日 上午9:51:36
	 * @return 返回一个数值 表示为总条数
	 */
	@Override
	public int queryCount() {
		int queryCount = qiangordertabMapper.queryCount();
		return queryCount;
	}

	/**
	 * 根绝抢单Id删除抢单信息
	 * 
	 * @author 杨杰
	 * @created 2017年5月19日 上午9:52:32
	 * @param qiangorderId
	 *            抢单ID
	 * @return 返回 0失败 1成功
	 */
	@Override
	public int delete(String qiangorderId) {
		int delete = qiangordertabMapper.delete(qiangorderId);
		return delete;
	}

	/**
	 * 根据抢单ID 对抢单 状态进行修改
	 * 
	 * @author 杨杰
	 * @created 2017年5月19日 上午11:38:16
	 * @param status
	 *            '状态',状态(0=抢单成功，1=抢单失败，2=等待取货，3=等待配送（点击确认配送），4=已经到达（修改下单状态2，确认到达），5=派单成功)
	 * @param qiangorderId
	 *            抢单ID
	 */
	@Override
	public void updateStatus(Integer status, String qiangorderId) {
		qiangordertabMapper.updateStatus(status, qiangorderId);
	}

	/**
	 * 根据地图 模糊搜索附近的 单子数 及 收货人地址
	 * 
	 * @author 杨杰
	 * @created 2017年5月19日 下午3:16:09
	 * @param kuaikeAddress
	 *            快客地址
	 * @param shouhuoAddress
	 *            收货人地址
	 * @return 返回一个List集合对象
	 */
	@Override
	public List<R_xiaordertab> queryAddress(String kuaikeAddress, String shouhuoAddress) {
		List<R_xiaordertab> queryAddress = qiangordertabMapper.queryAddress(kuaikeAddress, shouhuoAddress);
		return queryAddress;
	}

	/**
	 * 根据下单Id得到 快客的ID及姓名 电话
	 * 
	 * @author 杨杰
	 * @created 2017年5月26日 下午2:29:24
	 * @param xiaId
	 *            下单Id
	 * @return
	 */
	@Override
	public R_kuaiketab querytKuaike(String xiaId) {
		R_kuaiketab querytKuaike = qiangordertabMapper.querytKuaike(xiaId);
		if (querytKuaike == null) {

			querytKuaike = new R_kuaiketab();
		}
		return querytKuaike;
	}

	/**
	 * 根据快客Id获取到抢单记录
	 * 
	 * @author 杨杰
	 * @created 2017年6月5日 下午3:17:59
	 * @param kuaikeId
	 *            快客Id
	 * @return
	 */
	@Override
	public List<R_qiangordertab> queryQiangOrderBykuaikeId(String kuaikeId) {

		List<R_qiangordertab> QiangOrder = qiangordertabMapper.queryQiangOrderBykuaikeId(kuaikeId);
	
		return QiangOrder;
	}

	

}
