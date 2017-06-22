<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>找回密码</title>
    
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.layui-m-layer-msg .layui-m-layercont {
				background: rgba(87,87,84,.5) !important;
				border-radius: 5px;
				color: #f10000;
			}
		</style>
		<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
		
	</head>
	<body class="body_bg loginBody_bg">
		<div class="contMian">
			<header class="header headerLogin">
				<a class="header_l" onClick="javascript :history.back(-1);">
					<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
				</a>
				<h1 class="header_title">忘记密码</h1>
			</header>

			<div class="loginCont">
				<form class="loginCont_form" action="reupdatepass/APP" method="post">
					<div class="loginCont_form_item mui-input-row">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/phone.png" />
						<input class="loginCont_form_itemAll mui-input-clear right" id="forgePhone" name="kuaikePhone" type="text" placeholder="请输入手机号码" />
					</div>
					<div class="free_gray">
	        			<input type="text" class="mui-input-clear free_input_code left" id="forgeYzm" name="mobile_code" placeholder="请输入验证码">
						<input type="button" class="mui-btn loginBtn mui-btn-block free_code left" id="forgeYzmBtn" value="获取验证码"> 		
   				 	</div>
   				 	
   				 	
					<div class="loginCont_form_item mui-input-row">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/pwd.png" />
						<input class="right loginCont_form_itemAll mui-input-password"id="forgePwd" name="password" type="password" placeholder="请输入密码" />
					</div>
					<div class="loginCont_form_item mui-input-row forget_bott">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/oksuo.png" />
						<input class="right loginCont_form_itemAll mui-input-password" id="forgeNpwd" type="password" placeholder="请再次输入密码" />
					</div>
					
					
					<button type="button" class="mui-btn loginBtn mui-btn-block" id="forgetBtn">确认</button>
					<a class="free_login forget_appeal" href="<%=basePath %>APP/appeal.jsp">手机丢了或不在身边?申诉找回</a>
				</form>
			</div>
		</div>

		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
	</body>
</html>
