<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>完善资料第一步</title>
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.quickMian {
				display: block;
				width: 80%;
				height: auto;
				overflow: hidden;
				margin: 0 auto;
			}
			.quickBtn {
				display: block;
				width: 100%;
				height: 0.36rem;
				color: #fff;
				font-size: 0.12rem;
				outline: none;
				border: none;
				background: rgb(65,139,200);
				border-radius: 5px;
				margin-top: 0.5rem;
			}
			.quickBtn:active {
				background: rgba(65,139,200,.8);
			}
			
			
			
			
			.quickSf_item {
				position: relative;
				width: 100%;
				height: 1rem;
				color: #fff;
				font-size: 0.12rem;
				text-align: center;
				line-height: 1rem;
				background: rgba(0,0,0,.8);
				border-radius: 5px;
				overflow: hidden;
				margin-bottom: 0.15rem;
			}
			.quickSf_item input {
				display: block;
				position: absolute;
				top: 0;
				right: 0;
				height: 100%;
				width: 100%;
				opacity: 0;
				z-index: 999;
			}
			.quickSf_item img {
				display: block;
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 1rem;
				z-index: 5;
			}
			.quickSfMian {
				padding-top: 0.5rem;
			}
		</style>
	</head>
	<body class="body_bg loginBody_bg">
		<div class="contMian">
			<header class="header headerLogin">
				<a class="header_l" onClick="javascript :history.back(-1);">
					<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
				</a>
				<h1 class="header_title">完善信息</h1>
			</header>
			
			<form class="quickMian quickSfMian" action="updateSFZImages" method="post"  enctype="multipart/form-data">
				<div class="quickSf_item">
					<input type="hidden" value="${login.kuaikeId }" name="kuaikeId" />
					<input class="file" type="file"  name="files"  multiple="multiple" />
					<span>上传身份证正面</span>
				</div>
				<div class="quickSf_item">
					<input class="file" type="file" value="${login.kuaikeShenfenZF }" name="files"  multiple="multiple" />
					<span>上传身份证反面</span>
				</div>
				<div class="quickSf_item">
					<input class="file" type="file" value="${login.kuaikeShouchiSFZ }"  name="files" multiple="multiple" />
					<span>上传手持身份证正</span>
				</div>
				<button class="quickBtn" id="" type="submit">提交</button>
			</form>
			
			<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
			<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
			<script>	
				$(function() {
					$(".quickSf_item input").change(function() {
						var Img = "<img src=''>";
						$(this).parent().append(Img);
						$(this).parent().find("span").remove();
						var objUrl = getObjectURL(this.files[0]);
						console.log("objUrl = "+objUrl) ;
						if(objUrl) {
							$(this).next("img").attr("src", objUrl);
							//alert(objUrl)
						}
					});
				});
				
				//建立一個可存取到該file的url
				function getObjectURL(file) {
					var url = null ; 
					if(window.createObjectURL!=undefined) { // basic
						url = window.createObjectURL(file) ;
					}
					else if(window.URL!=undefined) { // mozilla(firefox)
						url = window.URL.createObjectURL(file) ;
					}
					else if(window.webkitURL!=undefined) { // webkit or chrome
						url = window.webkitURL.createObjectURL(file) ;
					}
					return url ;
				}
			</script>
		</div>
	</body>
</html>
