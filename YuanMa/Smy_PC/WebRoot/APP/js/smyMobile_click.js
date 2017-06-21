window.onload = function() {
	//下单页面
	var jia = document.querySelectorAll("#jia")
	var jian = document.querySelectorAll("#jian")
	var zhi = document.querySelector("#zhi");
	var zhi1 = document.querySelector("#zhi1");
	for(var i = 0; i < jia.length; i++) {
		
		jia[0].onclick = function() {
			zhi.value ++;
		}
		jian[0].onclick = function() {
			if(zhi.value == 1) {
				layer.open({
					content: '亲！至少买一件吧',
					skin: 'msg',
					time: 1
				});
				return false;
			} else {
				zhi.value--;
			}

		}
	}
	for(var i = 0; i < jia.length; i++) {
		
		jia[1].onclick = function() {
			zhi1.value++;
		
		}
		jian[1].onclick = function() {
			
			if(zhi1.value == 1) {
				layer.open({
					content: '货物重量不能小于0',
					skin: 'msg',
					time: 1
				});
				return false;
			} else {
				zhi1.value--;
			}

		}
	}
	//下单页面end		
}

$(function(){
	//下单页面
	//弹出框一
	$("#order_right").click(function(){
		$("#order_zhe").css("display","block");
		$("#order_tan").css("transform","translateY(-1.1rem)");
		$("#order_tan").css("transition","0.5s");
	});
	$("#order_zhe").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan").css("transform","translateY(1.1rem)");
		$("#order_tan").css("transition","0.5s");
	});	
	//货物类型取值
	$("#order_tex span").click(function(){		
		$("#order_leixin").html($(this).html());
		$("#order_zhe").css("display","none");
		$("#order_tan").css("transform","translateY(1.1rem)");
		$("#order_tan").css("transition","0.5s");
	})
	$("#order_close").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan").css("transform","translateY(1.1rem)");
		$("#order_tan").css("transition","0.5s");
	})
	
	//弹出框二
	//交通工具取值
	$("#order_tan1 #order_tex1 span").click(function(){
		$("#order_clar").html($(this).html());
		$("#order_zhe").css("display","none");
		$("#order_tan1").css("transform","translateY(1.8rem)");
		$("#order_tan1").css("transition","0.5s");
	})
	
	$("#order_right1").click(function(){
		$("#order_zhe").css("display","block");
		$("#order_tan1").css("transform","translateY(-1.8rem)");
		$("#order_tan1").css("transition","0.5s");
	});
	$("#order_zhe").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan1").css("transform","translateY(1.8rem)");
		$("#order_tan1").css("transition","0.5s");
	});	
	$("#order_close1").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan1").css("transform","translateY(1.8rem)");
		$("#order_tan1").css("transition","0.5s");
	})
	//下单页面end
	//搜索框页面
	//搜索框效果
	$("#search_sousuoinput").focus(function(){
		$("#header_input").css("width","70%");
		$("#header_input").css("transform","translate(-4%,.03rem)");
		$("#header_input").css("transition","0.5s");
		$("#search_sousuotext").css("transform","translateX(-10%)")
		$("#search_sousuotext").css("transition","0.5s");
		
	})
	
	//收货人  发货人
	$(".hipper_xia").click(function(){
				if($("#con_name").val()==""){
					layer.open({
			    	content: '请输入姓名',
			    	skin: 'msg',
			    	time: 1
			  		});
					return false;
				}
				if($("#con_phone").val()==""){
					layer.open({
			    	content: '请输入电话号码',
			    	skin: 'msg',
			    	time: 1
			  		});
					return false;
				}else if(!($("#con_phone") && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test($("#con_phone").val()))) {
			//提示
		    layer.open({
		    	content: '手机号码错误',
		    	skin: 'msg',
		    	time: 1
		  	});
			return false;
		}
				
			})
	
})
