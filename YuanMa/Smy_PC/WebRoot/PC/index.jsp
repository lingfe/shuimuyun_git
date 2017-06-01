
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">


<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" cotent="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<title>首页</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/css/index.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/css/bootstrap.min.css" />
<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=basePath%>PC/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath%>PC/js/register.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div class="header">
		<div class="container flex">
			<p class="flex2 conttent_p">
				<a href="<%=basePath%>RequestMappingUtil/requestData/PC/login">${sessionScope.namea!=null?'欢迎:':'登录'}</a><a href="<%=basePath%>RequestMappingUtil/requestData/PC/register"><span>${sessionScope.namea!=null?sessionScope.namea:'注册'}</span></a>			</p>
			<ul class="flex8 content_u">
				<li><img src="<%=basePath%>PC/images/e.png" /><a href="#">wenping@smuyun.com</a></li>
				<li><img src="<%=basePath%>PC/images/p.png" /><a href="#">0851 8510 3179</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>

	<!--导航开始-->
	<header>
	<div class="container">
		<nav class="nav navlist" role="navigation">
		<div class="navbar-header" style="margin-right: 60px;">
			<a href="<%=basePath%>RequestMappingUtil/requestNUll/PC/index" class="logo"><img src="<%=basePath%>PC/images/logo.png" /></a> <a
				href="#" class="navbar-btn navbar-toggle navbtn"
				data-toggle="collapse" data-target="#myCollapse"> <img
				src="<%=basePath%>PC/images/nav-btn.png" />
			</a>
		</div>
		<div class="collapse navbar-collapse navColl" id="myCollapse">
			<ul class="nav navbar-nav pull-left ren_nav">
				<li class="active"><a href="http://www.smuyun.com/" target="_left">商城</a></li>
				<li class="active"><a href="<%=basePath%>PC/index.jsp" style="color: #ff6d46;">人人配送</a></li>
				<li><a href="<%=basePath%>PC/aboutUs.html">公众号</a></li>
				<li><a href="<%=basePath%>PC/service.html">关于人人配送</a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>
	<!--导航结束-->

	<!--轮播开始-->
	<div class="carousel slide" id="myCarousel">
		<!--<轮播项目-->
		<div class="carousel-inner">
			<div class="item active">
				<img src="<%=basePath%>PC/images/001.jpg" />
			</div>
			<div class="item">
				<img src="<%=basePath%>PC/images/001.jpg" />
			</div>
			<div class="item">
				<img src="<%=basePath%>PC/images/001.jpg" />
			</div>
			<div class="item">
				<img src="<%=basePath%>PC/images/001.jpg" />
			</div>
			<div class="item">
				<img src="<%=basePath%>PC/images/001.jpg" />
			</div>
			<div class="item">
				<img src="<%=basePath%>PC/images/001.jpg" />
			</div>
		</div>
		<!--轮播指标-->
		<ul class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>
		</ul>
		<!--轮播导航-->
		<a href="#myCarousel" class="carousel-control left left-ico"
			data-slide="prev"> <img src="<%=basePath%>PC/images/left.png" />
		</a> <a href="#myCarousel" class="carousel-control right  right-ico"
			data-slide="next"> <img src="<%=basePath%>PC/images/right.png" />
		</a>
	</div>
	<!--轮播结束-->
	<!--按钮开始-->
	<div class="ren_aj1 flex1">
		<a href="<%=basePath%>Insert"><img src="<%=basePath%>PC/images/a001_03.png" /> <span>我要抢单</span></a>
	</div>
	<div class="ren_aj2 flex1">
		<a href="<%=basePath%>RequestMappingUtil/requestData/PC/placeAnOrder"><img src="<%=basePath%>PC/images/a002_03.png" /> <span>我要下单</span></a>
	</div>
	<div style="clear: both;"></div>
	<!--底部开始-->
	<footer>
	<div class="col-lg-1"></div>
	<div class="fooeter1 col-lg-2 col-sm-6 col-xs-6 col-md-2">
		<ul>
			<li>关于我们</li>
			<li><a href="#">关于我们的详情</a></li>
		</ul>
	</div>
	<div class="fooeter2 col-lg-2 col-sm-6 col-xs-6 col-md-2">
		<ul>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">帮助信息</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">注册帮助</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">登录帮助</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">认证帮助</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">更多</a></li>
		</ul>

	</div>
	<div class="fooeter3 col-lg-2 col-sm-6 col-xs-6 col-md-2">
		<ul>
			<li>帮助信息</li>
		</ul>
	</div>
	<div class="fooeter4 col-lg-5 col-sm-6 col-xs-6 col-md-5">
		<ul>
			<li>联系我们</li>
			<li><span>商城名称:</span><a href="#">水木云</a></li>
			<li><span>商城客服电话:</span><a href="#"> 0851 8510 3179</a></li>
			<li><span>商城客服邮箱:</span><a href="#">wenping@smuyun.com</a></li>
			<li><span>商城关键词组:</span><a href="#">水木云， 水木云商城</a></li>
			<li><span>商城简要说明:</span><a href="#">水木云实体社区服务商城</a></li>
		</ul>
	</div>

	</footer>

</body>
</html>
