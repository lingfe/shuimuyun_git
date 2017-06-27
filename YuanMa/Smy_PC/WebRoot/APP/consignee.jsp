<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <title>收货人信息</title>
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/style.css" />	
	</head>
	<script>
			setTimeout(function() {
				$("body").show();
			},500);
	</script>
	<style>
		.box{
			margin-top:.6rem !important;
			margin:auto;
			width:calc(100% - 40px);
			height:1.6rem;
			background: #fff;
		}
		.box_div{
			width:100%;
			height: .4rem;
			border-bottom:  solid 1px #eee; 
		}
		.box_div span{
			display:inline-block;
			width:.7rem;
			height: .4rem;
			line-height: .4rem;
			text-indent: 10px;
			font-size: .13rem;
		}
		.box_div input{
			display:inline-block;
			width:calc(100% - .8rem);
			height: .3rem;
			line-height: .3rem;
			border: none;
			outline: none;
			font-size: .13rem;
		}
	</style>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>收货人信息</h6>
			<a class="commHeader_r hipper_xia" href="javascript:shou();">
				<h6>完成</h6>
			</a>
		</header>
		<!--【头部】end-->
		<div class="box">
			<div class="box_div">
				<span>发货人：</span>
				<input type="text" placeholder="请输入姓名" id="con_name" type="text" value="${info.shouhuoName }"/>
			</div>
			<div class="box_div">
				<span>手机号：</span>
				<input type="text" placeholder="请输入手机号" id="con_phone" type="text" value="${info.shouhuoShone }"/>
			</div>
		<!--三级联动-->
		<div class="browser">
        	<!--选择地区-->
        	<section class="express-area">
            	<a id="expressArea" href="javascript:void(0)">
                	<dl>
                    	<dt style="height: 0.4rem; line-height: 0.4rem; font-size: 0.13rem; text-indent: 10px;">选择地区：</dt>
                    	<dd style="height: 0.4rem; line-height: 0.4rem; font-size: 0.13rem; text-indent: 10px;"  id="adder">请选择地址</dd>
                	</dl>
            	</a>
       	 </section>
        <!--选择地区弹层-->
        <section id="areaLayer" class="express-area-box">
            <header>
                <h3>选择地区</h3>
                <a id="backUp" class="back" href="javascript:void(0)" title="返回"></a>
                <a id="closeArea" class="close" href="javascript:void(0)" title="关闭"></a>
            </header>
            <article id="areaBox">
                <ul id="areaList" class="area-list"></ul>
            </article>
        </section>
        <!--遮罩层-->
        <div id="areaMask" class="mask"></div>
   			</div>
			<div class="box_div">
				<span>街 道：</span>
				<input type="text" id="xadder" placeholder="请输入详细地址"/>
			</div>
		
		</div>
		<%-- <div class="hipper_contex">
			<div>
				<span>收货人：</span>
				<input id="con_name" type="text" value="${info.shouhuoName }" placeholder="请输入姓名"/>
			</div>			
			<div>
				<span>手机号：</span>
				<input id="con_phone" type="text" value="${info.shouhuoShone }" placeholder="请输入手机号"/>
			</div>			
			<div>
				<img src="<%=basePath%>APP/images/icon/adds.png" width="20" class="hipper_contex_firstimg"/>
				<div class="browser">
        <!--选择地区-->
        <section class="express-area">
            <a id="expressArea" href="javascript:void(0)">
                <dl>
                    <dt style="height: 0.4rem; line-height: 0.4rem; font-size: 0.13rem">选择地区：</dt>
                    <dd style="height: 0.4rem; line-height: 0.4rem; font-size: 0.13rem" id="adder">请选择地址</dd>
                </dl>
            </a>
        </section>
        <!--选择地区弹层-->
        <section id="areaLayer" class="express-area-box">
            <header>
                <h3>选择地区</h3>
                <a id="backUp" class="back" href="javascript:void(0)" title="返回"></a>
                <a id="closeArea" class="close" href="javascript:void(0)" title="关闭"></a>
            </header>
            <article id="areaBox">
                <ul id="areaList" class="area-list"></ul>
            </article>
        </section>
        <!--遮罩层-->
        <div id="areaMask" class="mask"></div>
   </div>
			</div>			
			<div class="edit_firstdiv_3">
				<label style="font-size: 0.15rem">街　道 :</label>
				<input type="text" placeholder="请输入详细地址" id="xadder" />
			</div>
			</div>
			<div id="shouhuoAddressInfo_value"></div>			
		</div> --%>
		<!-- 下单id -->
		<input type="hidden" id="xiaId" value="${xiaId }"> 
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.7.2.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery.area.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_click.js" ></script>
		<script type="text/javascript">
			//ajax提交
			function shou(){
				//下单id
				var xiaId=$("#xiaId").val();
				//收货人
				var shouhuoName=$("#con_name").val();
				//手机号
				var shouhuoPhone=$("#con_phone").val();
				//详细地址
				var shouhuoAddressInfo=$("#xadder").val();
				
				//发货人地址
				var shouhuoAddress=$("#adder").html();
				//url
				var url=xiaId+"/"+shouhuoName+"/"+shouhuoPhone+"/"+shouhuoAddress+"/"+shouhuoAddressInfo;
				$.ajax({
					url : 'xiaordertab/shou/'+url,
					type : 'POST',
					success : function(data) {
						//提示
					    layer.open({
					    	content: '保存成功!',
					    	skin: 'msg',
					    	time: 2
					  	});
						window.location.href="RequestMappingUtil/requestNUll/APP/placeAnOrder";
					},
					error : function(xhr, type) {
						//提示
					    layer.open({
					    	content: 'Ajax error!',
					    	skin: 'msg',
					    	time: 2
					  	});
					},
					async:false
				});
			}
			
			//加载执行
			$(function(){
				$("#shouhuoAddressInfo").keydown(function(){
					$("#shouhuoAddressInfo_value").html("");
					$("#shouhuoAddressInfo_value").html($(this).val());
				});
			});
		</script>
		<!-- 验证身份 初级验证 -->
		<script type="text/javascript">
		if("${login}"==""||"${login}"==null){
		//询问框
		layer.open( {
				anim: 'up',
				shadeClose: false,
				content: '您还没有登陆？',
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
				//验证审核
				if("${login.kuaikeStatus}"==0){
					//提示
				    layer.open({
				    	content: '您的身份还没有通过审核！',
				    	skin: 'msg',
				    	time: 2
				  	});
				}else{
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
		}
		</script>
	</body>
</html>
