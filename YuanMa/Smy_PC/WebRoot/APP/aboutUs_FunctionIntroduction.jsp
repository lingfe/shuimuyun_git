<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>关于我们_功能介绍</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.aboutTop {
				width: 100%;
				height: 0.5rem;
				color: #418bc8;
				font-size: 0.16rem;
				line-height: 0.5rem;
				text-indent: 20px;
				background: rgb(255,255,255);
				margin-top: 0.5rem;
			}
			.aboutCont {
				width: 100%;
				height: auto;
				overflow: hidden;
				padding: 0.1rem 20px;
				box-sizing: border-box;
				background: rgb(255,255,255);
				margin-top: 0.1rem;
			}
			.aboutCont p {
				color: #333;
				font-size: 0.14rem;
				line-height: 0.24rem;
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
		
		<div class="aboutTop">人人配送v1.0版本主要功能</div>
		
		<div class="aboutCont">
			<p>订单多：平台海量订单，就近优选推送;</p>
			<p>赚钱快：路途短，单价高，补贴丰厚；</p>
			<p>超自由：想接就接，我的时间我做主；</p>
			<p>贼安全：全程投保，安全有保障；</p>
			<p>类型多：订单随心选，告别单一快递模式。</p>
		</div>
		
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>

