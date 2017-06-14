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

<title>My JSP 'imgtable.jsp' starting page</title>

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
					<th>抢单标示</th>
					<th>下单标示</th>
					<th>快客标示</th>
					<th>抢单状态</th>
					<th>抢单时间</th>
					<th>操作</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${qiangList }" var="qiang">
				<tr>
					<td>${qiang.qiangId}</td>
					<td>${qiang.xiaId }</td>
					<td>${qiang.kuaikeId }</td>
					<td>
					<c:if test="${qiang.status==0}">
					<font color="green">抢单成功</font>
					<!--'状态',状态(0=抢单成功，1=抢单失败，2=等待取货，3=等待配送（点击确认配送），4=已经到达（修改下单状态2，确认到达），5=派单成功) -->
					</c:if>
					<c:if test="${qiang.status==1 }">
					<font color="red">抢单失败</font>
					</c:if>
					<c:if test="${qiang.status==2 }">
					等待取货
					</c:if>
					<c:if test="${qiang.status==3 }">
					等待配送
					</c:if>
					<c:if test="${qiang.status==4 }">
					已经到达
					</c:if>
					<c:if test="${qiang.status==5 }">
					派单成功
					</c:if>
				
					</td>
					<td>
					<fmt:formatDate value="${qiang.qiangDate }" pattern="yyyy-MM-dd HH:mm:ss"/>
					</td>
					
					<td>
					<a href="#" class="tablelink">查看</a> 
					<a href="#"	class="tablelink"> 删除</a>
					</td>
				</tr>
				</c:forEach>
				
			</tbody>

		</table>

		<div class="pagin">
	
			<table width="100%">
   				<tr align="right">
   					<td>第${Pagenum }页/${sumPage}页
	   					<a href="queryQiangorder/1">首页</a>
	   					<a href="queryQiangorder/${Pagenum-1} ">上一页</a>
	   					<a href="queryQiangorder/${Pagenum+1}">下一页</a>
	   					<a href="queryQiangorder/${sumPage}">尾页</a>
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
