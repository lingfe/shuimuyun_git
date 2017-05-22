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
		<meta http-equiv = "X-UA-Compatible" cotent = "IE=edge,chrome=1"/>
		<meta name="viewport" content="width=device-width,initial-scale=1.0" />
		<title>审核</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<script src="js/jquery-3.1.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/zhuce.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<div class="header">
			<div class="container flex">
				 <p class="flex2 conttent_p"><a href="login.jsp">登录</a><a href="zhuce.jsp">注册</a></p>
				 <ul class="flex8 content_u">
				 	<li><img src="images/e.png"/><a href="#">wenping@smuyun.com</a></li>
				 	<li><img src="images/p.png"/><a href="#">0851 8510 3179</a></li>
				 	
				 </ul>
			</div>
		    <div style="clear: both;"></div>
		</div>
	  
		<!--导航开始-->
		<header>
			<div class="container">
				<nav class="nav navlist" role="navigation">
					<div class="navbar-header" style="margin-right: 60px;">
						<a href="index.jsp" class="logo"><img src="images/logo.png" /></a>
						<a href="#" class="navbar-btn navbar-toggle navbtn" data-toggle="collapse" data-target="#myCollapse">
							<img src="images/nav-btn.png"/>
						</a>
					</div>
					<div class="collapse navbar-collapse navColl" id="myCollapse">
						<ul class="nav navbar-nav pull-left ren_nav">
							<li class="active"><a href="http://www.smuyun.com/">商城</a></li>
							<li class="active"><a href="index.jsp" style="color: #ff6d46;">人人配送</a></li>
							<li><a href="aboutUs.html">公众号</a></li>
							<li><a href="service.html">关于人人配送</a></li>
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
						<div class="setbacks_22" style="width:28%;top: 233px; " ></div>
						<!--进度条顶层-->
						<ul class="setbacks_33" style="top: 216px;">
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="yianxiekuaike.html">
											<p class="setbacks_3_1_cc">1</p>
											<p class="setbacks_3_2_cc">填写快客信息</p>
										</a>
									  </td>
									</tr>
								</table>
							</li>
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="shenhe.html">
											<p class="setbacks_3_1_cc">2</p>
											<p class="setbacks_3_2_cc">审核</p>
										</a>
									  </td>
									</tr>
								</table>
							</li>
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="zhuanyepeixun.html">
											<p class="setbacks_3_11">3</p>
											<p class="setbacks_3_22">专业培训</p>
										</a>
									  </td>
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
    	           	   <p><span>10</span>分钟</p>
    	           </div>
    	           <div class="shen_a"> 若等待时间过长，可拨打11111进行密码找回</div>
    	           
    	           
		 </div>
		    
   </div>
		
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
			 	  	<li><img src="images/004_03.png"/><a href="#">帮助信息</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">注册帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">登录帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">认证帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">更多</a></li>
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
