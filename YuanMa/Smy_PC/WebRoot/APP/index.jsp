<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	<style>
		body {
			background: #eee;
		}
		
	</style>
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
	
	</head>
	<body>
		<header class="commHeader">
			<a class="commHeader_l" href="#">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/service.png" />
			</a>
			<h6>首页</h6>
			<a class="commHeader_r" href="#">
				<span>贵阳</span>
				<img title="" alt="" src="<%=basePath%>APP/images/icon/right.png" width="100%" />
			</a>
		</header>
		<!--banner图开始-->
		<div style="height:1rem;">
		<div id="slider" class="mui-slider">
			<div class="mui-slider-group mui-slider-loop">
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="<%=basePath%>APP/images/banner1.jpg">
					</a>
					<div class="banner_text">
						优待自己，从这里开始——最贴心的私家服务
					</div>
				</div>
				<div class="mui-slider-item banner_item">
					<a href="#">
						<img src="<%=basePath%>APP/images/banner1.jpg">
					</a>
					<div class="banner_text">
						优待自己，从这里开始——最贴心的私家服务
					</div>
				</div>
				<div class="mui-slider-item banner_item">
					<a href="#">
						<img src="<%=basePath%>APP/images/banner1.jpg">
					</a>
					<div class="banner_text">
						优待自己，从这里开始——最贴心的私家服务
					</div>
				</div>
				<div class="mui-slider-item banner_item">
					<a href="#">
						<img src="<%=basePath%>APP/images/banner1.jpg">
					</a>
					<div class="banner_text">
						优待自己，从这里开始——最贴心的私家服务
					</div>
				</div>
				<div class="mui-slider-item banner_item">
					<a href="#">
						<img src="<%=basePath%>APP/images/banner1.jpg">
					</a>
					<div class="banner_text">
						优待自己，从这里开始——最贴心的私家服务
					</div>
				</div>
				<div class="mui-slider-item mui-slider-item-duplicate">
					<a href="#">
						<img src="<%=basePath%>APP/images/banner1.jpg">
					</a>
					<div class="banner_text">
						优待自己，从这里开始——最贴心的私家服务
					</div>
				</div>
			</div>
			
			<div class="mui-slider-indicator banner_on">
				<div class="mui-indicator mui-active"></div>
				<div class="mui-indicator"></div>
				<div class="mui-indicator"></div>
				<div class="mui-indicator"></div>
			</div>
		</div>
		</div>
		<!--baner图结束-->

		
		<nav class="nav">
			<a href="RequestMappingUtil/requestNUll/APP/placeAnOrder">
				<img src="<%=basePath%>APP/images/pay.jpg" />
				<p>我要下单</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/grabASingle">
				<img src="<%=basePath%>APP/images/pay.jpg" />
				<p>我要抢单</p>
			</a>
			<a href="javascript:;">
				<img src="<%=basePath%>APP/images/pay.jpg" />
				<p>正在派送</p>
			</a>
			<a href="javascript:;">
				<img src="<%=basePath%>APP/images/pay.jpg" />
				<p>我的钱包</p>
			</a>
		</nav>
		
		<div class="findTitle">
			<img title="" alt="" src="<%=basePath%>APP/images/icon/eyes.png" width="20" />
			     发现
		</div>
		
		<div class="list">
			<ul class="eyesList">
				<li>
					<a href="#">
						<span>黄霖豪</span>
						<span class="text_1_hide">南明区花果园智慧龙城南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>杨军</span>
						<span class="text_1_hide">南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>李杰</span>
						<span class="text_1_hide">南明区花果园智慧龙城南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>杨杰</span>
						<span class="text_1_hide">南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>杨某某</span>
						<span class="text_1_hide">南明区花果园智慧龙城南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>啊木木</span>
						<span class="text_1_hide">南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>杨某某</span>
						<span class="text_1_hide">南明区花果园智慧龙城南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>啊木木</span>
						<span class="text_1_hide">南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>杨某某</span>
						<span class="text_1_hide">南明区花果园智慧龙城南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
				<li>
					<a href="#">
						<span>啊木木</span>
						<span class="text_1_hide">南明区花果园智慧龙城</span>
						<div>收</div>
					</a>
				</li>
			</ul>
		</div>
		
		<!--底部-->
		<footer class="footerMenu">
			<a  href="RequestMappingUtil/requestNUll/APP/index">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/home_2.png" width="100%"/>
				<p class="ss">首页</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/grabASingle">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/single.png" width="100%"/>
				<p class="ss">抢单</p>
			</a>
			<a class="active" href="RequestMappingUtil/requestNUll/APP/placeAnOrder">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/order_2.png" width="100%"/>
				<p class="ss">下单</p>
			</a>
			<a href="www.smuyun.com">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/mall.png" width="100%"/>
				<p class="ss">商城</p>
			</a>
			<a href="javascript:void(0);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/personal.png" width="100%"/>
				<p class="ss">我的</p>
			</a>
		</footer>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script>
			function autoScroll(obj, ul_bz) {
				$(obj).find(ul_bz).animate({
						marginTop : "-0.4rem"
				},1000,function(){
						$(this).css({marginTop : "0"}).find("li:first").appendTo(this);
				});
			}
			setInterval('autoScroll(".list", ".eyesList")',1500);
			var gallery = mui('.mui-slider');
			gallery.slider({
				interval: 1000
			});

		</script>
	</body>
</html>
