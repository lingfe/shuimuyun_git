<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 引用控制层插件样式 -->
<!-- 引用控制层插件样式 -->
<link rel="stylesheet" href="control/css/zyUpload.css" type="text/css">

<script type="text/javascript" src="scripts/jquery-1.7.2.js"></script>

<!-- 引用核心层插件 -->
<script type="text/javascript" src="core/zyFile.js"></script>

<!-- 引用控制层插件 -->
<script type="text/javascript" src="control/js/zyUpload.js"></script>

<!-- 引用初始化JS -->
<script type="text/javascript" src="core/demo.js"></script>
</head>

<body>
	<form method="post" action="UploadAction" enctype="multipart/form-data">
		<div id="demo" class="demo"></div>
	</form>
</body>
</html>
