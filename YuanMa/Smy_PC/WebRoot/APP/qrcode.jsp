<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<style>
.order_btn {
	width: 80%;
	margin-left: 10%;
	background: #418bc8;
	color: white;
	margin-top: .2rem;
	border-radius: 10px;
	height: .35rem;
	line-height: .35rem;
}

.order_tan_clos input {
	width: 1.5rem;
	outline: none;
	border: none;
}

.xiadan {
	line-height: .4rem;
	margin-left: 20px;
	color: #333;
}

.mony {
	transform: translateY(10px);
	margin-left: 20px;
}

.botto {
	border: none;
}

.shijiankaung {
	width: 1rem !important;
	border: none !important;
}

.gearDate, .gearDatetime, .gearTime {
	background-color: rgba(0, 0, 0, 0.8) !important;
}

.shopprices {
	text-align: right;
}
</style>
</head>
<body>

	<div align="center" class="scan">

		<a class="cen_btn" onclick="location.href='javascript:history.go(-1);'">返回</a> 
		<img src="<%=basePath%>/zhiordertab/zhifuapply?xiaid=${sessionScope.xiaId}&shouprices=${sessionScope.sh }&shopName=好吃的" />
		<a class="scan">请识别二维码支付</a>
	</div>


	<!--底部-->
	<footer class="footerMenu"> <a
		href="RequestMappingUtil/requestNUll/APP/index"> <img title=""
		alt="" src="<%=basePath%>APP/images/icon/home_2.png" width="100%" />
		<p class="ss">首页</p>
	</a> <a href="RequestMappingUtil/requestNUll/APP/grabASingle"> <img
		title="" alt="" src="<%=basePath%>APP/images/icon/single.png"
		width="100%" />
		<p class="ss">抢单</p>
	</a> <a class="active"
		href="RequestMappingUtil/requestNUll/APP/placeAnOrder"> <img
		title="" alt="" src="<%=basePath%>APP/images/icon/order_2.png"
		width="100%" />
		<p class="ss">下单</p>
	</a> <a href="http://www.smuyun.com"> <img title="" alt=""
		src="<%=basePath%>APP/images/icon/mall.png" width="100%" />
		<p class="ss">商城</p>
	</a> <a href="RequestMappingUtil/requestNUll/APP/myInfo"> <img title=""
		alt="" src="<%=basePath%>APP/images/icon/personal.png" width="100%" />
		<p class="ss">我的</p>
	</a> </footer>

	<script>
		setTimeout(Start, 223000); //延迟5秒开始周期回调
		function fun() {
			var xiaid = $("#xiaId").val();
			$.ajax({
				url : "<%=path%>/payselect/query",
				type : "POST",
				dataType : "text",
				data : {
					'xiaid' : xiaid
				},
				success : function(data) {
					if (data == "1") { //订单状态为1表示支付成功
						window.location.href = "<%=basePath%>RequestMappingUtil/requestData/APP/payOk"; //页面跳转
					}
				},
				error : function() {
					alert("请求订单状态出错");
				}
			});
		}
		function Start() {
			setInterval("fun()", "1000"); //单位为毫秒
		}
	</script>
</body>
</html>