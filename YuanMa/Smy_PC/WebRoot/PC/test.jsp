<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'test.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		$(".ajax").click(function() {
			$.ajax({
				url : "xiaordertab/xiadanAjax/"+$(this).val(),
				type : 'get',
				data : '',
				dataType : 'html',
				success : function(data, status) {
					if (status == "success") {
						var objs = jQuery.parseJSON(data);
						var str = "";
						for (var i = 0; i < objs.length; i++) {
							str = str + objs[i].xiaId + " ";
						}
						$("#content").html(str);
					}
				},
				error : function(xhr, textStatus, errorThrown) {}
			});
		});
	});
</script>

</head>

<body>
	<button class="ajax" value="0">ajax0</button>
	<button class="ajax" value="1">ajax1</button>
	<button class="ajax" value="2">ajax2</button>
	<button class="ajax" value="3">ajax3</button>
	<div id="content"></div>
</body>
</html>
