package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.mapper.R_qiangordertabMapper;
import com.yyf.mapper.R_zhiordertabMapper;
import com.yyf.model.Commenttab;
import com.yyf.model.R_xiaordertab;
import com.yyf.model.R_zhiordertab;
import com.yyf.service.R_xiaordertabService;
import com.yyf.service.R_zhiordertabService;
import com.yyf.util.R_qiangordertabEnum;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 
 * 文件名： R_zhiordertabServiceImpl.java 描述： 下单交互实现类 修改人： tianhao 修改时间： 2017年6月17日
 *  修改内容：
 */
@Service
public class R_zhiordertabServiceImpl implements R_zhiordertabService {

	// 自动装配，
	@Autowired
	private R_zhiordertabMapper zhiordertabMapper;



	@Override
	public void insertMessage(String total_fee,String xiaId,String out_trade_no,String body,String trade_type,String product_id) {
		zhiordertabMapper.insertMessage(total_fee,xiaId,out_trade_no,body,trade_type,product_id);
	}
}
