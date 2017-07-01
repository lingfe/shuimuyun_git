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



<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" cotent="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<title>找回密码</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/index.css" />
<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=basePath%>PC/js/zhaohuimima.js" type="text/javascript"
	charset="utf-8"></script>
	<!-- layer -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/layer/mobile/need/layer.css" />
<script src="<%=basePath%>PC/layer/layer.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
	<div class="header">
		<div class="container flex">
			<p class="flex2 conttent_p">
				${sessionScope.namea!=null?'欢迎:':''}<a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/login">${sessionScope.namea!=null?'':'登录'}</a><a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/register"><span>${sessionScope.namea!=null?'':'注册'}</span></a>${sessionScope.namea!=null?sessionScope.namea:''}</p>
			<ul class="flex8 content_u">
				<li><img src="<%=basePath%>PC/images/e.png" /><a href="javascript:void(0);">wenping@smuyun.com</a></li>
				<li><img src="<%=basePath%>PC/images/p.png" /><a href="javascript:void(0);">0851 8861 0341</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>

	<!--导航开始-->
	<header>
	<div class="container">
		<nav class="nav navlist" role="navigation">
		<div class="navbar-header" style="margin-right: 60px;">
			<a href="<%=basePath%>PC/index.jsp" class="logo"><img
				src="<%=basePath%>PC/images/logo.png" /></a> <a href="#"
				class="navbar-btn navbar-toggle navbtn" data-toggle="collapse"
				data-target="#myCollapse"> <img
				src="<%=basePath%>PC/images/nav-btn.png" />
			</a>
		</div>
		<div class="collapse navbar-collapse navColl" id="myCollapse">
			<ul class="nav navbar-nav pull-left ren_nav">
				<li class="active"><a href="<%=basePath%>PC/index.jsp"
					style="color: #ff6d46;">人人配送</a></li>
				<li><a href="<%=basePath %>PC/intro.jsp">公众号</a></li>
				<li><a href="<%=basePath %>PC/about.jsp">关于我们</a></li>
				<li><a href="<%=basePath%>PC/personalCenter.jsp">个人中心</a></li>
				<li class="active"><a href="http://www.smuyun.com/"
					target="_left">商城</a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>
	<!--导航结束-->
	<!--内容开始-->
	<div class="zhao_top">
		<div class="zhao_a">找回密码</div>
		<ul class="zhao_b">
			<li>手机找回</li>
			<li class="zhao_r"
				style="color: white!important;background: #96d626;border: 1px solid #96d626; border-bottom: none;">人工找回</li>
		</ul>
		<div style="clear: both;"></div>
	</div>

	<div class="zhao_c">
		<!--人工找回密码-->
		<div class="zhao_ren1 que1" style="display: block;">
			<!--进度条-->
			<div class="setbackss">
				<!--进度条底层-->
				<div class="setbacks_11"></div>
				<!--进度条中层-->
				<div class="setbacks_22" style="width:38%; top: 242px;"></div>
				<!--进度条顶层-->
				<ul class="setbacks_33" style="top: 224px;">
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a
									href="<%=basePath%>PC/yianxiekuaike.jsp">
										<p class="setbacks_3_1_cc">1</p>
										<p class="setbacks_3_2_cc">填写快客信息</p>
								</a></td>
							</tr>
						</table>
					</li>
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a href="<%=basePath%>PC/toExamine.jsp">
										<p class="setbacks_3_1_cc">2</p>
										<p class="setbacks_3_2_cc">审核</p>
								</a></td>
							</tr>
						</table>
					</li>
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a
									href="<%=basePath%>PC/zhuanyepeixun.jsp">
										<p class="setbacks_3_1_cc">3</p>
										<p class="setbacks_3_22_cc">审核成功</p>
								</a></td>
							</tr>
						</table>
					</li>

				</ul>
				<div class="clear"></div>
			</div>
			<form action="findBackPassWord"  method="post">
				<div class="zhuce_pwd zhao_pwd">
					<input type="hidden" name="kuaikePhone" value="${sessionScope.kuaikePhone }"/>
					<label>* 重置密码：</label> <input type="password" value="" id="logopwd"
						name="password" /> <span class="hidden3"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden3_3" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img3" />
				</div>
				<div class="zhuce_xing">
					<label>* 确认密码：</label> <input type="password" value="" id="pwd" />
					<span class="hidden4"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden4_4" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img4" />
				</div>
				<div class="zhuce_xiayibu"
					style="margin: 40px auto;margin-bottom:60px;">
					<button id="btn">确认</button>
				</div>
			</form>
		</div>

	</div>

	<!--【底部】-->
		<footer class="footer">
			<div class="footer_top">
				<div class="foote_cont">
					<div class="footer_map">
						<a href="<%=basePath %>PC/index.jsp">首页</a>
						<a href="<%=basePath %>PC/index.jsp">人人配送</a>
						<a href="<%=basePath %>PC/intro.jsp">公众号</a>
						<a href="<%=basePath %>PC/index.jsp">网站地图</a>
						<a class="footer_map_last" href="<%=basePath %>PC/index.jsp">SITEAPM</a>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="footer_bCont">
					<a href="javascript:;">公司：水木云网络科技有限公司</a>
					<a href="javascript:;">公司地址：贵州省贵阳市花果园E区二单元</a>
					<a href="javascript:;">工信部备案号黔ICP备16008136号</a>
					<a href="javascript:;"><span><img alt="" src="<%=basePath%>PC/images/beianhao.jpg" width="15"></span>贵公网安备52010202000388号</a>
				</div>
			</div>
		</footer>
		<!--【底部】end-->
	<div class="zhaohui_tanchu">
		<div class="zhaohui_tanchu1">
			<p>密码找回成功</p>
			<p>
				还有<span id="show">3</span>s跳转到<em>人人配送登录页面</em>
			</p>
		</div>
	</div>
<!-- 提示 -->
<script type="text/javascript">	${errorShow }</script>
</body>
</html>
<script>
	//找回密码的切换
	$(function() {

		$(".hidden2").hide();
		$(".hidden2_2").hide();
		$(".img2").hide();
		$(".hidden3").hide();
		$(".hidden3_3").hide();
		$(".img3").hide();
		$(".hidden4").hide();
		$(".hidden4_4").hide();
		$(".img4").hide();
		$(".zhaohui_tanchu").hide();
		var statu3 = false;
		var statu4 = false;
		$("#logopwd").blur(function() {
			var valuepwd = $(this).val();
			var Reg = /^(?![A-Z]+$)(?![a-z]+$)(?!\d+$)(?![\W_]+$)\S{6,16}$/;
			if (valuepwd == null || valuepwd.length == 0) {
				$(".hidden3").show();
				$(".hidden3_3").hide();
				$(".img3").hide();
			} else {
				if (!Reg.test(valuepwd)) {
					$(".hidden3").hide();
					$(".hidden3_3").show();
					$(".img3").hide();
				} else {
					statu3 = true;
					$(".hidden3").hide();
					$(".hidden3_3").hide();
					$(".img3").show();
				}
			}
		});
		//确认密;码
		$("#pwd").blur(function() {
			var vla = $(this).val();
			var valuepwd = $("#logopwd").val();
			if (vla == "") {
				$(".hidden4").show();
				$(".hidden4_4").hide();
				$(".img4").hide();
			} else {
				if (vla != valuepwd) {
					$(".hidden4_4").show();
					$(".img1").hide();
					$(".hidden4").hide();
				} else {
					statu4 = true;
					$(".hidden4").hide();
					$(".hidden4_4").hide();
					$(".img4").show();
				}

			}

		});


		$("#btn").click(function() {
			if (statu3 == true && statu4 == true) {
				$(".zhaohui_tanchu").show();
				setInterval("refer()", 1000); //启动1秒定时
				return true;
			} else {
				alert("请输入新的密码");
				return false;
			}



		})




	})


	var t = 3; //设定跳转的时间  
	function refer() {
		if (t == 0) {
			location = "<%=basePath%>PC/login.jsp"; //#设定跳转的链接地址 
		}
		document.getElementById('show').innerHTML = "" + t + ""; // 显示倒计时 
		t--; // 计数器递减 
	}
</script>