<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>评价</title>
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>APP/css/smyMobile.css" />
	<link rel="stylesheet" href="<%=basePath%>APP/css/layer.css" />
  </head>
  <style>
			.pingjia_tou{
				width: .8rem;
				height: .8rem;
				overflow: hidden;
				border-radius:50% ;
				line-height: 1rem;
				text-align: center;
				margin: auto;
				margin-top: .6rem;
				margin-bottom: .1rem;
			}
			.pingjia_tou img{
				 width:100%;
				line-height: 1rem;
			}
			.pingjia_name{
				display: block;
				width: 100%;
				color: #333;
				text-align: center;
				height: .19rem;
				font-size: .13rem;
			}
			.xinxin{
				width: calc(100% - 40px);
				margin: 0 20px;
				height:.5rem;
				line-height: .5rem;
			}
			.xinxin a{
				transform: translateY(-.2rem);
				display: inline-block;
				margin-left:-.26rem ;
				
			}
			.xinxin a:first-of-type{
				margin-left:.01rem !important;
			}
			.pingjiainput{
				margin: 10px;
				width: calc(100% - 20px);
				height: 1.5rem;
				box-sizing: border-box;
				background: white;
			}
			.pingjiainput textarea{
				border: none;
				width: 100%;
				height: 100%;
				padding:10px ;
				font-size: .13rem;
				color: #333;
			}
		</style>
  <body>
  <div class="contMian">
	<header class="commHeader">
		<a class="commHeader_l" onClick="javascript :history.back(-1);">
			<img title="" alt="" src="<%=basePath%>APP/images/icon/arow_left.png"/>
		</a>
		<h6>评价</h6>
	</header>
	<!--头部结束-->
	<!--内容开始-->
	<div class="pingjia_tou">
		<img src="<%=basePath%>APP/images/myUser.png" />
	</div>
	<span class="pingjia_name text_1_hide">杨军</span>
	<!-- 下单id -->
	<input type="hidden" name="xiaId" value="${xiaId }" />
	<!-- 快客id -->
	<input type="hidden" name="kuaikeId" value="${login.kuaikeId}"/>
	<div class="xinxin" >
	<!-- 星评 -->
	<input type="hidden" id="star" name="star" value="0"/>
	    <a href="javascript:click(1)"><img src="<%=basePath%>APP/images/icon/star.png" width="20" id="star1" onMouseOver="over(1)" onMouseOut="out(1)"/></a>
	    <a href="javascript:click(2)"><img src="<%=basePath%>APP/images/icon/star.png" width="20" id="star2" onMouseOver="over(2)" onMouseOut="out(2)" /></a>
	    <a href="javascript:click(3)"><img src="<%=basePath%>APP/images/icon/star.png" width="20" id="star3" onMouseOver="over(3)" onMouseOut="out(3)" /></a>
	    <a href="javascript:click(4)"><img src="<%=basePath%>APP/images/icon/star.png" width="20" id="star4" onMouseOver="over(4)" onMouseOut="out(4)"/></a>
	    <a href="javascript:click(5)"><img src="<%=basePath%>APP/images/icon/star.png" width="20" id="star5" onMouseOver="over(5)" onMouseOut="out(5)"/></a>
	    <span id="message"></span>
	</div>
	<div class="pingjiainput">
		<textarea name="remark" id="pingjiatext" placeholder="请输入评论内容"></textarea>
	</div>
	<button class="order_btn"  onclick="btnClick();"  id="pingjiabtn">提交</button>
    <script type="text/javascript" src="<%=basePath%>APP/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="<%=basePath%>APP/js/smyMobile.js" ></script>
    <script type="text/javascript" src="<%=basePath%>APP/js/layer.js" ></script>
    <script>
    function btnClick(){
    	//下单id
    	var xiaId ="${xiaId }";
    	//快客id
    	var kuaikeId="${login.kuaikeId}";
    	//星评
    	var star=$("#star").val();
    	//内容
    	var remark=$("#pingjiatext").val();
    	
    	$.ajax({
			url : 'xiaordertab/insertCommentInfo',
			type: 'post',
			data:{"xiaId":xiaId,"kuaikeId":kuaikeId,"star":star,"remark":remark},
			success : function(data) {
				if(data){
					layer.open({
					    	content: '评价成功！',
					    	skin: 'msg',
					    	time: 2
					});
					window.location.href="xiaordertab/getXiaIdStatusList/"+kuaikeId+"/4/"+xiaId;
				}else{
					layer.open({
					    	content: '评价失败！',
					    	skin: 'msg',
					    	time: 2
					});
				}
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
    
    
    
			$("#pingjiabtn").click(function(){
				if($("#pingjiatext").val()==""){
					layer.open({
					    	content: '请输入评价内容！',
					    	skin: 'msg',
					    	time: 2
					  	});
					return false;
				}else {
					/* window.location.href="index.html"; */
				}
			})
		</script>
		<script type="text/javascript">
var check = 0;//该变量是记录当前选择的评分
var time = 0;//该变量是统计用户评价的次数，这个是我的业务要求统计的（改变评分不超过三次），可以忽略
 
/*over()是鼠标移过事件的处理方法*/
function over(param){
    if(param == 1){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");//第一颗星星亮起来，下面以此类推
        $("#message").html("很差");//设置提示语，下面以此类推
    }else if(param == 2){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#message").html("比较差");
    }else if(param == 3){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#message").html("一般");
    }else if(param == 4){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star4").attr("src","<%=basePath%>APP/iimages/icon/star_red.png");
        $("#message").html("比较好");
    }else if(param == 5){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_redstar_red.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star4").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star5").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#message").html("很好");
    }
}
/*out 方法是鼠标移除事件的处理方法，当鼠标移出时，恢复到我的打分情况*/
function out(){
    if(check == 1){//打分是1，设置第一颗星星亮，其他星星暗，其他情况以此类推
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star4").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star5").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#message").html("");
    }else if(check == 2){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star4").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star5").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#message").html("");
    }else if(check == 3){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star4").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star5").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#message").html("");
    }else if(check == 4){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star4").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star5").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#message").html("");
    }else if(check == 5){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star4").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#star5").attr("src","<%=basePath%>APP/images/icon/star_red.png");
        $("#message").html("");
    }else if(check == 0){
        $("#star1").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star2").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star3").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star4").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#star5").attr("src","<%=basePath%>APP/images/icon/star.png");
        $("#message").html("");
    }
}
/*click()点击事件处理，记录打分*/
function click(param){
    time++;//记录打分次数
    check = param;//记录当前打分
    $("#star").val(param);
    out();//设置星星数
}
</script>
  </body>
</html>
