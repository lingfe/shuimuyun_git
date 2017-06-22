<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>下单详细信息:		
    	${info.status==0?'未接单':''}
		${info.status==1?'已接单,未发货':'' }
		${info.status==2?'已到达,未确认':'' } 
		${info.status==3?'交易结束(已确认)':'' }
		${info.status==4?'已评论':'' }</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>快递员</h6>
		</header>
		<!--【头部】end-->
		<div class="courier_firsttit">
			${info.status==0?'未接单':''}
			${info.payment==0?',未付款||<a href="xiaordertab/setYuEPam/APP/myWallet_Recharge/':''}
			${info.payment==0? info.xiaId:''}
			${info.payment==0?'?sh=':''}
			${info.payment==0? info.shopprices:''}
			${info.payment==0? '">点击付款</a>':''}
			
			${info.status==1?'已接单,未发货':'' }
			${info.status==2?'已到达,未确认':'' } 
			${info.status==3?'交易结束(已确认)||<a href="javascript:void(0);':'' }
			${info.status==3?'">':'' }
			${info.status==3?'去评价':'' }
			${info.status==3?'</a>':'' }
			
			${info.status==4?'已评论':'' }
		</div>
		<div class="courier_firsttit_con">
			<div class="cour_div_1"><img src="<%=basePath%>APP/images/user.jpg"/></div>
			<div class="cour_div_2">${login.kuaikeName }</div>
			<div class="cour_div_3">
				<span><img src="<%=basePath%>APP/images/icon/courphone.png" width="12"/></span>
				<span>${login.kuaikePhone }</span>
			</div>
			<div class="cour_div_4">快递员的位置：</div>
			<div class="cour_div_5">
				<span><img src="<%=basePath%>APP/images/icon/adds_oreng.png" width="15"/></span>
				<span>${info.kuaikeAddressInfo }</span>
			</div>
		</div>
		<div class="courier_last">
			商品信息
		</div>
		<div class="courier_last_con">
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
			<div class="courier_last_con_last">
				<div class="courier_last_con_last_img">
					<img src="<%=basePath%>APP/images/banner1.jpg" width="100%" height="100%"/>
					<div>
						该商品暂未上传图片
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
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
	</body>
</html>
