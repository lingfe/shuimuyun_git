//数量加减
window.onload = function() {
	//下单页面
	var jia = document.querySelectorAll("#jia")
	var jian = document.querySelectorAll("#jian")
	var zhi = document.querySelector("#zhi");
	var zhi1 = document.querySelector("#zhi1");
	var zhi11 = document.querySelector("#zhi11");
	var shopprices = document.querySelector("#shopprices");
	for(var i = 0; i < jia.length; i++) {
		jia[0].onclick = function() {
			zhi.value ++;	
		}
		jian[0].onclick = function() {
			
			if(zhi.value == 1) {
				layer.open({
					content: '亲至少买一件吧',
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
			zhi1.value ++;
			if(zhi1.value<=50){
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*1.5+(zhi1.value-5)*0.5+8;
				} 
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*1.5+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*2+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*2+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*3+0+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*3+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value<=5 && zhi1.value<5){
					shopprices.value=8;
				}
				if(zhi11.value<=5 && zhi1.value>5){
					shopprices.value=0+(zhi1.value-5)*0.5+8;
				}
			}else{
				zhi11.value=50;
				layer.open({
					content: '货物过重',
					skin: 'msg',
					time: 1
				});
				return false;
			}
		}
		jian[1].onclick = function() {
			if(zhi1.value == 1) {
				layer.open({
					content: '货物重量不能小于1',
					skin: 'msg',
					time: 1
				});
				return false;
			} else {
				zhi1.value--;
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*1.5+(zhi1.value-5)*0.5+8;
				} 
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*1.5+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*2+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*2+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*3+0+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*3+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value<=5 && zhi1.value<5){
					shopprices.value=8;
				}
				if(zhi11.value<=5 && zhi1.value>5){
					shopprices.value=0+(zhi1.value-5)*0.5+8;
				}
			}

		}
	}	
	//距离
	for(var i = 0; i < jia.length; i++) {
		jia[2].onclick = function() {
			zhi11.value ++;
			if(zhi11.value<=60){
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*1.5+(zhi1.value-5)*0.5+8;
				} 
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*1.5+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*2+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*2+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*3+0+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*3+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value<=5 && zhi1.value<5){
					shopprices.value=8;
				}
				if(zhi11.value<=5 && zhi1.value>5){
					shopprices.value=0+(zhi1.value-5)*0.5+8;
				}
			}else{
				zhi11.value=60;
				layer.open({
					content: '派送距离过远',
					skin: 'msg',
					time: 1
				});
				return false;
			}	
		}
		jian[2].onclick = function() {
			if(zhi11.value == 0) {
				layer.open({
					content: '派送距离不能小于0',
					skin: 'msg',
					time: 1
				});
				return false;
			} else {
				zhi11.value--;
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*1.5+(zhi1.value-5)*0.5+8;
				} 
				if(zhi11.value>5 && zhi11.value<=15 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*1.5+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*2+0+8;
				}
				if(zhi11.value>15 && zhi11.value<=35 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*2+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value<5){
					shopprices.value=(zhi11.value-5)*3+0+8;
				}
				if(zhi11.value>35 && zhi11.value<=60 &&zhi1.value>5){
					shopprices.value=(zhi11.value-5)*3+(zhi1.value-5)*0.5+8;
				}
				if(zhi11.value<=5 && zhi1.value<5){
					shopprices.value=8;
				}
				if(zhi11.value<=5 && zhi1.value>5){
					shopprices.value=0+(zhi1.value-5)*0.5+8;
				}
			}

		}
	}
	//下单页面end		
}

$(function() {
	//下单页面
	//弹出框一
	$("#order_right").click(function() {
		$("#order_zhe").css("display", "block");
		$("#order_tan").css("display", "block");
/*		textField.enabled = NO;
		tapGestureRecognizer.cancelsTouchesInView = NO;  
		$("#order_leixin").click(function(){
			this.blur();
		})*/
	});
	$("#order_zhe").click(function() {
		$("#order_zhe").css("display", "none");
		$("#order_tan").css("display", "none");
	});
	//货物类型取值
	$("#order_tex span").click(function() {
		$("#order_leixin").val($(this).html());
		$("#order_zhe").css("display", "none");
		$("#order_tan").css("display", "none");
	})
	$("#order_close").click(function() {
		$("#order_zhe").css("display", "none");
		$("#order_tan").css("display", "none");
	})

	//弹出框二
	//交通工具取值
	$("#order_tan1 #order_tex1 span").click(function() {
		$("#order_clar").val($(this).html());
		$("#order_zhe").css("display", "none");
		$("#order_tan1").css("display", "none");
	});

	$("#order_right1").click(function() {
		$("#order_zhe").css("display", "block");
		$("#order_tan1").css("display", "block");
/*		textField.enabled = NO;
		tapGestureRecognizer.cancelsTouchesInView = NO;  
		$("#order_clar").click(function(){
			this.blur();
		})*/
	});
	$("#order_zhe").click(function() {
		$("#order_zhe").css("display", "none");
		$("#order_tan1").css("display", "none");
	});
	$("#order_close1").click(function() {
		$("#order_zhe").css("display", "none");
		$("#order_tan1").css("display", "none");
	})
	//弹出框三
	//下单页面end
	//搜索框页面
	//搜索框效果
	$("#search_sousuoinput").focus(function() {
		$("#header_input").css("width", "70%");
		$("#header_input").css("transform", "translate(-4%,.03rem)");
		$("#header_input").css("transition", "0.5s");
		$("#search_sousuotext").css("transform", "translateX(-10%)")
		$("#search_sousuotext").css("transition", "0.5s");

	})
	//我的地址
	$(".adds_list_3_1").click(function() {
		if($(this).find(".op").is(":hidden")) {
			$(this).find(".op").show();
			$(this).find(".dis").hide();
			$(this).find(".mo").css("color", "#999");
			$(this).find(".mo").html("设为默认地址");
		} else {
			$(this).find(".op").hide();
			$(this).find(".dis").show();
			$(this).find(".mo").css("color", "#418bc8");
			$(this).find(".mo").html("默认地址");
			$(this).parent().parent().siblings().find(".mo").html("设为默认地址");
			$(this).parent().parent().siblings().find(".mo").css("color", "#999");
			$(this).parent().parent().siblings().find(".op").show();
			$(this).parent().parent().siblings().find(".dis").hide();
		}
	})

	$(".adds_list_3_3").click(function() {
		$(this).parent().parent().remove();
	})

	//收货人  发货人
	$(".hipper_xia").click(function() {
		var reg=/^[\u2E80-\u9FFF]+$/;
		if($("#con_name").val() == "") {
			layer.open({
				content: '请输入姓名',
				skin: 'msg',
				time: 1
			});
			return false;
		} else if(!(reg.test($("#con_name").val())))
			{
			layer.open({
				content: '姓名格式错误！',
				skin: 'msg',
				time: 1
			});
			return false;
			}
		if($("#con_phone").val() == "") {
			layer.open({
				content: '请输入电话号码',
				skin: 'msg',
				time: 1
			});
			return false;
		} else if(!($("#con_phone") && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test($("#con_phone").val()))) {
			//提示
			layer.open({
				content: '手机号码错误',
				skin: 'msg',
				time: 1
			});
			return false;
		}
		if($("#xadder").val()==""){
			layer.open({
				content: '请输入详细地址',
				skin: 'msg',
				time: 1
			});
			return false;
		}

	})
	$("#order_buttom_text").click(function() {
		if($(this).find(".dis").is(":hidden")) {
			$(this).find(".dis").show();
			$(this).find(".op").hide();
		} else {
			$(this).find(".dis").hide();
			$(this).find(".op").show();
		}
	})
	$("#taking_btn").click(function() {
		if($(".op").is(":hidden")) {
			layer.open({
				content: '同意协议',
				skin: 'msg',
				time: 1
			});
			return false;
		}
	})
	$("#btn_ImgUpStart").click(function() {
		if($(".op").is(":hidden")) {
			layer.open({
				content: '同意协议',
				skin: 'msg',
				time: 1
			});
			return false;
		}
	})
})