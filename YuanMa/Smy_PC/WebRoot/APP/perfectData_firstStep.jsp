<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>完善资料第一步</title>
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.quickMian {
				display: block;
				width: 80%;
				height: auto;
				overflow: hidden;
				margin: 0 auto;
			}
			.quick_user {
				display: block;
				height: 0.5rem;
				width: 0.5rem;
				border-radius: 50%;
			}
			.quickTop {
				position: relative;
				height: 0.5rem;
				width: 0.5rem;
				margin: 0.4rem auto;
			}
			.quickTop input {
				display: block;
				position: absolute;
				top: 0;
				right: 0;
				height: 100%;
				width: 100%;
				opacity: 0;
				z-index: 999;
			}
			.loginCont_form_item .quickMian_icon {
				position: absolute;
				top: 50%;
				left: 0.12rem;
				display: block;
				height: 0.22rem;
				width: auto;
				margin-top: -0.11rem;
				float: left;
			}
			.quickBtn {
				display: block;
				width: 100%;
				height: 0.36rem;
				color: #fff;
				font-size: 0.12rem;
				outline: none;
				border: none;
				background: rgb(65,139,200);
				border-radius: 5px;
				margin-top: 0.5rem;
			}
			.quickBtn:active {
				background: rgba(65,139,200,.8);
			}
			.loginCont_form_item>.quickMian_arrow {
				display: block;
				position: absolute;
				top: 50%;
				right: 0.1rem;
				height: 0.2rem;
				width: 0.1rem;
				background: url(<%=basePath%>APP/images/icon/quick_arr.png) no-repeat;
				background-size: cover;
				margin-top: -0.1rem;
			}
			.quickMian_info {
				color: #fff;
				font-size: 0.08rem;
				text-align: center;
				padding-top: 0.1rem;
			}
		</style>
	</head>
	<body class="body_bg loginBody_bg">
		<div class="contMian">
			<header class="header headerLogin">
				<a class="header_l" href="javascript:self.location=document.referrer;">
					<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
				</a>
				<h1 class="header_title">完善信息</h1>
			</header>
			<form class="quickMian" action="updataFirstStep" method="POST" >
				<div class="quickTop">
					<input type="file"  multiple="multiple" />
					<input type="hidden" value="${login.kuaikeId }" name="kuaikeId" />
					<img class="quick_user" title="" alt="" src="<%=basePath%>APP/images/myUser.png" width="100%" />
				</div>
				<div class="loginCont_form_item mui-input-row">
					<img class="quickMian_icon" title="" alt="" src="<%=basePath%>APP/images/icon/phone.png" />
					<input name="kuaikePhone" value="${login.kuaikePhone }" class="loginCont_form_itemAll mui-input-clear right" id="quickPhone" type="number" placeholder="请输入手机号码" />
				</div>
				<div class="loginCont_form_item mui-input-row">
					<img class="quickMian_icon" title="" alt="" src="<%=basePath%>APP/images/icon/user.png" />
					<input name="kuaikeName" value="${login.kuaikeName }" class="loginCont_form_itemAll mui-input-clear right" id="quickName" type="text" placeholder="请输入真实姓名" />
				</div>
				<div class="loginCont_form_item">
					<span class="quickMian_arrow"></span>
					<img class="quickMian_icon" title="" alt="" src="<%=basePath%>APP/images/icon/address.png" />
					<input name="kuaikeAddressInfo" value="${login.kuaikeAddressInfo }" class="loginCont_form_itemAll text_1_hide right" id="quickAddress" type="text" placeholder="贵州省南明区花果园" />
				</div>
				<button class="quickBtn" id="quickBtn" type="submit">下一步</button>
				<p class="quickMian_info">上传照片后可享受抢单服务赚取外快</p>
			</form>
		</div>
		
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		
		<script>
			$(function() {
					$(".quickTop input").change(function() {
						var objUrl = getObjectURL(this.files[0]);
						console.log("objUrl = "+objUrl) ;
						if(objUrl) {
							$(this).next("img").attr("src", objUrl);
							//alert(objUrl)
						}
					});
			});
				
			//建立一個可存取到該file的url
			function getObjectURL(file) {
				var url = null ; 
				if(window.createObjectURL!=undefined) { // basic
					url = window.createObjectURL(file) ;
				}
				else if(window.URL!=undefined) { // mozilla(firefox)
					url = window.URL.createObjectURL(file) ;
				}
				else if(window.webkitURL!=undefined) { // webkit or chrome
					url = window.webkitURL.createObjectURL(file) ;
				}
				return url ;
			}
		</script>
	</body>
</html>
