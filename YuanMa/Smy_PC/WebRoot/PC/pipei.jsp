<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>匹配</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8" />
	
	<link rel="stylesheet" href="<%=basePath %>PC/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basePath %>PC/css/fukuan.css" />
		<style>
			.dayuan {
				width: 150px;
				height: 150px;
				border-radius: 50%;
				border: 1px solid #eeb7a8;
				position: relative;
				left: 30%;
				top: 13%;
				transform: translate(-75px, -75px);
				border-top: solid 2px #ff6d46 !important;
				box-sizing: border-box;
				-webkit-animation: circle 1s infinite linear;
				/*匀速 循环*/
			}
			.g {
				position: absolute;
				left: 87%;
				width: 10px;
				height: 10px;
				top: 16%;
				border-radius: 50%;
				background: #ff855e;			
			}
			
			.tex {
				position: relative;
				z-index: 999;
				font-size: 16px;
				color: #e9dfdf;
				top: -30%;
				left: -5px;
			}
			/*转动*/
			
			@-webkit-keyframes circle {
				0% {
					transform: rotate(0deg);
				}
				100% {
					transform: rotate(360deg);
				}
			}
			
			.xiaoyuan {
				width: 130px;
				height: 130px;
				border-radius: 50%;
				background: #ff6d46;
				position: absolute;
				left: 32.5%;
				top: 18%;
				box-sizing: border-box;
			}
			
			.z_alert {
				background: #e6e6e6 !important;
			}
		</style>
	</head>

	<body>
		<!--导航开始-->
		<header>
			<div class="container">
				<nav class="nav navlist" role="navigation">
					<div class="navbar-header" style="margin-right: 60px;">
						<a href="<%=basePath %>PC/index.jsp" class="logo"><img src="<%=basePath %>PC/images/logo.png" /></a>
						<a href="#" class="navbar-btn navbar-toggle navbtn" data-toggle="collapse" data-target="#myCollapse"> <img src="images/nav-btn.png" /> </a>
					</div>
					<div class="collapse navbar-collapse navColl text-center" id="myCollapse">
						<ul class="nav navbar-nav pull-left ren_nav">
							<li class="active"> <a href="http://www.smuyun.com/">商城</a> </li>
							<li class="active"> <a href="<%=basePath %>PC/index.jsp">人人配送</a> </li>
							<li> <a href="<%=basePath %>PC/intro.jsp">公众号</a> </li>
							<li> <a href="<%=basePath %>PC/about.jsp">关于人人配送</a> </li>
							<li> <a href="<%=basePath %>PC/personalCenter.jsp">个人中心</a> </li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!--导航结束-->
		<!--内容-->
		<!--遮罩层-->
		<section class="z_mask">
			<!--弹出框-->
			<section class="z_alert">
				<div class="dayuan">
					<div class="g"></div>
				</div>
				<div class="xiaoyuan"></div>
				<div class="tex"><img alt="支付二维码" src="<%=basePath %>PC/images/payFor.png"></div>
			</section>
		</section>
	</body>

</html>