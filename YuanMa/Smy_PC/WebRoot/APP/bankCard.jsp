<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>银行卡</title>
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
			.bankList {
				width: 100%;
				height: auto;
				overflow: hidden;
				margin: 0;
			}
			.bankList_item {
				width: calc(100% - 40px);
				height: auto;
				overflow: hidden;
				box-sizing: border-box;
				border-radius: 5px;
				background-size: cover;
				padding: 0.1rem 20px;
				margin: 0 auto;
				margin-top: 0.1rem;
			}
			.bankList_item:nth-of-type(1) {
				background: url(<%=basePath%>APP/images/icon/bankbg1.png) no-repeat;
			}
			.bankList_item:nth-of-type(2) {
				background: url(<%=basePath%>APP/images/icon/bankbg2.png) no-repeat;
			}
			.bankList_item:nth-of-type(3) {
				background: url(<%=basePath%>APP/images/icon/bankbg3.jpg) no-repeat;
			}
			.bankList_item img {
				display: block;
				width: 0.32rem;
				height: auto;
				float: left;
			}
			.bankList_item_cont {
				position: relative;
				width: calc(100% - 0.4rem);
				height: auto;
				float: right;
			}
			.bankList_item_cont p {
				color: #fff;
				font-size: 0.11rem;
				padding-bottom: 0.01rem;
			}
			.bankList_item_cont p:nth-of-type(1) {
				font-size: 0.13rem;
			}
			.bankBtn {
				display: block;
				width: calc(100% - 40px);
				height: 0.36rem;
				color: #fff;
				font-size: 0.11rem;
				background: #418bc8;
				border-radius: 5px;
				border: none;
				outline: none;
				margin: 0 auto;
				margin-top: 0.4rem;
			}
			.bankBtn:active {
				opacity: 0.8;
			}
			.bankList_item_al {
				position: absolute;
				top: 50%;
				right: 20px;
				width: 18px;
				height: 18px;
				background: #fff;
				border-radius: 4px;
				margin-top: -9px;
			}
			.bankList_item_act {
				background: url(<%=basePath%>APP/images/icon/bannkTure.jpg) no-repeat;
				background-size: cover;
			}
		</style>
	</head>
	<body>
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>银行卡</p>
		</header>
		
		<div class="bankList">
			<div class="bankList_item">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/nylogin.png" width="100%" />
				<div class="bankList_item_cont">
					<p>中国农业银行</p>
					<p>储蓄卡</p>
					<p>*** *** *** 12345</p>
					<div class="bankList_item_al"></div>
				</div>
			</div>
			<div class="bankList_item">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/cnLOGIN.png" width="100%" />
				<div class="bankList_item_cont">
					<p>中国银行</p>
					<p>储蓄卡</p>
					<p>*** *** *** 1771</p>
					<div class="bankList_item_al"></div>
				</div>
			</div>
			<div class="bankList_item">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/jsLogin.png" width="100%" />
				<div class="bankList_item_cont">
					<p>中国建设银行</p>
					<p>储蓄卡</p>
					<p>*** *** *** 12345</p>
					<div class="bankList_item_al"></div>
				</div>
			</div>
		</div>
		<a href="javascript:void(0);" class="addBanl">添加银行卡</a>
		<button class="bankBtn">立即提现</button>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script>
			$(function() {
				$(".bankList_item_al").click(function() {
					if($(this).hasClass("bankList_item_act")) {
						$(this).removeClass("bankList_item_act");
					}
					else {
						$(this).addClass("bankList_item_act");
						$(this).parent().parent().siblings().find(".bankList_item_al").removeClass("bankList_item_act");
					}
					
				})
			})
		</script>
	</body>
</html>
