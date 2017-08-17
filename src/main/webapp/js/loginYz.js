nameisyz = false; // 用户名验证
yzmisyz = false; // 验证码验证
mmyz = false; // 密码验证

$(function() {
	$("#username").blur(function() {
		
		// alert(1);
		var user = $("#username").val();
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
					$("#s1").html("");
					nameisyz = true;
				} else {
					$("#s1").html("用户名不存在");
					$("#s1").css("color", "red");

					// inputusername.style.border="1px solid red";
					nameisyz = false;
				}
			}
		});
	});
	$("#yzm").blur(function() {
		var yz = $("#yzm").val();
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
					$("#s3").html("验证码错误");
					// alert(1);
					$("#s3").css("color", "red");
					changeImage();// 验证码输入错误刷新图片
					yzmisyz = false;
				} else {
					// tyzm.innerHTML="<font color='green' size='-1'>ok</font>";
					// yzm.style.border="1px solid #EEE";
					$("#s3").html("");
					yzmisyz = true;
				}
			}

		});

	});
	$("#pwd").blur(function (){
		var pwd = $("#pwd").val();
		if (pwd.trim() == "") {
			$("#s2").html("密码不能为空");
			$("#s2").css("color", "red");
			mmyz = false;
			return;
		} else {
			$("#s2").html("");
			mmyz = true;
		}
	});
	$("#sub2").click(function() {
		var  user = $("#username").val();
		if (user.trim() == "") {
			$("#s1").html("账号不能为空");
			$("#s1").css("color", "red");
			return;
		} else {
			$("#s1").html("");
		}
		var pwd = $("#pwd").val();
		if (pwd.trim() == "") {
			$("#s2").html("密码不能为空");
			$("#s2").css("color", "red");
			mmyz = false;
			return;
		} else {
			$("#s2").html("");
			mmyz = true;
		}
		if($("#pwd").val()!=null && $("#username").val()!=null && $("#s1").val()!=null){
			nameisyz = true; // 用户名验证
			mmyz = true;
		}
		var yzm=$("#yzm").val();
		if (yzm.trim() == "") {
			$("#s3").html("请输入验证码");
			$("#s3").css("color", "red");
			return;
		} else {
			$("#s3").html("");
		}
		if(!yzmisyz){
			$("#s3").html("验证码错误");
			$("#s3").css("color", "red");
			return;
		} else {
			$("#s3").html("");
		}
		
		if (nameisyz + yzmisyz + mmyz != 3) {
			// var c=
			return;
		}
		var user = $("#username").val();
		// alert(user);
		var pwd = $("#pwd").val();

		$.ajax({
			type : "post",
			url : "checkPassWord.do",
			data : {
				"user" : user,
				"pwd" : pwd
			},
			dataType : "json",
			success : function(data) {
				if (data.state == 1) {
					$("#dlcg").show();
					setInterval(function(){
						//alert(1);
						window.location.reload(true);
					}, 1000);
					/*$(".dlk").hide();
					$("#dl").html(user);*/
				}
				if (data.state == 2) {
					$("#h3").html("");
					$(".dlk").show();
					// alert(c);
					$("#s2").html("密码错误");
					$("#s2").css("color", "red");
				}

			}

		});
	});
	$("#jrgwc").click(function(){
		var dl=$("#dl").html();
		//alert(dl);
		if(dl==null){
			
		}else{
			$("#qxdl").show();
			auto();
			var id=setInterval(function(){
				$("#qxdl").hide();
				$(".dlk").show();
				auto();
				clearInterval(id);
			}, 1000);
			return;
		}
		
		//alert(1);
		var offset2=$("#gwc1").offset();
		var offset1=$("#tp").offset();
		var imgsrc=$("#tp").attr("src");
		var flyer=$('<img src="'+imgsrc+'" width="50" height="50" style="border-radius:50%" position:absolute z-index:99999> ');
		//alert(offset1.top-$(window).scrollTop());
		flyer.fly(
				{
					start:{
						left:offset1.left+75,
						top:offset1.top-$(window).scrollTop()+175
					},
					end:{
						left:offset2.left,
						top:offset2.top-$(window).scrollTop(),
						width:20,
						hight:20
					},
					onEnd:function(){
						flyer.fadeOut("slow",function(){
							$(this).remove();
						})
					}
				}		
				);
		
		var name=$(".dginfo_h2").text();
		var price=$("#resetprice").text();
		var num=$(".goodnum").val();
		var sum=price*num;
		var goodsid=$("#goodsid").text();
		var user=$("#un").text();
		var proPic=$("#tp").attr("src");
		var userid=$("#userid").val();
		var shopid=parseInt($("#shopid").val());
		var shoplist={"goodsid":goodsid,"goodsname":name,"propic":proPic,"goodsprice":price,"userid":userid,"shopid":shopid,"sum":num};
		$.ajax({
			type:"post",
			url:"addgwc.do",
			data:{"shoplist":JSON.stringify(shoplist)},
			dataType:"json",
			success:function(data){
				//alert(data.result=="true");
				if(data.success=="true"){
					$("#quxiao").hide();
					//$(".jtc-item-goods").append(hw);
					setInterval(function(){
						window.location.reload(true);
					}, 1000)
				}else{
					var n=data.num;
					//alert(n);
					//alert(zz);
					//$("#"+goodsid+"").text(n);
					setInterval(function(){
						window.location.reload(true);
					}, 2000)
				}
			}
		});
	});
	$("#i1").click(function(){
		var dl=$("#dl").html();
		//alert(dl);
		if(dl==null){
			
		}else{
			$(".dlk").show();
			auto();
			return;
		}
		location.href="showGWC.do";
	});
	
	
});
function scgwc(a){
	var user=$("#un").text();
	//alert(user);
	var id=$(a).parent().children().eq(0).text(); 
	//alert(goodsid);
	//alert(goodsid);
	$.ajax({
		type:"post",
		data:{"id":id},
		dataType:"json",
		url:"scgwc.do",
		success:function(result){
			if(result.success=="true"){
				location.reload(true);
			}else{
				alert("删除失败")
			}
		}
	});
}
function scgw(a){
	var id=$(a).parent().next().text();
	$.ajax({
		type:"post",
		data:{"id":id},
		dataType:"json",
		url:"scgwc.do",
		success:function(result){
			if(result.success=="true"){
				location.reload(true);
			}else{
				
			}
		}
	});
}
function auto() {
	// 找到浏览器有多宽 多高
	var _w_w = $(window).width();// 宽
	var _h_w = $(window).height();// 高
	// 浏览器一半 减掉 登陆框一半
	$(".dlk").css({
		left : _w_w / 2 - $(".dlk").width() / 2,
		top : _h_w / 2 - $(".dlk").height() / 2
	});
	$(".zck").css({
		left : _w_w / 2 - $(".zck").width() / 2,
		top : _h_w / 2 - $(".zck").height() / 2
	});
	$("#zccg").css({
		left : _w_w / 2 - $("#zccg").width() / 2,
		top : _h_w / 2 - $("#zccg").height() / 2
	});
	$("#dlcg").css({
		left : _w_w / 2 - $("#dlcg").width() / 2,
		top : _h_w / 2 - $("#dlcg").height() / 2
	});
	$("#qxdl").css({
		left : _w_w / 2 - $("#qxdl").width() / 2,
		top : _h_w / 2 - $("#qxdl").height() / 2
	});
	$("#zhcg").css({
		left : _w_w / 2 - $("#zhcg").width() / 2,
		top : _h_w / 2 - $("#zhcg").height() / 2
	});
}
function fsubmi(obj){
	var dl=$("#dl").html();
	//alert(dl);
	if(dl==null){
		
	}else{
		$("#qxdl").show();
		auto();
		var id=setInterval(function(){
			$("#qxdl").hide();
			$(".dlk").show();
			auto();
			clearInterval(id);
		}, 1000);
		return;
	}
	obj.submit();
}
function collect(){
	var dl=$("#dl").html();
	//alert(dl);
	if(dl==null){
		
	}else{
		$("#qxdl").show();
		auto();
		var id=setInterval(function(){
			$("#qxdl").hide();
			$(".dlk").show();
			auto();
			clearInterval(id);
		}, 1000);
		return;
	}
	var name=$(".dginfo_h2").text();
	var price=$("#resetprice").text();
	var goodsid=$("#goodsid").text();
	var user=$("#un").text();
	var proPic=$("#tp").attr("src");
	var userid=$("#userid").val();
	var shopid=parseInt($("#shopid").val());
	var collectlist={"goodsid":goodsid,"goodsname":name,"goodspropic":proPic,"goodsprice":price,"userid":userid,"shopid":shopid};
	$.ajax({
		type:"post",
		url:"addcollection.do",
		data:{"collectlist":JSON.stringify(collectlist)},
		dataType:"json",
		success:function(data){
			//alert(data.result=="true");
			if(data.success=="true"){
				$("#quxiao").hide();
				//$(".jtc-item-goods").append(hw);
				layer.alert("收藏成功",{icon:10});
				setInterval(function(){
					window.location.reload(true);
				}, 1000)
			}else if(data.exist){
				layer.alert("已收藏",{icon:10});
			}
		}
	});
}
