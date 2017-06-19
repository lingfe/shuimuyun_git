package com.yyf.model;

public class R_zhiordertab {
	@Override
	public String toString() {
		return "R_zhiordertab [total_fee=" + total_fee + ", out_trade_no=" + out_trade_no + ", trade_state="
				+ trade_state + ", result_code=" + result_code + ", trade_type=" + trade_type + ", cash_fee=" + cash_fee
				+ ", time_start=" + time_start + ", time_expire=" + time_expire + ", urlCode=" + urlCode + ", time_end="
				+ time_end + ", trade_state_desc=" + trade_state_desc + ", body=" + body + ", sign=" + sign
				+ ", nonce_str=" + nonce_str + ", spbill_create_ip=" + spbill_create_ip + ", err_code=" + err_code
				+ ", err_code_des=" + err_code_des + ", transaction_id=" + transaction_id + ", bank_type=" + bank_type
				+ ", product_id=" + product_id + ", return_code=" + return_code + ", return_msg=" + return_msg
				+ ", openid=" + openid + ", settlement_total_fee=" + settlement_total_fee + ", goods_tag=" + goods_tag
				+ ", attach=" + attach + ", is_subscribe=" + is_subscribe + ", xiaId=" + xiaId + "]";
	}
	private String total_fee = ""; //标价金额
	private String out_trade_no = "";//商户订单号  要求32个字符内
	private String trade_state = "";//交易状态   SUCCESS—支付成功  REFUND—转入退款  NOTPAY—未支付  CLOSED—已关闭  REVOKED—已撤销（刷卡支付）  USERPAYING--用户支付中   	PAYERROR--支付失败(其他原因，如银行返回失败)
	private String result_code = "";//业务结果
	private String trade_type = "";//交易类型   取值如下：JSAPI，NATIVE，APP等
	private String cash_fee = "";//现金支付金额
	private String time_start = "";//交易起始时间   可不传
	private String time_expire  = "";// 交易结束时间   可不传
	private String urlCode = "";//二维码链接
	private String time_end = "";//支付完成时间
	private String trade_state_desc = "";//订单状态   对当前查询订单状态的描述和下一步操作的指引
	private String body = "";//商品描述
	private String sign = "";//签名,默认md5
	private String nonce_str = "";//随机字符串  长度要求在32位以内
	private String spbill_create_ip = "";//终端IP
	private String err_code = "";//错误代码
	private String err_code_des = "";//错误代码描述
	private String transaction_id = "";//微信订单号
	private String bank_type = "";//银行类型，采用字符串类型的银行标识
	private String product_id = "";//商品ID trade_type=NATIVE时（即扫码支付），此参数必传。此参数为二维码中包含的商品ID，商户自行定义。
	private String return_code = "";//返回状态码   SUCCESS/FAIL
	private String return_msg = "";//返回信息
	private String openid = "";//用户标识   可不传   trade_type=JSAPI时（即公众号支付），此参数必传，此参数为微信用户在商户对应appid下的唯一标识。
	private String settlement_total_fee = "";//当订单使用了免充值型优惠券后返回该参数，应结订单金额=订单金额-免充值优惠券金额。
	private String goods_tag = "";//订单优惠标记   订单优惠标记，使用代金券或立减优惠功能时需要的参数    其他情况不传
	private String attach = "";//附加数据    附加数据，在查询API和支付通知中原样返回，可作为自定义参数使用    可不传
	private String is_subscribe = "";//是否关注公众账号  Y  N
	private String xiaId = "";
	
	
	public String getXiaId() {
		return xiaId;
	}
	public void setXiaId(String xiaId) {
		this.xiaId = xiaId;
	}
	public String getNonce_str() {
		return nonce_str;
	}
	public void setNonce_str(String nonce_str) {
		this.nonce_str = nonce_str;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getOut_trade_no() {
		return out_trade_no;
	}
	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}
	public String getTotal_fee() {
		return total_fee;
	}
	public void setTotal_fee(String total_fee) {
		this.total_fee = total_fee;
	}
	public String getSpbill_create_ip() {
		return spbill_create_ip;
	}
	public void setSpbill_create_ip(String spbill_create_ip) {
		this.spbill_create_ip = spbill_create_ip;
	}
	public String getUrlCode() {
		return urlCode;
	}
	public void setUrlCode(String urlCode) {
		this.urlCode = urlCode;
	}
	public String getResult_code() {
		return result_code;
	}
	public void setResult_code(String result_code) {
		this.result_code = result_code;
	}
	public String getErr_code() {
		return err_code;
	}
	public void setErr_code(String err_code) {
		this.err_code = err_code;
	}
	public String getErr_code_des() {
		return err_code_des;
	}
	public void setErr_code_des(String err_code_des) {
		this.err_code_des = err_code_des;
	}
	public String getTransaction_id() {
		return transaction_id;
	}
	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}
	public String getTrade_state() {
		return trade_state;
	}
	public void setTrade_state(String trade_state) {
		this.trade_state = trade_state;
	}
	public String getBank_type() {
		return bank_type;
	}
	public void setBank_type(String bank_type) {
		this.bank_type = bank_type;
	}
	public String getSettlement_total_fee() {
		return settlement_total_fee;
	}
	public void setSettlement_total_fee(String settlement_total_fee) {
		this.settlement_total_fee = settlement_total_fee;
	}
	public String getCash_fee() {
		return cash_fee;
	}
	public void setCash_fee(String cash_fee) {
		this.cash_fee = cash_fee;
	}
	public String getTime_end() {
		return time_end;
	}
	public void setTime_end(String time_end) {
		this.time_end = time_end;
	}
	public String getTrade_state_desc() {
		return trade_state_desc;
	}
	public void setTrade_state_desc(String trade_state_desc) {
		this.trade_state_desc = trade_state_desc;
	}
	public String getTrade_type() {
		return trade_type;
	}
	public void setTrade_type(String trade_type) {
		this.trade_type = trade_type;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getReturn_code() {
		return return_code;
	}
	public void setReturn_code(String return_code) {
		this.return_code = return_code;
	}
	public String getReturn_msg() {
		return return_msg;
	}
	public void setReturn_msg(String return_msg) {
		this.return_msg = return_msg;
	}
	public String getIs_subscribe() {
		return is_subscribe;
	}
	public void setIs_subscribe(String is_subscribe) {
		this.is_subscribe = is_subscribe;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public String getTime_start() {
		return time_start;
	}
	public void setTime_start(String time_start) {
		this.time_start = time_start;
	}
	public String getTime_expire() {
		return time_expire;
	}
	public void setTime_expire(String time_expire) {
		this.time_expire = time_expire;
	}
	public String getGoods_tag() {
		return goods_tag;
	}
	public void setGoods_tag(String goods_tag) {
		this.goods_tag = goods_tag;
	}
	public String getAttach() {
		return attach;
	}
	public void setAttach(String attach) {
		this.attach = attach;
	}
}
