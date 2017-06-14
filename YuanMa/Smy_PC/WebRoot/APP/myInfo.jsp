<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<body>
		<header class="commHeader">
			<h6>我的</h6>
			<a class="commHeader_r" href="javascript:void(0);">
				<p class="commHeader_r_font">设置</p>
			</a>
		</header>
		
		<div class="myInfo_top">
			<img class="myInfo_user" title="" alt="" src="<%=basePath%>APP/images/myUser.png" width="100%" />
			<div class="myInfo_lreg">
				${sessionScope.login!=null?'欢迎:':''}
				<a	href="RequestMappingUtil/requestNUll/APP/login">${sessionScope.login!=null?'':'登录'}</a>
				<a	href="RequestMappingUtil/requestNUll/APP/register">${sessionScope.login!=null?'':'注册'}</a>
				${sessionScope.login!=null?sessionScope.login.kuaikeName:''}
			</div>
			<p class="myInfo_info">下单、抢单从这里开始——水木云物流配送服务</p>
		</div>
		
		<nav class="myInfo_nav">
			<a href="RequestMappingUtil/requestNUll/APP/myOrder">
				<span>0</span>
				<p>待接单</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myOrder">
				<span>0</span>
				<p>待取货</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myOrder">
				<span>0</span>
				<p>正在派送</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myOrder">
				<span>0</span>
				<p>代付款</p>
			</a>
		</nav>
		
		<div class="myInfo_list">
			<a href="RequestMappingUtil/requestNUll/APP/myOrder">
				我的订单
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_1.png" width="100%" />
			</a>
			<a href="javascript:void(0);">
				我的钱包
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_2.png" width="100%" />
			</a>
		</div>
		
		<div class="myInfo_list">
			<a href="javascript:void(0);">
				我的地址
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_3.png" width="100%" />
			</a>
		</div>
		
		<div class="myInfo_list">
			<a href="RequestMappingUtil/requestNUll/APP/register">
				快客申请
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_4.png" width="100%" />
			</a>
			<a href="javascript:void(0);">
				联系客服
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_5.png" width="100%" />
			</a>
			<a href="javascript:void(0);">
				服务热线
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_6.png" width="100%" />
			</a>
			<a href="javascript:void(0);">
				意见反馈
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_7.png" width="100%" />
			</a>
			<a href="javascript:void(0);">
				使用帮助
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_8.png" width="100%" />
			</a>
			<a href="javascript:void(0);">
				服务协议
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_9.png" width="100%" />
			</a>
			<a href="javascript:void(0);">
				关于我们
				<img title="" alt="" src="<%=basePath%>APP/images/icon/myInfo_10.png" width="100%" />
			</a>
		</div>
		<div class="myInfo_zw"></div>
		
		<!--底部-->
		<footer class="footerMenu">
			<a href="RequestMappingUtil/requestNUll/APP/index">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/home.png" width="100%"/>
				<p class="">首页</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/grabASingle">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/single.png" width="100%"/>
				<p class="">抢单</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/placeAnOrder">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/order.png" width="100%"/>
				<p class="">下单</p>
			</a>
			<a href="http://www.smuyun.com">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/mall.png" width="100%"/>
				<p class="">商城</p>
			</a>
			<a class="active" href="RequestMappingUtil/requestNUll/APP/myInfo">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/personal.png" width="100%"/>
				<p class="">我的</p>
			</a>
		</footer>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>
