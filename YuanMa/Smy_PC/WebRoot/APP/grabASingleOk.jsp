<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>确认抢单</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<!--电话标签 --> 
	<meta name="format-detection" content="telephone=no" />
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/lCalendar.css"/>
	<style type="text/css">
		body{display: block;}
		.taking_firsttit_con{
		margin-top:.4rem;
		}
		.shijianint{
			margin-left:1.8rem;
			width: 1rem !important;
			border: none !important;
		}
		.gearDate, .gearDatetime, .gearTime{
		    background-color: rgba(0, 0, 0, 0.8) !important;
		}
		.shijianspan{
			transform: translateY(10px);
		}
	</style>
	<script>
		setTimeout(function() {
			$("body").show();
		},500)
	</script>
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l"onClick="javascript:history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>快递员</h6>
		</header>
		<!--【头部】end-->
		<div class="courier_firsttit_con taking_firsttit_con">
			<div class="cour_div_1"><img src="<%=basePath%>APP/${login.kuaikeShouchiSFZ}"/></div>
			<div class="cour_div_2">${login.kuaikeName}</div>
			<div class="cour_div_5 taking_div_5">
				<span><img src="<%=basePath%>APP/images/icon/adds_b.png" width="15"/></span>
				<span>地址</span>
			</div>
			<div>
			<a href="tel:${info.shouhuoAddressInfo}">
				<span>收货人：</span>
				<span>${info.shouhuoAddressInfo}</span>
			</a>
			</div>
			<div>
			<a href="tel:${info.kuaikeAddressInfo}">
				<span>发货人：</span>
				<span>${info.kuaikeAddressInfo}</span>
			</a>
			</div>
		</div>
		<div class="courier_last_con taking_last_con">
			<div class="taking_last_div_1">
				<img src="<%=basePath%>APP/images/icon/number_b.png"width="20"/>
				<span>货物信息</span>
			</div>
			<div class="courier_last_con_list">
				<div>
					<span>类型</span>
					<span>数量</span>
					<span>大小</span>
					<span>总重</span>
					<span>建议交通工具</span>
				</div>
				<div>
					<span>${info.shopType }</span>
					<span>${info.shopNumer }</span>
					<span>${info.shopGuige }</span>
					<span>${info.shopzholiang }kg</span>
					<span>无</span>
				</div>
			</div>
		</div>
		<div class="courier_last_con taking_last_con">
			<div class="taking_last_div_1">
				<img src="<%=basePath%>APP/images/icon/huowu_b.png"width="20"/>
				<span>我的信息</span>
			</div>
			<div class="taking_div_last" id="order_right2">
				<span class="shijianspan">取货时间</span>
				<input class="shijianint" id="de" type="text" readonly="" name="input_date" placeholder="请输入时间"/>
				<%-- <img src="<%=basePath%>APP/images/icon/consignee_right.png"width="15" /> --%>
			</div>
		</div>
		
		<!--确定按钮-->
		 <div class="order_buttom taking_btn">
			<div class="order_buttom_text">
			<img class="op" src="<%=basePath%>APP/images/icon/dui.png"width="20"/>
			<img style="display: none;" src="<%=basePath%>APP/images/icon/yuan.png"class="dis" width="19" />
			<label> 我同意 《<a href="RequestMappingUtil/requestNUll/APP/serviceXy">水木云快递条约</a>》</label>
			</div>
			<button class="order_btn" onclick="qiangdanAjax(this);">确认抢单</button>
		</div> 
		<!-- 快客id -->
		<input type="hidden" id="kuaikeId" value="${login.kuaikeId }">
		<!-- 下单id -->
		<input type="hidden" id="xiaId" value="${info.xiaId }">
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/lCalendar.js" ></script>
		<!-- 抢单 ajax -->
		<script>
			//抢单
			function qiangdanAjax(my){
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
				//快客id
				var kuaikeId=$("#kuaikeId").val();
				//下单id
				var xiaId=$("#xiaId").val();
				
				var url=xiaId+"/"+kuaikeId;
				//通过ajax添加记录
				$.ajax({
					url : 'r_qiangordertabController/insertAjax/'+url,
					type : 'get',
					dataType : 'html',
					success : function(objs) {
						if(objs){
							//提示
						    layer.open({
						    	content: '抢单成功!',
						    	skin: 'msg',
						    	time: 2
						  	});
							window.location.href="xiaordertab/queryIdStatus/"+kuaikeId+"/0/"+xiaId;
						}else{
							//提示
						    layer.open({
						    	content: '抢单失败!',
						    	skin: 'msg',
						    	time: 2
						  	});
						}
					},
					error : function(xhr, type) {
						//提示
					    layer.open({
					    	content: 'Ajax error!',
					    	skin: 'msg',
					    	time: 2
					  	});
					}
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
		<script>
		var calendartime = new lCalendar();
			calendartime.init({
				'trigger': '#de',
				'type': 'time'
			});
	</script>
	<script type="text/javascript">
		$(".order_buttom_text").click(function(){
		if($(this).find(".dis").is(":hidden")) {
			$(this).find(".dis").show();
			$(this).find(".op").hide();
		}
		else {
			$(this).find(".dis").hide();
			$(this).find(".op").show();
		}
	})
	$(".order_btn").click(function(){
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
