<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索订单</title>
     <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css"/>
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
	
	</head>
	<body >
		<!--头部-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/head_left.png" />
			</a>
			<div class="loginCont_form_item mui-input-row header_input" id="header_input" style="height: 0.31rem;">
						<img title="" alt="" src="<%=basePath%>APP/images/icon/header_sou.png" />
						<input style="line-height: 0.31rem; height: 0.31rem;" class="loginCont_form_itemAll  right" id="search_sousuoinput" type="text" placeholder="请输入关键字" />
			</div>
			<a class="commHeader_r" href="javascript:searchKey();">
				<span class="search_sousuotext" id="search_sousuotext">搜索</span>
			</a>
		</header>
		<div class="seaCont" id="tishi">
			<div class="search_top">按热门地区搜索</div>
			<div>
				<input type="button" class="mui-btn  mui-btn-block search" value="花溪区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="南明区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="云岩区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="乌当区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="白云区">		
				<input type="button" class="mui-btn  mui-btn-block search" value="观山湖区">		
			</div>
		</div>
		
		<!--订单样式-->
		<div class="oallCont">
			<!--【没有数据的样式】--> <!--display: none-->
			<div class="oallDtev">
				<img title="" alt="" src="<%=basePath%>APP/images/noDeta.png" width="80%" />
				<div class="oallCont_div_span">
					<span class="oallCont_span">
						目前没有<label>南明区</label>的订单
					</span>
				</div>
			</div>
			<!--【没有数据的样式】end-->
			
			<div class="oallCont_cont" id="oallCont_cont" style="display: none;">
				<div class="oallCont_cont_item searchOrder_top">
					<ul class="oallCont_cont_list">
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">发</div>
								<span class="oall_ztl">正在派送</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">快</div>
								<span class="oall_ztl">代付款</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">发</div>
								<span class="oall_ztl">待接单</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">快</div>
								<span class="oall_ztl">取货</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">发</div>
								<span class="oall_ztl">已完成</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img class="oallCont_cont_img" title="" alt="" src="<%=basePath%>APP/images/oall001.jpg" width="100%" />
								<div class="oallCont_contBox">
									<p>收货人：小单</p>
									<p>电话：15700104801</p>
									<div>
										<span>收货地址：</span>
										<div class="text_1_hide">贵州省贵阳市花溪大道220号</div>
									</div>
								</div>
								<div class="oall_zt">快</div>
								<span class="oall_ztl">派件</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 快客 kuaikeId -->
		<input type="hidden" id="kuaikeId" value="${login.kuaikeId }" />
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
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
		<!-- ajax searchKey -->
		<script type="text/javascript">
			//模糊搜索
			function searchKey(){
				//得到searchKey
				var searchKey=$("#search_sousuoinput").val();
				//隐藏,显示层
				$("#tishi").hide(1000);
				$("#oallCont_cont").show(1000);
				//清空
				$(".oallCont_cont_list").html("");
				
				var kuaikeId=$("#kuaikeId").val();
				
				//发送请求
				$.ajax({
					type : 'get',
					url : 'xiaordertab/singleDataFuzzySearch/'+searchKey,
					dataType : 'html',
					success : function(objs) {
						var data = jQuery.parseJSON(objs);
						if (data == "") {
							$("#tishi").show(1000);
							alert("没有数据!");
						} else {
							var result = ''
							for (var i = 0; i < data.length; i++) {
								//状态
								status = data[i].status == 0 ? '未接单' : data[i].status;
								status = data[i].status == 1 ? '已接单,未取货' : status;
								status = data[i].status == 2 ? '已到达,未确认' : status;
								status = data[i].status == 3 ? '交易结束(待评价)' : status;
								status = data[i].status == 4 ? '已评价' : status;
								
								//确定单子类型
								var str=data[i].status > 0 ? '派' :'快';
								//标签拼接
								result += "<li><a href='xiaordertab/getXiaIdStatusList/"+kuaikeId+"/" +data[i].status+"/"+ data[i].xiaId  + "'><img class='oallCont_cont_img' title='' \
											alt='' src='<%=basePath%>APP/images/oall001.jpg' width='100%' /> \
											<div class='oallCont_contBox'> \
												<p>收货人：" + data[i].shouhuoName + "</p> \
												<p>电话：" + data[i].shouhuoShone + "</p> \
												<div> \
													<span>收货地址：</span> \
													<div class='text_1_hide'>" + data[i].shouhuoAddressInfo + "</div> \
												</div> \
											</div> \
											<div class='oall_zt'>" + str + "</div> <span class='oall_ztl'>" + status + "</span>\
											</a></li>";
		
		
							}
							$('.oallCont_cont_list').append(result);
		
						}
					},
					error : function(xhr, type) {
						alert('Ajax error!');
					}
				});
			}
		
		</script>
	</body>
</html>
