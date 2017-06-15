<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索订单</title>
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
	
	</head>
	<body >
		<!--头部-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/head_left.png" />
			</a>
			<div class="loginCont_form_item mui-input-row header_input" id="header_input">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/header_sou.png" />
						<input class="loginCont_form_itemAll  right" id="search_sousuoinput" type="text" placeholder="请输入关键字" />
			</div>
			<a class="commHeader_r" href="RequestMappingUtil/requestNUll/APP/searchResult">
				<span class="search_sousuotext" id="search_sousuotext">搜索</span>
			</a>
		</header>
		<div>
			<div class="search_top">按热门地区搜索</div>
			<div>
				<input type="button" class="mui-btn  mui-btn-block search" value="花溪区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="南明区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="云岩区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="乌当区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="白云区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="观山湖区">		
			</div>
		</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
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
	</body>
</html>
