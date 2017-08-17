<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>${goodsBean.name }</title>
<link href="css/top.css" rel="stylesheet" />
<link href="css/detail.css" rel="stylesheet" />
<link href="css/footer.css" rel="stylesheet" />
<link href="css/layer.css" rel="stylesheet" />

<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
</head>

<body>
	<%@ include file="top.jsp"%>
	<div class="yershop_wrapper">
		<%@ include file="hader1.jsp"%>
		<!-- /头部 -->
		<!-- 菜单 -->
		<!-- 导航条-->
		<div class="menu-wrapper">
			<div class="nava">
				<div class="nav-all">
					<div class="all_class" id="all-class">
						<h2>
							<span class="grid"><img src="images/grid.png" /></span><span>商品分类</span><b></b>
						</h2>
					</div>
					<div class="all-goods" style="display: none;" id="all-goods">
						<!-- 循环开始 -->
						<c:forEach items="${floor }" var="bigType">
							<div class="item">
								<div class="product">
									<h4>
										<a href="search.do?bid=${bigType.id }&p=1">${bigType.name }</a>
									</h4>
								</div>
								<div class="product-wrap pos">
									<!--子分类-->
									<div class="cf">
										<div class="fl wd252 pr20">

											<ul class="cf">
												<c:forEach items="${bigType.smallTypeList }" var="smallType">
													 <li><span><a
															href="search.do?sid=${smallType.id }&p=1">${smallType.name }</a></span>
													</li> 
												</c:forEach>
											</ul>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<!-- 循环结束 -->
					</div>
				</div>
				<ul class="menu">
					<li><a href="index.do" target="_self">首页</a></li>
					<li><a href="#" target="_blank">团购</a></li>
					<li><a href="#" target="_self">抢购</a></li>
					<li><a href="#" target="_self">预约</a></li>
				</ul>
			</div>
		</div>
		<!-- /菜单 -->
		<!-- 主体 -->
		<div class="commom_wrapper">
			<meta name="description" content="" />
			<meta name="keywords" content="" />
			<div class="main">
				<div class="main_nav">
					<a rel="nofollow" href="<%=basePath%>"><i
						class="glyphicon glyphicon-home"></i>首页</a>&gt; <a
						href="search.do?bid=${goodsBean.bigtypeid}&p=1">${goodsBean.bigTypeName}</a>&gt;
					<a href="search.do?sid=${goodsBean.smalltypeid}&p=1">${goodsBean.smallTypeName}</a>&gt;
					<p id="tit">
						<a class="red fwb" href="#">${goodsBean.name}</a>
					</p>
				</div>
				<div class="details">
					<div class="details_left">
						<!-- 商品描述-->
						<div class="details_left_top">
							<!-- jqzoom-->
							<div id="zoom">
								<div class="jqzoom" id="spec-n1">
									<input type="hidden" name="shopid" value="${goodsBean.shopid } "  id="shopid"/>
									<img height="350" src="${goodsBean.propic}"
										jqimg="${goodsBean.propic}" width="350" id="tp" />
								</div>
							</div>
							<!-- wwww over-->
							<!-- 商品参数-->
							<div class="dl_goods_info">
								<p id="goodsid" style=" display:none">${goodsBean.id}</p>
								<h2 class="dginfo_h2">${goodsBean.name}</h2>
								<p>
									价格：<span class="dginfo_price">￥<em class="price"
										id="resetprice"> ${goodsBean.price}</em></span>
								</p>
								<ul class="dginfo_info">
									<li>浏览量：${goodsBean.views}</li>
									<li>销量：${goodsBean.sales}</li>
									<li class="dginfo_info_last">品牌：${goodsBean.brand}<span></span></li>
									<li>
										<form action="buyGoods.do" name="orform" id="orform"
											method="post" onsubmit="return trySubmit()">
											<input type="hidden" name="id" value="${param.id }" />
											<p class="">
												<span class="quantity">数量：</span><span class="quantity-form"><a
													href="javascript:void(0)" class="jia" onclick="add()">+</a>
													<input type="text" class="goodnum" value="1" name="num"
													onblur="pandnum()" /><a onclick="reduce()" id="oneA"
													href="javascript:void(0)" class="jian">-</a></span> <span
													class="quantity" style="width: 100px;">(库存:${goodsBean.stock})</span>
											</p>
										</form>
									</li>
								</ul>
								<!-- buy-->
								<div class="addcart_box">
									<a rel="nofollow" href="javascript:fsubmi(document.orform)"
										 class="dginfo_btn" >立刻购买</a>
									<a rel="nofollow" href="javascript:void(0)"
									  id="jrgwc"	class="dginfo_gwc dginfo_btn">加入购物车</a>
									<!-- 购物车计算浮动层 begin -->
									<!-- <div id="showIncludeCart" style="display: none;">
										<a class="buy_pop_close"
											 title="关闭"></a>
										<div class="buy_icon"></div>
										<div class="buy_pop_top">
											<div class="title">此商品已成功放入购物车</div>
											<div class="font">
												购物车共 <font id="totalnum" class="red"></font> 件宝贝 <span>合计
													<font class="red" id="fee"></font>
												</span>
											</div>
											<div class="btn_continue">
												<div class="pop_btn_r">
													<a
														href="javascript:vod(0);">继续购物</a>
												</div>
												<div class="btn_cart">
													<a href="index.cart">去购物车结算</a>
												</div>
											</div>
										</div>
									</div> -->
									<!-- 购物车计算浮动层 over -->
								</div>
								<!-- buy-->
								<p>
									<span>收藏产品：<a href="javascript:collect();"
										><img title="收藏"
											src="images/icon_favorite_pro.jpg" /></a>
									</span> &nbsp;&nbsp;&nbsp;&nbsp; <span>&nbsp;&nbsp;&nbsp;分享到：<a
										title="分享到新浪微博" target="_blank"
										href="http://service.weibo.com/share/share.php?title=${goodsBean.name}（来自宅商城）&url=<%=basePath%>goodsPage.do?id=${goodsBean.id}&pic=<%=basePath%>${goodsBean.propic}"
										data-item="sina" class="J_vivo_share"> <img alt="新浪微博"
											src="images/icon_sina_weibo.jpg" app="b2c" />
									</a> <a title="分享到腾讯微博" target="_blank"
										href="http://v.t.qq.com/share/share.php?title=${goodsBean.name}（来自宅商城）&url=<%=basePath%>goodsPage.do?id=${goodsBean.id}&pic=<%=basePath%>${goodsBean.propic}"
										data-item="tencent" class="J_vivo_share"> <img alt="腾讯微博"
											src="images/icon_tencent_weibo.jpg" app="b2c" />
									</a> <a target="_blank" title="分享到人人网"
										href="http://widget.renren.com/dialog/share?resourceUrl=<%=basePath%>goodsPage.do?id=${goodsBean.id}&amp;title=${goodsBean.name}（来自宅商城）&amp;pic=<%=basePath%>${goodsBean.propic}"
										data-item="renren" class="J_vivo_share"> <img alt="人人网"
											src="images/icon_renrenwang.jpg" app="b2c" />
									</a>
									</span>
								</p>

							</div>
							<!-- 商品参数 结束-->
						</div>
						<!-- 商品描述结束details_left_top-->
						<!-- <script src="js/base.js" type="text/javascript"></script> -->
						<script type="text/javascript">
$(function(){
   $(".jqzoom").jqueryzoom({
	xzoom:400,
	yzoom:400,
	offset:10,
	position:"right",
	preload:1,
	lens:1
});

	$("#spec-list").jdMarquee({
	deriction:"left",
	width:371,
	height:56,
	step:2,
	speed:4,
	delay:10,
	control:true,
	_front:"#spec-right",
	_back:"#spec-left"
});

})
</script>
						<script src="js/jqueryzoom-jcarousel.js" type="text/javascript"></script>
						<!-- js over-->
						<!-- jqzoom over-->
						<!-- 商品参数-->
						<div class="dl_goods_detail">
							<script>   //全选的实现
	$(".check-all").click(function(){
		$(".ids").prop("checked", this.checked);
	});
	$(".ids").click(function(){
		var option = $(".ids");
		option.each(function(i){
			if(!this.checked){
				$(".check-all").prop("checked", false);
				return false;
			}else{
				$(".check-all").prop("checked", true);
			}
		});
	});
   function buyFive()
{
	var uexist="";
if(uexist){
document.fiveform.submit();
}

else{showBg();

}  
}
    </script>
							<!-- 商品描述-->
							<div class="good-tabs">
								<ul>
									<a
										href="#"
										id="detail_tab" name="__tab_detail_b2c" rel="header1"
										class="on selected">商品详情</a>
								</ul>
							</div>
							<div class="tab-line"></div>
							<div id="goods_content">${goodsBean.contents}</div>
						</div>
						<!-- 商品描述结束-->
					</div>
					<div class="details_right">
						<dl>
							<dt>你可能喜欢</dt>
							<c:forEach items="${xgGoods }" var="xgG">
								<dd>
									<a class="details_right_img"
										href="goodsPage.do?id=${xgG.id }" title="${xgG.name }"><img
										src="${xgG.propic }" alt="${xgG.name }"
										style="display: inline-block;" /></a> <a
										href="goodsPage.do?id=${xgG.id }"
										class="details_right_title" title="${xgG.name }">${xgG.name }</a>
									<span class="fwb mcm_title_price">￥<span class="red">${xgG.price }</span></span>
								</dd>
							</c:forEach>
						</dl>
					</div>
				</div>
			</div>
			<!-- jQuery 遮罩层 begin -->
			<div id="fullbg"></div>
			<!-- end jQuery 遮罩层 -->
			<!-- 对话框 -->
			<!-- <div id="dialog">
				Modal 对话框内容
				<div id="myModal" class="modal">
					<div class="modal-header">
						<a class="close" onclick="closeBg();"><img
							src="images/close.png" /></a>
						<h3 id="myModalLabel">用户登录</h3>
					</div>
					<div class="m_img">
						<a class="" href="#"><img src="images/qq.png" />&nbsp;用QQ账号登录</a>
						<br /> <br /> <a class="" href="#"><img
							src="images/weibo.png" />&nbsp;用微博账号登录</a>
						<a class="btn btn-warning btn-block" href="">用豆瓣账号登录</a>
        <a class="btn btn-primary btn-block" href="">用人人账号登录</a>
					</div>
					<form class="form-horizontal" id="loginform" name="user"
						method="post">
						<div class="form_login">
							<input type="text" id="inputusername" name="username"
								placeholder="用户名" />
						</div>
						<div class="form_login">
							<input type="password" id="inputpassword" name="password"
								placeholder="密码" />
						</div>
						<span class="tips"></span>
						<div class="form_login">
							<a class="" id="login_btn">登录</a>
						</div>
						<div class="control-group">
							<p>
								<span class="pull-right"><span>还没有账号? <a
										href="" class="now">立即注册</a></span> </span>
							</p>
						</div>
					</form>
				</div>
				Modal 对话框内容
			</div> -->
			<!-- 对话框 结束-->
			<!-- jQuery 遮罩层上方的对话框 -->
			<script type="text/javascript">

//显示灰色 jQuery 遮罩层
function showBg() { 
	$("#dialog").fadeIn();
    var bh = $("body").height();
    var bw = $("body").width();
    $("#fullbg").css({
        height:bh,
        width:bw,
        display:"block"
    });
   
}
//关闭灰色 jQuery 遮罩
function closeBg() {
    $("#fullbg,#dialog").hide();
}
</script>
			<script type="text/javascript">
        function trySubmit() {
            if (this.submitFlag == 1) {
                alert('数据已经提交，请勿再次提交。');
                return false;
            }
            else {
                this.submitFlag = 1;               
                return true;
            }
        }
    </script>
			<script type="text/javascript">
//立即购买
 /* function order()
{
	 var uexist="${username}";
	 if(uexist){
		 
	 }else{
		 $(".dlk").show(); 
	} */
/* var uexist="${username}";

if(uexist){
document.orderform.submit();
}else{showBg();}
}
//收藏
function favor() { 
	var uexist="${username}";
if(uexist){
var favorid='${param.id}';
	$.ajax({
type:'post', //传送的方式,get/post
url:'addCollect.page', //发送数据的地址
data:{id:favorid},
 dataType: "json",
success:function(data){
	//alert()
	layer.alert(data.msg,{icon:1})
	}
	,
error:function (event, XMLHttpRequest, ajaxOptions, thrownError) {
alert(XMLHttpRequest+thrownError); }
})	
}

else{
showBg();
} */
	


//加入购物车

//失去焦点判断数量是否合法
function pandnum() {

 var num = $(".goodnum").val();     
     if(num>"${goodsBean.stock}"){
    	 $(".goodnum").val("${goodsBean.stock}");
     }else if(num<1){
    	 $(".goodnum").val(1);
    	 }
}
 //增加数量
function add() {

 var num = $(".goodnum").val();     
num++;  
     
     if(num>"${goodsBean.stock}"){
    	 $(".goodnum").val("${goodsBean.stock}");
     }else{
    	 $(".goodnum").val(num);
    	 }
}
//减少数量
function reduce() {

 var num = $(".goodnum").val();     

if(num>1)  
      { num--; 
    	$(".goodnum").val(num);
      }
}  

//购物车删除结束


	
</script>
		<!-- /购物车js -->
		<!-- 底部 -->
		<!-- 底部-->
		<script type="text/javascript" charset="utf-8" src="js/menudown.js"></script>
	</div>
	<%@ include file="floor.jsp"%>
	<!-- /底部 -->
	<div style="display: none;" class="jqPreload0">
		360buy
		<!-- <img src="./goods_files/560c497ba8fab.jpg" /> -->
	</div>
</body>
</html>
