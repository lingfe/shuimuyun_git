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

<title>抢单</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
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
		</style>
	</head>
<body>
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
			<a href="http://www.smuyun.com">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/mall.png" width="100%"/>
				<p class="ss">商城</p>
			</a>
			<a href="javascript:void(0);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/personal.png" width="100%"/>
				<p class="ss">我的</p>
			</a>
		</footer>
		<!-- 快客id -->
		<input type="hidden" id="kuaikeId" value="${login.kuaikeId }"> 
	<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
	<script type="text/javascript"
		src="http://webapi.amap.com/maps?v=1.3&key=您申请的key值"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
	<script type="text/javascript">
		var map = new AMap.Map('container', {
			resizeEnable : true,
			zoom : 10,
			center : [ 106.480983, 26.568955 ]
		});
	
		$(function() {
			$(".gra_bCont").click(function() {
				//$(this).hide();
				$(".grabList").css({
					"transform" : "translate(0,0)",
					"transition" : ".8s"
				});
				$(".grabList").css("");
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
			<!-- ajax -->
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
						
						//循环便利
						for (var i = 0; i < data.length; i++) {
							//date 格式化时间
							var date=new Date(data[i].okDate);
							var dataStr=date.getUTCFullYear()+"."+date.getMonth()+"."+date.getDate()+"  "+date.toLocaleTimeString();
							
							url=data[i].xiaId + "/" + kuaikeId;
							//拼接标签
							result +="<li><a href='r_qiangordertabController/insertAjax/" + url +"'> <img class='grabList_user' title='' alt='' \
											src='<%=basePath%>APP/images/user.jpg' width='100%' /> \
											<div class='grabList_cont'> \
												<p>最迟到达时间：" + dataStr + "</p> \
												<p>商品总重量：" + data[i].shopzholiang + "kg</p> \
												<span>立即抢单</span> \
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
		</script>
</body>
</html>
