package com.yyf.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yyf.mapper.IR_xiaordertabMapper;
import com.yyf.mapper.R_qiangordertabMapper;
import com.yyf.mapper.R_zhinotifyMapper;
import com.yyf.mapper.R_zhiordertabMapper;
import com.yyf.model.Commenttab;
import com.yyf.model.R_xiaordertab;
import com.yyf.model.R_zhiordertab;
import com.yyf.service.R_xiaordertabService;
import com.yyf.service.R_zhinotifyService;
import com.yyf.service.R_zhiordertabService;
import com.yyf.util.R_qiangordertabEnum;
import com.yyf.util.R_xiaordertabEnum;

/**
 * 
 * 文件名： R_zhiordertabServiceImpl.java 描述： 下单交互实现类 修改人： tianhao 修改时间： 2017年6月17日
 *  修改内容：
 */
@Service
public class R_zhinotifyServiceImpl implements R_zhinotifyService {

	// 自动装配，
	@Autowired
	private R_zhinotifyMapper zhinotifyMapper;



	@Override
	public void UpdateOrder(String openid,String is_subscribe,String  out_trade_no,String bank_type,String cash_fee,String nonce_str,String result_code,
			String return_code,String sign,String time_end,String transaction_id,String total_fee) {
		zhinotifyMapper.UpdateOrder(openid,is_subscribe, out_trade_no,bank_type,cash_fee,nonce_str,result_code,return_code,
        		sign,time_end,total_fee);
	}
}
