<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单匹配中</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css"/>
		<style>
			.mate_yuan{
				width: 1.5rem;
				height:1.5rem;
				margin: auto;
				border: solid 1px #418bc8;
				border-radius:50%;
				position: relative;
				top: .8rem;
				-webkit-animation:circle 1.5s infinite linear;
			}
			@-webkit-keyframes circle{
			0%{ transform:rotate(0deg); }
			100%{ transform:rotate(360deg); }
			}
			.mate_text{
				text-align: center;
				width: 1.5rem;
				height: .2rem;
				position: absolute;
				display: inline-block;
				left: 50%;
				margin-left: -.75rem;
				margin-top: -.08rem;
			}
			.mate_img{
				position: absolute;
				left: .45rem;
				width: .08rem;
				height: .08rem;
				background: #0360ad;
				border-radius:50% ;
			}
		</style>
		<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
		
	</head>
	<body>
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>等待快递员</h6>
		</header>
		<div class="mate_yuan">
		<div class="mate_img"></div>
		</div>
		<span class="mate_text">匹配中</span>
		<!--无人接单(隐藏)-->
		<span style="display: none;" class="mate_text">无人接单</span>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
	</body>
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
</html>

