<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人资料</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<body>
		<header class="commHeader">
		<a class="commHeader_l" href="<%=basePath%>APP/myInfo.jsp">
				<img title="" alt="" src="<%=basePath %>APP/images/icon/arow_left.png" />
			</a>
			<h6>个人资料</h6>
		</header>
			<div class="personal_div">
				<a href="RequestMappingUtil/requestNUll/APP/modifyCellPhoneNumber" >
					<img src="<%=basePath%>APP/images/icon/per_phone.png" height="25" />
					<span>手机号码</span>
					<span>${login.kuaikePhone }</span>
					<img src="<%=basePath%>APP/images/icon/consignee_right.png" height="16" />
				</a>
				<a>
					<img src="<%=basePath%>APP/images/icon/person_ren.png" height="25" />
					<span>我的姓名</span>
					<span>${login.kuaikeName }</span>
					<img src="<%=basePath%>APP/images/icon/consignee_right.png" height="16" />
				</a>
				<a href="RequestMappingUtil/requestNUll/APP/editAddress">
					<img src="<%=basePath%>APP/images/icon/adds_yellow.png" height="25" />
					<span>我的地址</span>
					<span>${login.kuaikeAddressInfo}</span>
					<img src="<%=basePath%>APP/images/icon/consignee_right.png" height="16" />
				</a>
				<%-- <a href="RequestMappingUtil/requestNUll/APP/modifyMailbox">
					<img src="<%=basePath%>APP/images/icon/email_red.png" width="20" />
					<span>我的邮箱</span>
					<span>1234567891@qq.com</span>
					<img src="<%=basePath%>APP/images/icon/consignee_right.png" height="16" />
				</a> --%>
				<a href="RequestMappingUtil/requestNUll/APP/modifyPassword">
					<img src="<%=basePath%>APP/images/icon/suo_green.png" height="25" />
					<span>修改密码</span>
					<span></span>
					<img src="<%=basePath%>APP/images/icon/consignee_right.png" height="16" />
				</a>
				<%-- <a href="RequestMappingUtil/requestNUll/APP/modifyPaymentPassword">
					<img src="<%=basePath%>APP/images/icon/suo_green.png" height="25" />
					<span>修改支付密码</span>
					<span></span>
					<img src="<%=basePath%>APP/images/icon/consignee_right.png" height="16" />
				</a> --%>
			</div>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>
