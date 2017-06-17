<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<title>设置_密码</title>
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<style type="text/css">
		.feed{
			width: 100%;
			margin-top: .5rem;
			background: white;
		}
		.feed a{
			display: block;
			width: 100%;
			height: .4rem;
			border-bottom: solid 1px #eee;
			color: #333;
			position: relative;
		}
		.feed a span{
			display: inline-block;
			position: absolute;
			top: .13rem;
			left: 10px;
		}
		.feed a img{
			position: absolute;
			right: .1rem;
			top: .1rem;
		}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>密码设置</h6>
		</header>
		<form>
		<!--【头部】end-->
		<div class="feed">
<!-- 			<a href="RequestMappingUtil/requestNUll/APP/modifyPaymentPassword"> -->
<!-- 				<span>重置支付密码</span> -->
<%-- 				<img src="<%=basePath%>APP/images/icon/consignee_right.png"width="10" /> --%>
<!-- 			</a> -->
			<a href="RequestMappingUtil/requestNUll/APP/modifyPassword">
				<span>重置登录密码</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png"width="10" />
			</a>
		</div>
		</form>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
	</body>

</html>
