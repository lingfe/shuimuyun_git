<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提示</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8" />
	<link rel="stylesheet" href="<%=basePath %>PC/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basePath %>PC/css/fukuan.css" />
	</head>

	<body>
		<!--导航开始-->
		<header>
			<div class="container">
				<nav class="nav navlist" role="navigation">
					<div class="navbar-header" style="margin-right: 60px;">
						<a href="<%=basePath %>PC/index.jsp" class="logo"><img src="<%=basePath %>PC/images/logo.png" /></a>
						<a href="#" class="navbar-btn navbar-toggle navbtn" data-toggle="collapse" data-target="#myCollapse">
							<img src="<%=basePath %>PC/images/nav-btn.png" />
						</a>
					</div>
					<div class="collapse navbar-collapse navColl text-center" id="myCollapse">
						<ul class="nav navbar-nav pull-left ren_nav">
							<li class="active">
								<a href="http://www.smuyun.com/">商城</a>
							</li>
							<li class="active">
								<a href="<%=basePath %>PC/index.jsp">人人配送</a>
							</li>
							<li>
								<a href="<%=basePath %>PC/intro.jsp">公众号</a>
							</li>
							<li>
								<a href="<%=basePath %>PC/about.jsp">关于人人配送</a>
							</li>
							<li>
								<a href="<%=basePath %>PC/personalCenter.jsp">个人中心</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!--导航结束-->
		<!--内容-->
		<div class="con">
			<div>
				<span class="x1"></span>
				<div class="zi">支付方式</div>
				<span class="x2"></span>
			</div>
			<div>
				<label class="dy dya">
					<label class="xy a"></label>
				</label>
				<div class="fu">支付宝</div>
			</div>
			<div>
				<label class="dy dyb">
					<label class="xy b"></label>
				</label>
				<div class="fu">微信支付</div>
			</div>
			<div>
				<label class="dy dyc">
					<label class="xy c"></label>
				</label>
				<div class="fu">QQ支付</div>
			</div>
			<div>
				应付费用：
			</div>
			<div>
				<samp>$</samp>
				<b>12</b>
			</div>
			<div class="btn"><a>立即付款</a></div>
		</div>

		<!--遮罩层-->
		<section class="z_mask">
			<!--弹出框-->
			<section class="z_alert">
				<p>支付成功</p>
				<p>
					<small>还有</small><span class="ss">3</span><small>s跳转到</small><a>匹配快递员页面</a>
				</p>
			</section>
		</section>
		<script>
			var t = 3; //设定跳转的时间 
			setInterval("refer()", 1000); //启动1秒定时 
			function refer() {
				if (t == 0) {
					location = "<%=basePath%>PC/pipei.jsp"; //#设定跳转的链接地址       
				}
				document.querySelector(".ss").innerHTML = "" + t + ""; // 显示倒计时 
				t--; // 计数器递减 
			}
		</script>
	</body>

</html>