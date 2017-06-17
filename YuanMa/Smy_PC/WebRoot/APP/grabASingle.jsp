<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>抢单</title>
<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.commHeader p {
				color: #fff;
				text-align: center;
				font-size: 0.12rem;
				line-height: 0.38rem;
			}
			.commHeader p i {
				margin: 0 0.03rem;
				/*color: #f10000;*/
				font-size: 0.13rem;
				/*font-weight: 700;*/
			}
			#container {
				width:100%;
				height: 4.5rem;
			}
			.gra_b {
				width: 100%;
				height: 0.38rem;
				background: #fff;
				border-top: 1px solid #e3e3e3;
			}
			.gra_bCont {
				position: relative;
				width: 50px;
				height: auto;
				overflow: hidden;
				font-size: 0.12rem;
				text-align: center;
				color: #e0e0e0;
				margin: 0 auto;
				padding-top: 10px;
				margin-top: 0.09rem;
			}
			.gra_bCont>div {
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 6px;
				border-radius: 5px;
				background: rgb(224,224,224);
			}
			.grabList {
				position: fixed;
				top: 1.8rem;
				width: 100%;
				height: 4rem;
				background: rgba(255,255,255,.8);
				z-index: 990;
				transform: translate(0,4rem);
			}
			.grabList_lisst {
				position: relative;
				width: 100%;
				height: 4rem;
				overflow: hidden;
				overflow-y: scroll;
				box-sizing: border-box;
				padding: 0 20px;
				margin-top: 0;
				padding-bottom: 1rem;
			}
			.grabList_lisst li a {
				display: block;
				width: 100%;
				height: 0.5rem;
				border-bottom: 1px solid #d7d7d7;
			}
			.grabList_user {
				display: block;
				height: 0.35rem;
				width: 0.35rem;
				border-radius: 50%;
				margin-top: 0.08rem;
				float: left;
			}
			.grabList_cont {
				position: relative;
				width: calc(100% - 0.42rem);
				height: 0.5rem;
				float: right;
			}
			.grabList_cont p {
				color: #333;
				font-size: 0.13rem;
			}
			.grabList_cont p:nth-of-type(1) {
				padding-top: 0.08rem;
			}
			.grabList_cont span {
				position: absolute;
				bottom: 0.05rem;
				right: 0;
				color: #ed6014;
				font-size: 0.12rem;
			}
			.grabList_title {
				width: 100%;
				height: 0.4rem;
				background: rgb(255,255,255);
				text-align: center;
			}
			.footerMenu {
				z-index: 999;
			}
			.grabList_title img {
				position: absolute;
				left: 50%;
				top: 0.16rem;
				display: block;
				width: 0.2rem;
				height: auto;
				margin-left: -0.1rem;
			}
			.jzCont {
				position: fixed;
        		top: 50%;
        		left: 50%;
        		width: 80px;
        		height: 80px;
        		border-radius: 5px;
        		background: rgba(0,0,0,.7);
        		z-index: 999;
        		margin-left: -40px;
        		margin-top: -40px;
			}
			.jzCont span {
				display: block;
        		width: 24px;
        		height: 24px;
        		background: url(<%=basePath%>APP/images/icon/loading.gif) no-repeat;
        		background-size: cover;
        		margin: 28px auto;
			}
			.grabTips {
				position: fixed;
				top: 50%;
				left: 50%;
				width: 1rem;
				height: 0.3rem;
				background: rgba(0,0,0,.8);
				color: #fff;
				font-size: 0.12rem;
				text-align: center;
				line-height: 0.3rem;
				border-radius: 5px;
				margin-left: -0.5rem;
				margin-top: -0.15rem;
				z-index: 999;
			}
		</style>
		<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
		
	</head>
<body style="display:none;">
	<!--【头部】-->
	<header class="commHeader">
	<p>
		当前有<i>6</i>个发货人
	</p>
	</header>
	<!--【头部】end-->

	<!--【地图】-->
	<div id="container" tabindex="0"></div>
	<!--【地图】end-->

	<div class="gra_b">
		<div class="gra_bCont">
			<div></div>
			详情
		</div>
	</div>

	<!--【详情的list】-->
	<div class="grabList">
		<div class="grabList_title">
			<img title="" alt="" src="<%=basePath%>APP/images/icon/grabList_title_img.jpg"
				width="20" />
		</div>
		<ul class="grabList_lisst">
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
			<li><a href="#"> <img class="grabList_user" title="" alt=""
					src="<%=basePath%>APP/images/user.jpg" width="100%" />
					<div class="grabList_cont">
						<p>最迟到达时间：今天 13:00</p>
						<p>商品总重量：12kg</p>
						<span>立即抢单</span>
					</div>
			</a></li>
		</ul>
	</div>
	<!--【详情的list】end-->

		<!--底部-->
		<footer class="footerMenu">
			<a href="RequestMappingUtil/requestNUll/APP/index">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/home_2.png" width="100%"/>
				<p class="ss">首页</p>
			</a>
			<a class="active" href="RequestMappingUtil/requestNUll/APP/grabASingle">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/single_2.png" width="100%"/>
				<p class="ss">抢单</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/placeAnOrder">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/order.png" width="100%"/>
				<p class="ss">下单</p>
			</a>
			<a href="http://www.smuyun.com">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/mall.png" width="100%"/>
				<p class="ss">商城</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myInfo">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/personal.png" width="100%"/>
				<p class="ss">我的</p>
			</a>
		</footer>
		<!-- 快客id -->
		<input type="hidden" id="kuaikeId" value="${login.kuaikeId }">
		
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		 <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=edc4e3688f1a450db848c70024394024"></script>
    	<script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script src="//webapi.amap.com/ui/1.0/main.js"></script>
		<script type="text/javascript">
	        $(function() {
	        	//定义数组
	        	
				var kuaikeAddressInfo = [];
				var xiaId = [];
				//Ajax请求后台数据 并加载地图
				$.ajax({
					url : 'queryXiaOrderList',
					dataType : "json",
					type : 'POST',
					//请求成功后触发
					success : function(json) {
						kuaikeAddressInfo = json.kuaikeAddressInfo;
						xiaId = json.xiaId;
						//初始化地图调用JS接口
						var map = new AMap.Map('container', {
							resizeEnable : true
						});
						//添加地图放大控件
						  AMapUI.loadUI(['control/BasicControl'], function(BasicControl) {
						       var zoomCtrl2 = new BasicControl.Zoom({
						            position: 'br',
						             showZoomNum: true
						       });
						
						       map.addControl(zoomCtrl2);
						    });
						
						//关键字的搜索
						AMap.service([ "AMap.PlaceSearch" ], function() {
							var placeSearch = new AMap.PlaceSearch({ //构造地点查询类
								pageSize : kuaikeAddressInfo.length, //这里是显示你的单子数  从后台传一个 单子数量
								city : "0851", //城市
								map : map
							});
							//关键字查询【可从后台把需要显示的内容通过参数形式传递到 search中】
							placeSearch.search(kuaikeAddressInfo);
						});
						
		
						//添加地图控件【得到贵阳的中心地区】
						AMap.plugin('AMap.Geocoder', function() {
							var geocoder = new AMap.Geocoder({
								city : "0851" //城市，默认：“全国”
							});
							var marker = new AMap.Marker({
								map : map,
								bubble : true
							});
							//给地图添加双击点击事件 地图放大效果
							map.on('dblclick', function(e) {
								marker.setPosition(e.lnglat);
								//得到坐标值
								geocoder.getAddress(e.lnglat, function(status, result) {
									if (status == 'complete') {
										//地址格式转化
										var test = result.regeocode.formattedAddress
										//打印是否获取到地址
										//给地图添加单点击事件 进行页面的跳转
											map.on('click', function(e) {
												marker.setPosition(e.lnglat);
												//得到坐标值
												geocoder.getAddress(e.lnglat, function(status, result) {
													if (status == 'complete') {
														//地址格式转化
														var test = result.regeocode.formattedAddress
														//打印是否获取到地址
														alert(test);
														//单击跳转页面
											             window.location.href="grabASingleRquest/APP/grabASingleOk/"+json.xiaId[0];
														
														//路径跳转
														window.location.href = "APP/grabASingleOk.jsp"
													}
												});
											});
										//单击跳转页面
										//路径跳转
										return false;
									}
								});
							});
		
						});
		
					}
				});
		
		
		});
		
		
		</script>
		
		
		<script type="text/javascript">


		$(function() {
			$(".gra_bCont").click(function() {
				//$(this).hide();
				$(".grabList").css({
					"transform" : "translate(0,0)",
					"transition" : ".8s"
				});

			})
			$(".grabList_title img").click(function() {
				//$(".gra_bCont").show();
				$(".grabList").css({
					"transform" : "translate(0,4rem)",
					"transition" : ".8s"
				});
			})
		})
	</script>
		<!-- ajax list -->
		<script type="text/javascript">
			$(function(){
				//清空
				$('.grabList_lisst').html("");
				//调用方法
				getList(0);
				
				
			});
			
			//根据状态得到集合
			function getList(status){
				//获取快客id
				var kuaikeId=$("#kuaikeId").val();
				var url="";
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
						var addressTo="";
						//循环便利
						for (var i = 0; i < data.length; i++) {
							//date 格式化时间
							var date=new Date(data[i].okDate);
							var dataStr=date.getUTCFullYear()+"."+date.getMonth()+"."+date.getDate();//+"  "+date.toLocaleTimeString();
							addressTo+=data[i].kuaikeAddressInfo+" | "
							url= data[i].xiaId + "/" + kuaikeId;
							//拼接标签
							result +="<li id='" + i + "' title='" + url + "'><a href='xiaordertab/grabASingleRquest/APP/grabASingleOk/" + data[i].xiaId + "'> <img class='grabList_user' title='' alt='' \
											src='<%=basePath%>APP/images/user.jpg' width='100%' /> \
											<div class='grabList_cont'> \
												<p>最迟到达时间：" + dataStr + "</p> \
												<p>商品总重量：" + data[i].shopzholiang + "kg</p> \
												<span onclick='gtabSingle("+i+");return false;'>立即抢单</span> \
											</div> \
									  </a></li>";
						}
						
						
						$('.grabList_lisst').append(result);
					},
					error : function(xhr, type) {
						alert('Ajax error!');
					},
					async:false
				});
			}
			
			//抢单
			function qiangdanAjax(i){
				//url
				var url= $("#"+i).attr("title");
				alert(url);
				//通过ajax添加记录
				$.ajax({
					url : 'r_qiangordertabController/insertAjax/'+url,
					type : 'get',
					dataType : 'html',
					success : function(objs) {
						if(objs){
							$("#"+i).hide(500);
						}else{
							alert("抢单失败!");
						}
					},
					error : function(xhr, type) {
						alert('Ajax error!');
					}
				});
			}
			
			function gtabSingle(i) {
	        	var jz = "<div class='jzCont'><span><span></div>";//创建加载元素
	        	$("body").append(jz);   //把元素加载body
	        	setTimeout(function() {     
	        		$(".jzCont"). remove(); //移除加载
	        		layer.open({
					  anim: 'up',
					  shadeClose: false,
					  content: '确定抢单吗！',
					  btn: ['确认', '取消'],
					  yes: function(index){
					    layer.close(index)
					    qiangdanAjax(i);
					    $(".grabTips").html("抢单成功");
					  },
					  no: function(index){
					    layer.close(index);
					    gtabTips();
					    $(".grabTips").html("您已取消订单");
					  }
					}); 
	        		
	        	},800)	
	        }
	        
	        function gtabTips() {
			    var grabTips = "<div class='grabTips'></div>";
				$("body").append(grabTips);
				$(".grabTips").animate({opacity:"0"},1000);
				setTimeout(function() {
					$(".grabTips").remove();
				},1000)
	        }
		</script>
</body>
</html>
