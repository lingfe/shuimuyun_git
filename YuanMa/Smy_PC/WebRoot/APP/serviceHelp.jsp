<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的客服-帮助</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<style type="text/css">
		.ser{
			width: 95%;
			height: 90%;
			position: absolute;
			background: white;
			margin-top: .5rem;
			margin-left: 3%;
		}
		.ser p{
			width: 90%;
			margin: auto;
			font-size: .14rem;
			line-height: .3rem;
			color: #333;
		}
		.we{
			margin-top: .3rem;
			margin-left: .2rem;
			color: #333;
		}
		.ser a{
			display: block;
			margin-left: .2rem;
			color: #5494cc;
		}
		.zan{
			margin-top: .2rem;
			padding-top: .3rem;
			border-top:1px solid #eee ;
			font-size: .10rem;
			color: #999;
			position: relative;
			box-sizing: border-box;
		}
		.zan span{
			display: inline-block;
			position: absolute;
		}
		.zan_1{
			left: .2rem;
		}
		.zan_2{
			right: .8rem;
		}
		.zan_3{
			right: .3rem;
		}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>我的客服-帮助</h6>
		</header>
		<!--【头部】end-->
		<div class="ser">
			<p>水木云快送作为贵阳本土众包第一服务平台，我们货物的运送采用的是直提直送，而且接单的自由快递人都是经过实名认证严格审核的社会热心人士，自由快递人在送货途中均购买了物品和人身保险，您可以全程在线跟踪您物品的位置，贵重货物都会在接单时冻结自由快递人信用卡或者银行卡中等值金额。</p>
			<div class="we">相关问题</div>
			<a>发货遇到问题如何联系客服？</a>
			<a>取消订单的钱怎么退回？</a>
			<a>充值的钱如何退款？</a>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
	</body>

</html>
