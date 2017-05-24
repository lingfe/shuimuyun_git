<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>下单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>PC/css/xiadan.css" />
	<link rel="stylesheet" href="<%=basePath%>PC/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=basePath%>PC/js/jquery-2.1.0.js" ></script>
	
  </head>
	<!--上传图片css-->
	<style type="text/css">
		.container {
			width: 100%;
			height: 10%;
			clear: both;
		}
		
		.z_photo {
			width: 90%;
			height: 4rem;
			overflow: auto;
			clear: both;
			border: 1px solid #555;
		}
		
		.z_photo img {
			width: 1rem;
			height: 1rem;
		}
		
		.z_addImg {
			float: left;
			margin-right: 0.4rem;
			margin-bottom: 0.7rem !important;
		}
		
		.z_file {
			width: 1rem;
			height: 1rem;
			background: url(<%=basePath%>PC/z_add.png) no-repeat;
			background-size: 100% 100%;
			float: left;
			margin-right: 0.2rem;
		}
		
		.z_file input::-webkit-file-upload-button {
			width: 1rem;
			height: 1rem;
			border: none;
			position: absolute;
			outline: 0;
			opacity: 0;
		}
		
		.z_file input#file {
			display: block;
			width: auto;
			border: 0;
			vertical-align: middle;
			background: none !important;
			outline: none;
		}
		/*遮罩层*/
		
		.z_mask {
			width: 100%;
			height: 100%;
			background: rgba(0, 0, 0, .5);
			position: fixed;
			top: 0;
			left: 0;
			z-index: 999;
			display: none;
		}
		
		.z_alert {
			width: 3rem;
			height: 2rem;
			border-radius: .2rem;
			background: #fff;
			font-size: .24rem;
			text-align: center;
			position: absolute;
			left: 50%;
			top: 50%;
			margin-left: -1.5rem;
			margin-top: -2rem;
		}
		
		.z_alert p:nth-child(1) {
			line-height: 1.5rem;
			transform: translateY(-10px);
		}
		
		.z_alert p:nth-child(2) span {
			display: inline-block;
			width: 49%;
			height: .5rem;
			line-height: .5rem;
			float: left;
			border-top: 1px solid #ddd;
			transform: translateY(-10px);
		}
		
		.z_cancel {
			border-right: 1px solid #ddd;
		}
	</style>

	<body>
		<!--导航开始-->
		<header>
			<div class="container">
				<nav class="nav navlist" role="navigation">
					<div class="navbar-header" style="margin-right: 60px;">
						<a href="<%=basePath%>PC/index.html" class="logo"><img src="<%=basePath%>PC/images/logo.png" /></a>
						<a href="#" class="navbar-btn navbar-toggle navbtn" data-toggle="collapse" data-target="#myCollapse">
							<img src="<%=basePath%>PC/images/nav-btn.png" />
						</a>
					</div>
					<div class="collapse navbar-collapse navColl text-center" id="myCollapse">
						<ul class="nav navbar-nav pull-left ren_nav">
							<li class="active">
								<a href="http://www.smuyun.com/">商城</a>
							</li>
							<li class="active">
								<a href="<%=basePath%>PC/index.html">人人配送</a>
							</li>
							<li>
								<a href="<%=basePath%>PC/aboutUs.html">公众号</a>
							</li>
							<li>
								<a href="<%=basePath%>PC/service.html">关于人人配送</a>
							</li>
							<li>
								<a href="<%=basePath%>PC/service.html">个人中心</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</header>
		<!--导航结束-->
		<!--内容-->
		<form action="xiaordertab/add" method="post"  enctype="multipart/form-data">
			<div class="con">
				<!--货物信息-->
				<div class="con_left col-lg-6 col-sm-6 col-md-6">
					<div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<label class="text-right">※ 货物数量(个/件):</label>
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<input type="text" name="shopNumer" value="1" />
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<label class="lll">※ 商品重量(kg):</label>
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3 lll">
							<select name="shopzholiang">
								<option value="200">200</option>
								<option value="300">300</option>
								<option value="400">400</option>
							</select>
						</div>

					</div>
					<div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<label class="text-right">※ 货物大小 :</label>
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<select class="ccc" name="shopGuige">
								<option value="">大</option>
								<option value="中">中</option>
								<option value="小">小</option>
							</select>
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<label class="lll">※ 货物类型:</label>
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3 lll">
							<select class="ccc" name="shopType">
								<option value="0">易碎</option>
								<option value="1">非易碎</option>
							</select>
						</div>
					</div>
					<div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<label>※ 最快取货时间:</label>
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3">
							<input class="ddd" name="TimeString" type="text" placeholder=" 请输入时间" />
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3 lll">
							<select class="x" name="TimeString">
								<option value="小时">小时</option>
								<option value="分钟">分钟</option>
								<option value="天">天</option>
							</select>
						</div>
						<div class="col-lg-3 col-sm-3 col-md-3 tt1">
							<span class="ttt"></span>
						</div>
					</div>
					<div>
						<!--    照片添加    -->
						<section class="container">
							<section class="z_photo">
								<section class="z_file">
									<input type="file" name="fileImages" id="file" value="" accept="image/*" multiple onchange="imgChange('z_photo','z_file');" />
								</section>
							</section>
							<!--遮罩层-->
							<section class="z_mask">
								<!--弹出框-->
								<section class="z_alert">
									<p>确定要删除这张图片吗？</p>
									<p>
										<span class="z_cancel">取消</span>
										<span class="z_sure">确定</span>
									</p>
								</section>
							</section>
						</section>
						<!--上传删除图片js-->
						<script type="text/javascript">
							//px转换为rem
							(function(doc, win) {
								var docEl = doc.documentElement,
									resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
									recalc = function() {
										var clientWidth = docEl.clientWidth;
										if (!clientWidth) return;
										if (clientWidth >= 640) {
											docEl.style.fontSize = '100px';
										} else {
											docEl.style.fontSize = 100 * (clientWidth / 640) + 'px';
										}
									};
								if (!doc.addEventListener) return;
								win.addEventListener(resizeEvt, recalc, false);
								doc.addEventListener('DOMContentLoaded', recalc, false);
							})(document, window);

							function imgChange(obj1, obj2) {
								//获取点击的文本框
								var file = document.getElementById("file");
								//存放图片的父级元素
								var imgContainer = document.getElementsByClassName(obj1)[0];
								//获取的图片文件
								var fileList = file.files;
								//文本框的父级元素
								var input = document.getElementsByClassName(obj2)[0];
								var imgArr = [];
								//遍历获取到得图片文件
								for (var i = 0; i < fileList.length; i++) {
									var imgUrl = window.URL.createObjectURL(file.files[i]);
									imgArr.push(imgUrl);
									var img = document.createElement("img");
									img.setAttribute("src", imgArr[i]);
									var imgAdd = document.createElement("div");
									imgAdd.setAttribute("class", "z_addImg");
									imgAdd.appendChild(img);
									imgContainer.appendChild(imgAdd);
								};
								imgRemove();
							};

							function imgRemove() {
								var imgList = document.getElementsByClassName("z_addImg");
								var mask = document.getElementsByClassName("z_mask")[0];
								var cancel = document.getElementsByClassName("z_cancel")[0];
								var sure = document.getElementsByClassName("z_sure")[0];
								for (var j = 0; j < imgList.length; j++) {
									imgList[j].index = j;
									imgList[j].onclick = function() {
										var t = this;
										mask.style.display = "block";
										cancel.onclick = function() {
											mask.style.display = "none";
										};
										sure.onclick = function() {
											mask.style.display = "none";
											t.style.display = "none";
										};
									}
								};
							};
						</script>
						<!--收货信息-->
					</div>
				</div>
				<div class="con_right col-lg-6 col-sm-6 col-md-6">
					<!--我的信息-->
					<div>
						<label>※ 我的姓名:</label>
						<input class="min1" name="kuaikeName" type="text" />
						<abbr class="tt2" style=" color: red;"></abbr>
					</div>
					<div>
						<label>※ 我的电话:</label>
						<input class="pon1" name="kuaikePhone" type="text" />
						<abbr class="tt3"></abbr>
					</div>
					<div>
						<label>※ 我的地址:</label>
						<select name="kuaikeAddress">
							<option value="贵州">贵州</option>
							<option value="四川">四川</option>
						</select>
						<label>省</label>
						<select name="kuaikeAddress">
							<option value="贵阳">贵阳</option>
							<option value="南充">南充</option>
						</select>
						<label>市</label>
						<select name="kuaikeAddress">
							<option value="红岩区">红岩区</option>
							<option value="仪陇">仪陇</option>
						</select>
						<label>县/区</label>
					</div>
					<div class="rr">
						<select name="kuaikeAddress">
							<option value="红岩路">红岩路</option>
							<option value="马鞍">马鞍</option>
						</select>
						<label>街道</label>
					</div>
					<div class="rr">
						<input name="kuaikeAddressInfo" type="text" />
						<label>详细地址</label>
					</div>
					<!--收货人信息-->
					<div>
						<label>※ 收货人姓名:</label>
						<input name="shouhuoNmae" class="min2" type="text" />
						<abbr class="tt4"></abbr>
					</div>
					<div>
						<label>※ 收货人电话:</label>
						<input name="shouhuoShone" class="pon2" type="text" />
						<abbr class="tt5"></abbr>
					</div>
					<div>
						<label>※ 收货人地址:</label>
						<select name="shouhuoAddress">
							<option value="四川">四川</option>
							<option value="贵州">贵州</option>
						</select>
						<label>省</label>
						<select name="shouhuoAddress">
							<option value="南充">南充</option>
							<option value="贵阳">贵阳</option>
						</select>
						<label>市</label>
						<select name="shouhuoAddress">
							<option value="仪陇">仪陇</option>
							<option value="红岩区">红岩区</option>
						</select>
						<label>县/区</label>
					</div>
					<div class="rr">
						<select name="shouhuoAddress">
							<option value="马鞍">马鞍</option>
							<option value="红岩路">红岩路</option>
						</select>
						<label>街道</label>
					</div>
					<div class="rr">
						<input name="shouhuoAddressInfo" type="text" />
						<label>详细地址</label>
					</div>
					<div class="bt">
						<label>商品最晚到达时间:</label><span>1</span><span>天</span>
					</div>
					<input class="bb" type="submit" value="立即提交" />
				</div>
			</div>
		</form>
		<!--错误验证弹出框-->
		<section class="d_z">
			<section class="d">
				<p class="d_text">请输入密码!</p>
				<p>
					<span class="d_cancel">取消</span>
					<span class="d_sure">确定</span>
				</p>
			</section>
		</section>
		<script type="text/javascript" src="<%=basePath%>PC/js/xiadan.js"></script>
	</body>

</html>
