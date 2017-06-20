package com.yyf.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yyf.mapper.R_zhinotifyMapper;
import com.yyf.service.R_zhinotifyService;

@Service
public class R_zhinotifyServiceImpl implements R_zhinotifyService {

	// 自动装配，回调之后修改订单信息
	@Autowired
	private R_zhinotifyMapper zhinotifyMapper;



	@Override
	public void UpdateOrder(String openid,String is_subscribe,String  out_trade_no,String bank_type,String cash_fee,String nonce_str,String result_code,
			String return_code,String sign,String time_end,String transaction_id,String total_fee) {
		zhinotifyMapper.UpdateOrder(openid,is_subscribe, out_trade_no,bank_type,cash_fee,nonce_str,result_code,return_code,
        		sign,time_end,total_fee);
	}
}
