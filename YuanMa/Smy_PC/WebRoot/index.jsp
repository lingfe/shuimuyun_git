<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>WelCome To Login Page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {


		/*用户登陆*/
		$('#login').click(function() {
			var name_state = $('#name');
			var psd_state = $('#psd');
			var name = $('#name').val();
			var psd = $('#psd').val();
			if (name == '') {
				name_state.parent().next().next().css("display", "block");
				return false;
			} else if (psd == '') {
				name_state.parent().next().next().css("display", "none");
				psd_state.parent().next().next().css("display", "block");
				return false;
			} else {
				name_state.parent().next().next().css("display", "none");
				psd_state.parent().next().next().css("display", "none");
				$('.login').submit();
			}
		});

		/*用户注册的js操作*/
		$('#register').click(function() {
			var name_r_state = $('#name_r');
			var phone_r_state = $('#phone_r');
			var email_r_state = $('#email_r');
			var psd_r_state = $('#psd_r');
			var affirm_psd_state = $('#affirm_psd');
			var name_r = $('#name_r').val();
			var phone_r = $('#phone_r').val();
			var email_r = $('#email_r').val();
			var psd_r = $('#psd_r').val();
			var affirm_psd = $('#affirm_psd').val();
			if ($.trim(name_r) == '') {
				name_r_state.parent().next().next().css("display", "block");
				return false;
			} else if ($.trim(phone_r) == '') {
				phone_r_state.parent().next().next().css("display", "block");
				return false;
			} else if (email_r == '') {
				email_r_state.parent().next().next().css("display", "block");
				return false;

			} else if (psd_r == '') {
				psd_r_state.parent().next().next().css("display", "block");
				return false;
			} else if (affirm_psd == '') {
				affirm_psd_state.parent().next().next().css("display", "block");
				return false;
			} else if (psd_r != affirm_psd) {
				return false;
			} else {
				$('.register').submit();
			}
		})
	})

	/*登陆form表单遮布*/
	function ok_or_errorBylogin(l) {
		var content = $(l).val();
		if (content != "") {
			$(l).parent().next().next().css("display", "none");
		}
	}
	/*注册form表单遮挡*/
	function ok_or_errorByRegister(r) {
		var affirm_psd = $("#affirm_psd");
		var psd_r = $("#psd_r");
		var affirm_psd_v = $("#affirm_psd").val();
		var psd_r_v = $("#psd_r").val();
		var content = $(r).val();
		if (content == "") {
			$(r).parent().next().next().css("display", "block");
			return false;
		} else {
			$(r).parent().next().css("display", "block");
			$(r).parent().next().next().css("display", "none");
			if (psd_r_v == "") {
				$(psd_r).parent().next().css("display", "none");
				$(psd_r).parent().next().next().css("display", "none");
				$(psd_r).parent().next().next().css("display", "block");
				return false;
			}
			if (affirm_psd_v == "") {
				$(affirm_psd_v).parent().next().css("display", "none");
				$(affirm_psd_v).parent().next().next().css("display", "none");
				$(affirm_psd_v).parent().next().next().css("display", "block");
				return false;
			}
			if (psd_r_v == affirm_psd_v) {
				$(affirm_psd).parent().next().css("display", "none");
				$(affirm_psd).parent().next().next().css("display", "none");
				$(psd_r).parent().next().css("display", "none");
				$(psd_r).parent().next().next().css("display", "none");
				$(affirm_psd).parent().next().css("display", "block");
				$(psd_r).parent().next().css("display", "block");
			} else {
				$(affirm_psd).parent().next().css("display", "none");
				$(affirm_psd).parent().next().next().css("display", "none");
				$(psd_r).parent().next().css("display", "none");
				$(psd_r).parent().next().next().css("display", "none");
				$(psd_r).parent().next().css("display", "block");
				$(affirm_psd).parent().next().next().css("display", "block");
				return false;
			}
		}
	}

	/*提交按钮*/
	function barter_btn(bb) {
		$(bb).parent().parent().fadeOut(1000);
		$(bb).parent().parent().siblings().fadeIn(2000);
	}
</script>
</head>

<body class="login_body">


	<!--用户登陆-->
	<div class="login_div">
		<div class="col-xs-12 login_title">登录</div>
		<form action="login" class="login" method="post">
			<div class="nav">
				<div class="nav login_nav">
					<div class="col-xs-4 login_username">用户名:</div>
					<div class="col-xs-6 login_usernameInput">
						<input type="text" name="uname" id="name" value=""
							placeholder="&nbsp;&nbsp;用户名/手机号"
							onblur="javascript:ok_or_errorBylogin(this)" />
					</div>
					<div class="col-xs-1 ok_gou">√</div>
					<div class="col-xs-1 error_cuo">×</div>
				</div>
				<div class="nav login_psdNav">
					<div class="col-xs-4">密&nbsp;&nbsp;&nbsp;码:</div>
					<div class="col-xs-6">
						<input type="password" name="upass" id="psd" value=""
							placeholder="&nbsp;&nbsp;密码"
							onBlur="javascript:ok_or_errorBylogin(this)" />
					</div>
					<div class="col-xs-1 ok_gou">√</div>
					<div class="col-xs-1 error_cuo">×</div>
				</div>
				<div class="col-xs-12 login_btn_div">
					<input type="submit" class="sub_btn" value="登录" id="login" />
				</div>
			</div>
		</form>

		<div class="col-xs-12 barter_btnDiv">
			<button class="barter_btn" onClick="javascript:barter_btn(this)">没有账号?前往注册</button>
		</div>
	</div>




	<!-- 用户注册 -->
	<div class="register_body">
		<div class="col-xs-12 register_title">注册</div>
		<form action="register" class="register" method="post">
			<div class="nav">
				<!-- 用户名 -->
				<div class="nav register_nav">
					<div class="col-xs-4">用户名:</div>
					<div class="col-xs-6">
						<input type="text" name="uname" id="name_r" value=""
							placeholder="&nbsp;&nbsp;用户名"
							onBlur="javascript:ok_or_errorByRegister(this)" />
					</div>
					<div class="col-xs-1 ok_gou">√</div>
					<div class="col-xs-1 error_cuo">×</div>
				</div>

				<!-- 电话号码 -->
				<div class="nav register_psdnav">
					<div class="col-xs-4">手机号:</div>
					<div class="col-xs-6">
						<input type="text" name="phone" id="phone_r" value=""
							placeholder="&nbsp;&nbsp;手机号"
							onBlur="javascript:ok_or_errorByRegister(this)" />
					</div>
					<div class="col-xs-1 ok_gou">√</div>
					<div class="col-xs-1 error_cuo">×</div>
				</div>
				<!-- 邮箱 -->
				<div class="nav register_psdnav">
					<div class="col-xs-4">邮箱:</div>
					<div class="col-xs-6">
						<input type="text" name="email" id="email_r" value=""
							placeholder="&nbsp;&nbsp;邮箱"
							onBlur="javascript:ok_or_errorByRegister(this)" />
					</div>
					<div class="col-xs-1 ok_gou">√</div>
					<div class="col-xs-1 error_cuo">×</div>
				</div>


				<!-- 密码 -->
				<div class="nav register_psdnav">
					<div class="col-xs-4">密&nbsp;&nbsp;&nbsp;码:</div>
					<div class="col-xs-6">
						<input type="password" name="upass" id="psd_r" value=""
							placeholder="&nbsp;&nbsp;密码"
							onBlur="javascript:ok_or_errorByRegister(this)" />
					</div>
					<div class="col-xs-1 ok_gou">√</div>
					<div class="col-xs-1 error_cuo">×</div>
				</div>
				<!-- 确认密码 -->
				<div class="nav register_affirm">
					<div class="col-xs-4">确认密码:</div>
					<div class="col-xs-6">
						<input type="password" name="affpass" id="affirm_psd" value=""
							placeholder="&nbsp;&nbsp;确认密码"
							onBlur="javascript:ok_or_errorByRegister(this)" />
					</div>
					<div class="col-xs-1 ok_gou">√</div>
					<div class="col-xs-1 error_cuo">×</div>
				</div>
				<div class="col-xs-12 register_btn_div">
					<input type="submit" class="sub_btn" value="注册" id="register" />
				</div>
			</div>
		</form>
		<div class="col-xs-12 barter_register">
			<button class="barter_registerBtn"
				onClick="javascript:barter_btn(this)" style="">已有秘籍?返回登录</button>
		</div>
	</div>


</body>
</html>