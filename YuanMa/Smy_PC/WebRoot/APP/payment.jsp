<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>支付页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/smyMobile.css" />
		<style>
			.paymentTop {
				width: 100%;
				height: 0.4rem;
				background: rgb(255,255,255);
				box-sizing: border-box;
				padding: 0 20px;
				margin-top: 0.1rem;
			}
			.paymentTop_l {
				width: 0.7rem;
				height: 0.4rem;
				line-height: 0.4rem;
				color: #999;
				font-size: 0.13rem;
				float: left;
			}
			.paymentTop input {
				display: block;
				width: calc(100% - 0.8rem);
				height: 0.4rem;
				line-height: 0.4rem;
				color: #333;
				font-size: 0.14rem;
				border: 0;
				outline: none;
				background: none;
				float: right;
			}
			.paymentList {
				position: relative;
				overflow: hidden;
				width: 100%;
				height: 1.2rem;
				background: rgb(255,255,255);
				font-size: 0.12rem;
				margin-top: 0.1rem;
				margin-left: 0;
			}
			.paymentList_item {
				position: relative;
				width: 100%;
				height: 0.4rem;
				overflow: hidden;
				line-height: 0.4rem;
				color: #666;
				font-size: 0.13rem;
				border-bottom: 1px solid #eee;
				box-sizing: border-box;
				padding: 0 20px;
			}
			.paymentList_item img {
				vertical-align: middle;
				margin-right: 12px;
			}
			.paymentList_position {
				position: absolute;
				top: 50%;
				right: 20px;
				width: 14px;
				height: 14px;
				text-align: center;
				line-height: 12px;
				border-radius: 50%;
				border: 1px solid #afafaf;
				background: rgb(255,255,255);
				margin-top: -7px;
			}
			.paymentList_position span {
				display: none;
				width: 10px;
				height: 10px;
				background: rgb(51,51,51);
				border-radius: 50%;
				margin: 2px;
			}
			.paymentBtn {
				display: block;
				width: 80%;
				height: 0.34rem;
				color: #fff;
				font-size: 0.13rem;
				text-align: center;
				line-height: 0.34rem;
				border: none;
				outline: none;
				border-radius: 5px;
				background: rgb(65,139,230);
				margin: 0 auto;
				margin-top: 0.7rem;
			}
			.payTipts {
				position: absolute;
				top: 50%;
				left: 50%;
				width: 1.2rem;
				height: 0.3rem;
				color: #fff;
				font-size: 0.13rem;
				text-align: center;
				line-height: 0.3rem;
				background: rgba(0,0,0,.6);
				border-radius: 5px;
				transform: translate(0,-0.2rem);
				margin-left: -0.6rem;
				margin-top: -0.15rem;
				z-index: 999;
			}
			.payTipts_act {
				transition: .8s;
				transform: translate(0,0);
			}
			.balModal {
				display: none;
				position: fixed;
				top: 0;
				left: 0;
				bottom: 0;
				right: 0;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.8);
			}
			.balModal_po {
				position: relative;
				width: 100%;
				height: 100%;
			}
			.balModal_cont {
				display: none;
				position: absolute;
				left: 0;
				right: 0;
				bottom: 0;
				width: 100%;
				height: auto;
				overflow: hidden;
				background: rgb(255,255,255);
			}
			.balModal_contNumer {
				width: 100%;
				height: auto;
				overflow: hidden;
				border-top: 1px solid #eee;
			}
			.balModal_contNumer a {
				display: block;
				width: 33.3333%;
				height: 32px;
				color: #333;
				text-decoration: none;
				font-size: 14px;
				font-style: italic;
				line-height: 32px;
				text-align: center;
				box-sizing: border-box;
				border: #eee solid 1px;
				border-top: 0;
				border-left: 0;
				float: left;
			}
			.balModal_contNumer a:nth-of-type(10),
			.balModal_contNumer a:nth-of-type(12) {
				background: rgb(238,238,238);
			}
			.balModal_contNumer a img {
				display: inline-block;
				vertical-align: middle;
				margin-top: -1px;
			}
			.balModal_title {
				position: relative;
				width: 100%;
				height: 38px;
				text-align: center;
				line-height: 38px;
				font-size: 15px;
				color: #333;
			}
			.balModal_title:before {
				position: absolute;
				top: 50%;
				right: 20px;
				width: 18px;
				height: 18px;
				content: "";
				background: url(<%=basePath %>APP/images/icon/payClose.png) no-repeat;
				background-size: cover;
				margin-top: -9px;
			}
			.balModal_contPwd {
				width: calc(100% - 40px);
				height: 40px;
				overflow: hidden;
				border: #999 solid 1px;
				border-radius: 5px;
				margin: 10px auto;
			}
			.balModal_contPwd input {
				display: block;
				width: 16.6666%;
				height: 40px;
				color: #333;
				font-size: 13px;
				text-align: center;
				line-height: 40px;
				outline: none;
				background: none;
				border: 0;
				box-sizing: border-box;
				border-right: 1px solid #999;
				float: left;
			}
			.balModal_contPwd .bg {
				background: url(<%=basePath %>APP/images/icon/pasword.png) no-repeat center;
				background-size:22% ;
			}
			.balModal_contPwd>input:last-child {
				border: none;
			}
			.balModal_contLink {
				display: block;
				width: 70px;
				height: 20px;
				color: #1789d5;
				text-align: right;
				text-decoration: none;
				font-size: 12px;
				float: right;
				margin-right: 20px;
				margin-bottom: 6px;
			}
			.balModal_contBal {
				position: relative;
				width: 100%;
				height: 40px;
				color: #333;
				font-size: 15px;
				text-indent: 50px;
				line-height: 40px;
			}
			.balModal_contBal:before {
				position: absolute;
				top: 50%;
				left: 20px;
				width: 18px;
				height: 18px;
				content: "";
				background: url(<%=basePath %>APP/images/icon/balance.png) no-repeat;
				background-size: cover;
				margin-top: -10px;
			}
			.balModal_contBal span {
				color: #999;
				font-size: 12px;
				margin-left: 2px;
			}
			.balModal_contBal span i {
				margin-right: 4px;
			}
			
			
			
			.jzCont {
				position: fixed;
				top: 50%;
				left: 50%;
				width: 60px;
				height: 60px;
				background: rgba(0,0,0,.8);
				border-radius: 5px;
				margin-top: -30px;
				margin-left: -30px;
			}
			.jzCont span {
				display: block;
				width: 20px;
				height: 20px;
				background: url(<%=basePath %>APP/images/icon/loading.gif) no-repeat;
				background-size: cover;
				margin: 20px auto;
			}
		</style>
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="#">
				<img title="" alt="" src="<%=basePath %>APP/images/icon/arow_left.png" />
			</a>
			<h6>付款</h6>
		</header>
		<!--【头部】end-->
		
		<div class="paymentTop">
			<div class="paymentTop_l">应付金额：</div>
			<input type="text" value="￥12" />
		</div>
		
		<div class="paymentList">
			<div class="paymentList_item">
				<img title="" alt="" src="<%=basePath %>APP/images/icon/balance.png" width="25" /> 余额
				<div class="paymentList_position" id="balaceSelect">
					<span></span>
				</div>
			</div>
			<div class="paymentList_item">
				<img title="" alt="" src="<%=basePath %>APP/images/icon/payment.png" width="25" /> 支付宝
				<div class="paymentList_position" id="paymentSelect">
					<span></span>
				</div>
			</div>
			<div class="paymentList_item">
				<img title="" alt="" src="<%=basePath %>APP/images/icon/wx.png" width="25" /> 微信
				<div class="paymentList_position" id="wxSelect">
					<span></span>
				</div>
			</div>
		</div>
		
		<input class="paymentBtn" id="paymentBtn" type="button" value="立即支付" />
		
		<!--【余额支付弹窗】-->
		<div class="balModal">
			<div class="balModal_po">
				<div class="balModal_cont">
					<div class="balModal_title">请输入密码</div>
					<div class="balModal_contBal">
						账户余额
						<span>可用余额：<i>35.60</i>元</span>
					</div>
					<div class="balModal_contPwd">
						<input type="password" value="">
						<input type="password" value="">
						<input type="password" value="">
						<input type="password" value="">
						<input type="password" value="">
						<input type="password" value="">
					</div>
					<a class="balModal_contLink" href="#">忘记密码？</a>
					<div class="balModal_contNumer">
						<a class="num" href="javascript:;">1</a>
						<a class="num" href="javascript:;">2</a>
						<a class="num" href="javascript:;">3</a>
						<a class="num" href="javascript:;">4</a>
						<a class="num" href="javascript:;">5</a>
						<a class="num" href="javascript:;">6</a>
						<a class="num" href="javascript:;">7</a>
						<a class="num" href="javascript:;">8</a>
						<a class="num" href="javascript:;">9</a>
						<a href="javascript:;"></a>
						<a class="num" href="javascript:;">0</a>
						<a id="payDel" href="javascript:;">
							<img title="" alt="" src="<%=basePath %>APP/images/icon/payDel.png" width="22"/>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--【余额支付弹窗】end-->
		
		<script type="text/javascript" src="<%=basePath %>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/smyMobile.js" ></script>
		<script>
			$(function() {
				$(".paymentList_position").click(function() {
					//验证审核
					if("${login.kuaikeStatus}"==0){
						//提示
					    layer.open({
					    	content: '您的身份还木有通过审核！',
					    	skin: 'msg',
					    	time: 2
					  	});
					}
					if($(this).find("span").is(":hidden")) {
						$(this).find("span").css("display","block");
						$(this).parent().siblings().find("span").css("display","none");
					}
					else {
						$(this).find("span").css("display","none");
						//$(this).hide().parent().siblings().find(".paymentList_position span").hide();
					}
				})
				
				$("#paymentBtn").click(function() {
					//验证审核
					if("${login.kuaikeStatus}"==0){
						//提示
					    layer.open({
					    	content: '您的身份还木有通过审核！',
					    	skin: 'msg',
					    	time: 2
					  	});
					  	return false;
					}
					if($("#balaceSelect span").is(":hidden") && $("#paymentSelect span").is(":hidden") && $("#wxSelect span").is(":hidden")) {
						//var tipsFont = "请选择支付方式！";
						//var payTipts = "<div class='payTipts'>"+tipsFont+"</div>";
						//$(".paymentList").append(payTipts);
						layer.open({
					    	content: '请选择支付方式',
					    	skin: 'msg',
					    	time: 2
					  	});
						return false;
						
					}
					else if(!($("#balaceSelect span").is(":hidden"))) {
						//出现弹窗
						$(".balModal").show();
						$(".balModal_cont").slideDown(500);
					}
					else if(!($("#paymentSelect span").is(":hidden"))) {
						alert("支付宝支付")
					}
					else if(!($("#wxSelect span").is(":hidden"))) {
						alert("微信支付")
					}
				})
				
				
				//模拟输入6位密码
				var i = 0;
				$(".balModal_contNumer .num").click(function() {
					var len = $(".balModal_contPwd input").length;
					//var _val = $(".balModal_contPwd input").index();
					//var _this = $(this).index();
					var _value = Number($(this).html());
					i++;
					if(i <= len) {
						$(".balModal_contPwd input").eq(i-1).val(_value);
						$(".balModal_contPwd input").eq(i-1).addClass("bg");
						//alert(i)
					}
					if(i > len - 1) {
						$(".balModal_contPwd input").eq(i).val("");
						$(".balModal_contPwd input").eq(i).removeClass("bg");
						//alert("密码超过6位了")
						var jz = "<div class='jzCont'><span><span></div>";//创建加载元素
	   				 	$("body").append(jz);//把元素加载body
						setTimeout(function(){
							$(".jzCont").remove();
							window.location.href="payOk.html";
						},800);
					 }
					
				})
				
				$("#payDel").click(function() {
					//验证审核
					if("${login.kuaikeStatus}"==0){
						//提示
					    layer.open({
					    	content: '您的身份还木有通过审核！',
					    	skin: 'msg',
					    	time: 2
					  	});
					  	return false;
					}
					if(i > 0) {
						i--;
						$(".balModal_contPwd input").eq(i).val("");
						$(".balModal_contPwd input").eq(i).removeClass("bg");
						i == 0;
					}
					alert(i);
				});
				
				//关闭弹窗
				$(".balModal_cont").css("display","none")
				$(".balModal_title").click(function() {
					//验证审核
					if("${login.kuaikeStatus}"==0){
						//提示
					    layer.open({
					    	content: '您的身份还木有通过审核！',
					    	skin: 'msg',
					    	time: 2
					  	});
					  	return false;
					}
					$(".balModal_cont").slideUp(500);
					setTimeout(function() {
						window.location.reload();
						$(".balModal").hide();
					},500)
				})
			})
		</script>
	</body>
</html>
