<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'about.jsp' starting page</title>
    
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
						<a href="<%=basePath%>PC/index.jsp">公众号</a>
						<a href="<%=basePath%>PC/intro.jsp">关于我们</a>
						<a href="<%=basePath%>PC/personalCenter.jsp">个人中心</a>
					</nav>
					<div class="lianxi left">
						<div class="left"><img src="<%=basePath %>PC/img/电话.png"/><a href="#">400 800 600</a></div>
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
					水木云消费电子商城，正式成立于2016年9月,公司前身是深圳市一致电子科技有限公司，致力于电子产品的制造业领域长达十年.为适应市场发出趋势，公司于2011年9月成功转型，我们已全力进军互联网行业电子商务领域。依托有“世界工厂”之称的深圳和东莞制造业基地，尤其以电子产品著称。我们先后和七家工厂签约并建立长期的合作关系，为我们向您提供最优质的产品奠定了坚实的基础，同时售后服务得到保障。让您更放心。</p>
				<p>
					在我们不断的努力开拓下，我们的电子商务平台--------时尚消费电子商城（http://www.xfdzmall.com）是中国B2C市场电子网购专业平台之一。商城始终坚持以纯电子商务模式运营，缩减中间环节，为消费者在第一时间提供优质的产品及满意的服务。提供了灵活多样的消费者查询、购物等都将不受时间和地域的限制。依托多年打造的庞大物流体系，让您充分享受到"足不出户，网罗天下"的便捷
				</p>
				<p>
					对待所有客户我们秉承提供具有价格优势的产品和满意的服务为宗旨，以一流的产品质量和精湛的服务体系在行业客户中赢得较高声誉。公司秉承“以质为根、以诚为本、以德为先、以信为生”的发展理念，奉行“进取求实 严谨团结”的工作方针，不断开拓创新。以服务为核心，为最高宗旨，竭诚提供性价比最高的商品及无微不至的服务。公司集销售、物流、售后于一体，让您买的安心，用的舒心！
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
		  			<a href="#"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
		  		</p>
		  		<p>
		  			<a href="#"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
		  		</p>
		  		<p>
		  			<a href="#"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
		  		</p>
		  		<p>
		  			<a href="#"><label>特价大甩特价大甩特价大甩特价大甩卖</label><span>2017-6-2</span></a>
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
						<a href="<%=basePath %>PC/index.jsp">公众号</a>
						<a href="<%=basePath %>PC/index.jsp">网站地图</a>
						<a class="footer_map_last" href="<%=basePath %>PC/index.jsp">SITEAPM</a>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<div class="footer_bCont">
					<a href="javascript:;">公司：水木云网络科技有限公司</a>
					<a href="javascript:;">公司地址：贵阳市南明区太慈桥</a>
					<a href="javascript:;">黔ICP备16031300号 水木云版权所有</a>
					<a href="javascript:;">黔公网安备 33010802007421号</a>
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

