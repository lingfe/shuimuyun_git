<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设置_电话号码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<style type="text/css">
		.num_pohone{
			width: 100%;
			margin-top: .6rem;
			background: white;
			height: .5rem;
			line-height: .5rem;
			position: relative;
			font-size:.15rem;
		}
		.num_pohone span{
			display: inline-block;
			position: absolute;
		}
		.num_pohone span:nth-of-type(1){
			color: #333;
			left: .1rem;
		}
		.num_pohone span:nth-of-type(2){
			color: #999;
			right: .1rem;
		}
		.num_pohone_text{
			color: #999;
			font-size: .10rem;
			text-align: center;
			margin-top: .1rem;
		}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>手机号1</h6>
		</header>
		<!--【头部】end-->
		<div class="num_pohone">
			<span>手机号</span>
			<span>15223059337</span>
		</div>
		<a href="replace.html"><button class="order_btn" id="">更换手机号</button></a>
		<div class="num_pohone_text">一个手机号只能作为一个账号的登录名</div>
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
			}
		}
		</script>
	</body>

</html>
