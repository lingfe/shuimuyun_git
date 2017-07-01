<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公众号</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="<%=basePath %>PC/css/intro.css" />
  </head>
  
  <body>
		<!--【头部】-->
		<header class="header">
			<div class="header_footer pce_header_footer">
				<div class="header_cont">
					<a class="logo left" href="<%=basePath %>PC/index.jsp">
						<img title="" alt="" src="<%=basePath %>PC/img/logo.png" width="100" />
					</a>
					<nav class="nav left">
						<a href="http://www.smuyun.com/">商城</a>
						<a href="<%=basePath%>PC/index.jsp">人人配送</a>
						<a href="<%=basePath%>PC/intro.jsp">公众号</a>
						<a href="<%=basePath%>PC/about.jsp">关于我们</a>
						<a href="<%=basePath%>PC/personalCenter.jsp">个人中心</a>
					</nav>
					<div class="lianxi left">
						<div class="left"><img src="<%=basePath %>PC/img/电话.png"/><a href="#">0851 8861 0341</a></div>
						<div class="left"><img src="<%=basePath %>PC/img/邮箱.png"/><a href="#">wenpin@shuimuyun.com</a></div>
					</div>
				</div>
			</div>
			<div class="header_border"></div>
		</header>
		<!--【头部 end】-->
		<!--内容-->
		<div class="intro">
			<div class="intro_banner">
			</div>
			<div class="intro_contxt">
				<div class="intro_text">
					<h1>关注公众号</h1>
					<p>绿色生鲜食品购买，人人物流(人人可以接单，抢单)。</p>
				</div>
					<div class="intro_pos">
					<img src="<%=basePath %>PC/img/sao.jpg"/>
				</div>
				<div class="intro_left">
					<img src="<%=basePath %>PC/img/intro_1.png" />
					<img src="<%=basePath %>PC/img/intro_2.png" />
					<img src="<%=basePath %>PC/img/intro_1.png" />
					<img src="<%=basePath %>PC/img/intro_2.png" />
				</div>				
			</div>
		</div>		
		<!--【底部】-->
		<footer class="footer">
			<div class="footer_top">
				<div class="foote_cont">
					<div class="footer_map">
						<a href="<%=basePath %>PC/index.jsp">首页</a>
						<a href="<%=basePath %>PC/index.jsp">人人配送</a>
						<a href="<%=basePath %>PC/intro.jsp">公众号</a>
						<a href="<%=basePath %>PC/index.jsp">网站地图</a>
						<a class="footer_map_last" href="<%=basePath %>PC/index.jsp">SITEAPM</a>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="footer_bCont">
					<a href="javascript:;">公司：水木云网络科技有限公司</a>
					<a href="javascript:;">公司地址：贵州省贵阳市花果园E区二单元</a>
					<a href="javascript:;">工信部备案号黔ICP备16008136号</a>
					<a href="javascript:;"><span><img alt="" src="<%=basePath%>PC/images/beianhao.jpg" width="15"></span>贵公网安备52010202000388号</a>
				</div>
			</div>
		</footer>
		<!--【底部】end-->
	</body>
</html>
