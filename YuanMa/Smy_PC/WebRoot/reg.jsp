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

<title>My JSP 'reg.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<script type="text/javascript" src="jquery/jquery-1.9.1.min.js"></script>
  <script type="text/javascript">
  	var count = 5;
  	var retId;
  	$(function(){
  		var isRight = false;
  		$("#kuaikePhone").keyup(function(){
  			var phone = $("#kuaikePhone").val();
  			if(!/^1[3|5|8][0-9]{9}$/.test(phone)){
  				$("#errorMsg").html("<font color='red'>不正确</font>");
  				isRight = false;
  			}else{
  				$("#errorMsg").html("<font color='green'>正确</font>");
  				isRight = true;
  			}
  		});
  		
  		$("#codeButton").click(function(){
  			if(isRight){
  				$.post("sendCode?kuaikePhone=" + $("#kuaikePhone").val(),function(){
  					alert("发送成功");
  				});
  				
  				retId = setInterval("changeTime()",1000);
  				
  			}else{
  				$("#errorMsg").html("<font color='red'>不正确</font>");
  				isRight = false;
  			}
  		});
  		
  	})
  	
  	function changeTime(){
  			if(count == 1){
  				$("#codeButton").val("重新获取验证码");
  				$("#codeButton").attr("disabled",false);
  				clearInterval(retId);
  				count = 5;
  			}else{
  				count--;
  				$("#codeButton").val("["+count+"]后重新获取验证码");
  				$("#codeButton").attr("disabled",true);
  			}
  			
  		}
  
  </script>
</head>
<body>
<center>
	<form action="register" method="post" enctype="multipart/form-data">
		账号：<input type="text" name="kuaikeName" id="u" /> <br />
		手机：<input type="text" name="kuaikePhone" id="kuaikePhone"><span id="errorMsg"></span>
   		 	<input type="button" value="获取手机验证码" id="codeButton"><br/>
	          密码：<input type="password" name="password" id="password" /> <br /> 
	          
	          图1：<input type="file" name="kuaikeShenfenF"/> <br />
		图2：<input type="file" name="kuaikeShenfenZ" ><br />
	          图3：<input type="file" name="kuaikeShouchiSFZ" /> <br /> 
	          
	          地址：<input type="text" name="kuaikeAddress" id="u" /> <br />
		 <input type="submit" value="注册" id="sub" />&nbsp;&nbsp;
		 <a href="index.jsp"><input type="button" value="登陆" /></a>

	</form>
</center>

</body>

</html>
