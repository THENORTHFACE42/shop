//头部topbar会员中心显示与隐藏
// 鼠标移入div1或div2都把定时器关闭了，不让他消失
$(function (){
	var Account = document.getElementById('account');
	var Downmenu = document.getElementById('dbox');
	var timer = null;// 定义定时器变量
Downmenu.onmouseover = function() {
	// 改变箭头方向
	$("#icount").attr("class", "fa fa-angle-up");

	// 改变背景颜色
	Account.style.backgroundColor = '#fff';
	// 显示下拉框
	$("#dbox").show();
	// 关闭定时执行
	clearTimeout(timer);
}
Account.onmouseover=function() {
	// 改变箭头方向
	$("#icount").attr("class", "fa fa-angle-up");

	// 改变背景颜色
	Account.style.backgroundColor = '#fff';
	// 显示下拉框
	$("#dbox").show();
	// 关闭定时执行
	clearTimeout(timer);
}

// 鼠标移出div1或div2都重新开定时器，让他延时消失
Account.onmouseout = Downmenu.onmouseout = function() {
	$("#icount").attr("class", "fa fa-angle-down");
	Account.style.backgroundColor = '#F5F5F5';
	// 开定时器，每隔200微妙下拉框消失
	timer = setTimeout(function() {
		$("#dbox").hide();
	}, 200);
}
// 头部topbar会员收藏显示与隐藏
userfavor;
favormenu;
time;
var userfavor = document.getElementById('userfavor');
var favormenu = document.getElementById('favormenu');
var time = null;// 定义定时器变量
// 鼠标移入div1或div2都把定时器关闭了，不让他消失
userfavor.onmouseover = favormenu.onmouseover = function() {
	// 改变箭头方向

	// 改变背景颜色
	userfavor.style.backgroundColor = '#fff';
	// 显示下拉框
	$("#favormenu").show();
	// 关闭定时执行
	clearTimeout(time);
}

// 鼠标移出div1或div2都重新开定时器，让他延时消失
userfavor.onmouseout = favormenu.onmouseout = function() {
	userfavor.style.backgroundColor = '#F5F5F5';
	// 开定时器，每隔200微妙下拉框消失
	time = setTimeout(function() {
		$("#favormenu").hide();
	}, 10);
}
// 卖家中心显隐
usersell;
sellmenu;
clock;
var usersell = document.getElementById('sell');
var sellmenu = document.getElementById('sellmenu');
var clock = null;// 定义定时器变量
// 鼠标移入div1或div2都把定时器关闭了，不让他消失
usersell.onmouseover = sellmenu.onmouseover = function() {
	// 改变箭头方向

	// 改变背景颜色
	usersell.style.backgroundColor = '#fff';
	// 显示下拉框
	$("#sellmenu").show();
	// 关闭定时执行
	clearTimeout(clock);
}

// 鼠标移出div1或div2都重新开定时器，让他延时消失
usersell.onmouseout = sellmenu.onmouseout = function() {
	usersell.style.backgroundColor = '#F5F5F5';
	// 开定时器，每隔200微妙下拉框消失
	clock = setTimeout(function() {
		$("#sellmenu").hide();
	}, 10);
}
$("#ljgm").click(function(){
	
	var dl=$("#dl").html();
	var goodsid=$("#goodsid").text();
	var userid=$("#userid").val();
	var num=$(".goodnum").val();
	//alert(dl);
	if(dl==null){
		$.ajax({
			type:"post",
			url:"buyGoods.do",
			dataType:"json",
			data:{"goodsid":goodsid,"userid":userid,"num":num},
			success:function(result){
				//alert(result.success);
				if(result.success=="true"){
					location.href="order.jsp";
				}
			}
		})
		
	}else{
		$(".dlk").show();
		auto();
	}
	
});
$("#mfzc").click(function(){
	$(".zck").show();
	auto();
})
$("#dl").click(function() {
	$(".dlk").show();
	auto();
})
$(".colose").click(function() {
	// alert("被点击了")
	// 背景消失
	// 登陆框消失
	$(".dlk").hide();
	$(".zck").hide();
})
// 确定登陆框居中
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

// 当动态改变浏览器窗口大小
$(window).resize(function() {
	auto()
})
// 拖动登陆框
$(".dlk h3").mousedown(function(e) {
	// 得到鼠标坐标
	var L = e.clientX;// 水平
	var T = e.clientY;// 垂直
	// 得到登陆框的坐标
	var _l = $(".dlk").offset().left;// 水平
	var _t = $(".dlk").offset().top;// 垂直
	var x = L - _l;
	var y = T - _t;
	// 鼠标移动
	$(document).mousemove(function(e) {
		var L = e.clientX;// 水平
		var T = e.clientY;// 垂直
		var n_l = L - x;
		var n_t = T - y;
		if (n_l < 0) {
			n_l = 0;
		}
		if (n_t < 0) {
			n_t = 0;
		}
		if (n_l + 600 > window.innerWidth) {
			n_l = window.innerWidth - 600;
		}
		if (n_t + 350 > window.innerHeight) {
			n_t = window.innerHeight - 350;
		}
		$(".dlk").css({
			left : n_l,
			top : n_t
		});
	})
	$(document).mouseup(function() {
		$(document).unbind("mousemove");
		$(document).unbind("mouseup");
		return false;
	})
})
$(".zck h3").mousedown(function(e) {
	// 得到鼠标坐标
	var L = e.clientX;// 水平
	var T = e.clientY;// 垂直
	// 得到登陆框的坐标
	var _l = $(".zck").offset().left;// 水平
	var _t = $(".zck").offset().top;// 垂直
	var x = L - _l;
	var y = T - _t;
	// 鼠标移动
	$(document).mousemove(function(e) {
		var L = e.clientX;// 水平
		var T = e.clientY;// 垂直
		var n_l = L - x;
		var n_t = T - y;
		if (n_l < 0) {
			n_l = 0;
		}
		if (n_t < 0) {
			n_t = 0;
		}
		if (n_l + 600 > window.innerWidth) {
			n_l = window.innerWidth - 600;
		}
		if (n_t + 350 > window.innerHeight) {
			n_t = window.innerHeight - 350;
		}
		$(".zck").css({
			left : n_l,
			top : n_t
		});
	})
	$(document).mouseup(function() {
		$(document).unbind("mousemove");
		$(document).unbind("mouseup");
		return false;
	})
	
});
$("#zczh").click(function() {
	$(".dlk").hide();
	$(".zck").show();

});
$("#grzx").click(function(){
	var dl=$("#dl").html();
	if(dl!=null){
		$(".dlk").show();
		auto();
	}else{
		location.href="userMain.do";
	}
});
});