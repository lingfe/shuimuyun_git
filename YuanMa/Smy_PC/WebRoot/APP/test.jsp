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
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/withdrawals" >提现：withdrawals.jsp</a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/myAddress" >我的地址：myAddress.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/bankCard" >银行卡：bankCard.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/placeAnOrderInfo" >下单详细信息：placeAnOrderInfo.jsp</a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/showCode" >输入取货码：showCode.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/perfectData_firstStep" >完善资料第一步：perfectData_firstStep.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/perfectData_secondStep" >完善资料第二步：perfectData_secondStep.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/personalData" >个人资料：personalData.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/editAddress" >编辑地址：editAddress.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/modifyCellPhoneNumber" >修改手机号：modifyCellPhoneNumber.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/modifyPassword" >修改密码：modifyPassword.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/modifyMailbox" >修改绑定邮箱：modifyMailbox.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/modifyPaymentPassword" >修改支付密码：modifyPaymentPassword.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/aboutUs" >关于我们：aboutUs.jsp</a><br/>
 		
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/aboutUs_FunctionIntroduction" >关于我们_功能介绍：aboutUs_FunctionIntroduction.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/aboutUs_SecurityReminder" >关于我们_安全提醒：aboutUs_SecurityReminder.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/endOfTransaction" >抢单_交易结束：endOfTransaction.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/myWallet_Recharge" >我的钱包_充值：myWallet_Recharge.jsp</a><br/>
 		
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/serviceXy" >服务协议：serviceXy.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/useHelp" >使用帮助：useHelp.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/install" >设置：install.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/phone" >设置_电话号码：phone.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/setPassword" >设置_密码：setPassword.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/feedback" >意见反馈：feedback.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/feedback_neiro" >意见反馈_内容：feedback_neiro.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/serviceHelp" >我的克服-帮助：serviceHelp.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/historicalFeedback" >意见反馈_内容_历史反馈：historicalFeedback.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/feedback_neiro" >意见反馈_内容：feedback_neiro.jsp</a><br/>
 		
 		
 		<BR><BR>
 		<h1>杨杰</h1>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/login" >登录：login.jsp</a><br/>
 		<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/free" >免密登录：free.jsp</a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/forgetPassword" >找回密码：forgetPassword.jsp</a><br/>
    	<a target="_LEFT" href="RequestMappingUtil/requestNUll/APP/appeal" >申诉找回密码：appeal.jsp</a><br/>

  </body>
</html>
