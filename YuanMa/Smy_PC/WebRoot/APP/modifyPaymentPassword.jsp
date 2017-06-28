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

<title>修改支付密码</title>
<meta name="viewport"
	content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>APP/css/smyMobile.css" />
</head>
<body>
	<!--【头部】-->
	<header class="commHeader"> <a class="commHeader_l"
		onClick="javascript :history.back(-1);"> <img title="" alt=""
		src="<%=basePath%>APP/images/icon/arow_left.png" />
	</a>
	<h6>修改支付密码</h6>
	</header>
	<form action="updateZhifupwd" method="post">
		<!--【头部】end-->
		<div class="courier_firsttit">
			当前手机号码为：<span id="pwdPhone">${login.kuaikePhone }</span>
		</div>
		<input type="hidden" name="kuaikeId" value="${login.kuaikeId }">
		<input type="hidden"  id="zhifumima" value="${sessionScope.zhifumima}">
		<input type="hidden" id="rekuaikePhone" name="kuaikePhone"
			value="${login.kuaikePhone }">
		<div class="appeal_firstdiv">
			<div class="bindChange">
				<label>原支付密码</label><input type="password" id="zlastpwd"
					name="zhifupwd" placeholder="请输入原支付密码" />
			</div>
			<div class="bindChange">
				<label>新支付密码</label><input type="password" id="zchpwd"
					name="newzhifupwd" placeholder="请输入新支付密码" />
			</div>
			<div class="bindChange">
				<label>确认新密码</label><input type="password" id="zyespwd" name="repwd"
					placeholder="请再次输入新支付密码" />
			</div>
			<div>
				<label>验 证 码</label><input class="las" id="zpwdYzm"
					style="width:1.2rem;" type="text" name="mobile_code"
					value="${mobile_code }" placeholder="请输入验证码" />
				<button id="zpwdYzmBtn" disabled>获取验证码</button>
			</div>
		</div>
		<button class="order_btn" id="zpwdbtn">提交</button>
	</form>
	<script type="text/javascript"
		src="<%=basePath%>APP/js/jquery-1.11.0.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
	<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
	<script type="text/javascript" src="<%=basePath %>APP/js/jquery.md5.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>APP/js/smyMobile_yz.js"></script>
	<script type="text/javascript">
	$(".bindChange input").bind('input propertychange',function() {
			if($("#zlastpwd").val() != "" && $("#zchpwd").val() != "" && $("#zyespwd").val() != "") {
				$("#zpwdYzmBtn").css({"background": "#418bc8","color": "#fff"});
				$("#zpwdYzmBtn").removeAttr('disabled');
			}
			else if($("#zlastpwd").val() == "" || $("#zchpwd").val() == "" || $("#zyespwd").val() == "") {
				$("#zpwdYzmBtn").attr('disabled',"true");
				$("#zpwdYzmBtn").css({"background": "#418bc8","color": "#fff"});
			}
		}) 
	
	
		//修改支付密码
		$("#zpwdbtn").click(function() {
			//验证审核
			if ("${login.kuaikeStatus}" == 0) {
				//提示
				layer.open({
					content : '您的身份还没有通过审核！',
					skin : 'msg',
					time : 2
				});
				return false;
			}
			var zyespwd = $("#zyespwd").val();
			var zchpwd = $("#zchpwd").val();
			var zlastpwd = $("#zlastpwd").val();
			var zlaset=$.md5(zlastpwd);
			var zpwdYzm = $("#zpwdYzm").val();
			if (zlaset != $("#zhifumima").val()) {
				//提示
				layer.open({
					content : '原支付密码有误',
					skin : 'msg',
					time : 2
				});
				return false;
			} else if (zchpwd == "") {
				//提示
				layer.open({
					content : '请输入新支付密码',
					skin : 'msg',
					time : 2
				});
				return false;
			} else if (zyespwd == "") {
				//提示
				layer.open({
					content : '请再次输入新支付密码',
					skin : 'msg',
					time : 2
				});
				return false;
			} else if (zyespwd != zchpwd) {
				//提示
				layer.open({
					content : '两次密码输入不一致',
					skin : 'msg',
					time : 2
				});
				return false;
			} else if (zpwdYzm == "") {
				//提示
				layer.open({
					content : '请输入验证码',
					skin : 'msg',
					time : 2
				});
				return false;
			}
		})
		$("#zpwdYzmBtn").click(function() {
			//验证审核
			if ("${login.kuaikeStatus}" == 0) {
				//提示
				layer.open({
					content : '您的身份还没有通过审核！',
					skin : 'msg',
					time : 2
				});
				return false;
			}
			var kuaikePhone = $("#rekuaikePhone").val();
			if (!(kuaikePhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(kuaikePhone))) {
				//提示
				layer.open({
					content : '手机号错误',
					skin : 'msg',
					time : 2
				});
				return false;
			} else {
				var mobile_code = $("#zpwdYzm").val();
	
				$.ajax({
					url : 'getCode/' + kuaikePhone,
					type : 'POST',
					data : {
						mobile_code : mobile_code
					},
	
					//请求成功后触发
					success : function(data) {
	
						$("#zpwdYzm").val(data);
	
					}
				});
	
	
				time(this);
			}
		})
	</script>
	<!-- 验证身份 初级验证 -->
	<script type="text/javascript">
		if ("${login}" == "" || "${login}" == null) {
			//询问框
			layer.open({
				anim : 'up',
				shadeClose : false,
				content : '您还没有登陆？',
				btn : [ '登录', '注册' ],
				yes : function(index) {
					layer.close(index);
					window.location.href = "RequestMappingUtil/requestNUll/APP/login";
				},
				no : function(index) {
					layer.close(index);
					window.location.href = "RequestMappingUtil/requestNUll/APP/register";
				}
			});
		} else {
			if ("${login.kuaikePhone}" == "" || "${login.kuaikeAddressInfo}" == "" || "${login.kuaikeShenfenZF}" == "" || "${login.kuaikeShouchiSFZ}" == "") {
				//验证审核
				if ("${login.kuaikeStatus}" == 0) {
					//提示
					layer.open({
						content : '您的身份还没有通过审核！',
						skin : 'msg',
						time : 2
					});
				} else {
					//询问框
					layer.open({
						anim : 'up',
						shadeClose : false,
						content : '您的资料还没有完善？',
						btn : [ '完善资料', '取消' ],
						yes : function(index) {
							layer.close(index);
							window.location.href = "RequestMappingUtil/requestNUll/APP/perfectData_firstStep";
						},
						no : function(index) {
							layer.close(index);
						}
					});
				}
			}
		}
	</script>
</body>
</html>
