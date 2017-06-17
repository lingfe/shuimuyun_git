<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>使用帮助</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.anqCont {
				width: 100%;
				height: auto;
				overflow: hidden;
				box-sizing: border-box;
				padding: 20px 20px;
				margin-top:.4rem;
			}
			.anqCont_item {
				width: 100%;
				height: auto;
				overflow: hidden;
				margin-bottom: 0.15rem;
			}
			.anqCont_item h4 {
				color: #333;
				font-size: 0.12rem;
			}
			.anqCont_item p {
				color: 666;
				font-size: 0.11rem;
				padding-top: 0.05rem;
			}
		</style>
	</head>
	<body style="background: #fff;">
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>使用帮助</p>
		</header>
		<!--【头部】end-->
		
		<div class="anqCont">
			<div class="anqCont_item">
				<h4>目前水木云快送开通了哪些城市？</h4>
				<p>水木云快送作为贵州本土众包第一服务平台，目前开通贵阳本市,贵州省省内其余城市将陆续开放，敬请期待。</p>
				<p>如何下单？</p>
				<p>方式一：“水木云快送”手机客户端-帮我送，填写订单信息即可成功下单。</p>
				<p>方式二：关注水木云快送微信公众号，选择“我要下单”进行发布。</p>
				<p>方式三：进入官网www.smuyun.com，点击【在线发货】-【个人发货】注册登录后可以进行发布。</p>
				<p>物品价值不得＞5000元人民币</p>
				<p>区域限制</p>
				<p>中华人民共和国已开通区域禁止发布有关涉及各种弓、弩、金属刀、剑制品（包含工艺品）等管制刀具的任务信息</p>
			</div>
			<div class="anqCont_item">
				<h4>想先了解订单的运费和时效多少怎么查询？</h4>
				<p>我们货物的运送采用的是直提直送，正常情况3公里60分钟送达，详细运费和时效可在信息输入完整后显示。</p>
			</div>
			<div class="anqCont_item">
				<h4>水木云快送安全吗？</h4>
				<p>水木云快送作为贵阳本土众包第一服务平台，我们货物的运送采用的是直提直送，而且接单的自由快递人都是经过实名认证严格审核的社会热心人士，自由快递人在送货途中均购买了物品和人身保险，您可以全程在线跟踪您物品的位置，贵重货物都会在接单时冻结自由快递人信用卡或者银行卡中等值金额。</p>
			</div>
			<div class="anqCont_item">
				<h4>发货遇到问题如何联系客服？</h4>
				<p>您可以拨打我们的客服热线：XXXXXX（7*24小时）、通过官网在线客服或关注“水木云快送”微信公众号进行反馈，客服全天为您守候。</p>
			</div>
			<div class="anqCont_item">
				<h4>取消订单的钱怎么退回？</h4>
				<p>（1）	微信支付的运费退回时间：具体时效以微信支付退款时效为准（订单详细界面有退款处理进度）。</p>
				<p>（2）	水木云快送账户余额支付运费：及时到账，原路退回。</p>
			</div>
			<div class="anqCont_item">
				<h4>如何充值？</h4>
				<p>进入手机端后点击我的-我的余额-充值，您可以选择微信支付、支付宝支付、银行卡支付。</p>
			</div>
			<div class="anqCont_item">
				<h4>充值的钱如何退款？</h4>
				<p>若要申请退款，可致电XXXXXXXX，赠送金平台会清除，您需要自行承担银行收取充值以及退款的手续费。</p>
			</div>
			<div class="anqCont_item">
				<h4>如果快递人把我的东西损坏了怎么办？</h4>
				<p>您可以及时致电客服热线XXXXXX反馈相关情况，理赔人员会及时核实，如果为自由快递人责任，平台会积极协调自由快递人赔付，需要您提供机打发票/销售凭证/盖章收据/小票给自由快递人。</p>
			</div>
			<div class="anqCont_item">
				<h4>通过平台发单能开发票吗？</h4>
				<p>（1）订单发票：在订单完成后发货账号致电客服热线XXXXXXX进行申请。</p>
				<p>（2）充值发票：可在充值后用充值账号致电客服热线XXXXXXX进行申请。</p>
				<p>上述申请均会在每个月的5号进行统一核算（节假日顺延），7个工作日内开具完成并寄出，5号（含当天）以后提交的信息，顺延至下月核算开具；发票开具金额200元及以上免运费。</p>
			</div>
			<div class="anqCont_item">
				<h4>如何申请成为自由快递人？</h4>
				<p>下载自由快递人端的方式：</p>
				<p>安卓：安卓市场搜索“自由快递人”或至“水木云快送”官网下载。</p>
				<p>IOS：至app store搜索“自由快递人”下载。</p>
			</div>
			<div class="anqCont_item">
				<h4>自由快递人加入条件：</h4>
				<p>1）年龄：18-55周岁（以身份证为准）。</p>
				<p>2）身体健康：行动自如、无传染疾病且心智健康，能完整操作手机APP、语言表达自如、无明显听觉障碍。</p>
				<p>3）手机：带GPS的智能手机(Android4.0及以上/IOS7.0及以上系统）、能匹配水木云快送APP最新版本、手机通话和操作正常。</p>
				<p>4）熟悉路线：指对本地（特别是市中心）道路交通熟悉；对交通不熟悉可以熟练的使用百度、高德等地图做导航且找到指定地点。</p>
				<p>5）有安全意识：学习和熟悉安全管理条例，在工作过程中具备安全意识。</p>
				<p>6）懂社交礼仪，有服务意识，责任感强，时间观念强，言谈举止得体，仪容仪表好。</p>
			</div>
		</div>
		
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>
