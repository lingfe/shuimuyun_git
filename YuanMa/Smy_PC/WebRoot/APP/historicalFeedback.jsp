<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>意见反馈_内容</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	</head>
	<style type="text/css">
		/*无历史记录*/
		.his_wu{
			width: 1rem;
			margin: auto;
			color: #999;
			margin-top: 1.5rem;
		}
		.his_you{
			width: 95%;
			margin-left: 3%;
			background: white;
			height: .7rem;
			margin-top: .1rem;
			position: relative;
		}
		.his_you p{
			color: #333;
			font-size: .13rem;
			padding-left: 10px;
			line-height: .25rem;
		}
		.his_you span{
			position: absolute;
			display: inline-block;
			top: .5rem;
			right: .2rem;
		}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>历史反馈</h6>
			
		</header>
		<!--【头部】end-->
		<!--无历史记录(隐藏 dis)-->
		<div class="his_wu dis">
			暂无历史记录
		</div>
		<div class="his_you">
			<p class="text_2_hide">我的娃亏大发你娃亏大发你娃亏大发你娃亏大发你们接受对方是你UI人股东认购会丢更好的法规 贵人高度规定和 个号规格及国家瑞</p>
			<span>2017-6-16</span>
		</div>
		<div class="his_you">
			<p class="text_2_hide">我的娃亏大发你娃亏大发你娃亏大发你娃亏大发你们接受对方是你UI人股东认购会丢更好的法规 贵人高度规定和 个号规格及国家瑞</p>
			<span>2017-6-16</span>
		</div>
		<div class="his_you">
			<p class="text_2_hide">我的娃亏大发你娃亏大发你娃亏大发你娃亏大发你们接受对方是你UI人股东认购会丢更好的法规 贵人高度规定和 个号规格及国家瑞</p>
			<span>2017-6-16</span>
		</div>
		<!-- list start  -->
		<c:forEach items="${list }" var="st">
			<div class="his_you">
				<p class="text_2_hide">${st.remark }</p>
				<span><fmt:formatDate value="${st.feedbackDate }" pattern="yyyy-MM-dd HH:mm" /></span>
			</div>
		</c:forEach>
		<!-- list end -->	
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
	</body>
</html>
