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

<title>My JSP 'index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!-- 引用控制层插件样式 -->
<link rel="stylesheet" href="control/css/zyUpload.css" type="text/css">

<script type="text/javascript" src="scripts/jquery-1.7.2.js"></script>

<!-- 引用核心层插件 -->
<script type="text/javascript" src="core/zyFile.js"></script>

<!-- 引用控制层插件 -->
<script type="text/javascript" src="control/js/zyUpload.js"></script>

<!-- 引用初始化JS -->
<script type="text/javascript" src="core/demo.js"></script>

<script type="text/javascript" src="jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#sub").click(function() {

			if ($.trim($("input[name='kuaikeName']").val()) == "") {
				alert("你输错了啊 ，你不知道嘛 ");
				return false;
			}
			else{
				alert("欢迎你来到我这里");
			}
		})

	})
</script>
</head>
<body>
	<form action="login" method="post">
		账号：<input type="text" name="kuaikeName" id="username" /> <br /> 
		密码：<input type="password" name="password" id="password" /> <br/>
		     <input type="submit" value="登陆" id="sub" />&nbsp;&nbsp;
		     <a href="reg.jsp"><input  type="button" value="注册"/></a>

	</form>
	
	
	
</body>
</html>

