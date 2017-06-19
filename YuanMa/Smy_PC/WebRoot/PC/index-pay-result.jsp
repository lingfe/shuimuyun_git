<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String xiaid = request.getParameter("xiaId");
	String shouprices = request.getParameter("shouprices");
	String body = "下单请求";
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<title>微信支付</title>
<meta name="description" content="微信支付" />
<meta name="keywords" content="微信支付" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script charset="UTF-8" src="<%=basePath%>PC/js/jquery-3.1.0.js"></script>
<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
	type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
	function methodJS(){
	  var xiaid=document.getElementById("xiaid").innerHTML;
	  $.ajax({
	       url: "<%=path%>/payselect/query",
	       type: "GET",
	       dataType:"text",
	       data: {
				'xiaid':xiaid
	 		},
	        success: function (data) {
	            if (data=="1") { //订单状态为1表示支付成功
	                window.location.href = "<%=basePath%>orderselect/query/"+xiaid; //页面跳转
	            }
	            },
	            error: function () {
	                 alert("请求订单状态出错"); 
	            }
	        });
}
function Start(){
       setInterval(methodJS, 12000); 
}
setTimeout(Start, 2000);//延迟7秒开始周期回调
	
	
	
	</script>
</head>
<body>
	<div align="center" bgcolor="#666666">
		<div>
			<!--扫描代码-->
			<input type="hidden" name="out_trade_no" value="${out_trade_no}" />
			<div class="s-con" id="codem">
				<div class="m26">
					<h1>订单提交成功，请您尽快付款！</h1>
					<div class="num">
					</div>
					        <div class="num"><span class="color1 ml16" style="font-size:15px;">订单号：<label id="xiaid" class="orange">${sessionScope.xiaId}</label></span><span class="color1 ml16">请您在提交订单后 <span class="orange">5分钟</span> 内完成支付，否则订单会自动取消。</span></div>
				</div>
				         <div class="title"><span class="color1 ml16" style="font-size:15px;">商品名称：<label id="body" class="orange"><%=body %></label></span></br><span class="color1 ml16" style="font-size:15px;">订单金额：<label  id = "shouprices" class="orange">${sessionScope.pricse }</label>元</span>


			</div>
			<div class="scan">
				<img
					src="<%=basePath%>/zhiordertab/zhifuapply?xiaid=${sessionScope.xiaId}&shouprices=${sessionScope.pricse }" />
			</div>
			<div class="question">
				<div class="new">
					<a href="http://www.zhifuka.net/gateway/weifutong/bind.html"
						target="_blank">微信支付如何绑定银行卡?</a>
				</div>
			</div>
		</div>
		<!--扫描代码结束-->
		<!--底部代码-->
		<div class="s-foot">贵阳市水木云科技有限公司</div>
		<!--底部代码结束-->
	</div>
	</div>
</body>
</html>
