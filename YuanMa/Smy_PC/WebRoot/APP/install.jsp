<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设置</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<style type="text/css">
		.feed{
			width: 100%;
			margin-top: .1rem;
			background: white;
		}
		.feed a{
			display: block;
			width: 100%;
			height: .4rem;
			border-bottom: solid 1px #eee;
			color: #333;
			position: relative;
		}
		.feed a span{
			display: inline-block;
			position: absolute;
			top: .13rem;
			left: 10px;
		}
		.feed a img{
			position: absolute;
			right: .1rem;
			top: .1rem;
		}
		.install_tang{
			width: 2.5rem;
			background: white;
			height: .8rem;
			position: fixed;
			left: .35rem;
			border-radius:10px ;
			overflow: hidden;
		}
		.install_tang div{
			width: 100%;
			height: .4rem;
			line-height: .4rem;
			border-bottom: 1px solid #eee;
			padding-left: .1rem;
		}
		.install_ze{
			width: 100%;
			height: 100%;
			background: rgba(0,0,0,0.8);
			position: absolute;
			top: 0;
		}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>设置</h6>
		</header>
		<!--【头部】end-->
		<div class="feed">
			<a href="RequestMappingUtil/requestNUll/APP/phone">
				<span>手机号</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png"width="15" />
			</a>
			<a href="RequestMappingUtil/requestNUll/APP/setPassword">
				<span>密码设置</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png"width="15" />
			</a>
		</div>
		<div class="feed">
			<a class="tang_install">
				<span>退出当前账号</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png"width="15" />
			</a>
		</div>
		<!--退出登录-->
		<!--遮罩-->
		<div class="install_ze dis"></div>
			<div class="install_tang dis">
			<div><a href="RequestMappingUtil/requestNUll/APP/login">换个账号登录</a></div>
			<div><a href="RequestMappingUtil/requestNUll/APP/login">退出登录</a></div>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script>
		$(".tang_install").click(function(){
			$(".install_tang").removeClass("dis");
			$(".install_ze").removeClass("dis");
		})
		$(".install_ze").click(function(){
			$(".install_tang").addClass("dis");
			$(".install_ze").addClass("dis");
		})
		$(".install_tang div").click(function(){
			$(".install_tang").addClass("dis");
			$(".install_ze").addClass("dis");
		})
		</script>

	</body>
	
</html>
