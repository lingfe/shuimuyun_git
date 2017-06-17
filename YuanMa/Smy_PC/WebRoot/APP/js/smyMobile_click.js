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
	//弹出框四
		//最晚取货时间取值
		$("#num_shi1").blur(function() {
			if($(this).val() >= 24 || $(this).val() < 0) {
				layer.open({
					content: '请输入正确的时间',
					skin: 'msg',
					time: 1
				});
				$(this).val("");
			}
		})
		$("#num_fen1").blur(function() {
			if($(this).val() > 60 || $(this).val() < 0) {
				layer.open({
					content: '请输入正确的时间',
					skin: 'msg',
					time: 1
				});
				$(this).val("");
			}
		})
		$("#butt1").click(function() {
			$("#order_zhe").css("display", "none");
			$("#order_tan3").css("transform", "translateY(1.6rem)");
			$("#order_tan3").css("transition", "0.5s");
		})
		$("#buttn1").click(function() {
			$("#order_zhe").css("display", "none");
			$("#order_tan3").css("transform", "translateY(1.6rem)");
			$("#order_tan3").css("transition", "0.5s");
			var xs1 = $("#num_shi1").val();
			var fz1 = $("#num_fen1").val();
			var shij1;
			if(xs1 == "" && fz1 == "") {
				layer.open({
					content: '请输入时间',
					skin: 'msg',
					time: 1
				});
				shij1 = "";
			} else if(xs1 == "") {
				shij1 = fz1 + "分";
			} else if(fz1 == "") {
				shij1 = xs1 + "小时";
			} else if(xs1 == "" && fz1 == "") {
				
			} else {
				shij1 = xs1 + "小时" + fz1 + "分";
			}
			$("#shijian1").html(shij1);
		})
		$("#order_right3").click(function() {
			$("#order_zhe").css("display", "block");
			$("#order_tan3").css("transform", "translateY(-1.6rem)");
			$("#order_tan3").css("transition", "0.5s");
		});
		$("#order_zhe").click(function() {
			$("#order_zhe").css("display", "none");
			$("#order_tan3").css("transform", "translateY(1.6rem)");
			$("#order_tan3").css("transition", "0.5s");

		});
		$("#order_close3").click(function() {
			$("#order_zhe").css("display", "none");
			$("#order_tan3").css("transform", "translateY(1.6rem)");
			$("#order_tan3").css("transition", "0.5s");
		})

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
	//弹出框三
	//最迟到达时间取值
	$("#num_shi").blur(function(){
		if($(this).val()>=24 || $(this).val()<0){
			layer.open({
		    	content: '请输入正确的时间',
		    	skin: 'msg',
		    	time: 1
		  	});
		  	$(this).val("");
		}
	})
	$("#num_fen").blur(function(){
		if($(this).val()>60 ||$(this).val()<0){
			layer.open({
		    	content: '请输入正确的时间',
		    	skin: 'msg',
		    	time: 1
		  	});
		  	$(this).val("");
		}
	})
	$("#butt").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan2").css("transform","translateY(1.6rem)");
		$("#order_tan2").css("transition","0.5s");
	})
	$("#buttn").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan2").css("transform","translateY(1.6rem)");
		$("#order_tan2").css("transition","0.5s");
		var xs=$("#num_shi").val();
		var fz=$("#num_fen").val();
		var shij;
		if(xs=="" && fz==""){
			layer.open({
		    	content: '请输入时间',
		    	skin: 'msg',
		    	time: 1
		  	});
		  	shij="";
		}
		else if(xs==""){
			shij=fz+"分";
		}else if(fz==""){
			shij=xs+"小时";
		}else if(xs=="" && fz==""){
			alert("s")
		}else{
		shij=xs+"小时"+fz+"分";
		}
		$("#shijian").html(shij);
	})
	$("#order_right2").click(function(){
		$("#order_zhe").css("display","block");
		$("#order_tan2").css("transform","translateY(-1.6rem)");
		$("#order_tan2").css("transition","0.5s");
	});
	$("#order_zhe").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan2").css("transform","translateY(1.6rem)");
		$("#order_tan2").css("transition","0.5s");
		
	});	
	$("#order_close2").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan2").css("transform","translateY(1.6rem)");
		$("#order_tan2").css("transition","0.5s");
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
