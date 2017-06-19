<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>申诉找回密码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	
	<link rel="stylesheet" href="<%=basePath %>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/mui.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath %>APP/css/smyMobile.css" />
	<style>
		.appeal_firstdiv{
	background: white;
}
.appeal_firstdiv div{
	border-bottom: solid 1px #eee ;
	height: .4rem;
}
.appeal_firstdiv label{
	display: inline-block;
	width: 30%;
	height: .4rem;
	line-height: .4rem;
	margin-left: 10px;
	color: #333;
}
.appeal_firstdiv input{
	display: inline-block;
	width: 60%;
	border: none;
	outline: none;
}
.appeal_lastdiv{
	background: white;
}
.appeal_lastdiv div{
	border-bottom: solid 1px #eee ;
	height: .4rem;
}
.appeal_lastdiv label{
	display: inline-block;
	width: 30%;
	height: .4rem;
	line-height: .4rem;
	margin-left: 10px;
	color: #333;
}
.appeal_lastdiv input{
	display: inline-block;
	width: 60%;
	border: none;
	outline: none;
}
.las{
	width: 30% !important;
}

.order_btn {
	width: 80%;
	margin-left: 10%;
	background: #418bc8;
	color: white;
	margin-top: .2rem;
	border-radius: 10px;
	height: .35rem;
	line-height: .35rem;
}

.appeal_firstdiv button{
	margin-left: 5%;
	display: inline-block;
	width: 30%;
	height: .25rem;
	margin-top: .075rem;
	border: none;
	background: #418bc8;
	color: white;
}
	</style>
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
	
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath %>APP/images/icon/arow_left.png" />
			</a>
			<h6>申述找回</h6>
		</header>
		<form action="<%=basePath %>updatePasswordByAppeal" method="post" class="loginCont_form">
		<!--【头部】end-->
		<div class="courier_firsttit">
			必填
		</div>
		<div class="appeal_firstdiv">
			<div>
				<label>原手机号　 +86</label><input type="text" id="lastPhone" name="kuaikePhone" placeholder="请输入原绑定手机号" />
			</div>
			<div>
				<label>姓　名</label><input type="text" id="userName" name="kuaikeName" placeholder="请输入真实姓名" />
			</div>
			<div>
				<label>现手机号　+86</label><input type="text" id="regPhone" name="newkuaikePhone" placeholder="请输入现用手机号" />
			</div>
			<div>
				<label>验 证 码</label><input class="las" id="regYzm" name="mobile_code" type="text" placeholder="请输入验证码" /><button id="regYzmBtn">获取验证码</button>
			</div>
		</div>
		<div class="courier_last">
			选填
		</div>
		<div class="appeal_lastdiv">
			<div>
				<label>曾用密码</label><input type="text" placeholder="请输入曾用密码" />
			</div>
			<div>
				<label>曾用地址</label><input type="text" placeholder="请输入曾用地址" />
			</div>
		</div>
		<a><button class="order_btn" id="appeal">提交</button></a>
		</form>
		<script type="text/javascript" src="<%=basePath %>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/smyMobile_yz.js" ></script>
	</body>

</html>