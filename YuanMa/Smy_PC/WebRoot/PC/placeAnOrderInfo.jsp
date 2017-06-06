<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>${info.status==0?'未接单':''}${info.status==1?'已接单,未发货':'' }
	${info.status==2?'已到达,未确认':'' } ${info.status==3?'交易结束(已确认)':'' }${info.status==4?'已评论':'' }</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/index.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/bootstrap.min.css" />
<style>
body {
	max-width: 100%;
	max-height: 100%;
	background: url(<%=basePath%>PC/images/bg1.jpg);
	background-size: cover;
}
</style>
<!-- layer -->
<link rel="stylesheet" type="text/css" href="<%=basePath%>PC/layer/mobile/need/layer.css" />
<script src="<%=basePath%>PC/layer/layer.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<script type="text/javascript">
	if("${login}"==""||"${login}"==null){
		//询问框
		//询问框
		layer.confirm('您还木有登陆？', {
			skin: 'layui-layer-molv' ,//样式类名
		  	btn: ['登陆','注册'], //按钮
		  	closeBtn: 0
		}, function(){
		  	window.location.href="RequestMappingUtil/requestData/PC/login";
		}, function(){
			window.location.href="RequestMappingUtil/requestData/PC/register";
		});
	}
</script>
	<!--导航开始-->
	<header style="background: none;">
	<div class="container">
		<nav class="nav navlist" role="navigation">
		<div class="navbar-header" style="margin-right: 60px;">
			<a href="<%=basePath%>RequestMappingUtil/requestNUll/PC/index"
				class="logo"><img src="<%=basePath%>PC/images/logo.png" /></a> <a
				href="#" class="navbar-btn navbar-toggle navbtn"
				data-toggle="collapse" data-target="#myCollapse"> <img
				src="<%=basePath%>PC/images/nav-btn.png" />
			</a>
		</div>
		<div class="collapse navbar-collapse navColl" id="myCollapse">
			<ul class="nav navbar-nav pull-left ren_nav">
				<li class="active"><a href="<%=basePath%>PC/index.jsp"
					style="color: #ff6d46;">人人配送</a></li>
				<li><a href="javascript:void(0);">公众号</a></li>
				<li><a href="javascript:void(0);">关于我们</a></li>
				<li><a href="<%=basePath%>PC/personalCenter.jsp">个人中心</a></li>
				<li class="active"><a href="http://www.smuyun.com/"
					target="_left">商城</a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>
	<!--导航结束-->
	<div class="ddqh_content">
		<!--左边开始-->
		<div class="ddqh_left">
			<div class="ddqh_left_top">
				<h3>货物信息</h3>
				<table>
					<tr>
						<td>数量:</td>
						<td><span>${info.shopNumer }</span>(个/件)</td>
					</tr>
					<tr>
						<td>大小:</td>
						<td><span>${info.shopGuige }</span><i>(长(m),宽(m),高(m))</i></td>
					</tr>
					<tr>
						<td>类型:</td>
						<td><span>${info.shopType>0?'不易碎':'易碎'}</span></td>
					</tr>
					<tr>
						<td style="text-align: right;">最迟取货时间:</td>
						<td style="text-indent:40px; text-align: left;"><span><fmt:formatDate
									value="${info.quhuoDate}" pattern="yyyy-MM-dd HH:mm" /></span></td>
					</tr>
				</table>

			</div>
			<div class="ddqh_left_center"></div>
			<div class="ddqh_left_footer">
				<h3>实际发货人信息</h3>
				<table>
					<tr>

						<td>姓名:</td>
						<td>${info.kuaikeName }</td>
					</tr>
					<tr>
						<td>电话:</td>
						<td>${info.kuaikePhone }</td>
					</tr>
					<tr>
						<td>地址:</td>
						<td>${info.kuaikeAddress }</td>
					</tr>
					<tr>
						<td style="text-align: right;">下单时间:</td>
						<td style="text-indent:40px; text-align: left;">${info.shopDate }</td>
					</tr>
				</table>

			</div>

		</div>
		<!--右边开始-->
		<div class="ddqh_right">
			<div class="ddqh_left_top">
				<h3>
					<img src="<%=basePath%>PC/images/tu.png" />
				</h3>
				<table>
					<tr>

						<td></td>
						<td><span>${kuaike.kuaikeName }</span>快递员</td>
					</tr>
					<tr>

						<td></td>
						<td>${kuaike.kuaikePhone }</td>
					</tr>
					<tr>

						<td>当前状态:</td>
						<td>${info.status==0?'未接单':''}${info.status==1?'已接单,未发货':'' }
							${info.status==2?'已到达,未确认':'' } ${info.status==3?'交易结束(已确认)<span id="pingjia" style="color: white;padding:5px 8px;background: #ff6d46;font-size: 1em;">评价</span>':'' }
							${info.status==4?'已评论':'' }
						</td>
					</tr>
					<tr>
						<td style="text-align: right;">最晚到达时间:</td>
						<td style="text-indent:40px; text-align: left;"><span
							id="quhuo">${info.okDate}</span></td>
					</tr>

				</table>
				<!--当前地-->
				<table>
					<tr>
						<td style="text-align: right;">当前到达的地点:</td>
						<td style="text-indent:40px; text-align: left;">${info.kuaikeAddress }</td>

					</tr>
					<tr>
						<td style="text-align: right;"></td>
						<td style="text-indent:40px; text-align: left;color: #7eaa40;">${info.kuaikeAddressInfo }</td>
					</tr>
					<tr>
						<td style="text-align: right;"></td>
						<td style="text-indent:40px; text-align: left;color: #7eaa40;"></td>
					</tr>
				</table>
				<!--目的地-->
				<table>
					<tr>
						<td style="text-align: right;">当前到达的地点:</td>
						<td style="text-indent:40px; text-align: left;">${info.shouhuoAddress }</td>

					</tr>
					<tr>
						<td style="text-align: right;"></td>
						<td style="text-indent:40px; text-align: left;">${info.shouhuoAddressInfo }</td>
					</tr>
				</table>

			</div>

		</div>

	</div>
	<!--评价开始-->
	<div class="wan_pingjia">
		<div class="wan_pinhjia_content">
			<!-- 评论表单	start -->
			<form action="xiaordertab/insertCommentInfo" method="post">
				<div class="guanbi">
					<img src="<%=basePath%>PC/images/tu003_03.png" />
				</div>
				<p>
					<span><img src="<%=basePath%>PC/images/tu.png" /></span> <span><img
						src="<%=basePath%>PC/images/tu001.png" id="img_tu" /></span>
				</p>
				<ul>
					<li><img src="<%=basePath%>PC/images/tu003.png" /></li>
					<li><img src="<%=basePath%>PC/images/tu003.png" /></li>
					<li><img src="<%=basePath%>PC/images/tu003.png" /></li>
					<li><img src="<%=basePath%>PC/images/tu003.png" /></li>
					<li><img src="<%=basePath%>PC/images/tu003.png" /></li>
				</ul>
				<div style="clear: both;"></div>
				<!-- 快客id -->
				<input type="hidden" value="${kuaike.kuaikeId }" name="kuaikeId" />
				<!-- 下单id -->
				<input type="hidden" value="${info.xiaId }" name="xiaId" />
				<!-- 星评数值 -->
				<input type="hidden" value="0" name="star" />
				<!-- 评论内容 -->
				<textarea id="texval" name="remark">
			    	 	  请输入评价内容
			    </textarea>
				<div style="clear: both;"></div>
				<input type="submit" value="提交" id="wan_tijiao" />
			</form>
			<!-- 评论表单	end -->
		</div>
	</div>
<!-- 提示 -->
<script type="text/javascript">	${errorShow }</script>
</body>
</html>
<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(".wan_pingjia").hide();
	$("#pingjia").click(function() {
		$(".wan_pingjia").show();
	})
	$(".guanbi").click(function() {
		$(".wan_pingjia").hide();

	});

	//点击提交
	$("#wan_tijiao").click(function() {
		var texval = $("#texval").val();
		if (texval == "") {
			alert("请输入评价内容");
			return false;
		} else {
			$("form").submit();
		}
	})
</script>
