<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

<!-- THIS IS WRITE DIV CSS STYLE BEGEN -->

<style type="text/css">
.main01 {
	background: gray;
	width: 400px;
	height: 500px;
	border: 2px solid gray;
	margin: 20px;
	padding: 20px;
}
</style>


<!-- THIS IS WRITE JS FILE -->
<script type="text/javascript" src="jquery/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("#sut").click(function() {

			alert("this is a first test web project");

			if ($.trim($("input[name='uname']").val()) == "") {
				alert("THE NAME CAN'T null ");
			}
			if ($.trim($("input[name='upass']").val()) == "") {
				alert("THE PASSWORD CAN'T NULL");
			}

		})



	})
</script>
</head>

<body>
	<h1>你失败了吧   重新去看看你的代码 是不是对象没有传递过来 </h1>
</body>
</html>
