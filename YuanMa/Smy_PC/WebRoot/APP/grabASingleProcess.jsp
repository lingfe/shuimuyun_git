<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>抢单流程</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
    <!--电话标签-->
    <meta name="format-detection" content="telephone=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/IMGUP.css" />
	<style type="text/css">
		body{display: block;}
		.l{
			margin-top:.4rem;
			height:.4rem;
			line-height:.4rem;
			padding-left:.20rem;
		}
		.dom_shouhuo_ldiv div{
			height:.3rem;
		}
		.quickBtn:active {
			background: rgba(65, 139, 200, .8);
		}
		
		.quickSf_item {
			background: white;
			position: relative;
			width: 3rem;
			height: 1rem;
			color: #fff;
			font-size: 0.12rem;
			margin: auto;
			text-align: center;
			line-height: 1rem;
			background: rgba(0, 0, 0, .8);
			border-radius: 5px;
			overflow: hidden;
			margin-bottom: 0.15rem;
		}
		
		.quickSf_item input {
			display: block;
			position: absolute;
			top: 0;
			right: 0;
			height: 100%;
			width: 100%;
			opacity: 0;
			z-index: 99;
		}
		
		
		.quickSf_item img {
			display: block;
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 1rem;
			z-index: 5;
		}
	</style>
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>
			<c:if test="${info.status!=2 }">
				上门取货
			</c:if>
			<c:if test="${info.status==2 }">
				正在派单
			</c:if>
			</p>
		</header>
		<!--【头部】end-->
		
		<!-- 抢单状态   start -->
			<div  class="dom_shouhuo_ldiv l">
				${info.status==1?'已抢单,未取货':''}
				${info.status==2?'已取货,未送达':'' }
				${info.status==3?'已送达':'' } 
			</div>
		<!-- 抢单状态  end -->
		
		<div class="dom_shouhuo">
			<div class="dom_shouhuo_fdiv">
				收货人信息
			</div>
			<div class="dom_shouhuo_ldiv">
				<div class="ldiv_ren">
				
					<span>收货人：</span>
					<span>${info.shouhuoName }</span>
				</div>
				<div class="ldiv_phone">
				<a href="tel:${info.shouhuoShone }">
					<img src="<%=basePath%>APP/images/icon/courphone.png" width="15" />
					<span>${info.shouhuoShone }</span>
					</a>
				</div>
				<div class="ldiv_adds">
					<img src="<%=basePath%>APP/images/icon/adds_oreng.png" width="15" />
					<span>${info.shouhuoAddressInfo }</span>
				</div>
			</div>
		</div>
		<div class="dom_shouhuo">
			<div class="dom_shouhuo_fdiv">
				发货人信息
			</div>
			<div class="dom_shouhuo_ldiv">
				<div class="ldiv_ren">
					<span>发货人：</span>
					<span>${info.kuaikeName }</span>
				</div>
				<div class="ldiv_phone">
				<a href="tel:${info.kuaikePhone }">
					<img src="<%=basePath%>APP/images/icon/courphone.png" width="15" />
					<span>${info.kuaikePhone }</span>
				</a>
				</div>
				<div class="ldiv_adds">
					<img src="<%=basePath%>APP/images/icon/adds_oreng.png" width="15" />
					<span>${info.kuaikeAddressInfo  }</span>
				</div>
			</div>
		</div>
		<div class="dom_shouhuo_fdiv">
			货物信息
		</div>
		<div class="courier_last_con taking_last_con">
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
					<span>${info.shopzholiang}kg</span>
					<span>无</span>
				</div>
			</div>
		</div>
		<!--上传图片-->
		<div class="quickSf_item">
			<input class="file" type="file" name="files" accept="image/*"  capture="camera" />
			<img title="" alt="" src="" />
			<span>上传货物图片</span>
		</div>
		<div class="quickSf_item">
			<input class="file" type="file" name="files" accept="image/*"  capture="camera" />
			<img title="" alt="" src="" />
			<span>上传货物图片</span>
		</div>
		<div class="quickSf_item">
			<input class="file" type="file" name="files" multiple="multiple" accept="image/*" />
			<img title="" alt="" src="" />
			<span>上传货物图片</span>
		</div>
		<div class="shang_img">		
			<c:if test="${info.status==1 }" >
				<!-- 确定取货 -->
				<div class="order_buttom">
					<a href="xiaordertab/updateXiaQiangStatus/${info.xiaId}/${info.status}/${login.kuaikeId}"><button id="btn_ImgUpStart" class="order_btn">确定取货</button></a>
				</div>
			</c:if>
			<c:if test="${info.status==2 }">
				<!--如果有图片存放img的div-->
				<div></div>
				<button id="btn" class="order_btn">到达目的地</button>
			</c:if>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.7.2.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/IMGUP.js" ></script>
		<script>
			$(function() {
				$(".quickSf_item input").change(function() {
					
					//$(this).parent().append(Img);
					$(this).parent().find("span").remove();
					var objUrl = getObjectURL(this.files[0]);
					console.log("objUrl = " + objUrl);
					if(objUrl) {
						$(this).next("img").attr("src", objUrl);
						//alert(objUrl)
					}
				});
			});

			//建立一個可存取到該file的url
			function getObjectURL(file) {
				var url = null;
				if(window.createObjectURL != undefined) { // basic
					url = window.createObjectURL(file);
				} else if(window.URL != undefined) { // mozilla(firefox)
					url = window.URL.createObjectURL(file);
				} else if(window.webkitURL != undefined) { // webkit or chrome
					url = window.webkitURL.createObjectURL(file);
				}
				return url;
			}
		</script>
		<script type="text/javascript">
		$(function(){
			$("#btn").click(function(){
				$.ajax({
					url : 'getCode/${info.kuaikePhone}?xiaId=${info.xiaId}',
					type : 'POST',
					//请求成功后触发
					success : function(data) {
						if(data!=null){
							window.location.href="RequestMappingUtil/requestNUll/APP/showCode";
						}else{
							//提示
						    layer.open({
						    	content: '错误！',
						    	skin: 'msg',
						    	time: 2
						  	});
						}
					}
				});
			});
		});
		
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
		
	</body>
</html>
