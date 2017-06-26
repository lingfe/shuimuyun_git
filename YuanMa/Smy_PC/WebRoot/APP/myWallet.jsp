<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的钱包</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
			<link rel="stylesheet" href="<%=basePath %>APP/css/layer.css" />
		<script type="text/javascript" src="<%=basePath %>APP/js/layer.js"></script>
	
	
		<style>
			.wallettop {
				position: relative;
				width: 100%;
				height: 0.4rem;
				color: #999;
				font-size: 0.13rem;
				text-indent: 20px;
				line-height: 0.4rem;
				margin-top: 0.4rem;
			}
			.wallettop img {
				position: absolute;
				top: 50%;
				right: 20px;
				margin-top: -7px;
			}
			.walletCont {
				width: 100%;
				height: auto;
				overflow: hidden;
				background: rgb(255,255,255);
				padding: 0.1rem 0;
			}
			.walletCont_item {
				width: 50%;
				height: auto;
				overflow: hidden;
				box-sizing: border-box;
				float: left;
				padding-top: 0.04rem;
			}
			.walletCont_item:first-child {
				border-right: 1px solid #eee;
			}
			.walletCont_item_title {
				position: relative;
				width: 100%;
				height: 0.34rem;
				color: #333;
				font-size: 0.14rem;
				line-height: 0.34rem;
				text-indent: 0.4rem;
			}
			.walletCont_item_title:before {
				position: absolute;
				top: 50%;
				left: 20px;
				content: '';
				width: 20px;
				height: 20px;
				background: url(<%=basePath%>APP/images/icon/balance.png) no-repeat;
				background-size: cover;
				margin-top: -11px;
			}
			.walletCont_item_cont {
				width: 100%;
				height: auto;
				font-size: 0.18rem;
				font-weight: 700;
				color: #418bc8;
				text-align: center;
			}
			.walletBtn {
				display: block;
				width: 80%;
				height: 0.24rem;
				border: none;
				outline: none;
				background: rgb(65,139,200);
				border-radius: 5px;
				color: #fff;
				font-size: 0.13rem;
				margin: 0 auto;
				margin-bottom: 0.08rem;
			}
			.walletBtn a {
				color: #fff;
				text-decoration: none;
			}
			.walletBtn:active {
				opacity: 0.8;
			}
			.walletBtn:nth-of-type(2) {
				background: #77c841;
			}
			.walletYj {
				margin-top: 0.12rem;
			}
		</style>
	</head>
	<body>
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>我的钱包</p>
			<a class="commHeader_r" href="RequestMappingUtil/requestNUll/APP/bankCard">
				<p class="commHeader_r_font">银行卡</p>
			</a>
		</header>
		
		<div class="wallettop">
			押金200以上每周三可提现
			<img title="" alt="" src="<%=basePath%>APP/images/icon/wallettop.png" height="14" />
		</div>
		
		<div class="walletCont">
			<div class="walletCont_item">
				<div class="walletCont_item_title">账号余额（元）</div>
				<div class="walletCont_item_cont"><i id="ba"></i></div>
			</div>
			<div class="walletCont_item">
				<button class="walletBtn">提现</button>
				<button class="walletBtn"><a href="RequestMappingUtil/requestNUll/APP/myWallet_Recharge_to">充值</a></button>
			</div>
		</div>
		<input type="hidden"  id="kuaikeId" value="${login.kuaikeId }" />
		<div class="walletCont walletYj">
			<div class="walletCont_item">
				<div class="walletCont_item_title">我的押金（元）</div>
				<div class="walletCont_item_cont"><i id="de"></i></div>
			</div>
			<div class="walletCont_item">
				<button class="walletBtn">提现</button>
				<button class="walletBtn"><a href="RequestMappingUtil/requestNUll/APP/myWallet_Recharge_to">充值</a></button>
			</div>
		</div>
		
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		
		<script type="text/javascript">
		if("${login}"==""||"${login}"==null){
		//询问框
		layer.open( {
				anim: 'up',
				shadeClose: false,
				content: '您还没有登陆？',
				btn: ['登录', '注册'],
				yes:function(index){
					layer.close(index);
			  		window.location.href="RequestMappingUtil/requestNUll/APP/login";
				},
				no:function(index){
					layer.close(index);
					window.location.href="RequestMappingUtil/requestNUll/APP/register";
				}  
			});
		}else{
			if("${login.kuaikePhone}"==""||"${login.kuaikeAddressInfo}"==""||"${login.kuaikeShenfenZF}"==""||"${login.kuaikeShouchiSFZ}"==""){
				//验证审核
				if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还没有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				}else{
					//询问框
					layer.open( {
						anim: 'up',
						shadeClose: false,
						content: '您的资料还没有完善？',
						btn: ['完善资料','取消'],
						yes:function(index){
							layer.close(index);
							window.location.href="RequestMappingUtil/requestNUll/APP/perfectData_firstStep";
						},
						no:function(index){
							layer.close(index);
						}  
					});
				}
			}
		}
		</script>
		
		
		
		
		
		<script>
			$(function() {
				$(".wallettop img").on("click",function() {
					$(this).parent().hide();
					$(this).parent().next().css("margin-top","0.52rem");
				})
			})
		</script>
		
		<script>
			$(function() {
				var kuaikeId=$("#kuaikeId").val();
			
				$.ajax({
					url : 'queryBalance/' + kuaikeId,
					type : 'post',
					dataType:'json',
					success : function(data) {
						if(data!="" && data!=null){
							$("#ba").html("￥"+data.balance);
							$("#de").html("￥"+data.deposit);
						}else{
							$("#ba").html("￥"+"00.00");
							$("#de").html("￥"+"00.00");
						
						}
					
						
					}
				});
			})
		</script>
		
		
		
		
	</body>
</html>
