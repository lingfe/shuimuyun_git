$(function() {
	/*
	 * 
	 * 登录验证
	 * 
	*/
	$("#loginBtn").click(function() {
		//获取手机号码
		var userPhone = $("#userPhone").val();
		//获取登录密码
		var userPwd = $("#userPwd").val();
		
		if(!(userPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhone))) {
			//提示
		    layer.open({
		    	content: '手机号码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(userPwd == "" || !(/^[a-zA-Z\d_]{6,16}$/.test(userPwd))) {
			layer.open({
		    	content: '密码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		loginJz();
	});
	
	/*忘记密码*/
	$("#forgetBtn").click(function() {
		var forgePhone = $("#forgePhone").val();
		var forgeYzm = $("#forgeYzm").val();
		var forgePwd = $("#forgePwd").val();
		var forgeNpwd = $("#forgeNpwd").val();
		
		if(!(forgePhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(forgePhone))) {
			//提示
			//alert("sfdsf")
		    layer.open({
		    	content: '手机号码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(forgeYzm == "") {
			//提示
		    layer.open({
		    	content: '请填写验证码',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(forgePwd == "" || !(/^[a-zA-Z\d_]{6,16}$/.test(forgePwd))) {
			//提示
		    layer.open({
		    	content: '密码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(forgePwd != forgeNpwd) {
			//提示
		    layer.open({
		    	content: '密码不一致',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		forgeJz();
	});
	/*获取验证码*/
	$("#forgeYzmBtn").click(function() {
			
		var kuaikePhone = $("#forgePhone").val();
		if (!(kuaikePhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(kuaikePhone))) {
			//提示
			//alert("sfdsf")
			layer.open({
				content : '手机号码错误',
				skin : 'msg',
				time : 2
			});
			return false;
		} else {
			$("#forgePhone").attr("readonly",true);
			var mobile_code = $("#forgeYzm").val();
			
			$.ajax({
				url : 'getCode/' + kuaikePhone,
				type : 'POST',
				data : {
					mobile_code : mobile_code
				},

				//请求成功后触发
				success : function(data) {

					$("#forgeYzm").val(data);

				}
			});

			time(this);
			setTimeout(function() {
				$("#forgePhone").attr("readonly",false);
				$("#forgeYzm").val("");
			},60000)
		}

	});
	
	//resetBtn  forgeNpwd  forgePwd
	/*快客重置密码【通过手机换绑修改密码】*/
	$("#resetBtn").click(function() {
		var forgeNpwd = $("#forgeNpwd").val();
		var forgePwd = $("#forgePwd").val();

		if (forgeNpwd!=forgePwd) {
			
			layer.open({
				content : '两次输入密码不一致...',
				skin : 'msg',
				time : 2
			});
			return false;
		} else if (forgePwd == "" || !(/^[a-zA-Z\d_]{6,16}$/.test(forgePwd))) {
			//提示
			layer.open({
				content : '密码错误',
				skin : 'msg',
				time : 2
			});
			return false;
		}
		forgeJz();
	});
	
	
	/*
	 * 
	 * 修改密码获取验证码
	 * 
	*/

	$("#freeBtn").click(function() {
		var forgePhone = $("#forgePhone").val();
		var forgeYzm = $("#forgeYzm").val();

		if (!(forgePhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(forgePhone))) {
			//提示
			//alert("sfdsf")
			layer.open({
				content : '手机号码错误',
				skin : 'msg',
				time : 2
			});
			return false;
		} else if (forgeYzm == "") {
			//提示
			layer.open({
				content : '请填写验证码',
				skin : 'msg',
				time : 2
			});
			return false;
		}
		freeJz();
	});
	
	//申述找回密码
	$("#appeal").click(function(){
		var userName = $("#userName").val();
		var lastPhone = $("#lastPhone").val();
		var regPhone = $("#regPhone").val();
		var userName = $("#userName").val();
		var regYzm = $("#regYzm").val();
		var reg=/^[\u2E80-\u9FFF]+$/;
		if(!(lastPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(lastPhone))) {
			//提示
		    layer.open({
		    	content: '曾用手机号错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(userName == "" || userName.length>4 || !(reg.test(userName))) {
			//提示
		    layer.open({
		    	content: '请输入真实姓名 ',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(!(regPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(regPhone))) {
			//提示
		    layer.open({
		    	content: '现用手机号错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(regYzm == "") {
			//提示
		    layer.open({
		    	content: '请填写验证码',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		forPhoneJz();
	
		
	});
	
	
	/*
	 * 
	 * 注册页面验证
	 * 
	*/	
	$("#regBtn").click(function() {
		//alert("sfddf")
		var userName = $("#userName").val();
		var forgePhone = $("#forgePhone").val();
		var regYzm = $("#regYzm").val();
		var regPwd = $("#regPwd").val();
		var regNpwd = $("#regNpwd").val();
		var zhipwd = $("#zhipwd").val();
		var zhinpwd = $("#zhinpwd").val();
		//var text = /^\\d{6}$/;
		var reg=/^[\u2E80-\u9FFF]+$/;
//		if(userName == "" || userName.length>4 || !(reg.test(userName))) {
//			//提示
//		    layer.open({
//		    	content: '请输入真实姓名 ',
//		    	skin: 'msg',
//		    	time: 2
//		  	});
//			return false;
//		}
//		else 
			if(!(forgePhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(forgePhone))) {
			//提示
		    layer.open({
		    	content: '手机号码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(regYzm == "") {
			//提示
		    layer.open({
		    	content: '请填写验证码',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(regPwd == "" || !(/^[a-zA-Z\d_]{6,16}$/.test(regPwd))) {
			
			//提示
		    layer.open({
		    	content: '密码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(regPwd != regNpwd) {
			//提示
		    layer.open({
		    	content: '密码不一致',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		} 
		else if(/[^0-9]/g.test(zhipwd) || zhipwd.length != 6) {
			//提示
		    layer.open({
		    	content: '支付密码必须6位数字',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else if(zhipwd != zhinpwd) {
			//提示
		    layer.open({
		    	content: '两次支付密码不一致',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		regJz();
	});
	
	/*
	 * 
	 * 注册验证码*
	 *
	*/
	$("#regYzmBtn").click(function() {
		var kuaikePhone = $("#regPhone").val();
		if(!(kuaikePhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(kuaikePhone))) {
			//提示
		    layer.open({
		    	content: '手机号码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		else {
			//获取手机验证码
			var mobile_code = $("#regYzm").val();
					
					$.ajax({
						url : 'getCode/' + kuaikePhone,
						type : 'POST',
						data : {
							mobile_code : mobile_code
						},
		
						//请求成功后触发
						success : function(data) {
		
							$("#regYzm").val(data);
		
						}
					});
					
			time(this);
		}
	});
});

/*
 * 
 * 登录提交方法
 * 
*/
function loginJz() {
	var forgePhone = $("#forgePhone").val();
	var forgeYzm = $("#forgeYzm").val();
	var forgePwd = $("#forgePwd").val();
	var forgeNpwd = $("#forgeNpwd").val();
	layer.open({
		content : '正在登录...',
		skin : 'msg',
		time : 2
	});
	setTimeout(function() {
		$(".loginCont_form").submit();
	}, 2000)

}
function freeJz() {
	var forgePhone = $("#forgePhone").val();
	var forgeYzm = $("#forgeYzm").val();

	layer.open({
		content : '正在登录...',
		skin : 'msg',
		time : 2
	});
	setTimeout(function() {
		$(".loginCont_form").submit();
	}, 2000)

}

function regJz() {
	layer.open({
    	content: '正在注册...',
    	skin: 'msg',
    	time: 2
  	});
  	setTimeout(function() {
  		$(".loginCont_form").submit();
	},2000)
}

/*
 * 
 * 密码修改方法
 * 
*/
function forgeJz() {
	layer.open({
    	content: '密码修改成功...',
    	skin: 'msg',
    	time: 2
  	});
  	setTimeout(function() {
  		$(".loginCont_form").submit();
	},2000)
}

/*
 * 手机换绑成功
 * 
 */
function forPhoneJz() {
	layer.open({
    	content: '手机换绑成功...',
    	skin: 'msg',
    	time: 2
  	});
  	setTimeout(function() {
  		$(".loginCont_form").submit();
	},2000)
}



/*
 * 60秒倒计时
*/
var wait=60;
function time(o) {
	if (wait == 0) {
		o.removeAttribute("disabled");			
		o.value="获取验证码";
		o.innerHTML="获取验证码";
		wait = 60;
	} else {
		o.setAttribute("disabled", true);
		o.value="重新发送(" + wait + ")";
		o.innerHTML="重新发送(" + wait + ")";
		wait--;
		setTimeout(function() {
			time(o)
		},1000)
	}
}

