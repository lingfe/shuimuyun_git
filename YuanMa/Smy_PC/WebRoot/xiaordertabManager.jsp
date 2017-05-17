<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiaordertabManager.jsp' starting page</title>
    
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
   		<form action="add"  method="post">
			快客名称:<input type="text" name="kuaikeName"  ><br/>
			快客电话:<input type="text" name="kuaikePhone"><br/>
			快客地址:<input type="text" name="kuaikeAddress"><br/>
			收货人姓名:<input type="text" name="shouhuoNmae"><br/>
			收货人电话:<input type="text" name="shouhuoShone"><br/>
			收货人地址:<input type="text" name="shouhuoAddress"><br/>
			取货时间:<input type="datetime-local" name="quhuoDate"><br/>
			运费:<input type="month" name="kaikeProies"><br/>
			
		</form>
  </body>
</html>
