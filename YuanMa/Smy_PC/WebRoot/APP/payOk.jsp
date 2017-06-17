<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>付款成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/smyMobile.css" />
	<style>
		.czcg_img{
			display: block;
			width: 0.6rem;
			height: auto;
			margin: 0 auto;
			margin-top: 0.7rem;
			margin-bottom: 0.05rem;
		}
		.czcg_p{
			text-align: center;
			font-size: .17rem;
			font-weight: 700;
			padding-bottom: .4rem;
		}
		.czcg_text{
			font-size: .15rem;	
			border-top: solid 1px #eee;
		}
		.czcg_text_div{
			height: .45rem;
			line-height: .45rem;
			border-bottom: solid 1px #eee;
		}
		.czcg_text_div span:first-of-type{
			color: #999;
			margin-left: 20px;
		}
		.czcg_text_div span:last-of-type{
			color: #333;
			float: right;
			margin-right: 20px;
		}
		.czcg_btn{
			display: block;
			width: 2.5rem;
			margin: auto;
			height: .4rem;
			background: #1aac19;
			border: none;
			border-radius: 5px;
			line-height: 0.4rem;
			outline: none;
			color: #fff;
			font-size: .15rem;
			margin-top: .5rem;
		}
		.czcg_btn:active {
			opacity: 0.8;
		}
	</style>

  </head>
  
  <body>
  	<body style="background: #fff; width: 100%; height: 100%;position: absolute;">
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="#">
				<img title="" alt="" src="<%=basePath %>APP/images/icon/arow_left.png" />
			</a>
			<p>充值成功</p>
		</header>
		<!--内容-->
		<img class="czcg_img" src="APP/images/icon/czcg.png" width="100%" />
		<p class="czcg_p">充值成功</p>
		<div class="czcg_text">
			<div class="czcg_text_div">
				<span>银行卡</span>
				<span>农业银行 尾号1179</span>
			</div>
			<div class="czcg_text_div">
				<span>金额</span>
				<span>￥0.01</span>
			</div>
		</div>
		<button class="czcg_btn">完成</button>
    
    <script type="text/javascript" src="<%=basePath %>APP/js/smyMobile.js" ></script>
  </body>
</html>
