<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>意见反馈</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<style type="text/css">
		.feed{
			width: 100%;
			margin-top: .1rem;
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
			<h6>意见反馈</h6>
		</header>
		<form>
		<!--【头部】end-->
		<div class="courier_firsttit">
			猜你可能有的问题
		</div>
		<div class="feed">
			<a>
				<span>目前水木云快送开通了哪些城市？</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png" width="10" />
			</a>
			<a>
				<span>想先了解订单的运费和时效多少怎么查询？</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png" width="10" />
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/serviceHelp">
				<span>水木云快送安全吗？</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png" width="10" />
			</a>
			<a>
				<span>发货遇到问题如何联系客服？</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png" width="10" />
			</a>
		</div>
		<div class="courier_last">
			如你有意见或建议，请告知我们让我们改进
		</div>
		<div class="feed">
			<a href="RequestMappingUtil/requestNUll/APP/feedback_neiro">
				<span>意见反馈</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png" width="10" />
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
