<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	<form action="add" method="post">
		快客名称:<input type="text" name="kuaikeName"><br /> 快客电话:<input
			type="text" name="kuaikePhone"><br /> 快客地址:<input type="text"
			name="kuaikeAddress"><br /> 收货人姓名:<input type="text"
			name="shouhuoNmae"><br /> 收货人电话:<input type="text"
			name="shouhuoShone"><br /> 收货人地址:<input type="text"
			name="shouhuoAddress"><br /> 取货时间:<input type="date"
			name="quhuoDate"><br /> 运费:<input type="text"
			name="kaikeProies"><br /> 到达时间:<input type="date"
			name="okDate"><br /> 商品名称:<input type="text" name="shopName"><br />
		商品重量:<input type="number" name="shopzholiang"><br /> 商品价格:<input
			type="text" name="shopprices"><br /> 商品规格:<input type="text"
			name="shopGuige"><br /> 上架时间:<input type="date"
			name="shopDate"><br /> <br /> <input type="submit" />
	</form>


	<form action="upload.do" method="post" enctype="multipart/form-data">
		快客名称:<input type="text" name="kuaikeName"><br /> 快客电话:<input
			type="text" name="kuaikePhone"><br /> 快客地址:<input type="text"
			name="kuaikeAddress"><br /> 登录密码:<input type="password"
			name="password"><br /> 身份证复印件文件:<input type="file"
			name="file1" /><br /> 手持身份证正反面:<input type="file" name="file2" /><br />
		申请时间:<input type="Date" name="kuaikeShengqingDate"><br /> <input
			type="submit" value="Submit" />
	</form>
</body>
</html>
