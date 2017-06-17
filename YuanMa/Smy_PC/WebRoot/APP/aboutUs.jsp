<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>关于我们</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.abTopImg {
				display: block;
				width: 1rem;
				height: auto;
				margin: 0.15rem auto;
				margin-bottom: 0.06rem;
			}
			.abVbis {
				text-align: center;
				font-size: 0.12rem;
				color: #418bc8;
			}
			.abCont {
				width: 100%;
				height: auto;
				overflow: hidden;
				background: rgb(255,255,255);
				margin-top: 0.15rem;
			}
			.abCont_item {
				display: block;
				position: relative;
				width: 100%;
				height: 0.4rem;
				line-height: 0.4rem;
				text-decoration: none;
				color: #666;
				font-size: 0.12rem;
				box-sizing: border-box;
				border-bottom: 1px solid #eee;
				padding: 0 20px;
			}
			.abCont_item:before {
				position: absolute;
				top: 50%;
				right: 20px;
				content: '';
				width: 10px;
				height: 18px;
				background: url(<%=basePath%>APP/images/icon/consignee_right.png) no-repeat;
				background-size: cover;
				margin-top: -8px;
			}
			.abCont_item span {
				float: right;
				font-size: 0.1rem;
				margin-right: 15px;
			}
		</style>
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>关于我们</p>
		</header>
		<!--【头部】end-->
		
		<img class="abTopImg" title="" alt="" src="<%=basePath%>APP/images/icon/logo.png" width="100%">
		<p class="abVbis">人人配送v1.0</p>
		<div class="abCont">
			<a href="javascript:void(0);" class="abCont_item">
				检查更新
				<span>当前已是最新版本</span>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/aboutUs_FunctionIntroduction" class="abCont_item">功能介绍</a>
			<a href="RequestMappingUtil/requestNUll/APP/aboutUs_SecurityReminder" class="abCont_item">安全提醒</a>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>
