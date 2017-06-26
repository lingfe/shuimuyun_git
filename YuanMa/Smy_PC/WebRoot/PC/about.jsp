<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>关于我们</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link rel="stylesheet" href="<%=basePath %>PC/css/about.css" />
		<link rel="stylesheet" href="<%=basePath %>PC/css/video-js.css" />
  </head>
  <style>
  	.sssss{
  		display:inline-block;
  		transform: translateY(-5px);
  	}
  	.sasa{
  		height: 20px !important;
  		line-height: 20px !important;
  	}
  </style>
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

		<!--背景-->
		<div class="about_bg">
		</div>
		<!--内容-->
		<div class="about_contex_bg">
		<div class="about_contex">
			<div class="about_contex_left">
				<div>关于人人配送</div>
				<div>guANYURENRENPEISON</div>
				<div class="about_contex_left_text">
				<div class="left tu">
					<img src="<%=basePath %>PC/img/logo.png" width="180" />
				</div>
				<p>
									贵州水木云网络科技有限公司于2016年6月成立于中国著名的避暑之都爽爽的贵阳，创始人闻平以及联合创始团队秉承着“民以食为天，食以安为先，安以质为本，质以诚为根”的理念通过科技创新为社会提供最优质的生鲜产品服务
				</p>
				<p>
									贵州水木云网络科技有限公司（以下简称水木云）是一家集农业基地、物流运输、快递服务、互联网服务、物联网建设、科技开发为一体的综合性企业。我们把科技创新用于农业领域，种植、养殖创新（综合互联网、大数据等让农作物回归自然方式成长，不再使用农药、化肥等化学物品；动物养殖不再使用饲料；实现货物库存减少，保证优质生鲜食品），食品健康、安全、绿色是水木云的责任与使命。人人可参与农业生态资源、经济共享。物流快递创新实现物流快递行业资源再分配，人人参与物流快递业经济共享。水木云将坚持科技开发、运用，把科技产品（系统）适用于农业领域，让消费者得到更好的体验（人人参与农业种植、养殖、运输快递中）与服务。
				</p>
				</div>
			</div>
			<div class="about_contex_right">
				<video id="my-video" class="video-js left" controls preload="auto" width="580" height="300"
		 	 poster="MY_VIDEO_POSTER.jpg" data-setup="{}">
			<source src="http://vjs.zencdn.net/v/oceans.mp4" type="video/mp4">
			<source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm">
			<source src="http://vjs.zencdn.net/v/oceans.ogv" type="video/ogg">
			<p class="vjs-no-js">
			  To view this video please enable JavaScript, and consider upgrading to a web browser that
			  <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
			</p>
		  </video>
		  <div class="about_contex_right_qiye left">
		  	<div class="about_contex_right_qiye1 left">
		  	<label>网站动态</label><span>DYNAMICS</span>
		  	<div><img src="<%=basePath %>PC/img/肉.jpg"/></div>
		  	<div class="about_contex_right_qiye1_xin">
		  		<p>
		  			<a href="javascript:void(0);"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
		  		</p>
		  		<p>
		  			<a href="javascript:void(0);"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
		  		</p>
		  		<p>
		  			<a href="javascript:void(0);"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
		  		</p>
		  		<p>
		  			<a href="javascript:void(0);"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
		  		</p>
		  	</div>
		  	</div>
		  </div>
			</div>
			<div style="clear: both;"></div>
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
					<a  class="sasa"  href="javascript:;">公司：水木云网络科技有限公司</a>
					<a  class="sasa"  href="javascript:;">公司地址：贵阳市南明区花果园E区6栋二单元</a>
					<a  class="sasa"  href="javascript:;">工信部备案号 黔ICP备16008136号</a>
					<a class="sasa" href="javascript:;"><img src="<%=basePath%>PC/images/beianhao.jpg" width=20;/><span class="sssss">贵公网安备52010202000388号</span></a>
				</div>
			</div>
		</footer>
		<!--【底部】end-->

		<script type="text/javascript" src="<%=basePath %>PC/js/videojs-ie8.min.js" ></script>
		<script type="text/javascript" src="<%=basePath %>PC/js/video.min.js" ></script>
		<script type="text/javascript">
			var myPlayer = videojs('my-video');
			videojs("my-video").ready(function(){
				var myPlayer = this;
				myPlayer.play();
			});
		</script>
	</body>
</html>

