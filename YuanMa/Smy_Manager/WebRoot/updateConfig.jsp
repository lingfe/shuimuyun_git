<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>





<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'editOper.jsp' starting page</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/info.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
  </head>
  
  <body>
    <div class="map"><label class="curr">当前位置：</label><label class="curr1">系统管理 &gt; 编辑操作员</label></div>
    <div class="">
	    <form class="" action="updateSInfo/${user.userid}" method="post">
	    	<input type="hidden" name="user.userid" value="${user.userid }">
	    	<table style="line-height: 50px;">
				<tr>
					<td>姓名：</td>
					<td><input type="text" name="uname" value="${user.uname }"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="upwd" value="${user.upwd }"></td>
				</tr>
				<tr>
					<td>备注：</td>
					<td><input type="text" name="uremark" value="${user.uremark }"></td>
				</tr>
				<tr>
					<td>电话：</td>
					<td><input type="text" name="uphone" value="${user.uphone}"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="修改"
						id="str" /> <input type="reset" value="重置"></td>
				</tr>

			</table>
	    </form>
	   </div>
  </body>
</html>
