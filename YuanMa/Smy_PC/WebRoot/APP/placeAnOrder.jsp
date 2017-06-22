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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/lCalendar.css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/IMGUP.css"/>
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
		.order_tan_clos input {
			width: 1.5rem;
			outline: none;
			border: none; 
		}
		.xiadan{
			line-height: .4rem;
			margin-left: 20px;
			color: #333;			
		}
		.mony{
			transform: translateY(10px);
			margin-left:20px;
		}
		.botto{
			border:none;
		}
		.shijiankaung{
			width: 1rem !important;
			border: none !important;
		}
		.gearDate, .gearDatetime, .gearTime{
		    background-color: rgba(0, 0, 0, 0.8) !important;
		}
		.shopprices{
			text-align: right;
		}
		.order_btn_btnimg{
			margin-bottom:.4rem;
		}
	</style>
	
	</head>
	<body style="background: #eee;">
		<!--头部-->
		<header class="commHeader">
			<h6>我要下单</h6>
		</header>
		<!--发货人，收货人信息跳转-->
		<div class="order_info">
			<div class="shipper"><a href="xiaordertab/appOrderRequest/shipperInformation">
				<img src="<%=basePath%>APP/images/icon/shipper.png" width="27"/>
				<label>发货人信息</label></a>
				<img class="imgPo" src="<%=basePath%>APP/images/icon/orderright.png" width="10" /> 
			</div>
			<div class="shipper"><a href="xiaordertab/appOrderRequest/consignee">
				<img src="<%=basePath%>APP/images/icon/cargo.png" width="27"/>
				<label>收货人信息</label></a>
				<img class="imgPo" src="<%=basePath%>APP/images/icon/orderright.png" width="10" />
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
					<span style="" class="order_num_mag">&nbsp;个/件</span>
					<span id="jian">-</span>
					<span > <input id="zhi" type=number value="1"> </span>
					<span id="jia">+</span>
				</div>
			</div>
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/heft.png" width="27"/>
				<label>货物重量</label>
				<div class="order_num">
					<span class="order_num_mag">&nbsp;kg</span>
					<span id="jian">-</span>
					<span > <input id="zhi1" type="number" value="1"> </span>
					<span id="jia">+</span>
				</div>
			</div>
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/huowutiji.png" width="27"/>
				<label>货物体积</label>
				<div class="order_num">
					<span class="order_num_mag">&nbsp;m</span>
					<span id="jian">-</span>
					<span > <input id="zhi11" type="number" value="1"> </span>
					<span id="jia">+</span>
				</div>
			</div>
		</div>	
		<!--到达时间-->
		<div class="order_info">
		<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/time.png" width="27"/>
				<label>最晚取货时间</label>
				<div class="order_right"id="order_right3">
					<input class="shijiankaung" id="de" type="text" readonly="" name="input_date" placeholder="请输入时间"/>	
					<img src="<%=basePath%>APP/images/icon/orderright.png"width="10" />
				</div>
			</div>
		
			<div class="shipper">
				<img src="<%=basePath%>APP/images/icon/timerr.png" width="27"/>
				<label>最迟到达时间</label>
				<div class="order_right"id="order_right2">
					<input class="shijiankaung" id="dee" type="text" readonly="" name="input_date" placeholder="请输入时间"/>	
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
		<div class="order_info">
			<div class="order_tan_clos botto">
			<img class="mony" src="<%=basePath%>APP/images/icon/mony.png" width="30"/>
				<a class="xiadan">下单金额</a>
				<input class="shopprices" type="text" name="shopprices" id="shopprices" placeholder="请输入金额">
				<span>元</span>
			</div>
		</div>
		<div class="shang_img">			
			<!--图片预览容器-->
			<div id="div_imglook">
				<div style="clear: both;"></div>
			</div>
			<!--图片选择对话框-->
			<div id="div_imgfile">上传货物照片</div>
		</div>
		<!--确定按钮-->
		<div class="order_buttom">
			<div class="order_buttom_text" id="order_buttom_text">
			<img src="<%=basePath%>APP/images/icon/yuandui.png" class="op" width="19" />
			<img src="<%=basePath%>APP/images/icon/yuan.png"class="dis" width="19" />
			<label> 我同意 《<a href="RequestMappingUtil/requestNUll/APP/serviceXy">水木云快递条约</a>》</label>
			</div>
			<button style="margin-bottom: 0.6rem; " class="order_btn order_btn_btnimg" id="ok_order btn_ImgUpStart">确认下单</button>
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
				<span>电瓶车</span>
			</div>
			<div class="order_tan_context1"  id="order_tex1">
				<span >小轿车</span>
				<span>小型货车小型</span>
				<span>中型货车</span>
			</div>
		</div>
		<!--弹窗三-->
		
		
	
		
		
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
		<!-- 快客id -->
		<input type="hidden" id="kuaikeId" value="${login.kuaikeId }"> 
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.7.2.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/lCalendar.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/IMGUP.js" ></script>
		<script type="text/javascript">
		$(function(){
			//表单提交
			$("#ok_order").click(function(){
				//验证审核
				if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还没有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				  	return false;
				}
				//初始化验证
				//获取下单id
				var xiaId=$("#xiaId").val();
				if(xiaId==""){
					 layer.open({
				    	content: '请填写收货人货发货人信息！',
				    	skin: 'msg',
				    	time: 2
				  	});
					return false;
				}
				var kuaikeId=$("#kuaikeId").val();
				if(kuaikeId==""){
					 layer.open({
				    	content: '请登录！',
				    	skin: 'msg',
				    	time: 2
				  	});
					return false;
				}
				
				
				//验证发货人是否填写
				if(fa(xiaId)==false){
					 layer.open({
				    	content: '请填写发货人信息！',
				    	skin: 'msg',
				    	time: 2
				  	});
					return false;
				}
				//验证收货人是否填写
				if(shou(xiaId)==false){
					layer.open({
				    	content: '请填写收货人信息！',
				    	skin: 'msg',
				    	time: 2
				  	});
					return false;
				}
				
				//得到货物类型
				var shopType=$("#order_leixin").text();
				//得到货物数量
				var shopNumer=$("#zhi").val();
				//得到货物重量
				var shopzholiang=$("#zhi1").val();
				//最快取货时间
				var timeString=$("#de").val();
				//取得下单金额
				var shopprices=$("#shopprices").val();
				//url
				var url=xiaId+"/"+shopType+"/"+shopNumer+"/"+shopzholiang+"/"+timeString+"/"+kuaikeId+"/"+shopprices;
				//ajax提交
				$.ajax({
					url : 'xiaordertab/orderSbmit/'+url,
					type : 'POST',
					contentType:"application/x-www-form-urlencoded;charset=urf-8",
					success : function(data) {
							//提示
						    layer.open({
						    	content: '下单成功！',
						    	skin: 'msg',
						    	time: 3
						  	});
						//跳转到首页
						window.location.href="xiaordertab/setYuEPam/APP/myWallet_Recharge/"+xiaId+"?sh="+shopprices;
// 						window.location.href="xiaordertab/setYuEPam/APP/myWallet_Recharge/"+xiaId+"?sh="+shopprices;
					},
					error : function(xhr, type) {
							//提示
						    layer.open({
						    	content: 'Ajax error！',
						    	skin: 'msg',
						    	time: 2
						  	});
					},
					async:false
				});
			});
		});
		
		//发货人信息ajax
		function fa(xiaId){
			var bl=false;
			//ajax获取
			$.ajax({
				url : 'xiaordertab/xiaorderInfoAjax/'+xiaId,
				type : 'POST',
				dataType : 'html',
				contentType:'application/x-www-form-urlencoded; charset=UTF-8',
				success : function(data) {
					var obj = jQuery.parseJSON(data);
					if(obj.kuaikeName!=null){
						bl= true;
					}else{
						bl=false;
					}
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
			
			return bl;
		}
		
		//收货人信息ajax
		function shou(xiaId){
			var bl=false;
			//ajax获取
			$.ajax({
				url : 'xiaordertab/xiaorderInfoAjax/'+xiaId,
				type : 'POST',
				dataType : 'html',
				contentType:'application/x-www-form-urlencoded; charset=UTF-8',
				success : function(data) {
					var obj = jQuery.parseJSON(data);
					if(obj.shouhuoName!=null){
						bl= true;
					}else{
						bl=false;
					}
					
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
			return bl;
		}
		</script>
		<!-- 验证身份 初级验证 -->
		<script type="text/javascript">
		if("${login}"==""||"${login}"==null){
		//询问框
		layer.open( {
				anim: 'up',
				shadeClose: false,
				content: '您还没有登陆？',
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
		}else{
			if("${login.kuaikePhone}"==""||"${login.kuaikeAddressInfo}"==""||"${login.kuaikeShenfenZF}"==""||"${login.kuaikeShouchiSFZ}"==""){
				//验证审核
				if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还没有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				}else{
					//询问框
					layer.open( {
						anim: 'up',
						shadeClose: false,
						content: '您的资料还没有完善？',
						btn: ['完善资料','取消'],
						yes:function(index){
							layer.close(index);
							window.location.href="RequestMappingUtil/requestNUll/APP/perfectData_firstStep";
						},
						no:function(index){
							layer.close(index);
						}  
					});
				}
			}
		}
		</script>
<!-- 		<script type="text/javascript">
		$("#order_buttom_text").click(function(){
		if($(this).find(".dis").is(":hidden")) {
		alert("s");
			$(this).find(".dis").show();
			$(this).find(".op").hide();
			alert("a");
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
	</script> -->
	<script>
		var calendartime = new lCalendar();
			calendartime.init({
				'trigger': '#de',
				'type': 'time'
			});
			var calendartime = new lCalendar();
			calendartime.init({
				'trigger': '#dee',
				'type': 'time'
			});
	</script>
	</body>
</html>

