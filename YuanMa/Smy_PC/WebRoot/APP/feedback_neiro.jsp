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

<title>意见反馈</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
		<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
		<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
<style type="text/css">
.wenben {
	width: calc(100% - 40px);
	height: 1.5rem;
	margin-left: 20px;
	margin-top: .6rem;
	padding: 0.2rem;
	resize: none;
	border: none;
}
</style>
<body>
	<!--【头部】-->
	<header class="commHeader"> <a class="commHeader_l" href="javascript:history.back(-1);">
		<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
	</a>
	<h6>意见反馈</h6>
	<a class="commHeader_r" href="feedbacktagController/getKuaiKeIdList/${login.kuaikeId }">
		<p class="commHeader_r_font">历史反馈</p>
	</a> </header>
	<!--【头部】end-->
	<form action="feedbacktagController/feedbackAdd" method="post">
		<!-- 快客Id -->
		<input type="hidden" name="kuaikeId" value="${login.kuaikeId }" />
		<textarea class="wenben" name="remark" placeholder="请写下你宝贵的建议"></textarea>
		<button class="order_btn" id="" type="submit">提交</button>
	</form>
	<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js"></script>
	<!-- 提示 -->
	<script type="text/javascript">	${errorShow }</script>
</body>

</html>
