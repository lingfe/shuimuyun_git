<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>跳转页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
  		<h1>李杰</h1>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/shipperInformation" >发货人信息：shipperInformation.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/searchResult" >搜索结果：searchResult.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/search" >搜索：search.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/register" >注册：register.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/placeAnOrder" >下单：placeAnOrder.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/orderPayment" >订单支付：orderPayment.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/myOrder" >订单中心：myOrder.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/myInfo" >我的中心：myInfo.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/index" >首页：index.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/grabASingleOk" >确认抢单：grabASingleOk.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/grabASingle" >立即抢单：grabASingle.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/consignee" >收货人信息：consignee.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/grabASingleProcess" >抢单流程：grabASingleProcess.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/myWallet" >我的钱包：myWallet.jsp </a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/appeal" >抢单流程：grabASingleProcess.jsp</a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/appeal" >抢单流程：grabASingleProcess.jsp</a><br/>
 		
 		<BR><BR>
 		<h1>杨杰</h1>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/login" >登录：login.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/free" >免密登录：free.jsp</a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/forgetPassword" >找回密码：forgetPassword.jsp</a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/appeal" >申诉找回密码：appeal.jsp</a><br/>

  </body>
</html>
