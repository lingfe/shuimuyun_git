<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>扫码支付</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/smyMobile.css" />
	</head>
	<style>
	.qrcode{
		width:1.5rem;
		height:1.5rem;
		margin:auto;
		margin-top:1rem;
		overflow:hidden;
		background: white;
	}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>扫码支付</p>
		</header>
		<!--【头部】end-->
		<div class="qrcode">
			<img src="<%=basePath %>APP/images/icon/qrcode.png"width="100%" />
		</div>
		
		<script type="text/javascript" src="<%=basePath %>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/smyMobile.js" ></script>
		
	</body>
</html>
