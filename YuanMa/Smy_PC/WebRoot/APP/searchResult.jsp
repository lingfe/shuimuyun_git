<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索结果</title>
     <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css"/>
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
	
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>订单搜索</h6>
		</header>
		<!--【头部】end-->
		<!--订单样式-->
		<div class="oallCont">
			<!--【没有数据的样式】--> <!--display: none-->
			<div class="oallDtev">
				<img title="" alt="" src="<%=basePath%>APP/images/noDeta.png" width="80%" />
				<div class="oallCont_div_span">
					<span class="oallCont_span">
						目前没有<label>南明区</label>的订单
					</span>
				</div>
			</div>
			<!--【没有数据的样式】end-->
			
			<div class="oallCont_cont">
				<div class="oallCont_cont_item searchOrder_top">
					<ul class="oallCont_cont_list">
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">发</div>
								<span class="oall_ztl">正在派送</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">快</div>
								<span class="oall_ztl">代付款</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">发</div>
								<span class="oall_ztl">待接单</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">快</div>
								<span class="oall_ztl">取货</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">发</div>
								<span class="oall_ztl">已完成</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">快</div>
								<span class="oall_ztl">派件</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>
