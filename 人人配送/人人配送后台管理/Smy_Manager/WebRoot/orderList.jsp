<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="p"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'right.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>layer/mobile/need/layer.css" />
<script src="<%=basePath%>layer/layer.js" type="text/javascript" charset="utf-8"></script>
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
<style type="text/css">
th{
text-align: center;
font-size:5;
}
td{

font-size:5;
}

</style>

</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">数据表</a></li>
			<li><a href="#">下单列表</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">



			<ul class="toolbar1">
				<li><span><img src="<%=basePath%>images/t05.png" /></span>设置</li>
			</ul>

		</div>


		<table class="tablelist">
			<thead>
				<tr>
					<th><input name="" type="checkbox" value="" /></th>
					
					<th>下单人名称</th>
					<th>下单人电话</th>
					<th>下单人地址</th>
					<th>收货人姓名</th>
					<th>收货人电话</th>
					<th>收货人地址</th>
					<th>取货时间</th>
					<th>支付费用</th>
					<th>状态</th>
					<th>最迟到达时间</th>
					<th>商品名称</th>
					<th>商品重量</th>
					<th>商品数量</th>
					<th>商品价格</th>
					<th>上架时间</th>
					<th>货物类型</th>
					<th>最快取货时间</th>
					<th>是否支付</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${order }" var="o">
				<tr>
					<td><input name="" type="checkbox" value="" /></td>
					
					<td>${o.kuaikeName }</td>
					<td>${o.kuaikePhone }</td>
					<td>${o.kuaikeAddress }</td>
					<td>${o.shouhuoName }</td>
					<td>${o.shouhuoPhone }</td>
					<td>${o.shouhuoAddress }${o.shouhuoAddressInfo }</td>
					<td>
					<fmt:formatDate value="${o.quhuoDate }" pattern="yyyy-MM-dd HH:mm:ss"/>	
					</td>
					<td>${o.kaikePrioes }</td>
					<td>${o.status }</td>
					<td>
					<fmt:formatDate value="${o.okDate }" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
					<td>${o.shopName }</td>
					<td>${o.shopzholiang }</td>
					<td>${o.shopNumer }</td>
					<td>${o.shopprices }</td>
					<td>
					<fmt:formatDate value="${o.shopDate }" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
					<td>${o.shopType }</td>
					<td>${o.timeString }</td>
					<td>${o.payment }</td>
					<td>操作</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>


		<div class="pagin">
			
			<table width="100%">
   				<tr align="right">
   					<td>第${Pagenum }页/${sumPage}页
	   					<a href="queryOrderList/1">首页</a>
	   					<a href="queryOrderList/${Pagenum-1} ">上一页</a>
	   					<a href="queryOrderList/${Pagenum+1}">下一页</a>
	   					<a href="queryOrderList/${sumPage}">尾页</a>
   					</td>
   				</tr>
   			</table>
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
	</div>

	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
