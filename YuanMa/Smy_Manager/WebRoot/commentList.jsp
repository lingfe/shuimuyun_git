<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'user.jsp' starting page</title>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/info.css">
	<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
	<script type="text/javascript">
		
		/*   批量删除   */
      	function batchDelete() {
				var $checked = $("tr input[type=checkbox]").is(':checked');
				if ($checked == true) {
					if (confirm("是否执行删除?")) {
						$("#_method").val("DELETE");
						$("#hiddenForm").attr("action",
								"${pageContext.request.contextPath}/removeCommentInfo");
						$("#hiddenForm").submit();
					}
				} else {
					confirm("请选择要删除的管理员");//alert("");
					return false;
				}
			}

  			/*  全选    */
	   $(function(){
		   $("#SelectAll").click(function(){
			   $("tr input[type='checkbox']").attr("checked",this.checked);
		   });
	   });
  
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
			<li><a href="#">系统管理</a></li>
			<li><a href="#">评论管理</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li onclick="batchDelete();return false;"><span><img src="<%=basePath%>images/t03.png" /></span>批量删除</li>
			</ul>


			<ul class="toolbar1">
				<li><span><img src="<%=basePath%>images/t05.png" /></span>设置</li>
			</ul>

		</div>
		<form action="" method="post" id="hiddenForm">
			<input type="hidden" name="_method" id="_method" />

		<table class="tablelist">
			<thead>
				<tr>
					<th><input type="checkbox" name="checkbox" value="checkbox" id="SelectAll" 
						 onClick="selectAll();"/>
						 全选
					</th>
					
					<th>快客Id</th>
					<th>下单Id</th>
					<th>评论等级</th>
					<th>备注信息</th>
					<th>评论时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${comment}" var="c">
				<tr>
					<td><input type="checkbox" id="subcheck" name="subcheck" value="${c.commentId}"/></td>
					
					<td>${c.kuaikeId }</td>
					<td>${c.xiaId }</td>
					
					<td id="t">
						<c:if test="${c.star==0 }">☆</c:if>
						<c:if test="${c.star==1 }"><font color="red" size="5">★</font></c:if>
						<c:if test="${c.star==2 }"><font color="red" size="5">★★</font></c:if>
						<c:if test="${c.star==3 }"><font color="red" size="5">★★★</font></c:if>
						<c:if test="${c.star==4 }"><font color="red" size="5">★★★★</font></c:if>
						<c:if test="${c.star==5 }"><font color="red" size="5">★★★★★</font></c:if>
					</td>
					<td>${c.remark }</td>
					<td><fmt:formatDate value="${c.commentDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td>
					<a href="queryCommentDetail/${c.commentId}" class="tablelink">详情</a>
					<a href="removeCommentInfo/${c.commentId}" class="tablelink">删除</a>
					</td>
					
					
					
				</tr>
			</c:forEach>
			
			
			</tbody>
		</table>


		</form>

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
