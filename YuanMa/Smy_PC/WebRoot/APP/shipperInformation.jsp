<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发货人信息</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
		</script>
	
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>发货人信息</p>
			<a class="commHeader_r hipper_xia" href="javascript:fa();">
				<p>完成</p>
			</a>
		</header>
		<!--【头部】end-->
		<div class="hipper_contex">
			<div>
				<span>发货人：</span>
				<input id="con_name" type="text" value="${info.kuaikeName }" placeholder="请输入姓名"/>
			</div>			
			<div>
				<span>手机号：</span>
				<input id="con_phone" type="text" value="${info.kuaikePhone }" placeholder="请输入手机号"/>
			</div>			
			<div>
				<img src="<%=basePath%>APP/images/icon/adds.png" width="20" class="hipper_contex_firstimg"/>
				<input type="text" id="kuaikeAddressInfo" class="hipper_contex_lasttext" value="${info.kuaikeAddressInfo==null?'贵州省贵阳市南明区花果园金融街2号':info.kuaikeAddressInfo }"/>
				<img src="<%=basePath%>APP/images/icon/consignee_right.png" class="hipper_contex_lastimg" width="10"/>
			</div>
			<div id="kuaikeAddressInfo_value"></div>			
		</div>
		<!-- 下单id -->
		<input type="hidden" id="xiaId" value="${xiaId }"> 
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
		<script type="text/javascript">
			//ajax提交
			function fa(){
				//下单id
				var xiaId=$("#xiaId").val();
				//发货人
				var kuaikeName=$("#con_name").val();
				//快客电话
				var kuaikePhone=$("#con_phone").val();
				//快客详细地址
				var kuaikeAddressInfo=$(".hipper_contex_lasttext").val();
				//url
				var url=xiaId+"/"+kuaikeName+"/"+kuaikePhone+"/"+kuaikeAddressInfo;
				$.ajax({
					url : 'xiaordertab/fa/'+url,
					type : 'POST',
					success : function(data) {
						alert("保存成功!");
						window.location.href="RequestMappingUtil/requestNUll/APP/placeAnOrder";
					},
					error : function(xhr, type) {
						alert('Ajax error!');
					},
					async:false
				});
			}
			
			//加载执行
			$(function(){
				$("#kuaikeAddressInfo").keydown(function(){
					$("#kuaikeAddressInfo_value").html("");
					$("#kuaikeAddressInfo_value").html($(this).val());
				});
			});
		</script>
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
			
		}else{
			if("${login.kuaikePhone}"==""||"${login.kuaikeAddressInfo}"==""||"${login.kuaikeShenfenZF}"==""||"${login.kuaikeShouchiSFZ}"==""){
				//询问框
				layer.open( {
					anim: 'up',
					shadeClose: false,
					content: '您的资料还没有完善？',
					btn: ['完善资料','取消'],
					yes:function(index){
						layer.close(index);
						window.location.href="RequestMappingUtil/requestNUll/APP/perfectData_firstStep";
					},
					no:function(index){
						layer.close(index);
					}  
				});
			}
		}
	</script>
	</body>
</html>
