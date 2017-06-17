<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fukuan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8" />
		
	<link rel="stylesheet" href="<%=basePath %>PC/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basePath %>PC/css/fukuan.css" />
	</head>
	<style type="text/css">
		.erwei{
			width: 20%;
			height: 260px;
		}
		.erwei img{
			width: 100%;
		}
		.dis{
			display: none;
		}
		.sam{
		width:40px !important;
		
		}
		.con>div:nth-of-type(6){
		text-align: center;
		}
		.yuan{
			transform: translate(0);
		}
	</style>
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
				<samp class="sam">$</samp>
				<b class="yuan">${sessionScope.pricse }</b>
				<input type="hidden" name="shopprices" value="${sessionScope.pricse }">
				<input type="hidden" name="xiaId" value="${sessionScope.xiaId}">
			</div>
			<div class="btn"><a>立即付款</a></div>
		</div>
		<!--遮罩层-->
		<section class="z_mask dis">
			<!--弹出框-->
			<section class="z_alert erwei dis">
				<img src="<%=basePath %>PC/images/12.png" />
			</section>
		</section>
		<script type="text/javascript" src="<%=basePath %>PC/js/fukuan.js"></script>
		<script type="text/javascript" src="<%=basePath %>PC/js/jquery-2.1.0.js" ></script>
		<script>
			$(".btn").click(function(){
				if($(".z_mask").hasClass("dis")){
				$(".z_mask").removeClass("dis");
				$(".z_alert").removeClass("dis");
				}else{
					$(".z_mask").addClass("dis");
					$(".z_alert").addClass("dis");
				}
			})
			$(".z_mask").click(function(){
				if($(".z_mask").hasClass("dis")){
					$(".z_mask").removeClass("dis");
					$(".z_alert").removeClass("dis");
				}else{
					$(".z_mask").addClass("dis");
					$(".z_alert").addClass("dis");
				}
			})
		</script>
	</body>

</html>