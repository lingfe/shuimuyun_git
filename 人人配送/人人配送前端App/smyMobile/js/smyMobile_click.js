//数量加减
window.onload = function(){
	//下单页面
	var jia = document.querySelectorAll("#jia")
	var jian = document.querySelectorAll("#jian")
	var zhi =document.querySelector("#zhi");
	var zhi1 =document.querySelector("#zhi1");
	for(var i=0;i<jia.length;i++){
		var s = 2;
		jia[0].onclick=function(){
				zhi.innerText=s;
				s++;
	}
		jian[0].onclick=function(){
			zhi.innerText=s-2;
			if(s==2){
				 layer.open({
		    	content: '货物数量不能小于0',
		    	skin: 'msg',
		    	time: 1
		  	});
				return false;
			}else{
				s--;
			}
			
		}
	}	
		for(var i=0;i<jia.length;i++){
		var a = 2;
		jia[1].onclick=function(){
				zhi1.innerText=a;
				a++;
	}
		jian[1].onclick=function(){
			zhi1.innerText=a-2;
			if(a==2){
				 layer.open({
		    	content: '货物重量不能小于0',
		    	skin: 'msg',
		    	time: 1
		  	});
				return false;
			}else{
				a--;
			}
			
		}
	}
	//时间加减	
	var xiaoshi =document.querySelector("#xiaoshi");
	var jiajia1 =document.querySelector("#jiajia1");
	var jianjian1 =document.querySelector("#jianjian1");
	var jiajia2 =document.querySelector("#jiajia2");
	var jianjian2 =document.querySelector("#jianjian2");
	var fenzhong =document.querySelector("#fenzhong");
	for(var i=0;i<jia.length;i++){
		var s = 2;
		jiajia1.onclick=function(){
			xiaoshi.innerText=s;
			if(s==24){
				layer.open({
		    	content: '时间最迟不能超过24小时',
		    	skin: 'msg',
		    	time: 1
		  	});
				return false;
			}else{
				s++;
			}
				
	}
		jianjian1.onclick=function(){
			xiaoshi.innerText=s-2;
			if(s==2){
				return false;
			}else{
				s--;
			}
			
		}
	}	
		for(var i=0;i<jia.length;i++){
		var f = 30;
		jiajia2.onclick=function(){
				fenzhong.innerText=f;
				if(f==60){
				return false;
			}else{
				f+=15;
			}
	}
		jianjian2.onclick=function(){
			fenzhong.innerText=f-15;
			if(f==30){
				return false;
			}else{
				f-=15;
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
	//弹出框三
	//最迟到达时间取值
	
	$("#order_right2").click(function(){
		$("#order_zhe").css("display","block");
		$("#order_tan2").css("transform","translateY(-1.1rem)");
		$("#order_tan2").css("transition","0.5s");
	});
	$("#order_zhe").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan2").css("transform","translateY(1.1rem)");
		$("#order_tan2").css("transition","0.5s");
		var xs=$("#xiaoshi").html();
		var fz=$("#fenzhong").html();
		var shij=xs+"时"+fz+"分";
		$("#shijian").html(shij);
	});	
	$("#order_close2").click(function(){
		$("#order_zhe").css("display","none");
		$("#order_tan2").css("transform","translateY(1.1rem)");
		$("#order_tan2").css("transition","0.5s");
		var xs=$("#xiaoshi").html();
		var fz=$("#fenzhong").html();
		var shij=xs+"时"+fz+"分";
		$("#shijian").html(shij);
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
	
	
	
	
})
