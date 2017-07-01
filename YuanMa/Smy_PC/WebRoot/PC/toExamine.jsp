<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<title>审核</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/index.css" />
<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath%>PC/js/register.js" type="text/javascript"
	charset="utf-8"></script>
	<style>
	.footer {
	width: 100%;
	height: auto;
	overflow: hidden;
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
				${sessionScope.namea!=null?'欢迎:':''}<a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/login">${sessionScope.namea!=null?'':'登录'}</a><a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/register"><span>${sessionScope.namea!=null?'':'注册'}</span></a>${sessionScope.namea!=null?sessionScope.namea:''}</p>
			<ul class="flex8 content_u">
				<li><img src="<%=basePath%>PC/images/e.png" /><a href="javascript:void(0);">wenping@smuyun.com</a></li>
				<li><img src="<%=basePath%>PC/images/p.png" /><a href="javascript:void(0);">0851 8861 0341</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>

	<!--导航开始-->
	<header>
	<div class="container">
		<nav class="nav navlist" role="navigation">
		<div class="navbar-header" style="margin-right: 60px;">
			<a href="<%=basePath%>PC/index.jsp" class="logo"><img
				src="<%=basePath%>PC/images/logo.png" /></a> <a href="#"
				class="navbar-btn navbar-toggle navbtn" data-toggle="collapse"
				data-target="#myCollapse"> <img
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
	<!--内容开始-->
	<div class="zhao_top">
		<div class="zhao_a">找回密码</div>
		<ul class="zhao_b">
			<li>手机找回</li>
			<li class="zhao_r">人工找回</li>
		</ul>
		<div style="clear: both;"></div>
	</div>

	<div class="zhao_c">
		<!--人工找回密码-->
		<div class="zhao_ren1 que1" style="display: block;">
			<!--进度条-->
			<div class="setbackss">
				<!--进度条底层-->
				<div class="setbacks_11"></div>
				<!--进度条中层-->
				<div class="setbacks_22" style="width:28%;top: 242px; "></div>
				<!--进度条顶层-->
				<ul class="setbacks_33" style="top: 225px;">
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a
									href="<%=basePath%>PC/yianxiekuaike.jsp">
										<p class="setbacks_3_1_cc">1</p>
										<p class="setbacks_3_2_cc">填写快客信息</p>
								</a></td>
							</tr>
						</table>
					</li>
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a href="<%=basePath%>PC/toExamine.jsp">
										<p class="setbacks_3_1_cc">2</p>
										<p class="setbacks_3_2_cc">审核</p>
								</a></td>
							</tr>
						</table>
					</li>
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a
									href="<%=basePath%>PC/zhuanyepeixun.jsp">
										<p class="setbacks_3_11">3</p>
										<p class="setbacks_3_22">密找回成功码</p>
								</a></td>
							</tr>
						</table>
					</li>

				</ul>
				<div class="clear"></div>
			</div>
			<!--内容开始-->
			<p class="shen_d">正在审核中，请耐心等待...</p>
			<div class="shenhe">
				<p>预计等待倒计时：</p>
				<p>
					<span id="show">10</span>分钟
				</p>
			</div>
			<div class="shen_a">若等待时间过长，可拨打11111进行密码找回</div>

		</div>

	</div>
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

<script type="text/javascript">
	var t = 10; //设定跳转的时间 
	setInterval("refer()", 1000); //启动1秒定时 
	function refer() {
		if (t == 1) {
			location = "<%=basePath%>PC/phonePwdBack.jsp"; //#设定跳转的链接地址 
		}
		document.getElementById('show').innerHTML = "" + t + ""; // 显示倒计时 
		t--; // 计数器递减 
	}
</script>
