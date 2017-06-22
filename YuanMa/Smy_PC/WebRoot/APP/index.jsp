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
	<link rel="stylesheet" href="<%=basePath %>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	<script>
		setTimeout(function() {
				$("body").show();
		},500);
	</script>
	<!--  5ayer -->
	</head>
	<body>
		<header class="commHeader">
			<div class="commHeader_Cont">
				<a class="commHeader_l" href="javascript:void(0);">
					<img title="" alt="" src="<%=basePath %>APP/images/icon/service.png" />
				</a>
				<h6>首页</h6>
				<a class="commHeader_r" id="cityList" href="javascript:void(0);">
					<span id="adderss">贵阳</span>
					<img title="" alt="" src="<%=basePath %>APP/images/icon/right.png" width="100%" />
				</a>
			</div>
		</header>
		<!--banner图开始-->
		<div style="height:1.2rem; margin-top: 0.4rem">
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
							<img src="<%=basePath%>APP/images/banner2.jpg">
						</a>
						<div class="banner_text">
							优待自己，从这里开始——最贴心的私家服务
						</div>
					</div>
					<div class="mui-slider-item banner_item">
						<a href="#">
							<img src="<%=basePath%>APP/images/banner3.jpg">
						</a>
						<div class="banner_text">
							优待自己，从这里开始——最贴心的私家服务
						</div>
					</div>
					<div class="mui-slider-item banner_item">
						<a href="#">
							<img src="<%=basePath%>APP/images/banner4.jpg">
						</a>
						<div class="banner_text">
							优待自己，从这里开始——最贴心的私家服务
						</div>
					</div>
					<div class="mui-slider-item mui-slider-item-duplicate">
						<a href="#">
							<img src="<%=basePath%>APP/images/banner4.jpg">
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
				<img src="<%=basePath%>APP/images/index_order.png" />
				<p>我要下单</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/grabASingle">
				<img src="<%=basePath%>APP/images/index_grab.png" />
				<p>我要抢单</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myOrder">
				<img src="<%=basePath%>APP/images/index_send.png" />
				<p>正在派送</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myWallet">
				<img src="<%=basePath%>APP/images/index_purse.png" />
				<p>我的钱包</p>
			</a>
		</nav>
		
		<div class="findTitle">
			<img title="" alt="" src="<%=basePath%>APP/images/icon/eyes.png" width="22" />
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
		
		<div class="hidden"></div>
		
		<!--底部-->
		<footer class="footerMenu">
			<a class="active"  href="RequestMappingUtil/requestNUll/APP/index">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/home.png" width="100%"/>
				<p class="">首页</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/grabASingle">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/single.png" width="100%"/>
				<p class="">抢单</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/placeAnOrder">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/order.png" width="100%"/>
				<p class="">下单</p>
			</a>
			<a href="http://www.smuyun.com">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/mall.png" width="100%"/>
				<p class="">商城</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myInfo">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/personal.png" width="100%"/>
				<p class="">我的</p>
			</a>
		</footer>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		
		<script>
			function autoScroll(obj, ul_bz) {
				$(obj).find(ul_bz).animate({
						marginTop : "-0.5rem"
				},1000,function(){
						$(this).css({marginTop : "0"}).find("li:first").appendTo(this);
				});
			}
			setInterval('autoScroll(".list", ".eyesList")',1500);
			var gallery = mui('.mui-slider');
			gallery.slider({
				interval: 1000
			});
			
			//城市list
			$("#cityList").click(function() {
				if($(".hidden").is(":hidden")) {
					$(".hidden").show();
					var cityList = layer.open({
					  type: 1,
					  content: "<div class='cityList cityListHide' id='openCityList'> \
					  				<div class='cityList_title'> \
					  					<div>当前定位城市</div> \
					  				</div> \
					  				<ul class='cityList_list'> \
										<li onclick='address(this);'>贵阳</li> \
									</ul> \
					  				<div class='cityList_title'> \
					  					<div>热门城市</div> \
					  				</div> \
					  				<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>上海</li> \
										<li onclick='address(this);'>广州</li> \
										<li onclick='address(this);'>深圳</li> \
										<li onclick='address(this);'>武汉</li> \
										<li onclick='address(this);'>重庆</li> \
										<li onclick='address(this);'>杭州</li> \
										<li onclick='address(this);'>天津</li> \
										<li onclick='address(this);'>贵阳</li> \
									</ul> \
									<div class='cityList_title'> \
					  					<div>按城市首字母排序</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li> \
											<a href='javascript:;' onclick='a()'>A</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='b()'>B</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='c()'>C</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='d()'>D</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='e()'>E</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='f()'>F</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='g()'>G</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='h()'>H</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='j()'>J</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='k()'>K</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='l()'>L</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='m()'>M</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='n()'>N</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='p()'>P</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='q()'>Q</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='r()'>R</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='s()'>S</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='t()'>T</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='w()'>W</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='x()'>X</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='y()'>Y</a> \
										</li> \
										<li> \
											<a href='javascript:;' onclick='z()'>Z</a> \
										</li> \
									</ul> \
									<div class='cityList_title' id='a'> \
					  					<div>A开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>鞍山</li> \
										<li onclick='address(this);'>安阳</li> \
										<li onclick='address(this);'>安庆</li> \
										<li onclick='address(this);'>安康</li> \
										<li onclick='address(this);'>澳门</li> \
										<li onclick='address(this);'>阿克苏</li> \
										<li onclick='address(this);'>啊拉尔</li> \
										<li onclick='address(this);'>阿里</li> \
										<li onclick='address(this);'>阿坝</li> \
										<li onclick='address(this);'>安顺</li> \
									</ul> \
									<div class='cityList_title' id='b'> \
					  					<div>B开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='c'> \
					  					<div>C开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='d'> \
					  					<div>D开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='e'> \
					  					<div>E开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='f'> \
					  					<div>F开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='g'> \
					  					<div>G开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='h'> \
					  					<div>H开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='j'> \
					  					<div>J开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='k'> \
					  					<div>K开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='l'> \
					  					<div>L开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='m'> \
					  					<div>M开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='n'> \
					  					<div>N开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='p'> \
					  					<div>P开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='q'> \
					  					<div>Q开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='r'> \
					  					<div>R开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='s'> \
					  					<div>S开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='t'> \
					  					<div>T开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='w'> \
					  					<div>W开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='x'> \
					  					<div>X开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='y'> \
					  					<div>Y开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
									<div class='cityList_title' id='z'> \
					  					<div>Z开头城市</div> \
					  				</div> \
									<ul class='cityList_list'> \
										<li onclick='address(this);'>北京</li> \
										<li onclick='address(this);'>保定</li> \
										<li onclick='address(this);'>包头</li> \
										<li onclick='address(this);'>宝鸡</li> \
										<li onclick='address(this);'>白城</li> \
										<li onclick='address(this);'>白山</li> \
										<li onclick='address(this);'>北海</li> \
										<li onclick='address(this);'>白沙</li> \
										<li onclick='address(this);'>毕节</li> \
										<li onclick='address(this);'>巴中</li> \
									</ul> \
					  			</div>",
					  anim: 'up',
					  shade: false,
					  style: 'position:fixed; backgroun: none; left:0; top:0.38rem; overflow-y: scroll; width:100%; height:100%; border: none; -webkit-animation-duration: .5s; animation-duration: .5s;'
					});
					$(document.body).css({"overflow-x":"hidden","overflow-y":"hidden"});
				}
				else {
					$(".hidden").hide();
					layer.closeAll();
					$(document.body).css({"overflow-x":"auto","overflow-y":"auto"});
				}
				
			})
			
			function address(obj) {
				var _thisHtml = $(obj).html();
				$("#adderss").html(_thisHtml);
				$(".hidden").hide();
				layer.closeAll();
				$(document.body).css({"overflow-x":"auto","overflow-y":"auto"});
			}
			
			/* function cityLink(id) {
				var cityLink = document.getElementById(id);
				cityLink.scrollIntoView();
				alert("sfsd");
			} */
			function a() {
				var cityLink = document.getElementById('a');
				cityLink.scrollIntoView();
			}
			function b() {
				var cityLink = document.getElementById('b');
				cityLink.scrollIntoView();
			}
			function c() {
				var cityLink = document.getElementById('c');
				cityLink.scrollIntoView();
			}
			function d() {
				var cityLink = document.getElementById('d');
				cityLink.scrollIntoView();
			}
			function e() {
				var cityLink = document.getElementById('e');
				cityLink.scrollIntoView();
			}
			function f() {
				var cityLink = document.getElementById('f');
				cityLink.scrollIntoView();
			}
			function g() {
				var cityLink = document.getElementById('g');
				cityLink.scrollIntoView();
			}
			function h() {
				var cityLink = document.getElementById('h');
				cityLink.scrollIntoView();
			}
			function j() {
				var cityLink = document.getElementById('j');
				cityLink.scrollIntoView();
			}
			function k() {
				var cityLink = document.getElementById('k');
				cityLink.scrollIntoView();
			}
			function l() {
				var cityLink = document.getElementById('l');
				cityLink.scrollIntoView();
			}
			function m() {
				var cityLink = document.getElementById('m');
				cityLink.scrollIntoView();
			}
			function n() {
				var cityLink = document.getElementById('n');
				cityLink.scrollIntoView();
			}
			function p() {
				var cityLink = document.getElementById('p');
				cityLink.scrollIntoView();
			}
			function q() {
				var cityLink = document.getElementById('q');
				cityLink.scrollIntoView();
			}
			function r() {
				var cityLink = document.getElementById('r');
				cityLink.scrollIntoView();
			}
			function s() {
				var cityLink = document.getElementById('s');
				cityLink.scrollIntoView();
			}
			function t() {
				var cityLink = document.getElementById('t');
				cityLink.scrollIntoView();
			}
			function w() {
				var cityLink = document.getElementById('w');
				cityLink.scrollIntoView();
			}
			function x() {
				var cityLink = document.getElementById('x');
				cityLink.scrollIntoView();
			}
			function y() {
				var cityLink = document.getElementById('y');
				cityLink.scrollIntoView();
			}
			function z() {
				var cityLink = document.getElementById('z');
				cityLink.scrollIntoView();
			}
		</script>
		<!-- ajax -->
		<script type="text/javascript">
			$(function(){
				//清空
				$('.eyesList').html("");
				//调用方法
				getList(0);
			});
			
			//根据状态得到集合
			function getList(status){
				//获取到下单数据
				$.ajax({
					url : 'xiaordertab/xiadanAjax/'+status,
					type : 'get',
					dataType : 'html',
					success : function(objs) {
						//转换成json
						var page = jQuery.parseJSON(objs);
						var data = page.list;
						
						var result = '';
						//循环便利
						for (var i = 0; i < data.length; i++) {
							//拼接标签
							result +="<li> \
										<a href='RequestMappingUtil/requestNUll/APP/myOrder'> \
											<span>" + data[i].shouhuoName + "</span> \
											<span class='text_1_hide'>" + data[i].shouhuoAddressInfo + "</span> \
											<div>收</div> \
										</a> \
									</li>";
						}
						$('.eyesList').append(result);
					},
					error : function(xhr, type) {
						layer.open({
					    	content: '提交错误！',
					    	skin: 'msg',
					    	time: 2
				  		});
					},
					async:false
				});
			}
		</script>
	</body>
</html>
