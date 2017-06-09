<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script type="text/javascript">
	/*通过手机号码找回密码    手机接收验证码对密码进行修改【快捷找回密码】*/
	$(function() {
		$("#ajaxPhone").click(function() {
			//得到验证码的文本值
			var mobile_code = $("#yanpwd").val();
			var kuaikePhone=$("#phone").val();
			//发送Ajax请求得到验证码
			$.ajax({
				url : 'getCode/'+kuaikePhone,
				type : 'post',
				async : false,
				data : {
					mobile_code : mobile_code
				},
				//请求成功后触发
				success : function(data) {
					//为验证码文本框进行赋值
					$("#yanpwd").val(data);
					return false;
				}
			});
			//阻止表单提交(Ajax)
			return false;
		});

	});
</script>

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
				<li><img src="<%=basePath%>PC/images/p.png" /><a href="javascript:void(0);">0851
						8510 3179</a></li>
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
			<li class="zhao_r">人工找回</li>
		</ul>
		<div style="clear: both;"></div>
	</div>

	<div class="zhao_c">
		<!--手机找回密码-->
		<div class="zhao_shou2 que0" style="display: none;">
			<!-- 手机找回form 开始 -->
			<form action="reupdatepass/PC" method="post">
				<div class="zhuce_phone">
					<label>* 手机号码：</label> <input type="text" value=" " id="phone"
						name="kuaikePhone" /> <span class="hidden2"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden2_2" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img2" />
				</div>
				<div class="zhuce_yanzheng">
					<label>* </label> <input type="text" value="${mobile_code}"
						id="yanpwd" name="mobile_code" />
					<button class="yzbtn zhubtn" id="ajaxPhone">获取手机验证码</button>
					<span class="hidden8"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden8_8" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img8" />
				</div>
				<div class="zhuce_pwd zhao_pwd">
					<label>* 登录密码：</label> <input type="password" value="" id="logopwd"
						name="password" /> <span class="hidden3"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden3_3" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img3" />
				</div>
				<div class="zhuce_xing">
					<label>* 确认密码：</label> <input type="password" value="" id="pwd"
						name="okpassword" /> <span class="hidden4"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden4_4" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img4" />
				</div>
				<div class="zhuce_xiayibu">
					<button id="btn">确认</button>
				</div>
			</form>
			<!-- 手机找回密码结束 -->

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
				<ul class="setbacks_33" style="top: 226px;">
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
										<p class="setbacks_3_11">2</p>
										<p class="setbacks_3_22">审核</p>
								</a></td>
							</tr>
						</table>
					</li>
					<li>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="center"><a
									href="<%=basePath%>PC/zhuanyepeixun.jsp">
										<p class="setbacks_3_11">3</p>
										<p class="setbacks_3_22">审核成功</p>
								</a></td>
							</tr>
						</table>
					</li>

				</ul>
				<div class="clear"></div>
			</div>

			<form action="selectUpdatePasswordBykuaikeInfo" method="post"
				id="subform">
				<div class="zhuce_xing">
					<label>* 姓名：</label> <input type="text" value="" id="namett"
						name="kuaikeName" /> <span class="hidden1"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden1_1" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img1" />
				</div>

				<div class="zhuce_phone">
					<label>* 手机号码：</label> <input type="text" value="" id="phone"
						name="kuaikePhone" /> <span class="hidden2"
						style="width: 100px;height: 30px; color: red;">不能为空</span> <span
						class="hidden2_2" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
					<img src="<%=basePath%>PC/images/g00_03.png" class="img2" />
				</div>

				<div class="zhuce_dizhi">
					<label>* 现居住地址：</label> <select id="sheng" name="kuaikeAddress">
					 <c:forEach items="${province }" var="p">
							<option value="${p.name }" >${p.name }</option>
						</c:forEach>
						</select> <span>省</span> <select id="shi" name="kuaikeAddress">
						<c:forEach items="${city }" var="c">
							<option value="${c.name }" >${c.name }</option>
						</c:forEach>
						</select> <span>市</span> <select id="xian" name="kuaikeAddress">
						<c:forEach items="${area }" var="a">
							<option value="${a.name }" >${a.name }</option>
						</c:forEach>
					</select> <span>县/区</span>

				</div>
				
				<div class="zhuce_xiangqing">
					<label></label> <input type="text" value="" id="jiedao"
						name="kuaikeAddressInfo" /> <span>详情地址</span> <span
						class="hidden7" style="width: 100px;height: 30px; color: red;">不能为空</span>
					<span class="hidden7_7"
						style="width: 100px;height: 30px; color: red;">输入正确的格式</span> <img
						src="<%=basePath%>PC/images/g00_03.png" class="img7" />
				</div>
				<div class="zhuce_xiayibu">
					<button id="btn"
						onclick="document.getElementById('subform').submit();return false">提交
					</button>
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
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">帮助信息</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">注册帮助</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">登录帮助</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">认证帮助</a></li>
			<li><img src="<%=basePath%>PC/images/004_03.png" /><a href="#">更多</a></li>
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
			<li><span>商城名称:</span><a href="http://www.smuyun.com/">水木云</a></li>
			<li><span>商城客服电话:</span><a href="#"> 400 800 600</a></li>
			<li><span>商城客服邮箱:</span><a href="#">wenping@smuyun.com</a></li>
			<li><span>商城关键词组:</span><a href="http://www.smuyun.com/">水木云， 水木云商城</a></li>
			<li><span>商城简要说明:</span><a href="#">水木云实体社区服务商城</a></li>
		</ul>
	</div>
	</footer>
<!-- 提示 -->
<script type="text/javascript">	${errorShow }</script>
</body>
</html>
<script src="<%=basePath%>PC/js/shoujizhaohuimima.js"
	type="text/javascript" charset="utf-8"></script>
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