<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>详情页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script language="javascript">
	$(function() {
		//导航切换
		$(".imglist li").click(function() {
			$(".imglist li.selected").removeClass("selected")
			$(this).addClass("selected");
		})
	})
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			$(".tip").fadeIn(200);
		});

		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});

	});
</script>
</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">抢单列表</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			


			<ul class="toolbar1">
				<li><span><img src="<%=basePath%>images/t05.png" /></span>设置</li>
			</ul>

		</div>


		<table class="imgtable">

			<thead>
				<tr>
					<th>下单人</th>
					<th>下单人电话</th>
					<th>下单人地址</th>
					<th>收货人</th>
					<th>收货人电话</th>
					<th>收货人地址</th>
					<th>最迟到达时间</th>
					<th>状态</th>
					<th>商品重量</th>
					
					
				</tr>
			</thead>

			<tbody>

				<tr>
					<td>${pingTell.kuaikeName}</td>
					<td>${pingTell.kuaikePhone }</td>
					<td>${pingTell.kuaikeAddress }${pingTell.kuaikeAddressInfo }</td>
					
					<td>${pingTell.shouhuoName}</td>
					<td>${pingTell.shouhuoPhone }</td>
					<td>${pingTell.shouhuoAddress }${pingTell.shouhuoAddressInfo }</td>
					
					<td>${pingTell.okDate}</td>
					<td>${pingTell.status }</td>
					<td>${pingTell.shopzholiang}</td>
					
					
				</tr>
			</tbody>

		</table>
		
		
		<table class="imgtable">

			<thead>
				<tr>
					
					<th>商品数量</th>
					<th>支付费用</th>
					<th>货物类型</th>
					<th>最迟取货时间</th>
					<th>货物图片</th>
					
				</tr>
			</thead>

			<tbody>

				<tr>
					
					
					<td>${pingTell.shopNumer}</td>
					<td>${pingTell.shopprices }</td>
					<td>${pingTell.shopType }</td>
					<td>${pingTell.quhuoDate }</td>
					<td><img alt="" src="<%=basePath %> ${pingTell.shopImages}"/> </td>
				</tr>
			</tbody>

		</table>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="<%=basePath%>images/ticon.png" /></span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>

		</div>




	</div>

	<div class="tip">
		<div class="tiptop">
			<span>提示信息</span><a></a>
		</div>

		<div class="tipinfo">
			<span><img src="<%=basePath%>images/ticon.png" /></span>
			<div class="tipright">
				<p>是否确认对信息的修改 ？</p>
				<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
			</div>
		</div>

		<div class="tipbtn">
			<input name="" type="button" class="sure" value="确定" />&nbsp; <input
				name="" type="button" class="cancel" value="取消" />
		</div>

	</div>

	<script type="text/javascript">
		$('.imgtable tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
