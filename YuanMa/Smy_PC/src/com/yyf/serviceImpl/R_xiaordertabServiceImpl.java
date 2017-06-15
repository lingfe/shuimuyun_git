package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.model.Commenttab;
import com.yyf.model.R_xiaordertab;
import com.yyf.service.R_xiaordertabService;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 
 * 文件名： R_xiaordertabServiceImpl.java 描述： 下单交互实现类 修改人： lijie 修改时间： 2017年5月18日
 * 上午9:22:53 修改内容：
 */
@Service
public class R_xiaordertabServiceImpl implements R_xiaordertabService {

	// 自动装配
	@Autowired
	private IR_xiaordertabMapper ir_xiaordertabMapper;

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
	public void updateStatus(int status, String xiaId) {
		ir_xiaordertabMapper.updateStatus(status, xiaId);
	}

}
