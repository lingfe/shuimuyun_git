<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta id="meta" name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="icon" href="images/login/login.ico"  rel="shortcut icon"/>  
<title>一元夺宝——首页</title>
</head>
<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/cart.js"></script>
<script type="text/javascript" src="<%=basePath%>layer/layer.js"></script>
<script src="js/carousela.js"></script>
<script src="js/index.js"></script>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet" type="text/css" href="css/puble.css" />
<script type="text/javascript" src="js/temeDaojishiindex.js"></script>
<body>
<c:if test="${login==null}">
	<c:redirect url="shop"></c:redirect>
</c:if>
<%request.getSession().setAttribute("login",null); %>
<script type="text/javascript">
	$(function(){
		$(".carousela").carousela({
		  width : '100%',           //容器宽度
		  height : '',              //容器高度
		  during: 5000,             //定时器间隔速度
		  speed:1000 ,              //滑动速度
		  chumo:true,               //是否开启触摸，默认开启，关闭false
		  of:true,                  //是否开启箭头和圆点，默认开启，关闭false
		  n:{
			  of:false,              //是否开启左右箭头，默认开启，关闭false
			  src1:'img/2.png',     //左箭头图片
			  src2:'img/1.png',     //右箭头图片
			  width:30,             //图片宽度
			  gap:10,               //图片左的left值 ，右的right值
			  top:'',               //图片top值
			  },
		  d:{
			  of:true,              //true开启，false关闭圆点
			  oc:true,              //true开启，false关闭圆点点击事件
			  on_back : "#e6301d",     //当前圆点颜色
			  a_back : "#fff",   //圆点颜色
			  span_wh :10,         //圆点大小
			  span_m : 20,          //圆点间距
			  left : '',            //圆点左边距，默认正中
			  bottom : 10,           //圆点下边距，默认底部
			  }
		});
	})
	window.onload=function()
	{
		var oDiv=document.getElementById('show');
		var oP=oDiv.getElementsByTagName('nav')[0].getElementsByTagName('p');
		var oUl=oDiv.getElementsByTagName('div')[0].getElementsByTagName('ul');
		toTable(oP,oUl);

		
		
	}
</script>
<!--==================================================================== header开始 -->
<header>
	<div class="header_content w">
		<h4 class="fl">首页</h4>
		<em class="fr"><img src="images/index/logo.png" width="100%" alt="加载中"></em>
	</div>
</header>
<!-- ========================================================= nav开始-->
<div class="nav">
	<div>
		<ul class="w">
			<li><a href="#" class="active">首页</a></li>
			<li><a href="getTenPrice?price=10">十元专区</a></li>
			<li><a href="getShopType?stName=手机数码">手机专区</a></li>
			<li><a href="published">往期揭晓</a></li>
			<li><a href="getListShop">所有专区</a></li>
		</ul>
	</div>
</div>
<!-- ===================================================banner -->
<div class="carousela">
	<ul>
 	<c:forEach items="${allList}" var="all" begin="0" end="3">
		<li><a><img src="<%=basePath %>photoInfoImages/${all.piName}" width="100%" alt="加载中"></a></li>
	</c:forEach>
	</ul>
</div>
<!-- ==========================================	=================================晒单十元专区幸运转盘常见问题 -->
<div class="neck">
	<ul class="w">
		 <li>
			 <a href="queryAllBask/1/10">
			 	<b><img src="images/index/xiangji.png" width="100%" alt="加载中"></b>
				 <p>晒单</p>
			 </a>
		 </li>
		 <li>
			 <a href="showShopType">
			 	<b><img src="images/index/fenlei.png" width="100%" alt="加载中"></b>
				 <p>所有分类</p>
			 </a>
		 </li>
		 <li>
			 <a href="getTenPrice?price=10">
			 	<b><img src="images/index/shiyuan.png" width="100%" alt="加载中"></b>
				 <p>十元专区</p>
			 </a>
		 </li>
		 <li>
			 <a href="AboutUs.jsp">
			 	<b><img src="images/index/guanyuwomen.png" width="100%" alt="加载中"></b>
				 <p>关于我们</p>
			 </a>
		 </li>
	</ul>
</div>
<!-- ====================================================================最新揭晓 -->
<!-- ====================================================================最新揭晓 -->
<div class="newest" id="newest">
	<div>
		<h3 class="w">
			<b class="fl">最新揭晓 </b>
			<a href="jieXiao" class="fr"><span>显示全部</span><em class="fr"><img src="images/index/fanhui.png" width="100%" alt="加载中"></em></a>
		</h3>
	</div>
	<ul class="w">
	<form action="getNum" method="post" id="form">
			<input type="hidden" id="test" name="cai" value="test">
		</form>
	<c:forEach items="${jiexiao}" var="jiexiao">
			<li>			
			<a href="<%=basePath%>jieXiao">
				<b class="fl"><img src="<%=basePath%>ShopInfoImgs/${jiexiao.shopinfo.pictureOne}" width="100%" alt="加载中"></b>
				<p>${fn:substring(jiexiao.shopinfo.shopName , 0, 7)}${fn:length(jiexiao.shopinfo.shopName)>7?'......':''}</p>
				<%--不要 更改	--%>
								<div class="indexShowTime1" style="color: red;" data-end="${jiexiao.niEndTime}">
									<strong class="minute_show">00</strong>:
									<strong class="second_show" title="${jiexiao.niName}">00</strong>:
									<strong class="millisecond_show">00</strong>
								</div>
								
			</a>
		</li>
		</c:forEach>
		
	</ul>
		<ul class="w">
		<c:forEach items="${show}" var="showreward">
		<li>
			<a href="<%=basePath%>jieXiao">
				<b class="fl"><img src="<%=basePath%>ShopInfoImgs/${showreward.numsinfo.shopinfo.pictureOne}" width="100%" alt="加载中"></b>
				<p>${fn:substring(showreward.numsinfo.shopinfo.shopName , 0, 7)}${fn:length(showreward.numsinfo.shopinfo.shopName)>7?'......':''}
			</p>
				
				<p>中奖号:${showreward.showNum}</p>
			</a>
					</li>
		</c:forEach>
		</ul>
</div>


<!-- ==============================================================================展示-->


<div class="show" id="show">
	<nav>
		<p class="active">推荐<sup>•</sup></p>
		
		<p>最新</p>
		<p>热门</p>
		
		<p><a href="find.jsp">活动</a></p>
	</nav>
	
	<div class="show_ul " >
	
	
	
				<ul class="active">
				
					<c:forEach items="${tJian}" var="t" begin="0" end="9">
						<fmt:parseNumber integerOnly="true"
											value="${t.niNum*100/t.niJoin}"
											var="num"></fmt:parseNumber>
						<li>
						<a href="<%=basePath%>NumsInfoUI/getGoddsinfo/${t.niId}">
							<em class="fl"><img src="<%=basePath%>ShopInfoImgs/${t.shopinfo.pictureOne}" width="100%" alt="加载中"></em>
							<p>${t.shopinfo.newName}</p>
							<p>揭晓进度:<span>${pageScope.num}%</span></p>
						</a>
							<div>
								<b class="fl"><i style="width: ${pageScope.num}%"></i></b>
								<button class="fr" onclick="addCart(${t.shopinfo.shopId},${t.niId})">加入清单</button>
							</div>
						
					</li>
					</c:forEach>
				</ul>
				<ul class="">
					<c:forEach items="${newshopinfo}" var="n" begin="0" end="9">
						<fmt:parseNumber integerOnly="true"
											value="${n.niNum*100/n.niJoin}"
											var="num"></fmt:parseNumber>
						<li>
						<a href="<%=basePath%>NumsInfoUI/getGoddsinfo/${n.niId}">
							<em class="fl"><img src="<%=basePath%>ShopInfoImgs/${n.shopinfo.pictureOne}" width="100%" alt="加载中"></em>
							<p>${n.shopinfo.newName}</p>
							<p>揭晓进度:<span>${pageScope.num}%</span></p>
							<div>
								<b class="fl"><i style="width: ${pageScope.num}%"></i></b>
								<button class="fr" onclick="addCart(${n.shopinfo.shopId},${n.niId})">加入清单</button>
							</div>
						</a>
					</li>
					</c:forEach>
				</ul>
				<ul class="">
					<c:forEach items="${remen}" var="n" begin="0" end="9">
						<fmt:parseNumber integerOnly="true"
											value="${n.niNum*100/n.niJoin}"
											var="num"></fmt:parseNumber>
						<li>
						<a href="<%=basePath%>NumsInfoUI/getGoddsinfo/${n.niId}">
							<em class="fl"><img src="<%=basePath%>ShopInfoImgs/${n.shopinfo.pictureOne}" width="100%" alt="加载中"></em>
							<p>${n.shopinfo.newName}</p>
							<p>揭晓进度:<span>${pageScope.num}%</span></p>
							<div>
								<b class="fl"><i style="width: ${pageScope.num}%"></i></b>
								<button class="fr" onclick="addCart(${n.shopinfo.shopId},${n.niId})">加入清单</button>
							</div>
						</a>
					</li>
					</c:forEach>
				</ul>
		</div>
				
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br/>
<!--====================================================================-=============footer -->
<div class="footer">
		<a href="shop" class="active">
			<b class="b1"></b>
			<p>首页</p>
		</a>
		<a href="jieXiao">
			<b class="b2"></b>
			<p>揭晓</p>
		</a>
		<a href="find.jsp">
			<b class="b3"></b>
			<p>发现</p>
		</a>
		<a href="queryCartCus">
			<b class="b4"></b>
			<p>清单</p>
		</a>
		<a href="<c:if test="${customer==null}">login.jsp</c:if><c:if test="${customer!=null}">me.jsp</c:if>">
			<b class="b5"></b>
			<p>我的</p>
		</a>
</div>
</body>
</html>
