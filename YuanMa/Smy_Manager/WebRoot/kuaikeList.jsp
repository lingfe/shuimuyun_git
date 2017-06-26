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
}

</style>

</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">数据表</a></li>
			<li><a href="#">快客信息</a></li>
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
					<th>登陆时间</th>
					<th>快客名称</th>
					<th>快客电话</th>
					<th>快客地址</th>
					<th>登陆状态</th>
					<th>申请时间</th>
					<th>密码</th>
					<th>详情地址</th>
					<th>身份正反</th>
					<th>手持身份</th>
					<th>状态</th>
					
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${kuaike}" var="pm">
				<tr>
					<input id="testaa" type="hidden" name="kuaikeId" value="${pm.kuaikeId }"/>
					<td><input name="" type="checkbox" value="" /></td>
					<td><fmt:formatDate value="${pm.loginDate }" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
					<td>${pm.kuaikeName }</td>
					<td>${pm.kuaikePhone }</td>
					<td>${pm.kuaikeAddress }</td>
					<td>
					<c:if test="${pm.kuaikeStatus==0 }">
						<font color="red">未通过</font>
					</c:if>
					<c:if test="${pm.kuaikeStatus==1 }">
						<font color="green">通过</font>
					</c:if>
					<c:if test="${pm.kuaikeStatus==2 }">
						<font color="green">在线</font>
					</c:if>
					<c:if test="${pm.kuaikeStatus==3 }">
						<font color="red">离线</font>
					</c:if>
					</td>
					<td><fmt:formatDate value="${pm.kuaikeShengqingDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td><input type="password" value="${pm.password }" readonly="readonly"></td>
					<td>${pm.kuaikeAddressInfo }</td>
					<td><img alt="" src="${pm.kuaikeShenfenZF}" style="width: 70px;height: 20px;"></td>
					<td><img alt="" src="${pm.kuaikeShouchiSFZ}" style="width: 70px;height: 20px;"></td>
					<td>
					<c:if test="${pm.kuaikeStatus>0 && pm.kuaikeStatus<4}"><font color="green">已审核</font></c:if>
					<c:if test="${pm.kuaikeStatus<1}"><font color="red"><a href="updateKuaikeStatus/${pm.kuaikeId }" id="h">审核</a></font></c:if>
					</td>
					
				</tr>
			</c:forEach>
			
			
			</tbody>
		</table>


		<div class="pagin">
			
			<table width="100%">
   				<tr align="right">
   					<td>第${Pagenum }页/${sumPage}页
	   					<a href="queryAllKuaike/1">首页</a>
	   					<a href="queryAllKuaike/${Pagenum-1} ">上一页</a>
	   					<a href="queryAllKuaike/${Pagenum+1}">下一页</a>
	   					<a href="queryAllKuaike/${sumPage}">尾页</a>
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
