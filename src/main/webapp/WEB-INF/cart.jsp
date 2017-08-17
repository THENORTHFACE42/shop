<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">

        <title>购物车</title>

        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
                <link rel="stylesheet" type="text/css" href="styles.css">
        -->

        <link href="css/top.css" rel="stylesheet" />
        <link href="css/footer.css" rel="stylesheet" />
        <link href="css/common.css" rel="stylesheet" />

        <script type="text/javascript" src="js/public.js"></script>
        <script type="text/javascript" src="js/jquery-1.11.1.js"></script>
		<script type="text/javascript" src="js/gwclist.js"></script>
    </head>

    <body>
        <%@ include file="top.jsp"  %>
        <div class="wrapper-cart">
            <!-- 导航条 -->
            <div class="header-wrap">
                <a href="#" class="logo" title="宅商城"><img
                        src="images/logo.png" alt=""></a>

                <div class="shopping_cart_procedure">
                    <span>1、我的购物车</span><span> 2、填写订单</span><span
                        style="width:175px; padding:0;">3、完成订单</span>
                </div>
            </div>
            <!-- /头部 -->

            <!-- 主体 -->
            <div class="wrapper-order">
                <div class="cartname">
                    全部商品&nbsp;&nbsp;
                </div>
                <form action="tijiao"
                      method="post" name="myform" id="form">

                    <c:if test="${buyGoodsList.size()==0 }">
                        <div class="shopcart_main_none">
                            <div class="shopcart_main_none_img"></div>
                            <div class="shopcart_main_none_main">
                                <p>你的购物车还是空的哦赶紧行动吧!</p>
                                <a href="index.do">马上购物</a>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${buyGoodsList.size()!=0 }">				
                        <table id="table" class="gridtable">
                            <thead>
                                <tr>
                                    <th class="row-selected"><input id="selectAll" class="checkbox check-all"
                                                                    checked="checked" type="checkbox">全选</th>
                                    <th>商品名</th>
                                    <th>单价</th>
                                    <th>数量</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>		
                                <!-- 购物车循环go -->
                                <c:forEach items="${buyGoodsList }" var="g">
                                    <tr class="cart_bottom" id="ceng${g.goodsid }">
                                        <td><input class="row-selected" value="${g.id }" type="checkbox" name="checkboxBtn" checked="checked"/></td>
                                        <td><span class="c5">
                                                <a href="goodsPage.do?id=${g.goodsid }" class="dl"> 
                                                    <img src="${g.propic }" width="70" height="70">
                                                </a>
                                                <span class="dd"><a href="goodsPage.do?id=${g.goodsid }" class="dd"> ${g.goodsname }</a></span>
                                                <span class="dd"></span> </span>
                                        </td>

                                        <td align="center" id="${g.id }Subtotal">${g.goodsprice }</td> <!-- 单价 -->
                                        <td align="center">
                                            <div class="quantity-form">
                                                <a class="jia" gid="${g.id }">+</a>  <!-- 加一件商品 -->
                                                <input type="text" class="goodnum" readonly="readonly" id="${g.id }num" name="num[]" value="${g.sum }">
                                                <a class="jian" gid="${g.id }">-</a> <!-- 减一件商品 -->
                                            </div>
                                        </td>
											
                                        <td><a class="del" gid="${g.id }"  onclick="scgw(this)">删除</a>&nbsp;</td>
                                        <td style="display:none;">${g.id }</td>
                                    </tr>
                                </c:forEach>
                                <!-- 购物车循环end -->		
                            </tbody>
                        </table>
                        <table class="cart_info">
                            <tbody>
                                <tr>
                                    <td colspan="4"><a name="62"
                                                       rel="del"
                                                       href="index.do">继续购物</a>
                                    </td>
                                    <td align="right"></td>
                                </tr>
                                <!-- <tr>
                                        <td colspan="5" align="right">种类：<span id="count">2</span>种
                                        </td>
                                </tr> -->
                                <tr>
                                    <td colspan="5" align="right">总计（不含运费）：¥<em class="price"
                                                                                id="total"> 0.00</em></td>
                                </tr>
                            </tbody>
                            <tbody>
                                <tr>
                                    <td colspan="5" align="right"><a id="jiesuan" class="btn_submit_pay"
                                                                     href="javascript:jiesuan()">去结算</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </c:if>
                </form>
                <!-- jQuery 遮罩层 begin -->
                <div id="fullbg"></div>
                <!-- end jQuery 遮罩层 -->
                <!-- 对话框 -->
                <div id="dialog">
                    <!-- Modal 对话框内容 -->
                    <!-- Modal 对话框内容 -->
                </div>
                <!-- 对话框 结束-->
                <!-- jQuery 遮罩层上方的对话框 -->
            </div>
            <!-- /主体 -->
            <!-- 底部 -->
            <!-- 底部-->
            <script type="text/javascript" charset="utf-8"
            src="js/menudown.js"></script>

        </div>
        <%@ include file="floor.jsp" %>
        <!-- 隐藏的提交表单 -->
        <form id="jieSuanForm" action="tijiao.cart" method="post">
            <input type="hidden" name="cartItemIds" id="cartItemIds"/>
            <input type="hidden" name="total" id="hiddenTotal"/>
            <input type="hidden" name="method" value="loadCartItems"/>
        </form>
        <!-- /底部 -->
    </body>
</html>
