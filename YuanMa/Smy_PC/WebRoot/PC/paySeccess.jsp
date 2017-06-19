<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>支付成功页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath %>PC/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basePath %>PC/css/fukuan.css" />
	<style type="text/css">
		*{
			padding: 0;
			margin: 0;
		}
		.box{
			width: 100%;
			height: 90%;
			position: absolute;
			
		}
		.box_border{
			width: 800px;
			height: 500px;
			position: absolute;
			left: 50%;
			top: 50%;
			border: solid 1px #999;
			margin-left: -400px;
			margin-top: -250px;
			box-sizing: border-box;
			background: white;
		}
		.box_border_cen{
			width: 300px;
			height: 100px;
			margin: 0 auto;
			margin-top: 20px;
			text-align: center;
		}
		.box_border_cen img {
			float: left;
		}
		.hhh{
			display: inline-block;
			margin-left: -60px;
			height: 100px;
			font-size: 28px;
			line-height:100px ;
			color: green;
			font-weight:bold ;
		}
		.yuan{
			width: 100%;
			font-size: 15px;
			font-weight:bold ;
		}
		.yuan_qian{
			color: red;
		}
		.border{
			margin-top: 10px;
			width: 100%;
			height: 1px;
			background: #999;
		}
		.box_border_lef{
			margin-left: 60px;
			margin-bottom: 20px;
		}
		.box_border_lef span{
			font-size: 15px;
			font-weight:bold ;
		}
		.b{
			color: red;
		}
		.box_border_nav{
			margin-left: 60px;
		}
		.marg{
			margin-left: 20px;
		}
		.cen_btn{
			display:inline-block;
			width: 100px;
			height: 30px;
			line-height:30px;
			color: white;
			background: green;
			outline: none;
			border: none;
			border-radius: 5px;
			text-decoration: none;
			
		}
		.cen_btn:active{
			opacity: 0.8;
		}
		.link{
			color: #008000;
			font-size: 12px;
		}
	</style>
	<body>		
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
		<div class="box">
			<div class="box_border">
			<div class="box_border_cen">
				<img src="<%=basePath %>PC/images/ok.png" width="100"/>
				<span class="hhh">支付成功!</span>
			</div>
<!-- 			<div class="box_border_cen"> -->
<!-- 				<div class="yuan">共计支付金额：<span class="yuan_qian">￥</span><span class="yuan_qian">2000000.2</span>元</div> -->
<!-- 				<div class="border"></div> -->
<!-- 			</div> -->
<!-- 			<div class="box_border_lef"> -->
<!-- 				<span>以下<span>5</span>个订单已经完成</span> -->
<!-- 				<span>共计：<span class="b">￥</span><span class="b">2000000.2</span>元</span> -->
<!-- 			</div> -->
			<div class="box_border_nav">
				<span>订单号：<span>${r_zhiordertab.xiaId }</span></span>
				<span  class="marg">在线支付：<span>￥</span><span>${r_zhiordertab.total_fee/100 }</span>元</span>
				<span  class="marg">商品名称：<span>${r_zhiordertab.body }</span></span>
			</div>
<!-- 			<div class="box_border_nav"> -->
<!-- 				<span>订单号：<span>1000000</span></span> -->
<!-- 				<span  class="marg">在线支付：<span>￥</span><span>200.2</span>元</span> -->
<!-- 				<span  class="marg">商品名称：<span>老干妈</span></span> -->
<!-- 			</div><div class="box_border_nav"> -->
<!-- 				<span>订单号：<span>1000000</span></span> -->
<!-- 				<span  class="marg">在线支付：<span>￥</span><span>200.2</span>元</span> -->
<!-- 				<span  class="marg">商品名称：<span>老干妈</span></span> -->
<!-- 			</div><div class="box_border_nav"> -->
<!-- 				<span>订单号：<span>1000000</span></span> -->
<!-- 				<span  class="marg">在线支付：<span>￥</span><span>200.2</span>元</span> -->
<!-- 				<span  class="marg">商品名称：<span>老干妈</span></span> -->
<!-- 			</div> -->
			<div class="box_border_cen">
				<a class="cen_btn" href="<%=basePath%>RequestMappingUtil/requestData/PC/placeAnOrder ">继续下单</a>
				<a class="link" href="<%=basePath%>PC/personalCenter.jsp">查看订单详情>></a>
			</div>
			</div>
		</div>
	</body>
</html>
