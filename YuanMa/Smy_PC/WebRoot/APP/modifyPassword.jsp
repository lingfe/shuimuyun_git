<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改密码</title>
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
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>修改密码</h6>
		</header>
		<form action="<%=basePath %>updatePassWordByOldPassword" method="post">
		<!--【头部】end-->
		<div class="courier_firsttit">
			当前手机号码为：${login.kuaikePhone }
		</div>
		<div class="appeal_firstdiv">
			<input type="hidden" name="kuaikePhone" id="rekuaikePhone" value="${login.kuaikePhone }">
			<div>
				<label>原登录密码</label>
				<input type="password" id="lastpwd" style="width:1.8rem" name="password" placeholder="请输入原登录密码" />
				<input type="hidden" name="kuaikePhone" id="rekuaikePhone" value="${login.kuaikePhone }">
				<input type="hidden" name="kuaikeId" id="1kuaikeId" value="${login.kuaikeId }">
			</div>
			<div>
				<label>新登录密码</label><input type="password" id="chpwd" name="newPassword" placeholder="请输入新登录密码" />
			</div>
			<div>
				<label>确认新密码</label><input type="password" id="yespwd" placeholder="请再次输入新登录密码" />
			</div>
			<div>
				<label>验 证 码</label><input class="las" name="mobile_code" style=" width:1.2rem;" id="pwdYzm" type="text" placeholder="请输入验证码" /><button id="pwdYzmBtn">获取验证码</button>
			</div>
		</div>
		<button class="order_btn" id="pwdbtn">提交</button>
		</form>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script type="text/javascript">
			//修改密码
	$("#pwdbtn").click(function(){
				//验证审核
				if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还木有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				  	return false;
				}
		var lastpwd = $("#lastpwd").val();
		var chpwd = $("#chpwd").val();
		var yespwd = $("#yespwd").val();
		var pwdYzm = $("#pwdYzm").val();
		if(lastpwd=="" || !(/^[a-zA-Z\d_]{6,16}$/.test(lastpwd))) {
			//提示
		    layer.open({
		    	content: '请输入原登录密码',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(chpwd=="" || !(/^[a-zA-Z\d_]{6,16}$/.test(chpwd))) {
			//提示
		    layer.open({
		    	content: '请输入新登录密码',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(yespwd == "" || !(/^[a-zA-Z\d_]{6,16}$/.test(yespwd))) {
			//提示
		    layer.open({
		    	content: '请再次输入新登录密码',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}else if(yespwd != chpwd) {
			//提示
		    layer.open({
		    	content: '两次密码输入不一致',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(pwdYzm == "") {
			//提示
		    layer.open({
		    	content: '请输入验证码',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
	})
	$("#pwdYzmBtn").click(function() {
				//验证审核
				if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还木有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				  	return false;
				}
	var kuaikePhone = $("#rekuaikePhone").val();
		if(!(kuaikePhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(kuaikePhone))) {
			//提示
		    layer.open({
		    	content: '手机号错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}else{
			var mobile_code = $("#pwdYzm").val();
				
				$.ajax({
					url : 'getCode/' + kuaikePhone,
					type : 'POST',
					data : {
						mobile_code : mobile_code
					},
	
					//请求成功后触发
					success : function(data) {
	
						$("#pwdYzm").val(data);
	
					}
				});
		
		
			time(this);
		}
	})
			
		</script>
		<!-- 验证身份 初级验证 -->
		<script type="text/javascript">
		if("${login}"==""||"${login}"==null){
		//询问框
		layer.open( {
				anim: 'up',
				shadeClose: false,
				content: '您还木有登陆？',
				btn: ['登录', '注册'],
				yes:function(index){
					layer.close(index);
			  		window.location.href="RequestMappingUtil/requestNUll/APP/login";
				},
				no:function(index){
					layer.close(index);
					window.location.href="RequestMappingUtil/requestNUll/APP/register";
				}  
			});
		}else{
			if("${login.kuaikePhone}"==""||"${login.kuaikeAddressInfo}"==""||"${login.kuaikeShenfenZF}"==""||"${login.kuaikeShouchiSFZ}"==""){
				//验证审核
				if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还木有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				}else{
					//询问框
					layer.open( {
						anim: 'up',
						shadeClose: false,
						content: '您的资料还没有完善？',
						btn: ['完善资料','取消'],
						yes:function(index){
							layer.close(index);
							window.location.href="RequestMappingUtil/requestNUll/APP/perfectData_firstStep";
						},
						no:function(index){
							layer.close(index);
						}  
					});
				}
			}
		}
		</script>
	</body>
</html>
