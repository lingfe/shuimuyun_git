<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的地址</title>
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/mui.min.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>APP/css/smyMobile.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/style.css" />		
	</head>
	<body>
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" href="javascript:self.location=document.referrer;">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<h6>编辑地址</h6>
			<a class="commHeader_r" href="javascript:void(0);">
				<p class="commHeader_r_font">保存</p>
			</a>
		</header>
		<div class="edit_firstdiv">
			<div class="edit_firstdiv_1">
				<label>收 货 人 :</label>
				<input type="text" placeholder="请输入收货人姓名" id="userName" />
			</div>
			<div class="edit_firstdiv_2">
				<label>联系电话 :</label>
				<input type="text" placeholder="请输入联系电话" id="userPhone" />
			</div>
			<!--三级联动-->
			<div>
				<div class="browser">
        <!--选择地区-->
        <section class="express-area">
            <a id="expressArea" href="javascript:void(0)">
                <dl style="height: .5rem;">
                    <dt style="line-height: .5rem; font-size: 0.15rem">选择地区：</dt>
                    <dd id="adder"></dd>
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
				<label style="line-height: .5rem; font-size: 0.15rem">街　道 :</label>
				<input type="text" placeholder="请输入详细地址" id="xadder" />
			</div>
		</div>
		<!--<div class="edit_lastdiv">
			删除街道
		</div>-->
		<a href="javascript:void(0);"><button class="order_btn" id="editbtn">保存</button></a>
		
		
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.7.2.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/jquery.area.js" ></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/mui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/layer.js"></script>
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile_yz.js" ></script>
	</body>

</html>