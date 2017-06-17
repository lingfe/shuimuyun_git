package com.yyf.model;

public class R_zhiordertab {
	private String nonce_str = "";//随机字符串  长度要求在32位以内
	private String sign = "";//签名,默认md5
	private String body = "";//商品描述
	private String out_trade_no = "";//商户订单号  要求32个字符内
	private String total_fee = ""; //标价金额
	private String spbill_create_ip = "";//终端IP
	private String urlCode = "";//二维码链接
	private String result_code = "";//业务结果
	private String err_code = "";//错误代码
	private String err_code_des = "";//错误代码描述
	private String transaction_id = "";//微信订单号
	private String trade_state = "";//交易状态   SUCCESS—支付成功  REFUND—转入退款  NOTPAY—未支付  CLOSED—已关闭  REVOKED—已撤销（刷卡支付）  USERPAYING--用户支付中   	PAYERROR--支付失败(其他原因，如银行返回失败)
	private String bank_type = "";//银行类型，采用字符串类型的银行标识
	private String settlement_total_fee = "";//当订单使用了免充值型优惠券后返回该参数，应结订单金额=订单金额-免充值优惠券金额。
	private String cash_fee = "";//现金支付金额
	private String time_end = "";//支付完成时间
	private String trade_state_desc = "";//订单状态   对当前查询订单状态的描述和下一步操作的指引
	private String trade_type = "";//交易类型   取值如下：JSAPI，NATIVE，APP等
	private String product_id = "";//商品ID trade_type=NATIVE时（即扫码支付），此参数必传。此参数为二维码中包含的商品ID，商户自行定义。
	private String return_code = "";//返回状态码   SUCCESS/FAIL
	private String return_msg = "";//返回信息
	
	private String is_subscribe = "";//是否关注公众账号  Y  N
    private String limit_pay = "";//指定支付方式  可不传   上传此参数no_credit--可限制用户不能使用信用卡支付
    private String openid = "";//用户标识   可不传   trade_type=JSAPI时（即公众号支付），此参数必传，此参数为微信用户在商户对应appid下的唯一标识。
    private String time_start = "";//交易起始时间   可不传
    private String time_expire  = "";// 交易结束时间   可不传
    private String goods_tag = "";//订单优惠标记   订单优惠标记，使用代金券或立减优惠功能时需要的参数    其他情况不传
    
	private String device_info = "";//设备号   可以为终端设备号(门店号或收银设备ID)，PC网页或公众号内支付可以传"WEB"   可不传
	private String sign_type = "";//签名类型    签名类型，默认为MD5，支持HMAC-SHA256和MD5。    可不传
	private String attach = "";//附加数据    附加数据，在查询API和支付通知中原样返回，可作为自定义参数使用    可不传
	private String fee_type = "";//标价币种   符合ISO 4217标准的三位字母代码，默认人民币：CNY    可不传
	
}
