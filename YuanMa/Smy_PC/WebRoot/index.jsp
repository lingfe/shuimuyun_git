<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<<<<<<< HEAD
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv = "X-UA-Compatible" cotent = "IE=edge,chrome=1"/>
		<meta name="viewport" content="width=device-width,initial-scale=1.0" />
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>	
		<script src="js/jquery-3.1.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>		
	</head>
	<body>
		<div class="header">
			<div class="container flex">
				 <p class="flex2 conttent_p"><a href="login.jsp">登录</a><a href="userLogin.jsp">注册</a></p>
				 <ul class="flex8 content_u">
				 	<li><img src="images/e.png"/><a href="#">wenping@smuyun.com</a></li>
				 	<li><img src="images/p.png"/><a href="#">0851-85103179</a></li>
				 	
				 </ul>
			</div>
		    <div style="clear: both;"></div>
		</div>
	  
		<!--导航开始-->
		<header>
			<div class="container">
				<nav class="nav navlist" role="navigation">
					<div class="navbar-header" style="margin-right: 60px;">
						<a href="index.jsp" class="logo"><img src="images/logo.png" /></a>
						<a href="#" class="navbar-btn navbar-toggle navbtn" data-toggle="collapse" data-target="#myCollapse">
							<img src="images/nav-btn.png"/>
						</a>
					</div>
					<div class="collapse navbar-collapse navColl" id="myCollapse">
						<ul class="nav navbar-nav pull-left ren_nav">
							<li class="active"><a href="index.jsp">商城</a></li>
							<li class="active"><a href="index.jsp" style="color: #ff6d46;">人人配送</a></li>
							<li><a href="aboutUs.html">公众号</a></li>
							<li><a href="service.html">关于人人配送</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!--导航结束-->
		
		<!--轮播开始-->
		<div class="carousel slide" id="myCarousel">
			<!--<轮播项目-->
			<div class="carousel-inner">
				<div class="item active"><img src="images/001.jpg"/></div>
				<div class="item"><img src="images/001.jpg"/></div>
				<div class="item"><img src="images/001.jpg"/></div>
				<div class="item"><img src="images/001.jpg"/></div>
				<div class="item"><img src="images/001.jpg"/></div>
				<div class="item"><img src="images/001.jpg"/></div>
			</div>
			<!--轮播指标-->
			<ul class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
			</ul>
			<!--轮播导航-->
			<a href="#myCarousel" class="carousel-control left left-ico" data-slide="prev">
				<img src="images/left.png" />
			</a>
			<a href="#myCarousel" class="carousel-control right  right-ico" data-slide="next">
				<img src="images/right.png" />
			</a>
		</div>
		<!--轮播结束-->
		<!--按钮开始-->
		<div class="ren_aj1 flex1">
			 <img src="images/a001_03.png"/>
			 <span>我要抢单</span>
		</div>
		<div class="ren_aj2 flex1">
			 <img src="images/a002_03.png"/>
			 <span>我要下单</span>
		</div>
		<div style="clear: both;"></div>
		<!--底部开始-->
		<footer>
			<div class="col-lg-1"></div>
			 <div class="fooeter1 col-lg-2 col-sm-6 col-xs-6 col-md-2">
			 	  <ul>
			 	  	<li>关于我们</li>
			 	  	<li><a href="#">关于我们的详情</a></li>
			 	  </ul>
			 </div>
			 <div class="fooeter2 col-lg-2 col-sm-6 col-xs-6 col-md-2">
			   <ul>
			 	  	<li><img src="images/004_03.png"/><a href="#">帮助信息</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">注册帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">登录帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">认证帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">更多</a></li>
			 	  </ul>
			 
			 </div>
			 <div class="fooeter3 col-lg-2 col-sm-6 col-xs-6 col-md-2">
			 	<ul>
			 	  	<li>帮助信息</li>
			 	  </ul>
			 </div>
			 <div class="fooeter4 col-lg-5 col-sm-6 col-xs-6 col-md-5">
			 	  <ul>
			 	  	<li>联系我们</li>
			 	  	<li><span>商城名称:</span><a href="#">水木云</a></li>
			 	  	<li><span>商城客服电话:</span><a href="#"> 0851-85103179</a></li>
			 	  	<li><span>商城客服邮箱:</span><a href="#">wenping@smuyun.com</a></li>
			 	  	<li><span>商城关键词组:</span><a href="#">水木云， 水木云商城</a></li>
			 	  	<li><span>商城简要说明:</span><a href="#">水木云实体社区服务商城</a></li>
			 	  </ul>
			 	  
			 </div>
			 
		</footer>
=======
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<c:forEach items="${query }" var="st">
	<table>
		<thead>
			<tr>
				<th>商品名称</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${st.shopName}</td>
			</tr>
		</tbody>
	</table>
</c:forEach>
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
>>>>>>> ae7d28f39d398a5bb3ab4b261f96640d1d3da268

	</body>
</html>
