$(document).ready(function() {

	$("#show").click(function() {
		$("#formsender").toggle();
	});
});
$(function() {
	$("#address").focus(function() {
		if ($("#idprovince").val() == "请选择省份") {
			$("#s1").text("没有选择省份");
			$("#s1").removeClass().css("color", "red");
			$("#s1").show();
			return;
		} else {
			$("#s1").text();
			$("#s1").hide();
		}
		if ($("#idcity").val() == "请选择城市") {
			$("#s1").text("没有选择城市");
			$("#s1").removeClass().css("color", "red");
			$("#s1").show();
			return;
		} else {
			$("#s1").text();
			$("#s1").hide();
		}
		if ($("#idarea").val() == "请选择地区") {
			$("#s1").text("没有选择地区");
			$("#s1").removeClass().css("color", "red");
			$("#s1").show();
			return;
		} else {
			$("#s1").text();
			$("#s1").hide();
		}
	});
	$("#address").blur(function() {
		var address = $("#address").val();
		if (address.trim() == "") {
			$("#f1").show();
		} else {
			$("#f1").hide();
		}
	});
	$("#realname").blur(function() {
		var username = $("#realname").val();
		if (username.trim() == "") {
			$("#f2").show();
		} else {
			$("#f2").hide();
		}
	});
	$("#phone").blur(function() {
		var phone = $("#phone").val();
		var reg = /^1[3|4|5|7|8]\d{9}$/;
		// alert(reg.test(phone));
		if (reg.test(phone)) {
		} else {
			$("#phone").val("");
			$("#phone").attr("placeholder", "电话号码格式不正确");
		}
	});

});
function savemsg() {
	// 判断是否是默认地址
	var userid = $("#userid").val();
	if ($("#idprovince").val() == "请选择省份") {
		$("#s1").text("没有选择省份");
		$("#s1").removeClass().css("color", "red");
		$("#s1").show();
		return;
	} else {
		$("#s1").text();
		$("#s1").hide();
	}
	if ($("#idcity").val() == "请选择城市") {
		$("#s1").text("没有选择城市");
		$("#s1").removeClass().css("color", "red");
		$("#s1").show();
		return;
	} else {
		$("#s1").text();
		$("#s1").hide();
	}
	if ($("#idarea").val() == "请选择地区") {
		$("#s1").text("没有选择地区");
		$("#s1").removeClass().css("color", "red");
		$("#s1").show();
		return;
	} else {
		$("#s1").text();
		$("#s1").hide();
	}
	var pca = $("#idprovince").val() + $("#idcity").val() + $("#idarea").val();
	var address = $("#address").val();
	if (address.trim() == "") {
		$("#f1").show();
		return;
	} else {
		$("#f1").hide();
	}
	var orderid = $("#orderid").val();
	var username = $("#realname").val();
	if (username.trim() == "") {
		$("#f2").show();
		return;
	} else {
		$("#f2").hide();
	}
	var phone = $("#phone").val();
	if (phone.trim() == "") {
		$("#phone").attr("placeholder", "电话不能为空");
		return;
	} else {
		$("#phone").attr("placeholder", "");
	}
	var reg = /^1[3|4|5|7|8]\d{9}$/;
	if (reg.test(phone)) {
	} else {
		$("#phone").val("");
		$("#phone").attr("placeholder", "电话号码格式不正确");
		return;
	}
	var b = $("#youbian").val();

	if (document.getElementById("isdefault").checked == true) {
		var info = "1"; // 是默认
	} else {
		var info = "0"; // 不是默认
	}
	var n=Math.random();
	var useraddress = {
		"provice" : $("#idprovince").val(),
		"city" : $("#idcity").val(),
		"area" : $("#idarea").val(),
		"address" : address,
		"phone" : phone,
		"username" : username,
		"userid" : userid,
		"msg" : info
	};
	$.ajax({
		type : 'post', // 传送的方式,get/post
		url : 'addaddress.do?'+n, // 发送数据的地址
		data : {
			"useraddress" : JSON.stringify(useraddress)
		},
		dataType : "json",
		success : function(data) {
			if (data.success == "true") {
				location.reload(true);

			}
		}
	})
}
function makeorder() {
	var list=$("#addresslist").val();
	if(list.length==2){
		alert("请先填写地址")
		return false;
	}
	// 给隐藏属性赋值 提交表单
	document.getElementById("senderid").value = getvv();
	// alert($("#senderid").val());
	document.myform.submit();
}
function getvv() {
	// 获取单选的值
	var group = document.getElementsByName('sender');

	for (var i = 0; i < group.length; i++) {
		if (group[i].checked) {
			return group[i].value;
		}
	}
}