<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String xiaId = request.getParameter("xiaId");
String shouprices = request.getParameter("shouprices");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>扫码支付</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<link rel="stylesheet" href="<%=basePath %>APP/css/smyMobile.css" />
	</head>
	<style>
	.qrcode{
		width:1.5rem;
		height:auto;
		margin:auto;
		margin-top:1rem;
		overflow:hidden;
		background: white;
	}
	.qrcode img {
		display: block;
		width: 100%;
		height: auto;
	}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>扫码支付</p>
		</header>
		<!--【头部】end-->
		<div class="y dis">
			<img class="qrcode" src="<%=basePath%>/zhiordertab/zhifuapply?xiaid=<%=xiaId%>&shouprices=<%=shouprices%>&shopName=好吃的" />
		</div>
		
		<input type="hidden" id="xiaId_to" value="<%=xiaId%>">
		<script type="text/javascript" src="<%=basePath %>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath %>APP/js/smyMobile.js" ></script>
		<script type="text/javascript">
			var xiaId = "<%=xiaId%>";
			if(!xiaId==""){
				$(".y").show();
			}else{
				$(".y").hide();
				alert("发生异常，请联系客服");
			}
			</script>
		<script type="text/javascript">
		setTimeout(Start, 5000); //延迟5秒开始周期回调
		var xiaId_to = $("#xiaId_to").val();
		function fun() {
			$.ajax({
				url : "<%=path%>/payselect/query",
				type : "POST",
				dataType : "text",
				data : {
					'xiaid' : xiaId_to
				},
				success : function(data) {
					if (data == "1") { //订单状态为1表示支付成功
						window.location.href = "<%=basePath%>RequestMappingUtil/requestData/APP/payOk?shouprices="+<%=shouprices%>; //页面跳转
					}
				},
				error : function() {
					
				}
			});
		}
		function Start() {
			setInterval("fun()", "1000"); //单位为毫秒
		}
		</script>
	</body>
</html>
