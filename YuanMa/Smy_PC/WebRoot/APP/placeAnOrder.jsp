<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>下单</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css"/>
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
	</script>
	<style>
		.order_btn {
			width: 80%;
			margin-left: 10%;
			background: #418bc8;
			color: white;
			margin-top: .2rem;
			border-radius: 10px;
			height: .35rem;
			line-height: .35rem;
		}
		
	</style>
	
	</head>
	<body style="background: #eee;">
		<!--头部-->
		<header class="commHeader">
			<h6>我要下单</h6>
			<a class="commHeader_r" href="javascript:;">
				<span>贵阳</span>
				<img title="" alt="" src="<%=basePath%>APP/images/icon/right.png" width="100%" />
			</a>
		</header>
		<!--发货人，收货人信息跳转-->
		<div class="order_info">
			<div class="shipper"><a href="xiaordertab/appOrderRequest/shipperInformation">
				<img src="<%=basePath%>APP/images/icon/shipper.png" width="27"/>
				<label>发货人信息</label></a>
			</div>
			<div class="shipper"><a href="xiaordertab/appOrderRequest/consignee">
				<img src="<%=basePath%>APP/images/icon/cargo.png" width="27"/>
				<label>收货人信息</label></a>
			</div>
		</div>
		<!--货物信息-->
		<div class="order_info">
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/type.png" width="27"/>
				<label>货物类型</label>
				<div class="order_right" id="order_right">
					<span id="order_leixin">易碎</span>
					<img src="<%=basePath%>APP/images/icon/orderright.png" width="10" />
				</div>
			</div>
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/number.png" width="27"/>
				<label>货物数量</label>
				<div class="order_num">
					<span>个/件</span>
					<span id="jian">-</span>
					<span id="zhi"> 1 </span>
					<span id="jia">+</span>
				</div>
			</div>
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/heft.png" width="27"/>
				<label>货物重量</label>
				<div class="order_num">
					<span class="order_num_mag">kg</span>
					<span id="jian">-</span>
					<span id="zhi1"> 1 </span>
					<span id="jia">+</span>
				</div>
			</div>
		</div>	
		<!--到达时间-->
		<div class="order_info">
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/time.png" width="27"/>
				<label>最迟到达时间</label>
				<div class="order_right"id="order_right2">
					<span id="shijian">1时15分</span>
					<img src="<%=basePath%>APP/images/icon/orderright.png"width="10" />
				</div>
			</div>
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/clar.png" width="27"/>
				<label>建议交通工具</label>
				<div class="order_right" id="order_right1">
					<span id="order_clar">无</span>
					<img src="<%=basePath%>APP/images/icon/orderright.png"width="10" />
				</div>
			</div>
		</div>
		<!--确定按钮-->
		<div class="order_buttom">
			<div class="order_buttom_text" id="order_buttom_text">
			<img src="<%=basePath%>APP/images/icon/dui.png" class="op" width="20" />
			<img style="display: none;" src="<%=basePath%>APP/images/icon/yuan.png"class="dis" width="19" />
			<label> 我同意 《水木云快递条约》</label>
			</div>
			<a href="#"><button class="order_btn" id="taking_btn">确认下单</button></a>
		</div>

		<!--遮罩层-->
		<div class="order_zhe"id="order_zhe"></div>
		<!--弹出菜单-->
		<div class="order_tan"id="order_tan">
			<div class="order_tan_clos">
				<span>货物类型</span>
				<span class="mui-icon mui-icon-close order_close" id="order_close"></span>
			</div>
			<div class="order_tan_context"  id="order_tex">
				<span>易碎</span>
				<span>非易碎</span>
				<span>贵重</span>
			</div>
		</div>
		<!--弹出菜单二-->
		<div class="order_tan1"id="order_tan1">
			<div class="order_tan_clos1">
				<span>交通工具</span>
				<span class="mui-icon mui-icon-close order_close" id="order_close1"></span>
			</div>
			<div class="order_tan_context1"  id="order_tex1">
				<span >无</span>
				<span>自行车</span>
				<span>摩托车</span>
			</div>
			<div class="order_tan_context1"  id="order_tex1">
				<span >小轿车</span>
				<span>小型货车小型</span>
				<span>中型货车</span>
			</div>
		</div>
		<!--弹窗三-->
		<div class="order_tan2"id="order_tan2">
			<div class="order_tan_clos2">
				<span>最晚到达时间</span>
				<span class="mui-icon mui-icon-close order_close" id="order_close2"></span>
			</div>
			<div class="order_tan_context2"  id="order_tex2">
				<div class="order_tan_context2_1">今天</div>
				<div class="order_tan_context2_2">
					<span><label id="jiajia1">+</label><label></label></span>
					<span><label id="xiaoshi">1</label><label class="yi">时</label></span>
					<span><label id="jianjian1">-</label><label></label></span>
				</div>
				<div class="order_tan_context2_3">
					<span><label id="jiajia2">+</label><label></label></span>
					<span><label id="fenzhong">30</label><label class="yi">分</label></span>
					<span><label id="jianjian2">-</label><label></label></span>
				</div>
			</div>
			
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
			<a href="http://www.smuyun.com">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/mall.png" width="100%"/>
				<p class="ss">商城</p>
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/myInfo">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/personal.png" width="100%"/>
				<p class="ss">我的</p>
			</a>
		</footer>
		<!-- 下单id -->
		<input type="hidden" id="xiaId" value="${xiaId }"> 
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
		<script type="text/javascript">
		$(function(){
			//表单提交
			$("#ok_order").click(function(){
				//初始化验证
				//验证发货人是否填写
				if(!fa){
					alert("发货人是否填写\？");
					return;
				}
				//验证收货人是否填写
				if(!shou){
					alert("发货人是否填写\？");
					return;
				}
				
				//获取下单id
				var xiaId=$("#xiaId").val();
				if(xiaId==""){
					alert("请填写收货人或发货人信息");
					return false;
				}
				
				//得到货物类型
				var shopType=$("#order_leixin").text();
				//得到货物数量
				var shopNumer=$("#zhi").text();
				//得到货物重量
				var shopzholiang=$("#zhi1").text();
				//最快取货时间
				var timeString=$("#shijian").text();
				//url
				var url=xiaId+"/"+shopType+"/"+shopNumer+"/"+shopzholiang+"/"+timeString;
				
				//ajax提交
				$.ajax({
					url : 'xiaordertab/orderSbmit/'+url,
					type : 'POST',
					success : function(data) {
						alert("下单成功");
						//跳转到首页
						window.location.href="RequestMappingUtil/requestNUll/APP/myOrder";
					},
					error : function(xhr, type) {
						alert('Ajax error!');
					},
					async:false
				});
			});
		});
		
		//发货人信息ajax
		function fa(){
			//获取下单id
			var xiaId=$("#xiaId").val();
			if(xiaId==""){
				alert("请填写收货人或发货人信息");
				return false;
			}
			//ajax获取
			$.ajax({
				url : 'xiaordertab/xiaorderInfoAjax/'+xiaId,
				type : 'POST',
				success : function(data) {
					var obj = jQuery.parseJSON(data);
					if(obj.kuaikeName!=""){
						return true;
					}
					return false;
				},
				error : function(xhr, type) {
					alert('Ajax error!');
				},
				async:false
			});
		}
		
		//收货人信息ajax
		function shou(){
			//获取下单id
			var xiaId=$("#xiaId").val();
			if(xiaId==""){
				alert("请填写收货人或发货人信息");
				return false;
			}
			//ajax获取
			$.ajax({
				url : 'xiaordertab/xiaorderInfoAjax/'+xiaId,
				type : 'POST',
				success : function(data) {
					var obj = jQuery.parseJSON(data);
					if(obj.shouhuoName!=""){
						return true;
					}
					return false;
				},
				error : function(xhr, type) {
					alert('Ajax error!');
				},
				async:false
			});
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
		
		$("#order_buttom_text").click(function(){
		if($(this).find(".dis").is(":hidden")) {
			$(this).find(".dis").show();
			$(this).find(".op").hide();
		}
		else {
			$(this).find(".dis").hide();
			$(this).find(".op").show();
		}
	})
	$("#taking_btn").click(function(){
		if($(".op").is(":hidden")){
			layer.open({
		    	content: '同意协议',
		    	skin: 'msg',
		    	time: 1
		  	});
		  	return false;
		}
	})
	</script>
	</body>
</html>

