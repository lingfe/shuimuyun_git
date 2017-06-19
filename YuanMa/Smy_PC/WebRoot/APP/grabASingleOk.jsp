<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>确认抢单</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	<style type="text/css">
		body{display: block;}
		.taking_firsttit_con{
		margin-top:.4rem;
		}
	</style>
	<script>
		setTimeout(function() {
			$("body").show();
		},500)
	</script>
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l"onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>快递员</h6>
		</header>
		<!--【头部】end-->
		<div class="courier_firsttit_con taking_firsttit_con">
			<div class="cour_div_1"><img src="<%=basePath%>APP/${login.kuaikeShouchiSFZ}"/></div>
			<div class="cour_div_2">${login.kuaikeName}</div>
			<div class="cour_div_5 taking_div_5">
				<span><img src="<%=basePath%>APP/images/icon/adds_b.png" width="15"/></span>
				<span>地址</span>
			</div>
			<div>
				<span>收货人：</span>
				<span>${info.shouhuoAddressInfo}</span>
			</div>
			<div>
				<span>发货人：</span>
				<span>${info.kuaikeAddressInfo}</span>
			</div>
		</div>
		<div class="courier_last_con taking_last_con">
			<div class="taking_last_div_1">
				<img src="<%=basePath%>APP/images/icon/number_b.png"width="20"/>
				<span>货物信息</span>
			</div>
			<div class="courier_last_con_list">
				<div>
					<span>类型</span>
					<span>数量</span>
					<span>大小</span>
					<span>总重</span>
					<span>建议交通工具</span>
				</div>
				<div>
					<span>${info.shopType }</span>
					<span>${info.shopNumer }</span>
					<span>${info.shopGuige }</span>
					<span>${info.shopzholiang }kg</span>
					<span>无</span>
				</div>
			</div>
		</div>
		<div class="courier_last_con taking_last_con">
			<div class="taking_last_div_1">
				<img src="<%=basePath%>APP/images/icon/huowu_b.png"width="20"/>
				<span>我的信息</span>
			</div>
			<div class="taking_div_last" id="order_right2">
				<span>取货时间</span>
				<span id="shijian">${ info.timeString }</span>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png"width="15" />
			</div>
		</div>
		
		<!--确定按钮-->
		<div class="order_buttom taking_btn">
			<div class="order_buttom_text">
			<img src="<%=basePath%>APP/images/icon/dui.png"width="20"/>
			<label> 我同意 《<a href="RequestMappingUtil/requestNUll/APP/serviceXy">水木云快递条约</a>》</label>
			</div>
			<button class="order_btn" onclick="qiangdanAjax(this);">确认抢单</button>
		</div>
		<!--遮罩层-->
		<div class="order_zhe"id="order_zhe"></div>
		<!--弹窗三-->
		<!--弹窗三-->
		<div class="order_tan2"id="order_tan2">
			<div class="order_tan_clos2">
				<span>最晚到达时间</span>
				<span class="mui-icon mui-icon-close order_close" id="order_close2"></span>
			</div>
			<div class="order_tan_context2"  id="order_tex2">
				<div class="order_shi">
					<span>时</span>
					<input type="number" id="num_shi"/>
				</div>
				<div class="order_fen">
					<span>分</span>
					<input type="number" id="num_fen" />
				</div>
				<input class="order_butt" type="button" id="butt" value="取消" />
				<input class="order_buttn" type="button" id="buttn" value="确定" />
				
			</div>
			
		</div>
		<!-- 快客id -->
		<input type="hidden" id="kuaikeId" value="${login.kuaikeId }">
		<!-- 下单id -->
		<input type="hidden" id="xiaId" value="${info.xiaId }">
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
		<!-- 抢单 ajax -->
		<script>
			//抢单
			function qiangdanAjax(my){
				//快客id
				var kuaikeId=$("#kuaikeId").val();
				//下单id
				var xiaId=$("#xiaId").val();
				
				var url=xiaId+"/"+kuaikeId;
				//alert(url);
				//通过ajax添加记录
				$.ajax({
					url : 'r_qiangordertabController/insertAjax/'+url,
					type : 'get',
					dataType : 'html',
					success : function(objs) {
						if(objs){
							alert("抢单成功!");
							$(my).hide(3000);
						}else{
							alert("抢单失败!");
						}
					},
					error : function(xhr, type) {
						alert('Ajax error!');
					}
				});
			}
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
		}
	</script>
	</body>
</html>
