window.onload = function() {
	//姓名
	var n = document.querySelector(".min1");
	//收货人姓名
	var n1 = document.querySelector(".min2");
	//电话
	var p1 = document.querySelector(".pon1");
	//收货人电话
	var p2 = document.querySelector(".pon2");
	//下拉列表时间
	var ddd = document.querySelector(".ddd");
	//输入时间
	var x = document.querySelector(".x");
	//图片
	var f = document.querySelector("#file");
	//提示信息
	var t2 = document.querySelector(".tt2");
	var t3 = document.querySelector(".tt3");
	var t4 = document.querySelector(".tt4");
	var t5 = document.querySelector(".tt5");
	var t1 = document.querySelector(".ttt");
	var res = /^[\u4e00-\u9fa5]*$/;
	n.onblur = function() {
		t2.innerHTML = ""
		if (!(res.test(n.value)) || n.value == "") {
			t2.innerText = "姓名格式错误！";
		} else {
			t2.innerHTML = "";
		}
	}
	n1.onblur = function() {
		if (!(res.test(n1.value)) || n1.value == "") {
			t4.innerHTML = "姓名不能为空";
		} else {
			t4.innerHTML = "";
		}
	}
	var re = /^0{0,1}(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$/;
	p1.onblur = function() {
		if (re.test(p1.value)) {
			t3.innerHTML = ""
		} else {
			t3.innerHTML = "手机号码不正确";
		}
	}
	p2.onblur = function() {
		if (re.test(p2.value)) {
			t5.innerHTML = "";
		} else {

			t5.innerHTML = "手机号码不正确";
		}
	}

	ddd.onblur = function() {
		if (ddd.value <= 40 && x.value == "分钟") {
			t1.innerHTML = "输入时间大于40分钟";

		} else {
			t1.innerHTML = "";
		}
	}
	x.onblur = function() {

		if (ddd.value <= 40 && x.value == "分钟") {
			t1.innerHTML = "输入时间大于40分钟";

		} else {
			t1.innerHTML = "";
		}
	}

}
//验证提示
$(function() {
	//关闭提示框
	$(".d_cancel").click(function() {
		$(".d_z").hide();
		$(".d").hide();
	});
	$(".d_sure").click(function() {
		$(".d_z").hide();
		$(".d").hide();

	});
	var re = /^0{0,1}(13[0-9]|15[0-9]|18[0-9])[0-9]{8}$/;
	var res = /^[\u4e00-\u9fa5]*$/;
	//表单验证
	$(".bb").click(function() {
		if (!(res.test($(".min1").val())) && !(res.test($(".min2").val())) && re.test($(".pon1").val()) && re.test($(".pon2").val()) && !($(".ddd").val() == "") && (!$("#file").val() == "")) {
			$('form').submit();
		} else {

			if ($(".ddd").val() == "") {
				$(".d_z").show();
				$(".d").show();
				$(".d_text").html("请输入取货时间！");
				return false;
			}
			if ($("#file").val() == "") {
				$(".d_z").show();
				$(".d").show();
				$(".d_text").html("请上传至少一张图片！");
				return false;
			}
			if ($(".min1").val() == "" || !(res.test($(".min1").val()))) {
				$(".d_z").show();
				$(".d").show();
				$(".d_text").html("请输入姓名！");
				return false;
			}
			if ($(".pon1").val() == "" || !(re.test($(".pon1").val()))) {
				$(".d_z").show();
				$(".d").show();
				$(".d_text").html("请输入电话！");
				return false;
			}
			if ($(".min2").val() == "" || !(res.test($(".min2").val()))) {
				$(".d_z").show();
				$(".d").show();
				$(".d_text").html("请输入收货人姓名！");
				return false;
			}

			if ($(".pon2").val() == "" || !(re.test($(".pon2").val()))) {
				$(".d_z").show();
				$(".d").show();
				$(".d_text").html("请输收货人电话！");
				return false;
			}

		}
	});

});