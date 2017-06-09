$(function(){
	/*
	 * 注册验证
	*/
	$("#rebBtn").click(function() {
		$(".tips").remove();
		//获取手机号码
		var userPhpne = $("#userPhpne").val();
		//获取验证码
		var regYzm = $("#regYzm").val();
		//获取密码
		var userPwd = $("#userPwd").val();
		//获取确认密码
		var userNewsPwd = $("#userNewsPwd").val();
		//获取用户协议是否被选中
		var regCheckbox = $('#regCheckbox').is(':checked');
		
		//判断手机号码
		if(!(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne))) {
			var isFalse = "请输入正确的手机号码";
			$("#userPhpneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne)) {
			$(".tips").remove();
		}
		
		//判断验证码
		if(regYzm == "") {
			var isFalse = "请输入验证码";
			$("#yzmCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(regYzm != "") {
			$(".tips").remove();
		}
		
		//判断密码
		if(userPwd == "") {
			var isFalse = "请输入密码";
			$("#userPwdCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(userPwd != "") {
			$(".tips").remove();
		}
		
		//判断确认密码
		if(userNewsPwd == "") {
			var isFalse = "请输入密码";
			$("#userNewsPwdCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		if(userPwd != userNewsPwd) {
			var isFalse = "两次密码不一致！";
			$("#userNewsPwdCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
		}
		else if(userPwd == userNewsPwd) {
			$(".tips").remove();
		}
		
		//判断多选框是否被选中
		if(!regCheckbox) {
			var isFalse = "请勾选人人配送用户协议！";
			$("#checkboxCont").append("<div class='tips _tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
		}
		else if(regCheckbox) {
			$(".tips").remove();
		}
		regSuccess();
	})
	
	/*
	* 验证码
	*/
	$("#yzm").click(function() {
		$(".tips").remove();
		//获取手机号码
		var userPhpne = $("#userPhpne").val();
		
		//判断手机号码
		if(!(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne))) {
			var isFalse = "请输入正确的手机号码";
			$("#userPhpneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne)) {
			$(".tips").remove();
			time(this);
		}
	})
	
	/*
	 * 登录验证
	*/
	$("#loginBtn").click(function() {
		$(".tips").remove();
		//获取手机号码
		var userPhpne = $("#userPhpne").val();
		//获取密码
		var userPwd = $("#userPwd").val();
		
		//判断手机号码
		if(!(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne))) {
			var isFalse = "请输入正确的手机号码";
			$("#userPhpneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne)) {
			$(".tips").remove();
		}
		
		//判断密码
		if(userPwd == "") {
			var isFalse = "请输入密码";
			$("#userPwdCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(userPwd != "") {
			$(".tips").remove();
		}
		loginSuccess();
	})
	
	/*
	 * 
	 * 手机找回密码步骤提示及验证功能
	 * 
	*/
	
	//默认第一个显示
	$(".findp_form_cont").first().show();
	
	$("#findp_nextBtn_1").click(function() {
		$(".tips").remove();
		//获取手机号码
		var userPhpne = $("#userPhpne").val();
		//获取验证码
		var regYzm = $("#regYzm").val();
		
		//判断手机号码
		if(!(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne))) {
			var isFalse = "请输入正确的手机号码";
			$("#userPhpneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(userPhpne && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(userPhpne)) {
			$(".tips").remove();
		}
		
		//判断验证码
		if(regYzm == "") {
			var isFalse = "请输入验证码";
			$("#yzmCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(regYzm != "") {
			$(".tips").remove();
		}
		$("#findp_form_cont_1").hide();
		$("#findp_form_cont_2").show();
		$(".find_pwd_item").eq(1).addClass("active");
	})
	
	$("#findp_nextBtn_2").click(function() {
		$(".tips").remove();
		//获取确认密码
		var userNewsPwd = $("#userNewsPwd").val();
		if(userNewsPwd == "") {
			var isFalse = "请输入密码";
			$("#userNewsPwdCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else {
			$(".tips").remove();
			$("#findp_form_cont_2").hide();
			$("#findp_form_cont_3").show();
			$(".find_pwd_item").eq(2).addClass("active");
		}
	})
	
	/*
	 * 
	 * 人工找回密码步骤提示及验证功能
	 * 
	*/
	
	$("#rFind_pwdBtn").click(function() {
		$(".tips").remove();
		//获取姓名
		var rFindName = $("#rFindName").val();
		//获取手机号码
		var rFindUserPhone = $("#rFindUserPhone").val();
		//获取验证码
		var rFindYzm = $("#rFindYzm").val();
		//获取现居地址的省
		var province = $("#seachprov").val();
		//获取现居地址的市
		var city = $("#seachcity").val();
		//获取现居地址的县
		var county = $("#seachdistrict").val();
		//获取详细地址
		var rFindDetailsAddress = $("#rFindDetailsAddress").val();
		
		//判断姓名是否可用
		if(rFindName == "") {
			var isFalse = "请填写姓名";
			$("#rFindNameCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(rFindName != "") {
			$(".tips").remove();
		}
		
		//判断手机号码
		if(!(rFindUserPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(rFindUserPhone))) {
			var isFalse = "请输入正确的手机号码";
			$("#rFindUserPhoneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(rFindUserPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(rFindUserPhone)) {
			$(".tips").remove();
		}
		
		//判断验证码
		if(rFindYzm == "") {
			var isFalse = "请填写验证码";
			$("#rFindYzmCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(rFindYzm != "") {
			$(".tips").remove();
		}
		
		//判断现居地址
		if(province == "" && city == "" && county == "") {
			var isFalse = "请填写完整的地址";
			$("#rFindNowAddressCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(province != "" && city != "" && county != "") {
			$(".tips").remove();
		}
		
		//判断详情地址
		if(rFindDetailsAddress == "") {
			var isFalse = "请填写详情地址";
			$("#rFindDetailsAddressCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(rFindDetailsAddress != "") {
			$(".tips").remove();
		}
		
		$("#rFind_pwd").hide();
		$("#rFind_pwd_1").show();
		$("#rFindNav_1").addClass("active");
	})
	
	/*人工找回密码
	 * 
	 * 
	 * 填写快客信息接受验证码
	 * 
	*/
	
	$("#rFindYzmBtn").click(function() {
		$(".tips").remove();
		//获取手机号码
		var rFindUserPhone = $("#rFindUserPhone").val();
		
		//判断手机号码
		if(!(rFindUserPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(rFindUserPhone))) {
			var isFalse = "请输入正确的手机号码";
			$("#rFindUserPhoneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(rFindUserPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(rFindUserPhone)) {
			$(".tips").remove();
			time(this);
		}
	})
	
	/*
	 * 
	 * 人工找回密码审核成功
	 * 
	 * 
	*/
	
	$("#rFindSucBtn").click(function() {
		$(".tips").remove();
		var rFindSucPwd = $("#rFindSucPwd").val();
		var rFindSucNewPwd = $("#rFindSucNewPwd").val();
		
		if(rFindSucPwd == "") {
			var isFalse = "请填写密码";
			$("#rFindSucPwdCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(rFindSucPwd != "") {
			$(".tips").remove();
		}
		if(rFindSucPwd != rFindSucNewPwd) {
			var isFalse = "两次密码不一致";
			$("#rFindSucNewPwdCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(rFindSucPwd == rFindSucNewPwd) {
			$(".tips").remove();
			shSuccess();
		}
	})
	
	/*
	 * 
	 * 下单发货
	 * 
	*/
	
	//货物信息
	$(".pce_input input").blur(function() {
		var numer = $("#numer").val();
		var jName = $("#jName").val();
		var jPhone = $("#jPhone").val();
		var jMyAdderss = $("#jMyAdderss").val();
		var jMyAdderssDetails = $("#jMyAdderssDetails").val();
		var sName = $("#sName").val();
		var sPhone = $("#sPhone").val();
		var sAddress = $("#sAddress").val();
		var sAddressDetails = $("#sAddressDetails").val();
		
		
		if(numer == "") {
			var isFalse = "输入货物数量";
			$("#numerCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(numer != "") {
			$("#numerCont .tips").remove();
		}
		if(jName == "") {
			var isFalse = "请输入寄件人姓名！";
			$("#jNameCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jName != "") {
			$("#jNameCont .tips").remove();
		}
		if(!(jPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(jPhone))) {
			var isFalse = "请输入正确的手机号码！";
			$("#jPhoneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(jPhone)) {
			$("#jPhoneCont .tips").remove();
		}
		if(jMyAdderss == "") {
			var isFalse = "请输入寄件人地址！";
			$("#jMyAdderssCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jMyAdderss != "") {
			$("#jMyAdderssCont .tips").remove();
		}
		if(jMyAdderssDetails == "") {
			var isFalse = "请输入寄件人详情地址！";
			$("#jMyAdderssDetailsCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jMyAdderssDetails != "") {
			$("#jMyAdderssDetailsCont .tips").remove();
		}
		if(sName == "") {
			var isFalse = "请输入收件人姓名！";
			$("#sNameCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sName != "") {
			$("#sNameCont .tips").remove();
		}
		if(!(sPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(sPhone))) {
			var isFalse = "请输入正确的手机号码！";
			$("#sPhoneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(sPhone)) {
			$("#sPhoneCont .tips").remove();
		}
		if(sAddress == "") {
			var isFalse = "请输入收件人地址！";
			$("#sAddressCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sAddress != "") {
			$("#sAddressCont .tips").remove();
		}
		if(sAddressDetails == "") {
			var isFalse = "请输入收件人详细地址！";
			$("#sAddressDetailsCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sAddressDetails != "") {
			$("#sAddressDetailsCont .tips").remove();
		}	
	})
	
	//提交信息
	$("#pceBtn").click(function() {
		$(".tips").remove();
		var numer = $("#numer").val();
		var cargoWeight = $("#cargoWeight").val();
		var cargoSize = $("#cargoSize").val();
		var cargoType = $("#cargoType").val();
		var cargoTime = $("#cargoTime").val();
		var cargoPic = $("#file");
		var jName = $("#jName").val();
		var jPhone = $("#jPhone").val();
		var jMyAdderss = $("#jMyAdderss").val();
		var jMyAdderssDetails = $("#jMyAdderssDetails").val();
		var sName = $("#sName").val();
		var sPhone = $("#sPhone").val();
		var sAddress = $("#sAddress").val();
		var sAddressDetails = $("#sAddressDetails").val();
		
		if(numer == "") {
			var isFalse = "输入货物数量";
			$("#numerCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(numer != "") {
			$("#numerCont .tips").remove();
		}
		if(cargoWeight == "") {
			var isFalse = "选择货物重量";
			$("#cargoWeightCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(cargoWeight != "") {
			$("#cargoWeightCont .tips").remove();
		}
		if(cargoSize == "") {
			var isFalse = "选择货物大小";
			$("#cargoSizeCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(cargoSize !="") {
			$("#cargoSizeCont .tips").remove();
		}
		if(cargoType == "") {
			var isFalse = "选择货物类型";
			$("#cargoTypeCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(cargoType != "") {
			$("#cargoTypeCont .tips").remove();
		}
		if(cargoTime == "") {
			var isFalse = "请输入时间";
			$("#cargoTimeCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(cargoTime != "") {
			$("#cargoTimeCont .tips").remove();
		}
		if(cargoPic.value == "") {
			var isFalse = "至少上传一张图片！";
			$("#cargoPicCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(cargoPic.value != "") {
			//alert(cargoPic.value);
			$("#cargoPicCont .tips").remove();
		}
		if(jName == "") {
			var isFalse = "请输入寄件人姓名！";
			$("#jNameCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jName != "") {
			$("#jNameCont .tips").remove();
		}
		if(!(jPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(jPhone))) {
			var isFalse = "请输入正确的手机号码！";
			$("#jPhoneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(jPhone)) {
			$("#jPhoneCont .tips").remove();
		}
		if(jMyAdderss == "") {
			var isFalse = "请输入寄件人地址！";
			$("#jMyAdderssCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jMyAdderss != "") {
			$("#jMyAdderssCont .tips").remove();
		}
		if(jMyAdderssDetails == "") {
			var isFalse = "请输入寄件人详情地址！";
			$("#jMyAdderssDetailsCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(jMyAdderssDetails != "") {
			$("#jMyAdderssDetailsCont .tips").remove();
		}
		if(sName == "") {
			var isFalse = "请输入收件人姓名！";
			$("#sNameCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sName != "") {
			$("#sNameCont .tips").remove();
		}
		if(!(sPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(sPhone))) {
			var isFalse = "请输入正确的手机号码！";
			$("#sPhoneCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sPhone && /^1(3[0-9]|4[57]|5[0-35-9]|7[6-8]|8[0-9])\d{8}$/.test(sPhone)) {
			$("#sPhoneCont .tips").remove();
		}
		if(sAddress == "") {
			var isFalse = "请输入收件人地址！";
			$("#sAddressCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sAddress != "") {
			$("#sAddressCont .tips").remove();
		}
		if(sAddressDetails == "") {
			var isFalse = "请输入收件人详细地址！";
			$("#sAddressDetailsCont").append("<div class='tips'><div class='tips_cont'><span class='down'></span>"+isFalse+"</div></div>");
			return false;
		}
		else if(sAddressDetails != "") {
			$("#sAddressDetailsCont .tips").remove();
		}
		orderSuccess();
	})
})


/*
 * 60秒倒计时
*/
var wait=60;
function time(o) {
	if (wait == 0) {
		o.removeAttribute("disabled");			
		o.value="获取验证码";
		wait = 60;
	} else {
		o.setAttribute("disabled", true);
		o.value="重新发送(" + wait + ")";
		wait--;
		setTimeout(function() {
			time(o)
		},1000)
	}
}

/*
* 注册成功加载
*/
function regSuccess() {
	$(".reg_from").append("<div class='regSuccess'> \
	 	<div class='regSuccess_cont'> \
	 		<div class='regSuccess_tips'> \
	 			<span></span> \
	 		</div> \
		</div> \
	</div>");
	setInterval(function() {
		$(".regSuccess").remove();
		window.location.href="login.html";
	},2000)
}
/*
* 登录成功加载
*/
function loginSuccess() {
	$(".login_form").append("<div class='regSuccess'> \
	 	<div class='regSuccess_cont'> \
	 		<div class='regSuccess_tips'> \
	 			<span></span> \
	 		</div> \
		</div> \
	</div>");
	setInterval(function() {
		$(".regSuccess").remove();
		window.location.href="index.html";
	},2000)
}

/*
* 审核成功加载
*/

function shSuccess() {
	$("#rFind_pwd_2").append("<div class='ShSuccess'>亲，请牢记您的密码哦！！！</div>");
	setInterval(function() {
		$(".ShSuccess").remove();
		window.location.href="login.html";
	},2000)
}


/*
* 下单发货提交信息加载
*/

function orderSuccess() {
	$("body").append("<div class='orderSuccess'><div class='orderSuccess_cont'><span></span></div></div>");
	setInterval(function() {
		$(".orderSuccess").remove();
		window.location.href="placeAnOrder.html";
	},2000)
}

