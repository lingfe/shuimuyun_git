<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	
  </head>
  
  <body>
  	
  	<h3><a href="<%=basePath%>query_EmployeeAction">查询用户所有信息</a></h3>
  	
  
  	
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
   		<c:forEach items="${employeeList}" var="st">
   			<tr>
   				<td>${st.empId }</td>
   				<td>${st.empName }</td>
   				<td>${st.salary }</td>
   				<td>${st.birthday }</td>
   				<td>${st.telephone }</td>
   				<td>${st.depts.deptName }</td>
   				<td><a href="<%=basePath%>updateSelect_EmployeeAction?emps.empId=${st.empId}">修改</a>|</td>
   				<td><a href="<%=basePath%>remove_EmployeeAction?emps.empId=${st.empId}">刪除</a></td>
   			</tr>
   		</c:forEach>
   	</table>
  </body>
</html>
