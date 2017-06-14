<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=basePath%>css/style.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="<%=basePath%>js/jquery.js"></script>
	
	<style type="text/css">
		#text_center{
			width: 800px;
			height: 400px;
			margin-left: 400px;
			margin-top: 150px;
		}
	
	
	</style>
<link rel="stylesheet" type="text/css" href="<%=basePath%>layer/mobile/need/layer.css" />
<script src="<%=basePath%>layer/layer.js" type="text/javascript" charset="utf-8"></script>

</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
		</ul>
	</div>

	<div class="mainindex">


		<div class="welinfo">
			<span><img src="<%=basePath%>images/sun.png"
				alt="天气" /></span> <b>${login.uname}早上好，欢迎来访信息管理系统</b><a
				href="#">帐号设置</a>
		</div>
		<div id="text_center">
			<h1 align="center" style="font-size: 50;color: #000000;">Welcome to everyone distribution background management system</h1>
			<h1 align="center" style="font-size: 50;color: blue;">欢迎来到人人配送后台管理系统</h1>
		
		</div>
		
	</div>
</body>

</html>
