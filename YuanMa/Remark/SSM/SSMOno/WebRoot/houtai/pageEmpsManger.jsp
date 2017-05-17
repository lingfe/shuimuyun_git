<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>分页员工管理</title>
 	<!-- 导入jquery -->
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  	<script type="text/javascript">
  		$(function(){
  			alert(123);
  			$(".delete").click(function(){
  				var href= $(this).find("a").attr("href");
  				$("#deleteHidden").val("DELETE");
  				$("#deleteForm").attr("action",href).submit();
  				
  				return false;
  			});
  			
  		})
  	</script>

</head>  
  <body>
  <h1><a href="/SSMOno/updateEmps" >添加员工信息</a></h1>
  <form action="" method="post" id="deleteForm">
  		<input type="hidden" name="_method" id="deleteHidden"/>
  	</form>
  
   		<table border="1">
   		<tr>
   			<td>员工编号</td>
   			<td>员工姓名</td>
   			<td>员工工资</td>
   			<td>入职日期</td>
   			<td>电话号码</td>
   			<td>部门名称</td>
   			<td colspan="2">操作</td>
   		</tr>
   		<c:forEach items="${page.list}" var="st">
   			<tr>
   				<td>${st.empId }</td>
   				<td>${st.empName }</td>
   				<td>${st.salary }</td>
   				<td>${st.birthday }</td>
   				<td>${st.telephone }</td>
   				<td>${st.depts.deptName }</td>
   				<td><a href="/SSMOno/updateEmps/${st.empId}">修改</a>|</td>
   				<td><a href="/SSMOno/deleteEmps/${st.empId}">刪除</a></td>
   			</tr>
   		</c:forEach>
   		<tr>
   			<th>
   				<a href="/SSMOno/empsAll/${page.frist}/${page.pageNum}">首页</a>
   				<a href="/SSMOno/empsAll/${page.xia}/${page.pageNum}">下一页</a>
   				<a href="/SSMOno/empsAll/${page.shang}/${page.pageNum}">上一页</a>
   				<a href="/SSMOno/empsAll/${page.last}/${page.pageNum}">未页</a>
   			</th>
   		</tr>
   	</table>
  
  </body>
</html>
