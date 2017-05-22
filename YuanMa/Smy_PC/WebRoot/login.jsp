<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
  		<meta charset="UTF-8">
		<meta http-equiv = "X-UA-Compatible" cotent = "IE=edge,chrome=1"/>
		<meta name="viewport" content="width=device-width,initial-scale=1.0" />
		<title>登录</title>
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>	
		<script src="js/jquery-3.1.0.min.js" type="text/javascript" charset="utf-8"></script>
	    <script src="js/zhuce.js" type="text/javascript" charset="utf-8"></script>
	   
	</head>
	<body>
		<!--导航开始-->
		<header>
			<div class="container">
				<nav class="nav navlist" role="navigation">
					<div class="navbar-header" style="margin-right: 60px;">
						<a href="index.jsp" class="logo"><img src="images/logo.png" /></a>
						<a href="#" class="navbar-btn navbar-toggle navbtn" data-toggle="collapse" data-target="#myCollapse">
							<img src="images/nav-btn.png"/>
						</a>
					</div>
					<div class="collapse navbar-collapse navColl" id="myCollapse">
						<ul class="nav navbar-nav pull-left ren_nav">
							<li class="active"><a href="http://www.smuyun.com/">商城</a></li>
							<li class="active"><a href="index.jsp" style="color: #ff6d46;">人人配送</a></li>
							<li><a href="aboutUs.html">公众号</a></li>
							<li><a href="service.html">关于人人配送</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!--导航结束-->
		<!--内容开始-->
		<div class="container">
			 
			   <div class="zhuce_left col-lg-2 col-md-2 col-sm-2 col-xs-2">
			   	
			   	     <button style="clear: both; background: #ff6d46; color: white;"class="logo_b">登&nbsp&nbsp录</button>
			   	     <button >注 &nbsp&nbsp册</button>
			   	     <div style="position: relative;left: 93.1%; top:-109px; z-index: 999; border: white 1px dashed !important;"><img src="images/t003_03.png"/></div>
			   </div>
			  <!--右变开始-->
			  <div class="zhuce_right col-lg-10 col-md-10 col-sm-10 col-xs-10">
				<!--注册--> 
				<div class="zhuce_1" style="display: none;" >
					 <!--进度条-->	
					<div class="setbacks">
						<!--进度条底层-->
						<div class="setbacks_1"></div>
						<!--进度条中层-->
						<div class="setbacks_2" style="width:0%; "></div>
						<!--进度条顶层-->
						<ul class="setbacks_3">
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="yianxiekuaike.html">
											<p class="setbacks_3_1_c">1</p>
											<p class="setbacks_3_2_c">填写快客信息</p>
										</a>
									  </td>
									</tr>
								</table>
							</li>
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="shenhe.html">
											<p class="setbacks_3_1">2</p>
											<p class="setbacks_3_2">审核</p>
										</a>
									  </td>
									</tr>
								</table>
							</li>
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="zhuanyepeixun.html">
											<p class="setbacks_3_1">3</p>
											<p class="setbacks_3_2">专业培训</p>
										</a>
									  </td>
									</tr>
								</table>
							</li>
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="kaoshi.html">
											<p class="setbacks_3_1">4</p>
											<p class="setbacks_3_2">考试</p>
										</a>
									  </td>
									</tr>
								</table>
							</li>
							<li>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
									  <td align="center">
										<a href="chengweikuaike.html">
											<p class="setbacks_3_1">4</p>
											<p class="setbacks_3_2">成为快客</p>
										</a>
									  </td>
									</tr>
								</table>
							</li>
						
						</ul>
						<div class="clear"></div>
					</div>
                     <!--表单开始-->
                     <div class="zhuce_xing">
                     	   <label>* 姓名：</label>
                     	   <input type="text" value="" id="namett"/>
                     	    <span class="hidden1" style="width: 100px;height: 30px; color: red;">不能为空</span>
                     	    <span class="hidden1_1" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
                     	   <img src="images/g00_03.png"class="img1"/>
                     </div>
                     <div class="zhuce_phone">
                     	   <label>* 手机号码：</label>
                     	   <input type="text" value="" id="phone"/>
                     	   <span class="hidden2" style="width: 100px;height: 30px; color: red;">不能为空</span>
                     	    <span class="hidden2_2" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
                     	 <img src="images/g00_03.png"class="img2"/>
                     </div>
                     <div class="zhuce_pwd">
                     	   <label>* 登录密码：</label>
                     	   <input type="password" value="" id="logopwd"/>
                     	    <span class="hidden3" style="width: 100px;height: 30px; color: red;">不能为空</span>
                     	    <span class="hidden3_3" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
                     	    <img src="images/g00_03.png"class="img3"/>
                     </div>
                     
                     <div class="zhuce_tuleft">
                     	<img src="images/t003_03.png"/>
                     </div>
                     <div class="zhuce_xing">
                     	   <label>* 确认密码：</label>
                     	   <input type="password" value="" id="pwd"/>
                     	    <span class="hidden4" style="width: 100px;height: 30px; color: red;">不能为空</span>
                     	    <span class="hidden4_4" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
                     	    <img src="images/g00_03.png"class="img4"/>
                     </div>
                     <div class="zhuce_dizhi">
                     	<label>* 现居住地址：</label>
                     	<select id="sheng">
                     		<option value="贵州省">贵州省</option>
                     		<option value="云南省">云南省</option>
                     		<option value="河北省">河北省</option>
                     		<option value="江苏省">江苏省</option>
                     		<option value="东北省">东北省</option>
                     	</select>
                     	<span>省</span>
                     	<select id="shi">
                     		<option value="贵阳市">贵阳市</option>
                     		<option value="贵阳市">贵阳市</option>
                     		<option value="贵阳市">贵阳市</option>
                     		<option value="贵阳市">贵阳市</option>
                     		<option value="贵阳市">贵阳市</option>
                     		
                     	</select>
                     	<span>市</span>
                     	<select id="xian">
                     		<option value="盘县">盘县</option>
                     		<option value="盘县">盘县</option>
                     		<option value="盘县">盘县</option>
                     		<option value="盘县">盘县</option>
                     	</select>
                     	<span>县/区</span>
                     	
                     </div>
                     <div class="zhuce_jie">
                     	<label></label>
                     	<select id="jie">
                     		<option value="头桥二桥路">头桥二桥路</option>
                     		<option value="头桥二桥路">头桥二桥路</option>
                     		<option value="头桥二桥路">头桥二桥路</option>
                     		<option value="头桥二桥路">头桥二桥路</option>
                     	</select>
                     	<span>街道</span>
                 
                     	<span class="hidden5" style="width: 100px;height: 30px; color: red;">不能为空</span>
                     	<span class="hidden5_5" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
                     	<img src="images/g00_03.png"class="img5"/>
                     </div>
			        <div class="zhuce_xiangqing">
			        	  <label></label>
			        	  <input type="text" value="" id="jiedao"/>
			        	  <span>详情地址</span>
			        	  <span class="hidden7" style="width: 100px;height: 30px; color: red;">不能为空</span>
                     	   <span class="hidden7_7" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
			        	<img src="images/g00_03.png"class="img7"/>
			        </div>
			        
			        <div class="zhuce_yanzheng">
			        	  <label>* </label>
			        	  <input type="text" value="" id="yanpwd"/>
			        	  <button class="zhubtn">获取手机验证码</button>
			        	  
			        	  <span class="hidden8" style="width: 100px;height: 30px; color: red;">不能为空</span>
                     	    <span class="hidden8_8" style="width: 100px;height: 30px; color: red;">输入正确的格式</span>
			        	<img src="images/g00_03.png" class="img8"/>
			        </div>
			      
			      <div class="Passpicture">
			      
				       	<div class="zhuce_zf" >
				       	 <input type="file" style="width: 100%;min-height: 200px;opacity: 0;"/>
				       	  <a href="#" id="zhuce_zf" class="btn  disabled" role="button" style="cursor: pointer; text-decoration: underline;">
				       	  	点击上传正反面身份证复印件
				       	  	
				       	  </a>
				       	</div>
				      
				       	<div class="zhuce_c" >
				       	  <input type="file" style="width: 100%;min-height: 200px;opacity: 0;" />
				       	  <a href="#" id="zhuce_c"class="btn  disabled" role="button" style="cursor: pointer; text-decoration: underline;">点击上传正反面身份证复印件</a>
				       	</div>
				       	<span class="hidden9" style="width: 100px;height: 30px; color: red;">不能为空</span>
				       <img src="images/g00_03.png" class="img9"/>
			       </div>
			       <div class="zhuce_sheng">
			       	  <p>*&nbsp;上传身份证复印件</p>
			       	  <p>*&nbsp;上传手持身份证照片</p>
			       </div>
			       <div style="clear: both;"></div>
			       <div class="zhuce_xiayibu">
			       	   <a href="#" id="btn">下一步</a>
			       </div>
			   </div>
				 <!--登录开始-->
				<div class="box zhuce_0" >

					<div class="common">普通登录</div>
					<div class="free">免密登录</div>
					<div style="clear: both;"></div>
					<div class="common_con">
					<span>手机号码:</span>
					<input type="text " class="phone" placeholder="  请输入手机号"/>
					<br />
					<span>登录密码:</span>
					<input type="password" class="pwd" placeholder="  请输入登录密码"/>
					<p>忘记密码</p>
					<div>
						<span><input type="checkbox" class="zii"/></span>
						<span class="zi">记住密码</span>
						<br />
						<button>登   录</button>
					</div>
					</div>
					 
					<div class="free_con">
						<span>手机号码:  </span><input type="text" class="phone1" placeholder="  请输入手机号"/><br />
						<input type="text" /><button class="btn223">获取验证码</button><br />
						<button>登   录</button>
						
					</div>
					<span class="t1"></span>
					<span class="t2"></span>
					<span class="t3"></span>
					<img class="t33" src="images/g00_03.png"/>
					<img class="t22" src="images/g00_03.png"/>
					<img class="t11" src="images/g00_03.png"/>
				</div>
				<!--登录结束-->
			
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
			 	  	<li><img src="images/004_03.png"/><a href="#">帮助信息</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">注册帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">登录帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">认证帮助</a></li>
			 	  	<li><img src="images/004_03.png"/><a href="#">更多</a></li>
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
<script src="js/login.js" type="text/javascript" charset="utf-8"></script>