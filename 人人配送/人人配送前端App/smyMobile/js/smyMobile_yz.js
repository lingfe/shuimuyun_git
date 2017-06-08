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
		else if(userPwd == "") {
			layer.open({
		    	content: '密码错误',
		    	skin: 'msg',
		    	time: 2
		  	});
			return false;
		}
		loginJz();
	})
})

/*
 * 
 * 登录提交方法
 * 
*/
function loginJz() {
	//获取手机号码
	var userPhone = $("#userPhone").val();
	//获取登录密码
	var userPwd = $("#userPwd").val();
	if(userPhone = 15700104801 && userPwd == 123456) {
		layer.open({
	    	content: '正在登录...',
	    	skin: 'msg',
	    	time: 2
	  	});
	  	setInterval(function() {
			window.location.href="index.html";
		},2000)
	}
	else {
		layer.open({
	    	content: '用户名不存在',
	    	skin: 'msg',
	    	time: 10
	  	});
	}
}
