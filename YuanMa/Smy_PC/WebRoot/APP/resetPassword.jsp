<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'resetPassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath %>APP/css/smyMobile.css" />
	
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
	
	</head>
	<body class="body_bg loginBody_bg">
		<div class="contMian">
			<header class="header headerLogin">
				<a class="header_l" href="#">
					<img title="" alt="" src="<%=basePath %>APP/images/icon/arow_left.png" />
				</a>
				<h1 class="header_title">重置密码</h1>
			</header>

			<div class="loginCont">
				<form class="loginCont_form" action="<%=basePath %>updatePwdByKNameAndKPhone" method="post">
				<input type="hidden" value="${tabo.kuaikeName }" name="kuaikeName">
				<input type="hidden" value="${tabo.kuaikePhone }" name="newkuaikePhone">
					<div class="loginCont_form_item mui-input-row">
						<img title="" alt="" src="<%=basePath %>APP/images/icon/pwd.png" />
						<input class="right loginCont_form_itemAll mui-input-password"id="forgePwd" name="password" type="password" placeholder="请输入密码" />
					</div>
					<div class="loginCont_form_item mui-input-row forget_bott">
						<img title="" alt="" src="<%=basePath %>APP/images/icon/oksuo.png" />
						<input class="right loginCont_form_itemAll mui-input-password" id="forgeNpwd" type="password" placeholder="请再次输入密码" />
					</div>
					
					
					<button type="button" class="mui-btn loginBtn mui-btn-block" id="resetBtn">确认</button>
				</form>
			</div>
		</div>

		<script type="text/javascript" src="<%=basePath %>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/smyMobile_yz.js" ></script>
	</body>

</html>