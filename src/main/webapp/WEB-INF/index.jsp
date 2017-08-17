<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	//得到当前项目的名字
	String path = request.getContextPath();
	//当前项目的基础url
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<!-- 绝对路径 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商城_首页</title>
<meta http-equiv="pragma" content="no-cache">
<!-- 禁止从浏览器从本地缓存中调阅页面内容 -->
<meta http-equiv="cache-control" content="no-cache">
<!-- 清楚缓存 -->
<meta http-equiv="expires" content="0">
<!-- 设置网页过期时间 -->
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<!-- 关键词 -->
<meta http-equiv="description" content="This is my page">
<!-- 描述 -->
<link href="css/top.css" rel="stylesheet" />
<link href="css/common.css" rel="stylesheet" />
<link href="css/footer.css" rel="stylesheet" />
<link href="css/lunbo.css" rel="stylesheet" />
<link href="css/leftfixed.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="js/leftfixed.js"></script>
<script type="text/javascript">
	/* $(function (){
		changeImage();
	}) */
</script>
</head>
<body>
	<!-- 引入头部jsp -->
	<%@ include file="top.jsp"%>
	<div class="yershop_wrapper">
		<%@ include file="hader.jsp"%>
		<div class="common_wrapper">
			<!--container begin-->
			<div class="flexcontainer">
				<!--menu begin-->
				<div class="nav-wrap">
					<!--fenlei begin-->
					<div class="nava">
						<div class="goods">
							<div>
								<h2>
									<span class="grid"><img src="images/grid.png" /></span> <span>商品分类</span><b></b>
								</h2>
							</div>
							<div class="all-goods" id="all-goods">

								<!-- 商品分类循环go -->
								<c:forEach items="${floor }" var="bigType">
									<div class="item">
										<div class="product">
											<h4>
												<a href=" search.do?bid=${bigType.id }&p=1 ">${bigType.name }</a>
											</h4>
										</div>
										<div class="product-wrap pos">
											<!--子分类-->
											<div class="cf">
												<div class="fl wd252 pr20">
													<ul class="cf">
														<c:forEach items="${bigType.smallTypeList }"
															var="smallType">
															<li><span> <a
																	href="search.do?sid=${smallType.id }&p=1">
																		${smallType.name} </a>
															</span></li>
														</c:forEach>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- 商品分类循环end -->

							</div>
						</div>
						<!--fenlei over-->
						<ul class="menu">
							<li><a href="index.do" target="_self">首页</a></li>
							<li><a href="#" target="_blank">团购</a></li>
							<li><a href="#" target="_self">抢购</a></li>
							<li><a href="#" target="_self">预约</a></li>
						</ul>
					</div>
					<script>
						$(".menu-list li").eq(0).css('background', '#474747');
					</script>
					<!--首页高亮-->
				</div>
			</div>
			<!-- <script type="text/javascript" src="js/menudown.js"></script> -->
			<!--menu over-->
			<!--pic begin-->
			<div class="screen">
				<div class="ck-slide">
					<ul class="ck-slide-wrapper">
						<c:forEach items="${bannerList }" var="u">

							<li><a href="#" target="_blank"> <img src="${u.propic }" /></a></li>
						</c:forEach>
					</ul>
					<a href="javascript:;" class="ctrl-slide ck-prev">上一张</a> <a
						href="javascript:;" class="ctrl-slide ck-next">下一张</a>
					<div class="ck-slidebox">
						<div class="slideWrap">
							<ul class="dot-wrap">
								<li class="current"><em>1</em></li>
								<li><em>2</em></li>
								<li><em>3</em></li>
								<li><em>4</em></li>
								<li><em>5</em></li>
							</ul>
						</div>
					</div>
				</div>
				<script type="text/javascript" src="js/slide.js"></script>
				<!-- 轮播js -->
				<script>
					$('.ck-slide').ckSlide({
						dir : 'x', //左右滚动
						autoPlay : true
					});
				</script>
				<script type="text/javascript" language="javascript">
					var PicTotal = 5;
					var CurrentIndex;
					var ToDisplayPicNumber = 0;
					$("div.LunBo div.LunBoNum span").click(DisplayPic);
					function DisplayPic() {
						// 测试是父亲的第几个儿子
						CurrentIndex = $(this).index();
						// 删除所有同级兄弟的类属性
						$(this).parent().children().removeClass("CurrentNum")
						// 为当前元素添加类
						$(this).addClass("CurrentNum");
						// 隐藏全部图片
						var Pic = $(this).parent().parent().children("ul");
						$(Pic).children().hide();
						// 显示指定图片
						$(Pic).children("li").eq(CurrentIndex).show();
					}
					function PicNumClick() {
						$("div.LunBo div.LunBoNum span").eq(ToDisplayPicNumber)
								.trigger("click");
						ToDisplayPicNumber = (ToDisplayPicNumber + 1)
								% PicTotal;
						setTimeout("PicNumClick()", 3000);
					}
					setTimeout("PicNumClick()", 3000);
				</script>
			</div>
			<c:forEach items="${floor }" var="bigType" varStatus="big">

				<div class="list">
					<h3>
						<span class="floor" id="float0${big.index+1 }">${big.index+1 }F</span><span>${bigType.name
                                }</span>
					</h3>
					<div class="category">
						<div class="icon">
							<ul class="tag clearfix" data-tpc="3">
								<c:forEach items="${bigType.smallTypeList }" var="sm">
									<a target="_blank" title="${sm.name }"
										href="search.do?sid=${sm.id }&p=1"> ${sm.name }</a>
								</c:forEach>
							</ul>
							<a href="search.do?bid=${bigType.id }&p=1" target="_blank"> <img
								class="lazy" src="${bigType.propic }" data-original="" />
							</a>
						</div>
						<!--栏目推荐位调用结束-->
						<!--栏目文章调用开始-->
						<ul class="article" id="list_52">
							<!-- 循环展示商品go -->
							<c:forEach items="${bigType.goods }" var="goods">
								<li>
									<div class="pic">
										<a class="yershop_img" href="goodsPage.do?id=${goods.id }"
											target="_blank" title="${goods.name }"> <img class="lazy"
											src="${goods.propic }" /><em></em></a>
									</div>
									<div class="name">
										<a href="goodsPage.do?id=${goods.id }" target="_blank"
											title="${goods.name }">${goods.name }</a>
									</div>
									<div class="price">
										<font>￥</font> <span>${goods.price }</span> <span></span>
									</div>
								</li>
							</c:forEach>
							<!-- 循环展示商品end -->
						</ul>
					</div>
					<!--栏目文章调用结束-->
				</div>
			</c:forEach>
			<div class="floatCtro">
				<p>吃货专区</p>
				<p>通信专区</p>
				<p>箱包专区</p>
				<p>清洁专区</p>
				<p>居家专区</p>
				<p>母婴专区</p>
				<p>家电专区</p>
				<p>服装专区</p>
				<p>化妆专区</p>
				<a> <font style="width: 60px; height: 1px; display: block"></font>
					<span>返回顶部</span>
				</a>
			</div>
			<!-- 楼层循环end -->
		</div> 
		<script type="text/javascript" charset="utf-8" src="js/menudown.js"></script> 
		<%@include file="floor.jsp"%>


	</div>
</body>
</html>