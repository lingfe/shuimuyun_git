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
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script src="js/jquery-3.1.0.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/zhaohuimima.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		$("#ajaxPhone").click(function() {
			var phoneCode = $("#yanpwd").val();

			$.ajax({
				url : 'getCode',
				type : 'POST',
				data : {
					phoneCode : phoneCode
				},

				//请求成功后触发
				success : function(data) {

					$("#yanpwd").val(data);

				}
			})
		})
	})
</script>


</head>
<body>
	<div class="header">
		<div class="container flex">
			<p class="flex2 conttent_p">
				<a href="login.jsp">登录</a><a href="zhuce.jsp">注册</a>
			</p>
			<ul class="flex8 content_u">
				<li><img src="images/e.png" /><a href="#">wenping@smuyun.com</a></li>
				<li><img src="images/p.png" /><a href="#">0851 8510 3179</a></li>

			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>

	<!--导航开始-->
	<header>
	<div class="container">
		<nav class="nav navlist" role="navigation">
		<div class="navbar-header" style="margin-right: 60px;">
			<a href="index.jsp" class="logo"><img src="images/logo.png" /></a> <a
				href="#" class="navbar-btn navbar-toggle navbtn"
				data-toggle="collapse" data-target="#myCollapse"> <img
				src="images/nav-btn.png" />
			</a>
		</div>
		<div class="collapse navbar-collapse navColl" id="myCollapse">
			<ul class="nav navbar-nav pull-left ren_nav">
				<li class="active"><a href="http://www.smuyun.com/">商城</a></li>
				<li class="active"><a href="index.jsp" style="color: #ff6d46;">人人配送</a></li>
				<li><a href="aboutUs.jsp">公众号</a></li>
				<li><a href="service.jsp">关于人人配送</a></li>
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
			<li class="zhao_r">人工找回</li>
		</ul>
		<div style="clear: both;"></div>
	</div>

	<div class="zhao_c">
		<!--手机找回密码-->
		<div class="zhao_shou2 que0" style="display: none;">

			<div class="zhuce_phone">
				<label>* 手机号码：</label> <input type="text" value=" " id="phone"
					name="kuaikePhone" /> <span class="hidden2"
					style="width: 100px;height: 30px; color: red;">不能为空</span> <span
					class="hidden2_2" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
				<img src="images/g00_03.png" class="img2" />
			</div>
			<div class="zhuce_yanzheng">
				<label>* </label> <input type="text" value="${phoneCode}"
					id="yanpwd" name="phoneCode" />
				<button class="yzbtn zhubtn" id="ajaxPhone">获取手机验证码</button>
				<span class="hidden8" style="width: 100px;height: 30px; color: red;">不能为空</span>
				<span class="hidden8_8"
					style="width: 100px;height: 30px; color: red;">输入正确的格式</span> <img
					src="images/g00_03.png" class="img8" />
			</div>
			<div class="zhuce_pwd zhao_pwd">
				<label>* 登录密码：</label> <input type="password" value="" id="logopwd"
					name="password" /> <span class="hidden3"
					style="width: 100px;height: 30px; color: red;">不能为空</span> <span
					class="hidden3_3" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
				<img src="images/g00_03.png" class="img3" />
			</div>
			<div class="zhuce_xing">
				<label>* 确认密码：</label> <input type="password" value="" id="pwd"
					name="okpassword" /> <span class="hidden4"
					style="width: 100px;height: 30px; color: red;">不能为空</span> <span
					class="hidden4_4" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
				<img src="images/g00_03.png" class="img4" />
			</div>
			<div class="zhuce_xiayibu">
				<button id="btn">确认</button>
			</div>

		</div>

		<!--人工找回密码-->
		<div class="zhao_ren1 que1" style="display: block;">
			<!--进度条-->
			<div class="setbackss">
				<!--进度条底层-->
				<div class="setbacks_11"></div>
				<!--进度条中层-->
				<div class="setbacks_22" style="width:0%; top: 197px;"></div>
				<!--进度条顶层-->
				<ul class="setbacks_33" style="top: 220px;">
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a href="yianxiekuaike.jsp">
										<p class="setbacks_3_1_cc">1</p>
										<p class="setbacks_3_2_cc">填写快客信息</p>
								</a></td>
							</tr>
						</table>
					</li>
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a href="shenhe.jsp">
										<p class="setbacks_3_11">2</p>
										<p class="setbacks_3_22">审核</p>
								</a></td>
							</tr>
						</table>
					</li>
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a href="zhuanyepeixun.jsp">
										<p class="setbacks_3_11">3</p>
										<p class="setbacks_3_22">专业培训</p>
								</a></td>
							</tr>
						</table>
					</li>

				</ul>
				<div class="clear"></div>
			</div>

			<form action="updatePassword" method="post">
				<div class="zhuce_xing">
					<label>* 姓名：</label> <input type="text" value="" id="namett"
						name="kuaikeName" /> <span class="hidden1"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden1_1" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="images/g00_03.png" class="img1" />
				</div>

				<div class="zhuce_phone">
					<label>* 手机号码：</label> <input type="text" value="" id="phone"
						name="kuaikePhone" /> <span class="hidden2"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden2_2" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="images/g00_03.png" class="img2" />
				</div>

				<div class="zhuce_dizhi">
					<label>* 现居住地址：</label> <select id="sheng" name="kuaikeAddress">
						<option value="贵州省">贵州省</option>
						<option value="云南省">云南省</option>
						<option value="河北省">河北省</option>
						<option value="江苏省">江苏省</option>
						<option value="东北省">东北省</option>
					</select> <span>省</span> <select id="shi" name="kuaikeAddress">
						<option value="贵阳市">贵阳市</option>
						<option value="贵阳市">贵阳市</option>
						<option value="贵阳市">贵阳市</option>
						<option value="贵阳市">贵阳市</option>
						<option value="贵阳市">贵阳市</option>

					</select> <span>市</span> <select id="xian" name="kuaikeAddress">
						<option value="盘县">盘县</option>
						<option value="盘县">盘县</option>
						<option value="盘县">盘县</option>
						<option value="盘县">盘县</option>
					</select> <span>县/区</span>

				</div>
				<div class="zhuce_jie">
					<label></label> <select id="jie" name="kuaikeAddress">
						<option value="头桥二桥路">头桥二桥路</option>
						<option value="头桥二桥路">头桥二桥路</option>
						<option value="头桥二桥路">头桥二桥路</option>
						<option value="头桥二桥路">头桥二桥路</option>
					</select> <span>街道</span> <span class="hidden5"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden5_5" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="images/g00_03.png" class="img5" />
				</div>
				<div class="zhuce_xiangqing">
					<label></label> <input type="text" value="" id="jiedao"
						name="kuaikeAddressInfo" /> <span>详情地址</span> <span
						class="hidden7" style="width: 100px;height: 30px; color: red;">不能为空</span>
					<span class="hidden7_7"
						style="width: 100px;height: 30px; color: red;">输入正确的格式</span> <img
						src="images/g00_03.png" class="img7" />
				</div>
				<div class="zhuce_xiayibu">
					<button id="btn">提交</button>
				</div>
			</form>
		</div>

	</div>

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
			<li><img src="images/004_03.png" /><a href="#">帮助信息</a></li>
			<li><img src="images/004_03.png" /><a href="#">注册帮助</a></li>
			<li><img src="images/004_03.png" /><a href="#">登录帮助</a></li>
			<li><img src="images/004_03.png" /><a href="#">认证帮助</a></li>
			<li><img src="images/004_03.png" /><a href="#">更多</a></li>
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
			<li><span>商城客服电话:</span><a href="#"> 400 800 600</a></li>
			<li><span>商城客服邮箱:</span><a href="#">wenping@smuyun.com</a></li>
			<li><span>商城关键词组:</span><a href="#">水木云， 水木云商城</a></li>
			<li><span>商城简要说明:</span><a href="#">水木云实体社区服务商城</a></li>
		</ul>
	</div>
	</footer>

</body>
</html>
<script>
	//找回密码的切换
	$(function() {
		$(".zhao_ren1").css("display", "block");
		$(".zhao_b>li").click(function() {
			$(this).addClass("zhao_r").siblings().removeClass("zhao_r");
			var num = $(this).index();

			$(".que" + num + "").css("display", "block").siblings().css("display", "none");
		})

	})
</script>