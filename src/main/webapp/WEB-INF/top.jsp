<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet" href="css/nav.css" type="text/css">
<link href="css/dlk.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/tz_fly.js"></script>
<script type="text/javascript" src="js/loginYz.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/zc.js"></script>
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/dlk.js"></script>
</head>
<body>
	<!-- 顶部工具条 -->
	<div class="top">
		<div class="topbar">
			<span class="welcome" style="float: left"><a
				href="javascript:void(0);"
				onclick="SetHome(this,'http://www.baidu.com')">设为首页</a> <a
				href="javascript:void(0);" onclick="AddFavorite('商城',location.href)"
				title="商城">收藏本站</a> </span> <span class="welcome" style="float: left">
				<a href="javascript:void(0);"
				onclick="AddFavorite('商城',location.href)" title="商城"></a>
			</span>
			<div class="topaccount">
				<span class="operate_nav"> <span id="userfavor"><a
						rel="nofollow"><i></i>我的收藏&nbsp;<b></b></a> </span>
					<ul id="favormenu" class="top_lg_info_down" style="display: none;">
						<li><a rel="nofollow" href="toMyCollect.do">收藏的商品</a></li>
					</ul>
				</span> <span class="operate_nav"> <span id="account"><a
						rel="nofollow">我的账号&nbsp;</a><i id="icount"
						class="fa fa-angle-down"></i> </span>
					<ul id="dbox" class="top_lg_info_down" style="display: none;">
						<li><a rel="nofollow" id="grzx">个人中心</a></li>
						<li><a rel="nofollow" href="tochangePassword.do">修改密码</a></li>
					</ul> |
				</span> <span class="operate_nav"> <span id="sell"><a
						rel="nofollow">我的订单&nbsp;<b></b></a> </span>
					<ul id="sellmenu" class="top_lg_info_down" style="display: none;">
						<li><a rel="nofollow" href="userMain.do?type=1">所有订单</a></li>
						<li><a rel="nofollow" href="userMain.do?type=2">待支付订单</a></li>
						<li><a rel="nofollow" href="userMain.do?type=3">待发货订单</a></li>
						<li><a rel="nofollow" href="userMain.do?type=4">待确认订单</a></li>
					</ul> |
				</span>
				<c:if test="${username!=null }">
					<span class="operate_nav"> 欢迎光临商城 <a href="userMain.do" id="un"
						class="red">${username}</a>,<a rel="nofollow" href="logout.do">退出</a>
						|
					</span>
					<!-- <script>
						alert(1);
						$(".dlk").hide();
					</script> -->
				</c:if>
				<c:if test="${username==null }">
					<span class="operate_nav"> 欢迎光临商城 <a id="dl">,请[登录]</a>&nbsp;<a
						id="mfzc" style="padding-left: 0; padding-right: 10px"> [免费注册]
					</a> |
					</span>
					<!-- <script>
						$(".dlk").show();
						$("#s2").html("密码错误");
						$("#s2").css("color", "red");
					</script> -->
				</c:if>
				<span class="operate_nav"> </span>
			</div>
		</div>
	</div>

	<div class="dlk">
		<h3>
			用户登陆<i class="colose"></i>
		</h3>
		<p class="txt">

			<img src="images/new.png " width="35" height="35" align="absmiddle" />
			十月一大促销
		</p>
		<form action="check.zc" method="post">
			<p class="zh">
				账&nbsp;号<input type="text" id="username" name="username1"
					placeholder="请输入账号" /><span id="s1"></span>
			</p>
			<p class="mima">
				密&nbsp;码<input type="password" id="pwd" name="pwd"
					placeholder="请输入密码" /><span id="s2"></span>

			</p>
			<p class="mima">
				验证码<input type="text" id="yzm" placeholder="请输验证码" /> <a
					href="javascript:;" onclick="changeImage1()" id="a1"> 看不清</a> <img
					id="CreateCheckCode1" src="genImage.do"> <span id="s3"></span>
			</p>
			<p class="mima">
				<input type="button" class="sub" id="sub2" value="" />
			</p>
			<p>
				<a id="zczh" style="position: absolute; left: 108px;">注册账号</a> <a
					id="zhmm" style="position: absolute; right: 115px;"
					href="tofindPassword.do">找回密码</a>
			</p>
		</form>
	</div>
	<div class="zck">
		<h3>
			用户注册<i class="colose"></i>
		</h3>
		<p class="txt">

			<img src="images/new.png " width="35" height="35" align="absmiddle" />

		</p>
		<form action="zc.zc" method="post">
			<p class="zh">
				账&nbsp;&nbsp;号<input type="text" id="username1" name="username1"
					placeholder="请输入账号" /><span id="s4"></span>
			</p>
			<p class="mima">
				密&nbsp;&nbsp;码<input type="password" id="pwd1" name="pwd"
					placeholder="请输入密码" /><span id="s5"></span>

			</p>
			<p>
				确认密码<input type="password" id="pwd2" name="pwd"
					placeholder="请重新输入密码" /><span id="s6"></span>

			</p>
			<p class="mima">
				验证码<input type="text" id="yzm1" placeholder="请输验证码" /> <a
					href="javascript:;" onclick="changeImage()" id="a2"> 看不清</a> <img
					id="CreateCheckCode" src="genImage.do"> <span id="s7"></span>
			</p>
			<p class="mima">
				<input type="button" class="sub" id="sub1" value="" />
			</p>
			<p>
				<a id="dlzh" style="position: absolute; left: 77px;">已有账号，登录</a> <a
					id="wjmm" style="position: absolute; right: 118px;"
					href="tofindPassword.do">忘记密码</a>
			</p>
		</form>
	</div>
	<div id="zccg">恭喜你注册成功，为您跳转主页面。</div>
	<div id="dlcg">恭喜你登陆成功，为您跳转主页面。</div>
	<div id="qxdl">你还没有登录，请登录后在试。</div>
	<div id="zhcg">找回成功，请登录</div>
	<div class="J-global-toolbar">
		<div class="toolbar-wrap J-wrap">
			<div class="toolbar">
				<div class="toolbar-panels J-panel">
					<div
						style="visibility: hidden; height: 100%; weight: 186px; overflow: scroll"
						class="J-content toolbar-panel tbar-panel-cart toolbar-animate-out">
						<h3 class="tbar-panel-header J-panel-header">
							<a href="" class="title"><i></i><em class="title">购物车</em></a> <span
								class="close-panel J-close"></span>
						</h3>
						<div class="tbar-panel-main">
							<div class="tbar-panel-content J-panel-content">
								<div id="J-cart-render">
									<div class="tbar-cart-list">
										<div class="tbar-cart-item">
											<div class="jtc-item-goods">
												<c:if test="${username!=null }">
													<c:if test="${empty gwc }">
														<span id="quxiao"> <span>你的购物车是什么都没有</span> <br />
															<span>赶快行动吧</span> <br />
														</span>
													</c:if>
													<c:if test="${!empty gwc }">

														<c:forEach items="${gwc }" var="scb">
															<span> <span class="godid" style="display: none">${scb.id }</span>
																<img src="${scb.propic }" width="50" height="50">
																<a href="goodsPage.do?id=${scb.goodsid }"> <span>名称：${scb.goodsname }</span></a>
																<br /> <span>价格：<span>${scb.goodsprice }</span>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															</span> <span>数量：<span id="${scb.goodsid }">${scb.sum }</span></span>
																<br /> <span>总价：${scb.sum*scb.goodsprice  }</span>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="gwcsc"
																onclick="scgwc(this);">从购物车中删除</a> <br /></span>
														</c:forEach>
													</c:if>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
								id="i1">去结算</a>
						</div>
						<div class="tbar-panel-footer J-panel-footer">
							<div class="tbar-checkout"></div>
						</div>
					</div>

					<div style="visibility: hidden;height: 100%; weight: 186px; overflow: scroll" " 
						class="J-content toolbar-panel tbar-panel-follow">
						<h3 class="tbar-panel-header J-panel-header">
							<a href="#" target="_blank" class="title"> <i></i> <em
								class="title"></em>
							</a> <span class="close-panel J-close"></span>
						</h3>
						<div class="tbar-panel-main">
							<div class="tbar-panel-content J-panel-content">
								<div class="tbar-tipbox2">
									<div class="tip-inner">
											<c:if test="${username!=null}">

												<c:forEach items="${collectList}" var="scb">
													<span> <span class="godid" style="display: none">${scb.id }</span>
														<img src="${scb.goodspropic }" width="50" height="50"> <a
														href="goodsPage.do?id=${scb.goodsid }"> <span>&nbsp;&nbsp;名称：${scb.goodsname }</span></a>
														<br /> 
														<span>&nbsp;&nbsp;收藏时间：<fmt:formatDate value="${scb.time  }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
														<br/>
														<span>&nbsp;&nbsp;价格：<span>${scb.goodsprice }</span>
															&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="gwcsc"
														onclick="javascript:delCoolect(${scb.id })">删除收藏</a> <br /><br /></span>
												</c:forEach>
											</c:if>
										
									</div>
								</div>
							</div>
						</div>
						<div class="tbar-panel-footer J-panel-footer"></div>
					</div>

					<div style="visibility: hidden; height: 100%; weight: 186px; overflow: scroll"
						class="J-content toolbar-panel tbar-panel-history toolbar-animate-in">
						<h3 class="tbar-panel-header J-panel-header">
							<a href="#" target="_blank" class="title"> <i></i> <em
								class="title">我的足迹</em>
							</a> <span class="close-panel J-close"></span>
						</h3>
						<div class="tbar-panel-main">
							<div class="tbar-panel-content J-panel-content">
								<div class="jt-history-wrap">
									<ul>
										<c:if test="${username!=null }">
											<c:forEach items="${MyfootprintList }" var="scb">
												<span> <span class="godid" style="display: none">${scb.id }</span>
														<img src="${scb.goodspropic }" width="50" height="50"> <a
														href="goodsPage.do?id=${scb.goodsid }"> <span>&nbsp;&nbsp;名称：${scb.goodsname }</span></a>
														<br /> 
														<span>浏览时间：<fmt:formatDate value="${scb.time  }" pattern="yyyy-MM-dd"/></span>
														 <br /><br /></span>
											</c:forEach>
											<c:if test="${MyfootprintList.size()>0 }">
												<br/><br/>
												<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:deleteAllfoot();">清空浏览记录</a></span>
											</c:if>
										</c:if>
									</ul>
									<!-- <a href="#" class="history-bottom-more" target="_blank">查看更多足迹商品
										&gt;&gt;</a> -->
								</div>
							</div>
						</div>
						<div class="tbar-panel-footer J-panel-footer"></div>
					</div>
				</div>

				<div class="toolbar-header"></div>

				<div class="toolbar-tabs J-tab">
					<div class="toolbar-tab tbar-tab-cart" id="gwc1">
						<i class="tab-ico"></i> <em class="tab-text ">购物车</em> <span
							class="tab-sub J-count ">${fn:length(gwc) }</span>
					</div>
					<div class=" toolbar-tab tbar-tab-follow">
						<i class="tab-ico"></i> <em class="tab-text">我的收藏</em> <span
							class="tab-sub J-count hide">0</span>
					</div>
					<div class=" toolbar-tab tbar-tab-history ">
						<i class="tab-ico"></i> <em class="tab-text">我的足迹</em> <span
							class="tab-sub J-count hide">0</span>
					</div>
				</div>

				<div class="toolbar-footer">
					<div class="toolbar-tab tbar-tab-top">
						<a href="#"> <i class="tab-ico  "></i> <em
							class="footer-tab-text">顶部</em>
						</a>
					</div>
					<div class=" toolbar-tab tbar-tab-feedback">
						<a href="#" target="_blank"> <i class="tab-ico"></i> <em
							class="footer-tab-text ">反馈</em>
						</a>
					</div>
				</div>

				<div class="toolbar-mini"></div>

			</div>

			<div id="J-toolbar-load-hook"></div>

		</div>
	</div>
	<script type="text/javascript" src='js/nav.js'></script>
	<script type="text/javascript">
	function delCoolect(id){
		//layer.alert(id,{icon:2});
		var is=layer.confirm('确定要删除此条收藏吗？', {title:'删除收藏',icon: 3,shift:6,
		    btn: ['确定','取消'] //按钮
		}, function(){
			$.ajax({
				url:"delCollectfromNavigation.do",
				data:{"id":id},
				type:"post",
				dataType:"json",
				success:function(data){
					if(data.success=="true"){
						location.reload(true);
					}else{
						layer.alert('删除失败！',{icon:2});
					}
				}
			})
		});
	}
	function deleteAllfoot(){
		//layer.alert(id,{icon:2});
			var id=$("#userid").val();
			$.ajax({
				url:"deleteAllfoot.do",
				data:{"id":id},
				type:"post",
				dataType:"json",
				success:function(data){
					if(data.success=="true"){
						location.reload(true);
					}else{
						layer.alert('删除失败！',{icon:2});
					}
				}
			})
	}
	</script>

</body>
</html>