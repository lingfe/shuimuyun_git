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
<title>等待取货</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/css/index.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/css/bootstrap.min.css" />
<style>
body {
	max-width: 100%;
	max-height: 100%;
	background: url(<%=basePath%>PC/images/bg1.jpg);
	background-size: cover;
}
</style>
</head>
<body>
	<!--导航开始-->
	<header style="background: none;">
	<div class="container">
		<nav class="nav navlist" role="navigation">
		<div class="navbar-header" style="margin-right: 60px;">
			<a href="index.html" class="logo"><img src="<%=basePath%>PC/images/logo.png" /></a>
			<a href="#" class="navbar-btn navbar-toggle navbtn"
				data-toggle="collapse" data-target="#myCollapse"> <img
				src="<%=basePath%>PC/images/nav-btn.png" />
			</a>
		</div>
		<div class="collapse navbar-collapse navColl" id="myCollapse">
			<ul class="nav navbar-nav pull-left ren_nav">
				<li class="active"><a href="<%=basePath%>PC/index.html">商城</a></li>
				<li class="active"><a href="<%=basePath%>PC/index.html">人人配送</a></li>
				<li><a href="<%=basePath%>PC/aboutUs.html">公众号</a></li>
				<li><a href="<%=basePath%>PC/service.html">关于人人配送</a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>
	<!--导航结束-->
	<div class="ddqh_content">
		<!--左边开始-->
		<div class="ddqh_left">
			<div class="ddqh_left_top">
				<h3>货物信心</h3>
				<table>
					<tr>

						<td>数量:</td>
						<td><span>${info.shopNumer }</span>(个/件)</td>
					</tr>
					<tr>
						<td>大小:</td>
						<td><span>${info.shopGuige }</span><i>(长(m),宽(m),高(m))</i></td>
					</tr>
					<tr>
						<td>类型:</td>
						<td><span>${info.shopType>0?'不易碎':'易碎'}</span></td>
					</tr>
					<tr>
						<td style="text-align: right;">最迟取货时间:</td>
						<td style="text-indent:40px; text-align: left;"><span>${info.quhuoDate}</span><i>(小时)</i></td>
					</tr>
				</table>

			</div>
			<div class="ddqh_left_center"></div>
			<div class="ddqh_left_footer">
				<h3>实际发货人信息</h3>
				<table>
					<tr>

						<td>姓名:</td>
						<td>${info.kuaikeName }</td>
					</tr>
					<tr>

						<td>电话:</td>
						<td>${info.kuaikePhone }</td>
					</tr>
					<tr>

						<td>地址:</td>
						<td>${info.kuaikeAddress }</td>
					</tr>
					<tr>
						<td style="text-align: right;">下单时间:</td>
						<td style="text-indent:40px; text-align: left;">${info.shopDate }</td>
					</tr>
				</table>

			</div>

		</div>
		<!--右边开始-->
		<div class="ddqh_right">
			<div class="ddqh_left_top">
				<h3>
					<img src="<%=basePath%>PC/images/tu.png" />
				</h3>
				<table>
					<tr>

						<td></td>
						<td><span>${info.kuaikeName }</span>快递员</td>
					</tr>
					<tr>

						<td></td>
						<td>${info.kuaikePhone }</td>
					</tr>
					<tr>

						<td>当前状态:</td>
						<td>${info.status==0?'未接单':''}</td>
					</tr>
					<tr>
						<td style="text-align: right;">预计货时间:</td>
						<td style="text-indent:40px; text-align: left;"><span
							id="quhuo">距取货还有</span><span
							style="padding: 5px 8px;color: #ff6d46;font-size: 1.4em;"
							id="show">${info.timeString }</span><i>秒</i></td>
					</tr>

				</table>
				<!--当前地-->
				<table>
					<tr>
						<td style="text-align: right;">当前到达的地点:</td>
						<td style="text-indent:40px; text-align: left;"></td>

					</tr>
					<tr>
						<td style="text-align: right;"></td>
						<td style="text-indent:40px; text-align: left;">${info.kuaikeAddress }</td>
					</tr>

					<tr>
						<td style="text-align: right;"></td>
						<td style="text-indent:40px; text-align: left;color: #7eaa40;">
							${info.kuaikeAddressInfo }
						</td>
					</tr>
				</table>
				<!--目的地-->
				<table>
					<tr>
						<td style="text-align: right;">当前到达的地点:</td>
						<td style="text-indent:40px; text-align: left;"></td>

					</tr>
					<tr>
						<td style="text-align: right;"></td>
						<td style="text-indent:40px; text-align: left;">${info.shouhuoAddress }</td>
					</tr>

					<tr>
						<td style="text-align: right;"></td>
						<td style="text-indent:40px; text-align: left;color: #7eaa40;">${info.shouhuoAddressInfo }</td>
					</tr>
				</table>

			</div>

		</div>

	</div>
</body>
</html>
<script type="text/javascript">
	var t = document.getElementById("show").innerHTML; //设定跳转的时间 
	setInterval("refer()", 1000); //启动1秒定时 
	function refer() {
		if (t == 0) {
			location = "jumudidi.html"; //#设定跳转的链接地址 
		}

		document.getElementById('show').innerHTML = "" + t + ""; // 显示倒计时 
		t--; // 计数器递减 

	}
</script>
