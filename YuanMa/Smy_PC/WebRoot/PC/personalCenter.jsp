<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>PC/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=basePath%>PC/css/index.css" />
<link rel="stylesheet" href="<%=basePath%>PC/css/style.css" />
<title>个人中心</title>

<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
//修改密码
	$(function() {
		$("#yzmBtn").click(function() {
			var mobile_code = $("input[name='mobile_code']").val();
			var kuaikePhone=$("#kuaikePhone2017").val();
			$.ajax({
				url : 'getCode/'+kuaikePhone,
				type : 'POST',
				data : {
					mobile_code : mobile_code
				},
				cache:false, 
     			ifModified :true ,
				//请求成功后触发 
				beforeSend :function(xmlHttp){ 
			        xmlHttp.setRequestHeader("If-Modified-Since","0"); 
			        xmlHttp.setRequestHeader("Cache-Control","no-cache");
			     },
				success : function(data) {
					$("input[name='mobile_code']").val(data);
				},
				async:false
			});
			//阻止表单重复提交
			return false;
		});
	});


	//修改手机号码
	$(function() {
		$("#infoYznBtn").click(function() {
			var mobile_code = $("input[name='mobile_code']").val();
			var kuaikePhone=$("#infoModifyPhone").val();
			$.ajax({
				url : 'getCode/'+kuaikePhone,
				type : 'POST',
				data : {
					mobile_code : mobile_code
				},
				cache:false, 
     			ifModified :true , 
     			beforeSend :function(xmlHttp){ 
			        xmlHttp.setRequestHeader("If-Modified-Since","0"); 
			        xmlHttp.setRequestHeader("Cache-Control","no-cache");
			     },
				//请求成功后触发
				success : function(data) {
					$("input[name='mobile_code']").val(data);
				},
				async:false
			});
			//阻止表单重复提交
			return false;
		});
	});

$(function(){
	$("#modifyBtn").click(function(){
		document.forms[0].submit();
	});
});


$(function(){
	$("#infoBtn").click(function(){
		document.forms[0].submit();
	});

});


</script>
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
	<!--头部  start-->
	<div class="header">
		<div class="container flex">
			<p class="flex2 conttent_p">
				${sessionScope.namea!=null?'欢迎:':''}<a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/login">${sessionScope.namea!=null?'':'登录'}</a><a
					href="<%=basePath%>RequestMappingUtil/requestData/PC/register"><span>${sessionScope.namea!=null?'':'注册'}</span></a>${sessionScope.namea!=null?sessionScope.namea:''}</p>
			<ul class="flex8 content_u">
				<li><a href="loginOut">安全退出</a></li>
				<li><img src="<%=basePath%>PC/images/e.png" /><a href="javascript:void(0);">wenping@smuyun.com</a></li>
				<li><img src="<%=basePath%>PC/images/p.png" /><a href="javascript:void(0);">0851
						8510 3179</a></li>
			</ul>
		</div>
		<div style="clear: both;"></div>
	</div>
	<!--头部  end-->

	<!--导航开始-->
	<header>
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
	<!--导航位置 end-->


	<!--页面主要能容-->
	<div class="perinfo_cont">
		<div class="perinfo_l left">
			<img class="perinfo_user" title="" alt=""
				src="<%=basePath%>PC/images/userImg.png" />
			<p class="perinfo_user_name">${uname}</p>
			<ul class="perinfo_menu">
				<li>
					<p id="allItem" class="perinfo_menu_title">订单记录</p>
				</li>
				<li>
					<p class="perinfo_menu_title">我的钱包</p>
				</li>
				<li>
					<p class="perinfo_menu_title">个人资料</p>
				</li>
				<li>
					<p class="perinfo_menu_title">修改密码</p>
				</li>
				<li>
					<p class="perinfo_menu_title">抢单记录</p>
				</li>
			</ul>
		</div>
		<div class="perinfo_r right">
			<div class="perinfo_rCont" id="perinfo_rContOne">
				<div class="perinfo_menu_item">
					<a href="javascript:void(0);" onclick="javascript:statusHref('0/1/${page.pageNum}');">全部订单</a>
					<a class="active" href="javascript:void(0);"
						onclick="javascript:statusHref(0);">待付款</a> <a
						href="javascript:void(0);" onclick="javascript:statusHref('1/1/${page.pageNum}');">待取货</a>
					<a href="javascript:void(0);" onclick="javascript:statusHref('2/1/${page.pageNum}');">正在派送</a>
					<a href="javascript:void(0);" onclick="javascript:statusHref('3/1/${page.pageNum}');">待评价</a>
				</div>
				<table border="0" cellspacing="0" cellpadding="0">
					<thead class="perinfo_thead">
						<tr class="perinfo_order_nav">
							<td class="perinfo_name">货物</td>
							<td class="perinfo_time">取货时间</td>
							<td class="perinfo_pay">实际付款</td>
							<td class="perinfo_state">交易状态</td>
							<td class="perinfo_operation">操作</td>
						</tr>
					</thead>
					<tbody class="perinfo_tbody prolist">
					
					</tbody>
					  	<tr>
				   			<th>
				   				<a href="xiaordertab/xiadanAjax/${page.status}/${page.frist}/${page.pageNum}">首页</a>
				   				<a href="xiaordertab/xiadanAjax/${page.status}/${page.xia}/${page.pageNum}">下一页</a>
				   				<a href="xiaordertab/xiadanAjax/${page.status}/${page.shang}/${page.pageNum}">上一页</a>
				   				<a href="xiaordertab/xiadanAjax/${page.status}/${page.last}/${page.pageNum}">未页</a>
				   			</th>
			   			</tr>
				</table>
			</div>
			<div class="perinfo_rCont">我的钱包</div>
			<div class="perinfo_rCont">
				<div class="perinfo_iffo">修改基本资料</div>

				<!-- 修改个人资料开始 -->
				<div class="modify_pwd modify_info">
					<div class="modify_info_user" id="preview">
						<img id="imghead" src="<%=basePath%>PC/images/userImg.png"
							onclick="$('#previewImg').click();">
					</div>
					<input id="previewImg" type="file" onchange="previewImage(this)"
						style="display: none;" id="previewImg">
					<div id="infoNameCont" class="modify_item">
						<div class="modify_item_name left">用户名:</div>
						<input id="infoName" class="modify_item_input left"
							readonly="readonly" type="text" value="${namea }" />


						<input id="d" class="modify_item_input left" readonly="readonly"
							type="hidden" value="${login.kuaikeId }" />
					</div>
					<div id="infoPhoneCont" class="modify_item">
						<div class="modify_item_name left">手机号码:</div>
						<input id="infoPhone" class="modify_item_input left" type="text"
							readonly="readonly" value="${uname }" />
					</div>
					<div id="infoNewPhoneCont" class="modify_item">
						<div class="modify_item_name left">备用手机:</div>
						<input id="infoNewPhone" class="modify_item_input left"
							type="text" />
					</div>
				</div>
				<!--修改个人信息结束  -->
				<div class="perinfo_iffo">修改手机号码</div>
				<!-- 修改手机号码开始 -->
				<form action="updatePhoneById" method="post">
					<div class="modify_pwd modify_info">
						<div id="infoModifyPhoneCont" class="modify_item">
							<div class="modify_item_name left">手机号:</div>

							<input required="required" id="id" class="modify_item_input left" type="hidden"
								name="kuaikeId" value="${login.kuaikeId }" /> 
							<input	id="infoModifyPhone" class="modify_item_input left" type="text"
								name="kuaikePhone" />
						</div>
						<div id="infoYznCont" class="modify_item">
							<input id="infoYznBtn" class="modify_item_yzbtn right"
								type="button" value="获取验证码" /> <input required="required" id="infoYzn"
								class="modify_item_yzinput right" type="text"
								value="${mobile_code}" name="mobile_code" />
						</div>
						<button id="infoBtn" class="modify_item_btn right">确认修改</button>
					</div>
				</form>
				<!-- 修改手机号码结束 -->
			</div>

			<!-- 个人中心修改密码 Start -->
			<div class="perinfo_rCont">
				<form action="reupdatepass" method="post">
					<div class="modify_pwd">
						<div id="phoneCont" class="modify_item">
							<div class="modify_item_name left">手机号码:</div>
							<input required="required" id="phone" class="modify_item_input left" type="text"
								name="kuaikePhone" readonly="readonly"
								value="${uname }" id="kuaikePhone2017"/>
						</div>
						<div id="pwdCont" class="modify_item">
							<div class="modify_item_name left">新置密码:</div>
							<input required="required" id="pwd" class="modify_item_input left" type="password"
								name="password" />
						</div>
						<div id="newPwdCont" class="modify_item">
							<div class="modify_item_name left">确认密码:</div>
							<input required="required" id="newPwd" class="modify_item_input left" type="password"
								name="repassword" />
						</div>
						<div id="yzmCont" class="modify_item">
							<input class="modify_item_yzbtn right" type="button" id="yzmBtn"
								value="获取验证码" /> <input required="required" id="yzm"
								class="modify_item_yzinput right" name="mobile_code" type="text"
								value="${mobile_code }" />
						</div>
						<button id="modifyBtn" class="modify_item_btn right">确认修改</button>
					</div>
				</form>
			</div>
			<!-- 个人中心修改密码End -->
			<div class="perinfo_rCont">抢单记录</div>
		</div>
	</div>
	<!--页面主要能容 end-->

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
			<li><span>商城名称:</span><a href="#">水木云</a></li>
			<li><span>商城客服电话:</span><a href="#"> 400 800 600</a></li>
			<li><span>商城客服邮箱:</span><a href="#">wenping@smuyun.com</a></li>
			<li><span>商城关键词组:</span><a href="#">水木云， 水木云商城</a></li>
			<li><span>商城简要说明:</span><a href="#">水木云实体社区服务商城</a></li>
		</ul>
	</div>
	</footer>
	<!--jqery库 jquery-2.1.0.js -->
	<script src="<%=basePath%>PC/js/jquery-3.1.0.min.js"
		type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		//默认
		$(function() {
			loadmore(0);
		});
	
		//ajax
		function loadmore(status) {
			//请求
			$.ajax({
				type : 'get',
				url : 'xiaordertab/xiadanAjax/' + status,
				dataType : 'html',
				success : function(objs) {
					var data = jQuery.parseJSON(objs);
					if (data == "") {
						layer.msg("没有数据!");
					} else {
						var result = ''
						for (var i = 0; i < data.length; i++) {
							//类型
							var shopType = data[i].shopType > 0 ? '不易碎' : '易碎';
							//状态
							status = data[i].status == 0 ? '未接单' : data[i].status;
							status = data[i].status == 1 ? '已接单,未取货' : status;
							status = data[i].status == 2 ? '已到达,未确认' : status;
							status = data[i].status == 3 ? '交易结束(待评价)' : status;
							status = data[i].status == 4 ? '已评价' : status;
							//价格
							var prioes=data[i].kaikePrioes==null?'未付款':data[i].kaikePrioes;
							
							//date
							var date=new Date(data[i].okDate);
							var dataStr=date.getUTCFullYear()+"."+date.getMonth()+"."+date.getDate()+"  "+date.toLocaleTimeString();
	
							result += "<tr> \
																		<td class='perinfo_name'> \
																			<img class='perinfo_img left' title='" + data[i].shopImages + "' alt='' src='" + data[i].shopImages + "' /> \
																			<div class='perinfo_orderinfo right'> \
																				<p>大小：" + data[i].shopGuige + "</p> \
																				<p>重量：" + data[i].shopzholiang + "kg</p> \
																				<p>类型：" + shopType + "</p> \
																			</div> \
																		</td> \
																		<td class='perinfo_time'> \
																			<p class='perinfo_time_text'>" + dataStr + "</p> \
																		</td> \
																		<td class='perinfo_pay'> \
																			<p class='perinfo_time_text'>￥" + prioes + "</p> \
																		</td> \
																		<td class='perinfo_state'> \
																			<p class='perinfo_time_text'>" + status + "</p> \
																		</td> \
																		<td class='perinfo_operation'> \
																			<p class='perinfo_btn'> \
																				<a href='xiaordertab/xiaorderInfo/" + data[i].xiaId + "'><img title='查看详情' alt='' src='<%=basePath%>PC/images/See.png' width='32' /></a> \
																			</p> \
																		</td> \
																	</tr>";
	
	
						}
						$('.prolist').append(result);
	
					}
				},
				error : function(xhr, type) {
					alert('Ajax error!');
				}
			});
		}
	
		//状态
		function statusHref(status) {
			$('.prolist').html("");
			loadmore(status);
		}
	</script>
	<script>
		$(function() {
			//切换全部订单颜色高亮
			$(".perinfo_menu_item a").click(function() {
				$(this).addClass("active").siblings().removeClass("active");
			})
	
			//选项卡切换
			$(".perinfo_r .perinfo_rCont").eq(0).show();
			$(".perinfo_menu_title").eq(0).addClass("perinfo_menu_title_active");
			$(".perinfo_menu li").click(function() {
				$(this).find(".perinfo_menu_title").addClass("perinfo_menu_title_active");
				$(this).siblings().find(".perinfo_menu_title").removeClass("perinfo_menu_title_active");
				var index = $(this).index();
				$(".perinfo_r .perinfo_rCont").eq(index).show().siblings().hide();
			})
	
			//验证修改密码表单
			$("#modifyBtn").click(function() {
				$(".modify_tips").remove();
				//获取手机号码
				var userPhone = $("#phone").val();
				//获取密码
				var pwd = $("#pwd").val();
				//获取新密码
				var newPwd = $("#newPwd").val();
				//获取验证码
				var yzm = $("#yzm").val();
	
				//判断手机号码是否可用
				if (!(userPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhone))) {
					var isFalse = "请输入正确的手机号码";
					$("#phoneCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (userPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhone)) {
					$(".modify_tips").remove();
				}
				//判断密码是否为空
				if (pwd == "") {
					var isFalse = "密码不能为空";
					$("#pwdCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (pwd != "") {
					$(".modify_tips").remove();
				}
	
				//判断新密码
				if (newPwd == "") {
					var isFalse = "新密码不能为空";
					$("#newPwdCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (newPwd != pwd) {
					var isFalse = "两次密码不一致";
					$("#newPwdCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				//判断是否输入验证码
				if (yzm == "") {
					var isFalse = "请输入验证码";
					$("#yzmCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (yzm != "") {
					$(".modify_tips").remove();
				}
			})
	
			//秒获取验证码
			var wait = 60;
			function time(o) {
				if (wait == 0) {
					o.removeAttribute("disabled");
					o.value = "获取验证码";
					wait = 60;
				} else {
					o.setAttribute("disabled", true);
					o.value = "重新发送(" + wait + ")";
					wait--;
					setTimeout(function() {
						time(o)
					}, 1000)
				}
			}
	
			//获取验证码
			$("#yzmBtn").click(function() {
				$(".modify_tips").remove();
				var userPhone = $("#phone").val();
				if (userPhone == '') {
					var isFalse = "手机号码不能为空";
					$("#phoneCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				} else if (!(userPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhone))) {
					var isFalse = "请输入正确的手机号码";
					$("#phoneCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				} else {
					$(".modify_tips").remove();
					time(this);
				}
			});
	
			//个人资料验证
			$("#infoBtn").click(function() {
				$(".user_tips").remove();
				$(".modify_tips").remove();
				//获取用户头像
				var previewImg = $("#previewImg").val();
				//获取用户昵称
				var infoName = $("#infoName").val();
				//获取用户手机号码
				var infoPhone = $("#infoPhone").val();
				//获取用户备用手机号码
				var infoNewPhone = $("#infoNewPhone").val();
				//获取修改的手机号码
				var infoModifyPhone = $("#infoModifyPhone").val();
				//获取修改手机号码的验证码
				var infoYzn = $("#infoYzn").val();
	
				if (previewImg == "") {
					var isFalse = "请上传用户头像";
					$(".modify_info_user").append("<div class='user_tips'>" + isFalse + "</div>");
					return false;
				}
				if (previewImg != "") {
					$(".user_tips").remove();
				}
				if (infoName == "") {
					var isFalse = "请填写昵称";
					$("#infoNameCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (infoName != "") {
					$(".modify_tips").remove();
				}
				if (!(infoPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(infoPhone))) {
					var isFalse = "请输入正确的手机号码";
					$("#infoPhoneCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (infoPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(infoPhone)) {
					$(".modify_tips").remove();
				}
				if (!(infoNewPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(infoNewPhone))) {
					var isFalse = "请输入正确的手机号码";
					$("#infoNewPhoneCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (infoNewPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(infoNewPhone)) {
					$(".modify_tips").remove();
				}
				if (!(infoModifyPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(infoModifyPhone))) {
					var isFalse = "请输入正确的手机号码";
					$("#infoModifyPhoneCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (infoModifyPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(infoModifyPhone)) {
					$(".modify_tips").remove();
				}
				if (infoYzn == "") {
					var isFalse = "请填写验证码";
					$("#infoYznCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				}
				if (infoYzn != "") {
					var isFalse = "请填写验证码";
					$(".modify_tips").remove();
				}
			})
	
			//修改手机号码验证码事件
			$("#infoYznBtn").click(function() {
				$(".modify_tips").remove();
				//获取修改的手机号码
				var infoModifyPhone = $("#infoModifyPhone").val();
				if (!(infoModifyPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(infoModifyPhone))) {
					var isFalse = "请输入正确的手机号码";
					$("#infoModifyPhoneCont").append("<div class='modify_tips'>" + isFalse + "</div>");
					return false;
				} else {
					$(".modify_tips").remove();
					time(this);
				}
			})
		})
	
		//图片上传预览    IE是用了滤镜。
		function previewImage(file) {
			var MAXWIDTH = 90;
			var MAXHEIGHT = 90;
			var div = document.getElementById('preview');
			if (file.files && file.files[0]) {
				div.innerHTML = '<img id=imghead onclick=$("#previewImg").click()>';
				var img = document.getElementById('imghead');
				img.onload = function() {
					var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
					img.width = rect.width;
					img.height = rect.height;
					img.style.marginTop = rect.top + 'px';
				}
				var reader = new FileReader();
				reader.onload = function(evt) {
					img.src = evt.target.result;
				}
				reader.readAsDataURL(file.files[0]);
			} else //兼容IE
			{
				var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
				file.select();
				var src = document.selection.createRange().text;
				div.innerHTML = '<img id=imghead>';
				var img = document.getElementById('imghead');
				img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
				var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
				status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width + ',' + rect.height);
				div.innerHTML = "<div id=divhead style='width:" + rect.width + "px;height:" + rect.height + "px;margin-top:" + rect.top + "px;" + sFilter + src + "\"'></div>";
			}
		}
		function clacImgZoomParam(maxWidth, maxHeight, width, height) {
			var param = {
				top : 0,
				left : 0,
				width : width,
				height : height
			};
			if (width > maxWidth || height > maxHeight) {
				rateWidth = width / maxWidth;
				rateHeight = height / maxHeight;
	
				if (rateWidth > rateHeight) {
					param.width = maxWidth;
					param.height = Math.round(height / rateWidth);
				} else {
					param.width = Math.round(width / rateHeight);
					param.height = maxHeight;
				}
			}
			param.left = Math.round((maxWidth - param.width) / 2);
			param.top = Math.round((maxHeight - param.height) / 2);
			return param;
		}
	</script>
<!-- 提示 -->
<script type="text/javascript">	${errorShow }</script>
</body>
</html>
