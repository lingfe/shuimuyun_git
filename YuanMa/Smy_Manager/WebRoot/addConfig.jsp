<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>添加管理员</title>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/info.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>layer/mobile/need/layer.css" />
<script src="<%=basePath%>layer/layer.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript">
	$(function() {

		$("#str").click(function() {

			if ($.trim($("input[name='uname']").val()) == "") {
				//询问框
				alert("管理员不能为空");
				return false;
			} else if ($.trim($("input[name='upwd']").val()) == "") {
				alert("你不用输入密码啦？");
				return false;

			} else if ($.trim($("input[name='uremark']").val()) == "") {
				alert("请简单输入点备注信息");
				return false;

			} else if ($.trim($("input[name='uphone']").val()) == "") {
				alert("还是得留个联系方式吧");
				return false;

			}


		});
	});
</script>
</head>

<body>
	<div class="map">
		<label class="curr">当前位置：</label><label class="curr1">系统管理
			&gt; 添加操作员</label>
	</div>
	<div class="">
		<form class="" action="insertManager" method="post">
			<table style="line-height: 50px;">
				<tr>
					<td>姓名：</td>
					<td><input type="text" name="uname"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="upwd"></td>
				</tr>
				<tr>
					<td>备注：</td>
					<td><input type="text" name="uremark"></td>
				</tr>
				<tr>
					<td>电话：</td>
					<td><input type="text" name="uphone"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="添加"
						id="str" /> <input type="reset" value="重置"></td>
				</tr>

			</table>

		</form>
	</div>
</body>
</html>
