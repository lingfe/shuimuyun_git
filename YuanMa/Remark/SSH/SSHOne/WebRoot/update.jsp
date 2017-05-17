<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   	<h3>员工修改页面</h3>
   	<form action="<%=basePath%>update_EmployeeAction" method="post">
   			<input type="hidden" name="employee.employeeId" value="${emp.employeeId }">		
   		员工姓名:<input type="text" name="employee.employeeName" value="${emp.employeeName }"><br/>
   		所在部门:<select name="employee.department.departmentId">
   		
   			<c:forEach items="${departmentList}" var="department">
   				<option  value="${department.departmentId }"
   					<c:if test="${department.departmentId == emp.department.departmentId }">selected</c:if>
   				>${department.departmentName }</option>
   			</c:forEach>
   		</select>
   		<input type="submit" value="修改">
   	</form>
   	
   	
   	
   	
   	
  </body>
</html>
