nameisyz = false; // 用户名验证
yzmisyz = false; // 验证码验证
mmyz = false; // 密码验证
cfmm=false;
$(function() {
	$("#dlzh").click(function(){
		$(".dlk").show();
		$(".zck").hide();
	});
	
	$("#username1").blur(function() {
		
		var user = $("#username1").val();
		if(user.trim()==""){
			$("#s4").html("账号不能为空");
			$("#s4").css("color", "red");
			return;
		}
		// console.log(user);
		$.ajax({
			type : "post",
			url : "checkUser.do",
			dataType : "json",
			data : {
				"user" : user
			},
			success : function(result) {
				console.log(result);
				if (result.success == "true") {
					$("#s4").html("账号已存在");
					$("#s4").css("color", "red");
					nameisyz = false;
				} else {
					$("#s4").html("");
					// inputusername.style.border="1px solid red";
					nameisyz = true;
				}
			}
		});
	});
	$("#yzm1").blur(function() {
		var yz = $("#yzm1").val();
		// alert(yz);
		$.ajax({
			type : "post",
			url : "Checkyzm.do",
			data : {
				"jyzm" : yz
			},
			dataType : "json",
			success : function(result) {
				// alert(result.yzm);
				if (result.yzm == "false") {
					$("#s7").html("验证码错误");
					// alert(1);
					$("#s7").css("color", "red");
					changeImage();// 验证码输入错误刷新图片
					yzmisyz = false;
				} else {
					// tyzm.innerHTML="<font color='green' size='-1'>ok</font>";
					// yzm.style.border="1px solid #EEE";
					$("#s7").html("");
					yzmisyz = true;
				}
			}

		});

	});
	$("#pwd1").blur(function (){
		var pwd = $("#pwd1").val();
		if (pwd.trim() == "") {
			$("#s5").html("密码不能为空");
			$("#s5").css("color", "red");
			mmyz = false;
			return;
		} else if(pwd.length>20||pwd.length<6){
			$("#s5").html("");
			$("#s5").html("密码格式不正确");
			$("#s5").css("color", "red");
			mmyz=false;
			return;
		}
		else{
			$("#s5").html("");
			mmyz = true;
		}
	});
	$("#pwd2").blur(function (){
		var pwd1= $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		if (pwd2.trim() == "") {
			$("#s6").html("密码不能为空");
			$("#s6").css("color", "red");
			cfmm = false;
			return;
		} 
		if(pwd1!=pwd2){
			$("#s6").html("密码不一致");
			$("#s6").css("color", "red");
			cfmm = false;
			return;
		}else{
			$("#s6").html("");
			cfmm = true;
		}
	});
	
	$("#sub1").click(function() {
		var pwd = $("#pwd1").val();
		if (pwd.trim() == "") {
			$("#s5").html("密码不能为空");
			$("#s5").css("color", "red");
			mmyz = false;
			return;
		} else {
			$("#s5").html("");
			mmyz = true;
		}
		var pwd1=$("#pwd2").val();
		if (pwd1.trim() == "") {
			$("#s6").html("密码不能为空");
			$("#s6").css("color", "red");
			return;
		} else {
			$("#s6").html("");
		}
		if($("#pwd1").val()!=null  && $("#s4").val()!=null){
			mmyz = true;
		}
		var yzm=$("#yzm1").val();
		if (yzm.trim() == "") {
			$("#s7").html("请输入验证码");
			$("#s7").css("color", "red");
			yzmisyz = false;
			return;
		} else {
			$("#s7").html("");
		}
		if(!yzmisyz){
			$("#s7").html("验证码错误");
			$("#s7").css("color", "red");
			yzmisyz = false;
			return;
		} else {
			$("#s7").html("");
		}
		if(!nameisyz){
			$("#s4").html("账号已存在");
			$("#s4").css("color", "red");
			nameisyz= false;
		} else {
			$("#s4").html("");
			// inputusername.style.borde
		}
		//alert(nameisyz +","+ yzmisyz +","+ mmyz + ","+cfmm)
		if (nameisyz + yzmisyz + mmyz + cfmm != 4) {
			// var c=
			return;
		}
		var user = $("#username1").val();
		// alert(user);
		var pwd = $("#pwd1").val();

		$.ajax({
			type : "post",
			url : "Register.do",
			data : {
				"username" : user,
				"password" : pwd,
				"usertype1":1
			},
			dataType : "json",
			success : function(result) {
				//alert(result.success);
				if (result.success == "true") {
					$("#zccg").show();
					setInterval(function(){
						$("#zccg").hide();
						$(".zck").hide();
						$(".dlk").show();
					}, 1000);	
				}else {
					$(".zck").show();
				}

			}

		});
	});
	
});

