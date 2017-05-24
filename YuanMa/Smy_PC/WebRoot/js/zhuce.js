$(function() {
	$(".hidden1").hide();
	$(".hidden1_1").hide();
	$(".img1").hide();
	$(".hidden2").hide();
	$(".hidden2_2").hide();
	$(".img2").hide();
	$(".hidden3").hide();
	$(".hidden3_3").hide();
	$(".img3").hide();
	$(".hidden4").hide();
	$(".hidden4_4").hide();
	$(".img4").hide();
	$(".hidden5").hide();
	$(".hidden5_5").hide();
	$(".img5").hide();
	$(".hidden7").hide();
	$(".hidden7_7").hide();
	$(".img7").hide();
	$(".hidden8").hide();
	$(".hidden8_8").hide();
	$(".img8").hide();
	$(".hidden9").hide();
	$(".img9").hide();


	var statu1 = false;
	var statu2 = false;
	var statu3 = false;
	var statu4 = false;
	var statu5 = false;
	var statu6 = false;
	var statu7 = false;

	//获取点击事件
	//姓名验证
	$("#namett").blur(function() {

		var value = $(this).val();
		var Reg = /^([\u4e00-\u9fa5]{2,4})$/;
		if (value == null || value.length == 0) {
			$(".hidden1").show();
			$(".hidden1_1").hide();
			$(".img1").hide();
		} else {

			if (!Reg.test(value)) {
				$(".hidden1").hide();
				$(".hidden1_1").show();
				$(".img1").hide();
			} else {
				statu1 = true;
				$(".hidden1").hide();
				$(".hidden1_1").hide();
				$(".img1").show();
			}
		}
	})
	//手机号码验证
	$("#phone").blur(function() {
		var value = $(this).val();
		var Reg = /^1\d{10}$/;
		if (value == null || value.length == 0) {
			$(".hidden2").show();
			$(".hidden2_2").hide();
			$(".img2").hide();

		} else {
			if (!Reg.test(value)) {
				$(".hidden2").hide();
				$(".hidden2_2").show();
				$(".img2").hide();
			} else {
				statu2 = true;
				$(".hidden2").hide();
				$(".hidden2_2").hide();
				$(".img2").show();
			}
		}
	})
	//登录密码
	$("#logopwd").blur(function() {
		var valuepwd = $(this).val();
		var Reg = "/^?![^a-zA-Z0-9]+$)(?![^a-zA-Z/D]+$)(?![^0-9/D]+$).{10,20}$/";
		if (valuepwd == null || valuepwd.length == 0) {
			$(".hidden3").show();
			$(".hidden3_3").hide();
			$(".img3").hide();
		} else {
			if (!Reg.test(valuepwd)) {
				$(".hidden3").hide();
				$(".hidden3_3").show();
				$(".img3").hide();
			} else {
				statu3 = true;
				$(".hidden3").hide();
				$(".hidden3_3").hide();
				$(".img3").show();
			}
		}
	});
	//确认密码
	$("#pwd").blur(function() {
		var vla = $(this).val();
		var valuepwd = $("#logopwd").val();
		if (vla == "") {
			$(".hidden4").show();
			$(".hidden4_4").hide();
			$(".img4").hide();
		} else {
			if (vla != valuepwd) {
				$(".hidden4_4").show();
				$(".img1").hide();
				$(".hidden4").hide();
			} else {
				statu4 = true;
				$(".hidden4").hide();
				$(".hidden4_4").hide();
				$(".img4").show();
			}

		}

	});

	//省份开始
	var sheng = $("#sheng").val();
	var shi = $("#shi").val();
	var jie = $("#jie").val();

	if (sheng == null || shi == null || jie == null) {
		$(".hidden5").hide();
		$(".img5").hide();
		$(".hidden5_5").hide();

	} else {
		statu5 = true;
		$(".hidden5").hide();
		$(".hidden5_5").hide();
		$(".img5").show();
	}

	//详情地址
	$("#jiedao").blur(function() {

		var value = $(this).val();
		var Reg = /^[\u4e00-\u9fa5]+$/;
		if (value == null || value.length == 0) {
			$(".hidden7").show();
			$(".hidden7_7").hide();
			$(".img7").hide();
		} else {

			if (!Reg.test(value)) {
				$(".hidden7").hide();
				$(".hidden7_7").show();
				$(".img7").hide();
			} else {
				statu6 = true;
				$(".hidden7").hide();
				$(".hidden7_7").hide();
				$(".img7").show();
			}
		}
	});
	//验证码
	$("#yanpwd").blur(function() {
		var valuepwd = $(this).val();
		var Reg = /^\d{6,}$/;
		if (valuepwd == null || valuepwd.length == 0) {
			$(".hidden8").show();
			$(".hidden8_8").hide();
			$(".img8").hide();

		} else {
			if (!Reg.test(valuepwd)) {
				$(".hidden8").hide();
				$(".hidden8_8").show();
				$(".img8").hide();
			} else {
				statu7 = true;
				$(".hidden8").hide();
				$(".hidden8_8").hide();
				$(".img8").show();
			}
		}
	})

	//获取图片
	$("#btn").click(function() {
		alert(123);
		document.forms[0].submit();
	});


});



//登录切换
$(function() {

	$(".zhuce_left>button").click(function() {
		var num = $(this).index();
		if (num == 1) {
			$(".zhuce_left>div").hide();
		} else {
			$(".zhuce_left>div").show();
		}
		$(this).css({
			"background" : "#ff6d46",
			"color" : "white",
			"border" : "none"
		}).siblings("button").css({
			"background" : "white",
			"color" : "#9d9d9d",
			"border" : "1px solid #8a8a8a"
		});
		console.log(num);
		$(".zhuce_" + num + "").css("display", "block").siblings().css("display", "none");

	});
});