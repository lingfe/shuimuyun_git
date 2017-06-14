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

	<title>我的订单</title>
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<script>
		setTimeout(function() {
			$("body").show();
		},500);
	</script>
	
</head>
<body>
	<!--【头部】-->
	<header class="commHeader"> <a class="commHeader_l" href="javascript:self.location=document.referrer;">
		<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
	</a>
	<h6>我的订单</h6>
	<a class="commHeader_r" href="RequestMappingUtil/requestNUll/APP/search"> <img class="commHeader_search"
		src="<%=basePath%>APP/images/icon/search.png" width="100%" />
	</a> </header>
	<!--【头部】end-->

	<!--【nav】-->
	<nav class="oallNav" id="div_statusXia"> 
		<a class="active" href="javascript:void(0);" title="0" onclick="javascript:statusHref('0');">全部</a> 
		<a href="javascript:void(0);" title="1" onclick="javascript:statusHref('1');">已接单</a> 
		<a href="javascript:void(0);" title="2" onclick="javascript:statusHref('2');">已到达</a> 
		<a href="javascript:void(0);" title="3" onclick="javascript:statusHref('3');">已确认</a> 
		<a href="javascript:void(0);" title="4" onclick="javascript:statusHref('4');">已评价</a>
	</nav>
	
	<nav class="oallNav" id="div_statusQiang"  style="display: none;"> 
		<a class="active" href="javascript:void(0);" title="0" onclick="javascript:statusHref('0');">全部</a>
		<a href="javascript:void(0);" title="0" onclick="javascript:statusHref('0');">抢单</a> 
		<a href="javascript:void(0);" title="1" onclick="javascript:statusHref('1');">取货</a> 
		<a href="javascript:void(0);" title="2" onclick="javascript:statusHref('2');">派单</a> 
	</nav>
	<!--【nav】end-->

	<div class="oallCont">
		<div class="oallCont_muen">
			<div class="active">全部</div>
			<div id="express">我的快递</div>
			<div id="delivery">我的发货</div>
		</div>
		<!--【没有数据的样式】-->
		<!--display: none-->
		<div class="oallDtev">
			<img title="" alt="" src="<%=basePath%>APP/images/noDeta.png" width="80%" />
			<div class="oallCont_div_span">
				<span class="oallCont_span"> 当前没有<label></label>订单
				</span>
			</div>
		</div>
		<!--【没有数据的样式】end-->

		<div class="oallCont_cont">
			<div class="oallCont_cont_item">
				<ul class="oallCont_cont_list">
					<li><a href="#"> <img class="oallCont_cont_img" title=""
							alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
							<div class="oallCont_contBox">
								<p>收货人：小单</p>
								<p>电话：15700104801</p>
								<div>
									<span>收货地址：</span>
									<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
								</div>
							</div>
							<div class="oall_zt">发</div> <span class="oall_ztl">正在派送</span>
					</a></li>
					<li><a href="#"> <img class="oallCont_cont_img" title=""
							alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
							<div class="oallCont_contBox">
								<p>收货人：小单</p>
								<p>电话：15700104801</p>
								<div>
									<span>收货地址：</span>
									<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
								</div>
							</div>
							<div class="oall_zt">快</div> <span class="oall_ztl">代付款</span>
					</a></li>
					<li><a href="#"> <img class="oallCont_cont_img" title=""
							alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
							<div class="oallCont_contBox">
								<p>收货人：小单</p>
								<p>电话：15700104801</p>
								<div>
									<span>收货地址：</span>
									<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
								</div>
							</div>
							<div class="oall_zt">发</div> <span class="oall_ztl">待接单</span>
					</a></li>
					<li><a href="#"> <img class="oallCont_cont_img" title=""
							alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
							<div class="oallCont_contBox">
								<p>收货人：小单</p>
								<p>电话：15700104801</p>
								<div>
									<span>收货地址：</span>
									<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
								</div>
							</div>
							<div class="oall_zt">快</div> <span class="oall_ztl">取货</span>
					</a></li>
					<li><a href="#"> <img class="oallCont_cont_img" title=""
							alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
							<div class="oallCont_contBox">
								<p>收货人：小单</p>
								<p>电话：15700104801</p>
								<div>
									<span>收货地址：</span>
									<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
								</div>
							</div>
							<div class="oall_zt">发</div> <span class="oall_ztl">已完成</span>
					</a></li>
					<li><a href="#"> <img class="oallCont_cont_img" title=""
							alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
							<div class="oallCont_contBox">
								<p>收货人：小单</p>
								<p>电话：15700104801</p>
								<div>
									<span>收货地址：</span>
									<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
								</div>
							</div>
							<div class="oall_zt">快</div> <span class="oall_ztl">派件</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
	<script>
		$(function() {
			$(".oallNav a").click(function() {
				$(this).addClass("active").siblings().removeClass("active");
			});
	
			$(".oallCont_muen div").click(function() {
				$(this).addClass("active").siblings().removeClass("active");
			});
			
			//我的快递
			$("#express").click(function(){
				$("#div_statusQiang").css("display","block");
				$("#div_statusXia").css("display","none");
			});
			
			//我的发货
			$("#delivery").click(function(){
				$("#div_statusQiang").css("display","none");
				$("#div_statusXia").css("display","block");
			});
		});
	</script>
	<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
	<!-- 下单ajax -->
	<script type="text/javascript">
		//默认
		$(function() {
			loadmore(0);
		});
	
		//ajax
		function loadmore(status) {
			//请求
			$.ajax({
				type : 'get',
				url : 'xiaordertab/xiadanAjax/' + status,
				dataType : 'html',
				success : function(objs) {
					var page = jQuery.parseJSON(objs);
					var data = page.list;
					
					if (data == "") {
						alert("没有数据!");
					} else {
						var result = ''
						for (var i = 0; i < data.length; i++) {
							//类型
							var shopType = data[i].shopType > 0 ? '不易碎' : '易碎';
							//状态
							status = data[i].status == 0 ? '未接单' : data[i].status;
							status = data[i].status == 1 ? '已接单,未取货' : status;
							status = data[i].status == 2 ? '已到达,未确认' : status;
							status = data[i].status == 3 ? '交易结束(待评价)' : status;
							status = data[i].status == 4 ? '已评价' : status;
							//价格
							var prioes=data[i].kaikePrioes==null?'未付款':data[i].kaikePrioes;
							
							//date 格式化时间
							//var date=new Date(data[i].okDate);
							//var dataStr=date.getUTCFullYear()+"."+date.getMonth()+"."+date.getDate()+"  "+date.toLocaleTimeString();
	
							result += "<li><a href='xiaordertab/xiaorderInfo/" + data[i].xiaId + "'><img class='oallCont_cont_img' title='' \
										alt='' src='<%=basePath%>APP/images/oall001.jpg' width='100%' /> \
										<div class='oallCont_contBox'> \
											<p>收货人：" + data[i].shouhuoNmae + "</p> \
											<p>电话：" + data[i].shouhuoShone + "</p> \
											<div> \
												<span>收货地址：</span> \
												<div class='text_1_hide'>" + data[i].shouhuoAddressInfo + "</div> \
											</div> \
										</div> \
										<div class='oall_zt'>快</div> <span class='oall_ztl'>" + status + "</span>\
										</a></li>";
	
	
						}
						//分页参数
						var x="/";
						var frist=page.status + x + page.frist + x + page.pageNum;
						var xia=page.status + x + page.xia   + x + page.pageNum;
						var shang=page.status + x + page.shang + x + page.pageNum;
						var last=page.status + x + page.last  + x + page.pageNum;
						
						//分页标签
						result+="<tr> \
				   					<th> \
				   					<a title='" + frist + "' 	onclick='statusHref("+ frist +");'>首页</a> \
				   					<a title='" + xia + "' 		onclick='statusHref("+ xia +");'>下一页</a> \
				   					<a title='" + shang + "' 	onclick='statusHref("+ shang +");'>上一页</a> \
				   					<a title='" + last + "' 	onclick='statusHref("+ last +");'>未页</a> \
				   					</th> \
			   					</tr>";
						
						$('.oallCont_cont_list').append(result);
	
					}
				},
				error : function(xhr, type) {
					alert('Ajax error!');
				}
			});
		}
	
		//状态
		function statusHref(status) {
			$('.oallCont_cont_list').html("");
			var tt=status.toString().split(".");
			status=tt.length>1?tt[1]:status;
			loadmore(status);
		}
	</script>
	<!-- 验证身份 初级验证 -->
	<script type="text/javascript">
		if("${login}"==""||"${login}"==null){
			//询问框
			layer.open( {
				anim: 'up',
				shadeClose: false,
				content: '您还木有登陆？',
				btn: ['登录', '注册'],
				yes:function(index){
					layer.close(index);
			  		window.location.href="RequestMappingUtil/requestNUll/APP/login";
				},
				no:function(index){
					layer.close(index);
					window.location.href="RequestMappingUtil/requestNUll/APP/register";
				}  
			});
			
		}
	</script>
</body>
</html>
