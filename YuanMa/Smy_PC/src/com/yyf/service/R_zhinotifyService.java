package com.yyf.service;

public interface R_zhinotifyService {
	
	/**
	 * 
	 * 修改订单信息
	 * @author 田浩
	 * @created 2017年6月17日 下午2:03:28  
	 * @param tab
	 */
	void UpdateOrder(String openid,String is_subscribe,String  out_trade_no,String bank_type,String cash_fee,String nonce_str,String result_code,
			String return_code,String sign,String time_end,String transaction_id,String total_fee);
	

}
