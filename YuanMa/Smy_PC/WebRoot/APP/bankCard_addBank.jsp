<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>银行卡_添加银行卡</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.addBack_list {
				width: 100%;
				height: auto;
				overflow: hidden;
				background: rgb(255,255,255);
				margin-top: 0.52rem;
			}
			.addBack_list_item {
				position: relative;
				width: 100%;
				height: 0.4rem;
				border-bottom: 1px solid #eee;
				box-sizing: border-box;
				padding: 0 20px;
			}
			.addBack_list_item:last-child {
				border: none;
			}
			.addBack_list_name {
				width: 0.6rem;
				height: 0.4rem;
				color: #333;
				font-size: 0.12rem;
				line-height: 0.4rem;
				text-align: right;
				float: left;
			}
			.addBack_list_item input {
				display: block;
				width: calc(100% - 0.7rem);
				height: 0.4rem;
				color: #333;
				font-size: 0.12rem;
				line-height: 0.4rem;
				outline: none;
				border: none;
				background: none;
				float: right;
			}
			.addBackBtn {
				display: block;
				width: calc(100% - 40px);
				height: 0.38rem;
				color: #999;
				font-size: 0.12rem;
				outline: none;
				border: none;
				margin: 0 auto;
				background: rgb(255,255,255);
				border-radius: 5px;
				margin-top: 0.5rem;
			}
			.closeIm {
				display: none;
				position: absolute;
				top: 50%;
				right: 0.2rem;
				width: 20px;
				height: 20px;
				color: #eee;
				font-size: 0.13rem;
				text-align: center;
				line-height: 16px;
				border-radius: 50%;
				border: 1px solid #eee;
				margin-top: -10px;
				z-index: 999;
			}
			.addBackMode a {
				font-size: 0.12rem;
				text-decoration: none;
				color: #418bc8;
				margin-right: 0.2rem;
			}
			.addBackMode a:last-child {
				color: #999;
			}
			.jzCont {
				position: fixed;
				top: 50%;
				left: 50%;
				width: 60px;
				height: 60px;
				background: rgba(0,0,0,.8);
				border-radius: 5px;
				margin-top: -30px;
				margin-left: -30px;
			}
			.jzCont span {
				display: block;
				width: 20px;
				height: 20px;
				background: url(<%=basePath%>APP/images/icon/loading.gif) no-repeat;
				background-size: cover;
				margin: 20px auto;
			}
		</style>
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>添加银行卡</p>
		</header>
		<!--【头部】end-->
		
		<div class="addBack_list">
			<div class="addBack_list_item">
				<div class="addBack_list_name">持卡人姓名</div>
				<input class="" id="backName" type="text" placeholder="请输入持卡人姓名" / value="">
				<div class='closeIm'>x</div>
			</div>
			<div class="addBack_list_item">
				<div class="addBack_list_name">卡号</div>
				<input id="backKahao" type="number" placeholder="请输入卡号" / value="">
				<div class='closeIm'>x</div>
			</div>
			<div class="addBack_list_item">
				<div class="addBack_list_name">卡类型</div>
				<input class="" id="" type="text" value="农业银行 储蓄卡" disabled="true">
			</div>
			<div class="addBack_list_item">
				<div class="addBack_list_name">手机号</div>
				<input id="backPhone" type="number" placeholder="请输入卡号" / value="">
				<div class='closeIm'>x</div>
			</div>
		</div>
		
		<button class="addBackBtn" id="addBackBtn" disabled="true">下一步</button>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script>
			//文本框改变
			$(".addBack_list_item input").bind(' input propertychange ',function() {
				var _this = $(this).val();
				if(_this !="") {
					$(this).next().show();
				}
				if(($('#backName').val() !="") && ($('#backKahao').val() !="") && ($('#backPhone').val() !="")) {
					$(".addBackBtn").css({
						"background": "#418bc8",
						"color" : "#fff"
					});
					$(".addBackBtn").removeAttr('disabled');
				}
				else if(($('#backName').val() =="") || ($('#backKahao').val() =="") || ($('#backPhone').val() =="")) {
					$("#addBackBtn").attr('disabled',"true");
					$(".addBackBtn").css({
						"background": "#fff",
						"color" : "#999"
					});
				}
			})
			
			$(".closeIm").click(function() {
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
				$(this).prev().val("");
				$(this).hide();
				if(($('#backName').val() !="") && ($('#backKahao').val() !="") && ($('#backPhone').val() !="")) {
					$(".addBackBtn").css({
						"background": "#418bc8",
						"color" : "#fff"
					});
					$(".addBackBtn").removeAttr('disabled');
				}
				else if(($('#backName').val() =="") || ($('#backKahao').val() =="") || ($('#backPhone').val() =="")) {
					$("#addBackBtn").attr('disabled',"true");
					$(".addBackBtn").css({
						"background": "#fff",
						"color" : "#999"
					});
				}
			})
			// 文本框得到焦点
			$(".addBack_list_item input").focus(function() {
				var _this = $(this).val();
				if(_this !="") {
					$(this).next().show();
				}
			})
			
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
