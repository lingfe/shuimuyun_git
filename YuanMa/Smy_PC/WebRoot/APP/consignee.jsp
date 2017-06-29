<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>收货人信息</title>
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/weui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/jquery-weui.min.css" />	
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
	</script>
	<style>
		.box{
			margin-top:.6rem !important;
			margin:auto;
			width:calc(100% - 40px);
			height:1.63rem;
			background: #fff;
			
		}
		.box_div{
			width:100%;
			height: .4rem;
			border-bottom:  solid 1px #eee; 
		}
		.box_div span{
			display:inline-block;
			width:.7rem;
			height: .4rem;
			line-height: .4rem;
			text-indent: 10px;
			text-align: right;
			font-size: .13rem;
		}
		.box_div input{
			display:inline-block;
			width:calc(100% - .8rem);
			height: .4rem;
			line-height: .4rem;
			border: none;
			outline: none;
			font-size: .13rem;
			float: right;
		}
				/*城市联动*/
		.weui-toast {
	width: 100px;
	height: 100px;
}
.weui-icon_toast {
	font-size: 55px;
	margin-top: 10px;
	margin-bottom: 5px;
}
.weui-toast_content {
	font-size: 14px;
}
.weui-dialog__hd {
	background: #418bc8;
	height: 20px;
	color: #fff;
}
.weui-dialog__title {
	font-size: 16px;
	line-height: 20px;
}
.weui-dialog__bd {
	font-size: 14px;
	height: 25px;
	line-height: 50px;
}
.weui-dialog__ft {
	font-size: 14px;
}
.toolbar .toolbar-inner {
	height: 0.4rem;
}
.toolbar .title {
	height: 0.4rem;
	line-height: 0.4rem;
	font-size: 0.15rem;
}
.toolbar .picker-button {
	height: 0.4rem;
	line-height: 0.4rem;
	font-size: 0.13rem;
}
.weui-picker-modal {
	height: 2rem;
}
.toolbar {
	line-height: 0.4rem;
}
.weui-picker-modal .picker-items {
	font-size: 0.14rem;
}
.weui-picker-modal .picker-modal-inner {
	height: 1.6rem;
}
.weui-picker-modal .picker-items {
	text-align: center;
}
.weui-toptips {
	padding: 0;
	height: 0.4rem;
	line-height: 0.4rem;
}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>收货人信息</h6>
			<a class="commHeader_r hipper_xia" href="javascript:shou();">
				<h6>完成</h6>
			</a>
		</header>
		<!--【头部】end-->
		<div class="box">
			<div class="box_div">
				<span>发货人：</span>
				<input type="text" placeholder="请输入姓名" id="con_name" type="text" value="${info.shouhuoName }"/>
			</div>
			<div class="box_div">
				<span>手机号：</span>
				<input type="text" placeholder="请输入手机号" id="con_phone" type="text" value="${info.shouhuoShone }"/>
			</div>
		<!--三级联动-->
			<div class="box_div">
				<span>地址：</span>
				<input type="text" id="adder" onclick="document.activeElement.blur();" readonly="readonly" placeholder="请选择地址"/>			
			</div>
			<div class="box_div">
				<span>街 道：</span>
				<input type="text" id="xadder" value="${ info.shouhuoAddressInfo }" placeholder="请输入详细地址"/>
			</div>
		
		</div>
		<!-- 下单id -->
		<input type="hidden" id="xiaId" value="${xiaId }"> 
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-weui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/city-picker.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
		<script type="text/javascript">
		/*三级联动*/
			$("#adder").cityPicker({
			   title: "请选择发货地址"
			});
			//ajax提交
			function shou(){
				//下单id
				var xiaId=$("#xiaId").val();
				//收货人
				var shouhuoName=$("#con_name").val();
				//手机号
				var shouhuoPhone=$("#con_phone").val();
				//详细地址
				var shouhuoAddressInfo=$("#xadder").val();
				
				//发货人地址
				var shouhuoAddress=$("#adder").val();
				//url
				var url=xiaId+"/"+shouhuoName+"/"+shouhuoPhone+"/"+shouhuoAddress+"/"+shouhuoAddressInfo;
				$.ajax({
					url : 'xiaordertab/shou/'+url,
					type : 'POST',
					success : function(data) {
						//提示
					    layer.open({
					    	content: '保存成功!',
					    	skin: 'msg',
					    	time: 2
					  	});
						window.location.href="RequestMappingUtil/requestNUll/APP/placeAnOrder";
					},
					error : function(xhr, type) {
						//提示
					    layer.open({
					    	content: 'Ajax error!',
					    	skin: 'msg',
					    	time: 2
					  	});
					},
					async:false
				});
			}
			
			//加载执行
			$(function(){
				$("#shouhuoAddressInfo").keydown(function(){
					$("#shouhuoAddressInfo_value").html("");
					$("#shouhuoAddressInfo_value").html($(this).val());
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
				}else if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还没有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				}
			}
		
		</script>
	</body>
</html>
