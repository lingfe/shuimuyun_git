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
		
		<title>注册</title>
		<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
		<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
		<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
		.layui-m-layer-msg .layui-m-layercont {
			background: rgba(87, 87, 84, .5) !important;
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
			<header class="header headerLogin"> <a class="header_l" onClick="javascript :history.back(-1);"> <img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h1 class="header_title">注册</h1>
			</header>
	
			<div class="loginCont">
				<form class="loginCont_form" action="register" method="post">
					<div class="loginCont_form_item mui-input-row">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/user.png" /> <input
							class="loginCont_form_itemAll mui-input-clear right" id="userName"
							type="text" name="kuaikeName" placeholder="请输入用户名" />
					</div>
					<div class="loginCont_form_item mui-input-row">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/phone.png" />
						<input class="loginCont_form_itemAll mui-input-clear right" id="forgePhone" type="text" name="kuaikePhone" placeholder="请输入手机号码" />
					</div>
					<div class="regItem">
						<input type="text" style="height:.34rem; font-size:.12rem;" class="mui-input-clear free_input_code left"
							id="forgeYzm" placeholder="请输入验证码"><input type="button"
							class="mui-btn loginBtn mui-btn-block free_code left "
							id="forgeYzmBtn" value="请输入验证码">
					</div>
					<div class="loginCont_form_item mui-input-row">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/pwd.png" /> <input
							class="right loginCont_form_itemAll mui-input-password"
							id="regPwd" name="password" type="text" placeholder="请输入密码" />
					</div>
					<div class="loginCont_form_item mui-input-row">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/oksuo.png" /> <input
							class="right loginCont_form_itemAll mui-input-password"
							id="regNpwd" type="password" placeholder="请确认密码" />
					</div>
					<button type="button" class="mui-btn loginBtn mui-btn-block reg_btn"
						id="regBtn">注册</button>
					<a class="free_login forget_appeal" href="RequestMappingUtil/requestNUll/APP/login" >已有账号?马上登录</a>
				</form>
			</div>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js"></script>
		<!-- 提示 -->
		<script type="text/javascript">	${errorShow }</script>
	</body>
</html>
