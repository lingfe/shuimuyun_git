<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>安全提醒</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
		<style>
			.anqCont {
				width: 100%;
				height: auto;
				overflow: hidden;
				box-sizing: border-box;
				padding: 20px 20px;
				padding-top: 0.6rem;
			}
			.anqCont_item {
				width: 100%;
				height: auto;
				overflow: hidden;
				margin-bottom: 0.15rem;
			}
			.anqCont_item h4 {
				color: #333;
				font-size: 0.16rem;
			}
			.anqCont_item p {
				color: 666;
				font-size: 0.14rem;
				padding-top: 0.05rem;
			}
		</style>
	</head>
	<body style="background: #fff;">
		<!--【头部】-->
		<header class="commHeader">
			<a class="commHeader_l" onClick="javascript :history.back(-1);">
				<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png" />
			</a>
			<p>安全提醒</p>
		</header>
		<!--【头部】end-->
		
		<div class="anqCont">
			<div class="anqCont_item">
				<h4>一、通过本信息服务平台发布的事项信息所涉物品的范围重量限定</h4>
				<p>重量限定</p>
				<p>单件货物重量不得＞50公斤</p>
				<p>体积限定</p>
				<p>单件货物任意一边≤100cm</p>
				<p>金额限制</p>
				<p>物品价值不得＞5000元人民币</p>
				<p>区域限制</p>
				<p>中华人民共和国已开通区域禁止发布有关涉及各种弓、弩、金属刀、剑制品（包含工艺品）等管制刀具的任务信息</p>
			</div>
			<div class="anqCont_item">
				<h4>二、通过本信息服务平台发布的事项信息不得包含以下物品</h4>
				<p>1、易爆炸物：鞭炮、放烟筒、导火线、爆发钉、炸药（含黑火药）、雷管、烟花、摔炮、拉炮 、发令纸等；</p>
				<p>2、气 体：气雾剂、瓦斯气瓶、气体打火机、引火性烟雾气消化器、压缩酸素、液体氨、冷冻用瓦斯类、深冷液化瓦斯(RCL)等；</p>
				<p>3、易燃液体：汽油、油漆、印刷墨、香料、灯油、酒精、粘合剂、双氧水等；</p>
				<p>4、易燃固体：磷、石棉、安全火柴、硝纤象牙、磷、硫黄、活性炭、硫化钠、金属催化剂、钙、碳化物、镁、钡、碱土金属合金等；</p>
				<p>5、氧化物和有机过氧化物：碘、乒乓球、化学氧气发生器、過氧化水素水、盐素酸盐类、硫酸氨肥料、甲醇 、酮、醅氧化物（树脂或封印催化剂）等；</p>
				<p>6、毒性和传染性物质：血样、毒品、杀虫杀菌剂、消毒剂、染料、水银化合物、医药品、细菌、氰化物、砒霜、敌敌畏、病毒、医药用废弃物及其他烈性毒药等；</p>
				<p>7、放射性物质：空容器、机器内置放射能量非常少的物质、输送物表面最大线量率为5μSv/h以下等；</p>
				<p>8、各类易腐蚀物品：酸类、双氧水等；</p>
				<p>9、其它危险品：干冰，安全气袋、磁性物质（电子呐叭、音响）部分化妆品、液体状态货物、金砖银条、货币、军火或武器弹药、动物、遗体（包括骨灰）、胶片、各类麻醉药物及其制品、金属钠、镁、铝粉、生化类制品、法律或有关部门禁止的物品、可转让、流通的有价证券等；</p>
				<p>10、尸体、尸骨、骨灰、灵柩及易于污染、损坏车辆及妨害公共卫生的物品；</p>
				<p>11、蛇、猛兽和活动物（运输命令指定运输的动物除外）；</p>
				<p>12、不明性质的化工产品；</p>
				<p>13、国家法令禁止、限制流通的物品：如国家秘密文件和资料、国家货币及伪造的货币和有价证券、仿真武器、管制刀具、珍贵文物、濒危野生动物及其制品、烟草、麻醉药品、放射性物品、酒、金矿产品、木材，以及各种危害国家安全和社会政治稳定以及淫秽的出版物、宣传品、印刷品；包装不妥，可能危害人身安全、污染或者损毁其他设备的物品等。</p>
			</div>
		</div>
		
		<script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
	</body>
</html>
