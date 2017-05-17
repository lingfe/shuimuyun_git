<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>修改与删除</title>


  </head>
  
  <body> 
    
   
    	
    	<form:form action="/SSMOno/updateEmps" method="post" modelAttribute="employee">
  			<c:if test="${employee.empId!=null}">
  					<input type="hidden" name="_method" value="PUT"/>
  					<form:hidden path="empId"/>
  					
  			</c:if>
    		员工姓名:<form:input path="empName"/><br/>
    		员工工资:<form:input path="salary"/><br/>
    		<c:if test="${employee.empId==null}">
  			用戶生日: <form:input path="birthday"/><br/>
  			</c:if>
    		电话号码:<form:input path="telephone"/><br/>
    		部门名称:<form:select path="depts.deptId">
    					<form:options items="${requestScope.deptsAll}"  itemValue="deptId" itemLabel="deptName"/>
    			   </form:select>
    		 <c:if test="${employee.empId==null}">
  					 <input type="submit" value="添加"/>
  					 </c:if>
  					 <c:if test="${employee.empId!=null}">
  					 <input type="submit" value="修改"/>
  			</c:if>
    	</form:form>
    
    
  </body>
</html>
