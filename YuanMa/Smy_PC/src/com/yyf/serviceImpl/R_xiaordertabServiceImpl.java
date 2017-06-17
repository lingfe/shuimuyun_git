package com.yyf.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.mapper.R_qiangordertabMapper;
import com.yyf.model.Commenttab;
import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_xiaordertabService;
import com.yyf.util.R_qiangordertabEnum;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 
 * 文件名： R_xiaordertabServiceImpl.java 描述： 下单交互实现类 修改人： lijie 修改时间： 2017年5月18日
 * 上午9:22:53 修改内容：
 */
@Service
public class R_xiaordertabServiceImpl implements R_xiaordertabService {

	// 自动装配，下单
	@Autowired
	private IR_xiaordertabMapper ir_xiaordertabMapper;
	
	// 自动装配，抢单
	@Autowired
	private R_qiangordertabMapper qiangordertabMapper;

	@Override
	public Map<String, Object> getMyInfoOrderStatus(String kuaikeId) {
		return ir_xiaordertabMapper.getMyInfoOrderStatus(kuaikeId);
	}
	
	@Override
	public List<R_xiaordertab> singleDataFuzzySearch(String searchKey) {
		return ir_xiaordertabMapper.singleDataFuzzySearch(searchKey);
	}
	
	@Override
	public R_xiaordertab statusQueryXiaId(int status, String kuaikeId, String xiaId) {
		return ir_xiaordertabMapper.statusQueryXiaId(status, kuaikeId, xiaId);
	}
	
	@Override
	public void fa(String kuaikeName, String kuaikePhone, String xiaId, String kuaikeAddressInfo) {
		ir_xiaordertabMapper.fa(kuaikeName, kuaikePhone, xiaId, kuaikeAddressInfo);
	}
	
	@Override
	public void shou(String shouhuoName, String shouhuoPhone, String xiaId, String shouhuoAddressInfo) {
		ir_xiaordertabMapper.shou(shouhuoName, shouhuoPhone, xiaId, shouhuoAddressInfo);
	}
	
	@Override
	public void orderSbmit(String xiaId, String shopType, float shopNumer, int shopzholiang, String timeString,String kuaikeId) {
		ir_xiaordertabMapper.orderSbmit(xiaId, shopType, shopNumer, shopzholiang, timeString,kuaikeId);
	}
	
	@Override
	public int statusQueryCount(int status) {
		return ir_xiaordertabMapper.statusQueryCount(status);
	}
	
	@Override
	public List<R_xiaordertab> statusQueryPaging(int status, int pageIndex, int pageNum) {
		return ir_xiaordertabMapper.statusQueryPaging(status, pageIndex, pageNum);
	}
	
	@Override
	public List<R_xiaordertab> statusQuery(int status,String kuaikeId) {
		return ir_xiaordertabMapper.statusQuery(status,kuaikeId);
	}
	
	@Transactional
	@Override
	public void insertCommentInfo(Commenttab tab) {
		ir_xiaordertabMapper.insertCommentInfo(tab);
		//修改状态为已评论
		ir_xiaordertabMapper.updateStatus(R_xiaordertabEnum.YPJ.ordinal(), tab.getXiaId());
	}

	@Override
	public R_xiaordertab xiaorderInfo(String xiaId) {
		return ir_xiaordertabMapper.xiaorderInfo(xiaId);
	}

	@Override
	public void add(R_xiaordertab tab) {
		ir_xiaordertabMapper.add(tab);
	}

	@Override
	public List<R_xiaordertab> query() {
		return ir_xiaordertabMapper.query();
	}

	@Override
	public int queryCount() {
		return ir_xiaordertabMapper.queryCount();
	}

	@Override
	public void delete(String xiaId) {
		ir_xiaordertabMapper.delete(xiaId);
	}

	@Override
	@Transactional
	public void updateStatus(int status, String xiaId) {
		//x1.已接单,未发货(
		if(status==1){
			//修改状态为，/x2.已发货,未到达//q1.取货成功,正在配送/
			ir_xiaordertabMapper.updateStatus(R_xiaordertabEnum.YDD.ordinal(), xiaId);
			qiangordertabMapper.updateStatus(R_qiangordertabEnum.YJ_DD.ordinal(), xiaId);
		}
		
		//x2.已发货,未到达
		if(status==2){
			//修改状态为,/x3.到达,未评价//q2.派单成功/
			ir_xiaordertabMapper.updateStatus(R_xiaordertabEnum.Y_OK.ordinal(), xiaId);
			qiangordertabMapper.updateStatus(R_qiangordertabEnum.PD_OK.ordinal(), xiaId);
		}
		
		//x3.到达,未评价
		if(status==3){
			//修改状态为,/x4.已评价/
			ir_xiaordertabMapper.updateStatus(R_xiaordertabEnum.YPJ.ordinal(), xiaId);
		}

	}

	
	
	/**
	 * 根据状态 查询附近所有为被抢的单子
	 * 
	 * 0=未接单(刚下单的默认状态，可以删除)，
	 * 1=已接单,未发货(由抢单用户修改，表示抢单用户已抢单成功。下单点击发货，修改抢单用户状态为2，表示正在配送。)，
	 * 2=已到达,未确认（由抢单点击确认到达修改，表示抢单已送到。下单点击确认到达，修改抢单状态为3，表示派单成功；同时修改自身状态为3，表示已确认），
	 * 3=已确认(下单已确认，派单结束) 
	 * 4=已评价
	 * @author 杨杰     
	 * @created 2017年6月17日 上午10:08:48  
	 * @return
	 */
	@Override
	public List<R_xiaordertab> queryAllXOrderByStatusTo0() {
		
		List<R_xiaordertab> statusTo0List = ir_xiaordertabMapper.queryAllXOrderByStatusTo0();
		
		return statusTo0List;
	}

}
