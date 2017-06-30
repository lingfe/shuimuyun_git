<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'left.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=basePath%>css/style.css" rel="stylesheet"
	type="text/css" />
<script language="JavaScript"
	src="<%=basePath%>js/jquery.js"></script>

<script type="text/javascript">
	$(function() {
		//导航切换
		$(".menuson li").click(function() {
			$(".menuson li.active").removeClass("active")
			$(this).addClass("active");
		});

		$('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('ul').slideUp();
			} else {
				$(this).next('ul').slideDown();
			}
		});
	})
</script>


</head>

<body style="background:JavaScript:void(0);f0f9fd;">
	<div class="lefttop">
		<span></span>通讯录
	</div>

	<dl class="leftmenu">

		<dd>
			<div class="title">
				<span><img src="<%=basePath%>images/leftico01.png" /></span>人人配送
			</div>
			<ul class="menuson">
				<li class="active"><cite></cite><a href="<%=basePath%>index.jsp" target="rightFrame">WelCome</a><i></i></li>
				<li><cite></cite><a href="<%=basePath%>queryAllKuaike/1" target="rightFrame">快客列表</a><i></i></li>
				<li><cite></cite><a href="<%=basePath%>queryOrderList/1" target="rightFrame">下单列表</a><i></i></li>
				<li><cite></cite><a href="<%=basePath%>queryQiangorder/1" target="rightFrame">抢单列表</a><i></i></li>
				<li><cite></cite><a href="<%=basePath%>queryComment" target="rightFrame">评论列表</a><i></i></li>
				<li><cite></cite><a href="<%=basePath%>error.jsp" target="rightFrame">404页面</a><i></i></li>
			</ul>
		</dd>


		<dd>
			<div class="title">
				<span><img src="<%=basePath%>images/leftico02.png" /></span>商城管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="JavaScript:void(0);">用户信息</a><i></i></li>
				<li><cite></cite><a href="JavaScript:void(0);">公告信息</a><i></i></li>
				<li><cite></cite><a href="JavaScript:void(0);">商品列表</a><i></i></li>
			</ul>
		</dd>


		<dd>
			<div class="title">
				<span><img src="<%=basePath%>images/leftico03.png" /></span>订单管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="JavaScript:void(0);">订单管理</a><i></i></li>
				<li><cite></cite><a href="JavaScript:void(0);">订单详情</a><i></i></li>
				<li><cite></cite><a href="JavaScript:void(0);">信息列表</a><i></i></li>
				<li><cite></cite><a href="JavaScript:void(0);">其他</a><i></i></li>
			</ul>
		</dd>


		<dd>
			<div class="title">
				<span><img src="<%=basePath%>images/leftico04.png" /></span>系统管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="queryManager/1" target="rightFrame">管理员管理</a><i></i></li>
				<li><cite></cite><a href="<%=basePath %>queryAllPurInfo" target="rightFrame">添加权限</a><i></i></li>
				<li><cite></cite><a href="javascript:void(0);">其他</a><i></i></li>
			</ul>

		</dd>

	</dl>

</body>
</html>
