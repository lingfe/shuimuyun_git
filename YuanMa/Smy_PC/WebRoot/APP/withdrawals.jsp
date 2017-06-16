<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提现</title>
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.addBanl {
				position: relative;
				display: block;
				width: 100%;
				height: 0.4rem;
				font-size: 0.13rem;
				text-decoration: none;
				line-height: 0.4rem;
				color: #333;
				text-indent: 0.4rem;
				background: rgb(255,255,255);
				margin-top: 0.12rem;
			}
			.addBanl:before {
				position: absolute;
				top: 0;
				left: 20px;
				height: 0.4rem;
				width: 0.25rem;
				content: '+';
				color: #999;
				font-size: 0.25rem;
				text-indent: 0;
				line-height: 0.37rem;
			}
		</style>
	</head>
	<body>
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>提现</p>
		</header>
		
		<a href="javascript:void(0);" class="addBanl">添加银行卡</a>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>
