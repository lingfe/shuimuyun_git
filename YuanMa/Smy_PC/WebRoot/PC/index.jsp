
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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/index.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/bootstrap.min.css" />
<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath%>PC/js/bootstrap.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=basePath%>PC/js/register.js" type="text/javascript"
	charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/layer/mobile/need/layer.css" />
<script src="<%=basePath%>PC/layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {

		$("#qiangorderBtn").click(function() {

			layer.confirm("请关注我们的公众号", {
				skin : 'layui-layer-molv', //样式类名
				btn : [ '关注', '取消' ], //按钮
				closeBtn : 0
			}, function() {
				window.location.href = "RequestMappingUtil/requestNUll/PC/intro";
			}, function() {
				window.location.href = "RequestMappingUtil/requestNUll/PC/index";
			});

		});


	});
</script>
<style>
.footer {
	width: 100%;
	height: auto;
	overflow: hidden;
	position: fixed;
	bottom: 0;
}
.footer_top {
	background: #161616;
	height: auto;
	overflow: hidden;
	padding: 10px 0;
}
.foote_cont {
	width: 1200px;
	height: auto;
	overflow: hidden;
	margin: 0 auto;
}
.footer_map {
	width: 100%;
	height: auto;
}
.footer_map a {
	display: block;
	width: auto;
	height: 13px;
	line-height: 13px;
	color: #757575;
	font-size: 12px;
	text-decoration: none;
	padding-right: 10px;
	border-right: 1px solid #757575;
	float: left;
	margin-right: 10px;
}
.footer_map a:hover,
.footer_bCont a:hover{
	color: #ff6d46;
}
.footer_map .footer_map_last {
	border: none;
}
.footer_bottom {
	width: 100%;
	height: auto;
	overflow: hidden;
	background-color: rgba(0,0,0,.8);
}
.footer_bCont {
	width: 1200px;
	height: auto;
	overflow: hidden;
	margin: 0 auto;
	padding: 10px 0;
}
.footer_bCont a {
	display: block;
	width: auto;
	height: 13px;
	line-height: 13px;
	color: #757575;
	font-size: 12px;
	text-decoration: none;
	float: left;
	margin-right: 20px;
}

</style>
</head>
<body>
	<div class="header">
		<div class="container flex">
			<p class="flex2 conttent_p">
				${sessionScope.login!=null?'欢迎:':''}<a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/login">${sessionScope.login!=null?'':'登录'}</a><a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/register"><span>${sessionScope.login!=null?'':'注册'}</span></a>${sessionScope.login!=null?sessionScope.login.kuaikeName:''}</p>
			<ul class="flex8 content_u">
				<li><img src="<%=basePath%>PC/images/e.png" /><a
					href="javascript:void(0);">wenping@smuyun.com</a></li>
				<li><img src="<%=basePath%>PC/images/p.png" /><a
					href="javascript:void(0);">0851 8861 0341</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>

	<!--导航开始-->
	<header>
	<div class="container">
		<nav class="nav navlist" role="navigation">
		<div class="navbar-header" style="margin-right: 60px;">
			<a href="<%=basePath%>RequestMappingUtil/requestNUll/PC/index"
				class="logo"><img src="<%=basePath%>PC/images/logo.png" /></a> <a
				href="#" class="navbar-btn navbar-toggle navbtn"
				data-toggle="collapse" data-target="#myCollapse"> <img
				src="<%=basePath%>PC/images/nav-btn.png" />
			</a>
		</div>
		<div class="collapse navbar-collapse navColl" id="myCollapse">
			<ul class="nav navbar-nav pull-left ren_nav">
				<li class="active"><a href="<%=basePath%>PC/index.jsp"
					style="color: #ff6d46;">人人配送</a></li>
				<li><a href="<%=basePath %>PC/intro.jsp">公众号</a></li>
				<li><a href="<%=basePath %>PC/about.jsp">关于我们</a></li>
				<li><a href="<%=basePath%>PC/personalCenter.jsp">个人中心</a></li>
				<li class="active"><a href="http://www.smuyun.com/"
					target="_left">商城</a></li>
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
		<a href="javascript:void(0);" id="qiangorderBtn"><img
			src="<%=basePath%>PC/images/a001_03.png" /> <span>我要抢单</span></a>
	</div>
	<div class="ren_aj2 flex1">
		<a href="<%=basePath%>RequestMappingUtil/requestData/PC/placeAnOrder"><img
			src="<%=basePath%>PC/images/a002_03.png" /> <span>我要下单</span></a>
	</div>
	<div style="clear: both;"></div>
	<!--【底部】-->
		<footer class="footer">
			<div class="footer_top">
				<div class="foote_cont">
					<div class="footer_map">
						<a href="<%=basePath %>PC/index.jsp">首页</a>
						<a href="<%=basePath %>PC/index.jsp">人人配送</a>
						<a href="<%=basePath %>PC/intro.jsp">公众号</a>
						<a href="<%=basePath %>PC/index.jsp">网站地图</a>
						<a class="footer_map_last" href="<%=basePath %>PC/index.jsp">SITEAPM</a>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="footer_bCont">
					<a href="javascript:;">公司：水木云网络科技有限公司</a>
					<a href="javascript:;">公司地址：贵州省贵阳市花果园E区二单元</a>
					<a href="javascript:;">工信部备案号黔ICP备16008136号</a>
					<a href="javascript:;"><span><img alt="" src="<%=basePath%>PC/images/beianhao.jpg" width="15"></span>贵公网安备52010202000388号</a>
				</div>
			</div>
		</footer>
		<!--【底部】end-->
	<!-- 提示 -->
	<script type="text/javascript">	${errorShow }</script>
</body>
</html>
