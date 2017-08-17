<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单结算</title>
    
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
	<script type="text/javascript" src="js/jquery-1.5.1.js"></script>
	<script type="text/javascript" src="js/layer.js"></script>
  </head>
  
  <body>
  	
  
<!-- 工具条 --> 
  <!-- 顶部工具条 --> 
  <div class="top"> 
   <div class="topbar"> 
    <span class="welcome" style="float:left">欢迎光临商城系统 <a href="" class="red">${username }</a>,<a rel="nofollow" href="logout.do">退出</a> </span> 
    <span class="operate_nav"> <span id="account" style="background-color: rgb(245, 245, 245);"><a rel="nofollow">我的账号&nbsp;</a><i id="icount" class="fa fa-angle-down"></i> </span> 
     <ul id="dbox" class="top_lg_info_down" style="display: none;"> 
      <li><a rel="nofollow" href="userMain.do" >个人中心</a></li> 
      <li><a rel="nofollow" href="toMyCollect.do">我的收藏</a></li> 
      <li><a rel="nofollow" href="#">优惠券</a></li> 
     </ul> |</span> 
    <span class="operate_nav"> <a rel="nofollow" href="userMain.do">我的订单</a> | </span> 
    <span class="operate_nav"> <a href="showGWC.do" name="购物车" dd_name="购物车"><i class="icon_card"></i>购物车<b id="cart_items_count"></b></a> </span> 
   </div> 
  </div>
  <script type="text/javascript">
//头部topbar会员中心显示与隐藏
var Account= document.getElementById('account');
            var Downmenu= document.getElementById('dbox');
            var timer = null;//定义定时器变量
            //鼠标移入div1或div2都把定时器关闭了，不让他消失
            Account.onmouseover = Downmenu.onmouseover = function ()
            {
				 //改变箭头方向
				$("i#icount").attr("class","fa fa-angle-up");
               
				 //改变背景颜色
				 Account.style.backgroundColor = '#fff';
				 //显示下拉框
                $("#dbox").show();
				//关闭定时执行
                clearTimeout(timer);
            }
			
            //鼠标移出div1或div2都重新开定时器，让他延时消失
            Account.onmouseout = Downmenu.onmouseout = function ()
            {
				$("i#icount").attr("class","fa fa-angle-down");
				Account.style.backgroundColor = '#F5F5F5';
				 //开定时器，每隔200微妙下拉框消失
                timer = setTimeout(function () { 
                    $("#dbox").hide(); }, 200);
            }
       
		
		</script> 
  <!-- 顶部工具条 结束 --> 
  <!-- /工具条 --> 
  <!-- 头部 --> 
  <div class="wrapper-address"> 
   <!-- 导航条 --> 
   <div class="header-wrap">
    <a href="/zhaiShop" class="logo" title="宅商城系统"><img src="images/logo.png" alt="" /></a> 
    <div class="shopping_cart_procedure2">
     <span>1、我的购物车</span>
     <span> 2、填写订单</span>
     <span style="width:175px; padding:0;">3、完成订单</span> 
    </div> 
   </div> 
   <!-- /头部 --> 
   <!-- 主体 --> 
   <div class="wrapper-order"> 
    <div id="check"> 
     <div class="mt"> 
      <h2>填写并核对订单信息</h2> 
     </div> 
    <!--  <script type="text/javascript">  
function checkcode()  //检查优惠券是否可以
{
	var str=$("input#code").val();
if(str!==""){
    $.ajax({
type:'post',
url:'/index.php?s=/Home/Fcoupon/check.html', //发送数据的地址//
data:{couponid:str},
 dataType: "json",
success:function(data)
{if(data.msg=="yes"){
	$("span.tips").html(data.info);
}
else{$("span.tips").empty();
	document.getElementById("code").value="";
	$("span.tips").html(data.info);



}
} 
});//ajax结束

}//if结束
	
	}


</script>  -->
     <div class="orderplace"> 
      <link type="text/css" href="css/selectpick.css" rel="stylesheet" /> 
      <div class="o_title"> 
       <h2>收货人信息 <span><a href="javascript:;" id="show">新增</a></span></h2> 
      </div> 
      <div id="formwarp" class="place"> 
       <div id="senderdetail"> 
       <input type="hidden" value="${addressList }" id="addresslist"> 
       <c:forEach items="${addressList }" var="ord">
       	<p>
       	<c:if test="${ord.msg==1 }">
       		<input type="radio" checked="checked" id="default" name="sender" value="${ord.id }" />&nbsp;收件人：${ord.username }&nbsp;&nbsp;联系电话:${ord.phone }&nbsp;&nbsp;收货地址：${ord.provice }${ord.city }${ord.area }${ord.address } 
       	</c:if>
       	<c:if test="${ord.msg!=1 }">
       		<input type="radio" id="default" name="sender" value="${ord.id }" />&nbsp;收件人：${ord.username }&nbsp;&nbsp;联系电话:${ord.phone }&nbsp;&nbsp;收货地址：${ord.provice }${ord.city }${ord.area }${ord.address } 
       	</c:if>
       	</p>  
       </c:forEach>
        
       </div> 
       <div id="formsender" style="display:none"> 
        <form id="formincart" name="form"> 
         <dl> 
          <div class="infolist"> 
           <lable>
            所在地区：
           </lable> 
           <div class="liststyle"> 
            <span id="Province"> <i>请选择省份</i> 
             <ul style=""> 
              <li><a href="javascript:void(0)" alt="请选择省份">请选择省份</a></li> 
              <li><a href="javascript:void(0)" alt="北京市">北京市</a></li>
              <li><a href="javascript:void(0)" alt="天津市">天津市</a></li>
              <li><a href="javascript:void(0)" alt="上海市">上海市</a></li>
              <li><a href="javascript:void(0)" alt="重庆市">重庆市</a></li>
              <li><a href="javascript:void(0)" alt="河北省">河北省</a></li>
              <li><a href="javascript:void(0)" alt="山西省">山西省</a></li>
              <li><a href="javascript:void(0)" alt="内蒙古">内蒙古</a></li>
              <li><a href="javascript:void(0)" alt="辽宁省">辽宁省</a></li>
              <li><a href="javascript:void(0)" alt="吉林省">吉林省</a></li>
              <li><a href="javascript:void(0)" alt="黑龙江省">黑龙江省</a></li>
              <li><a href="javascript:void(0)" alt="江苏省">江苏省</a></li>
              <li><a href="javascript:void(0)" alt="浙江省">浙江省</a></li>
              <li><a href="javascript:void(0)" alt="安徽省">安徽省</a></li>
              <li><a href="javascript:void(0)" alt="福建省">福建省</a></li>
              <li><a href="javascript:void(0)" alt="江西省">江西省</a></li>
              <li><a href="javascript:void(0)" alt="山东省">山东省</a></li>
              <li><a href="javascript:void(0)" alt="河南省">河南省</a></li>
              <li><a href="javascript:void(0)" alt="湖北省">湖北省</a></li>
              <li><a href="javascript:void(0)" alt="湖南省">湖南省</a></li>
              <li><a href="javascript:void(0)" alt="广东省">广东省</a></li>
              <li><a href="javascript:void(0)" alt="广西">广西</a></li>
              <li><a href="javascript:void(0)" alt="海南省">海南省</a></li>
              <li><a href="javascript:void(0)" alt="四川省">四川省</a></li>
              <li><a href="javascript:void(0)" alt="贵州省">贵州省</a></li>
              <li><a href="javascript:void(0)" alt="云南省">云南省</a></li>
              <li><a href="javascript:void(0)" alt="西藏">西藏</a></li>
              <li><a href="javascript:void(0)" alt="陕西省">陕西省</a></li>
              <li><a href="javascript:void(0)" alt="甘肃省">甘肃省</a></li>
              <li><a href="javascript:void(0)" alt="青海省">青海省</a></li>
              <li><a href="javascript:void(0)" alt="宁夏">宁夏</a></li>
              <li><a href="javascript:void(0)" alt="新疆">新疆</a></li>
              <li><a href="javascript:void(0)" alt="香港">香港</a></li>
              <li><a href="javascript:void(0)" alt="澳门">澳门</a></li>
              <li><a href="javascript:void(0)" alt="台湾省">台湾省</a></li>
             </ul> <input id="idprovince" type="hidden" name="cho_Province" value="请选择省份" /> </span> 
            <span id="City"> <i>请选择城市</i> 
             <ul style=""> 
              <li><a href="javascript:void(0)" alt="请选择城市">请选择城市</a></li> 
             </ul> <input type="hidden" id="idcity" name="cho_City" value="请选择城市" /> </span> 
            <span id="Area"> <i>请选择地区</i> 
             <ul style=""> 
              <li><a href="javascript:void(0)" alt="请选择地区">请选择地区</a></li> 
             </ul> <input type="hidden" id="idarea" name="cho_Area" value="请选择地区" /> </span> 
             <span id="s1" style="display: none"></span>
           </div> 
          </div> 
         </dl> 
         <dl> 
          <dt>
           详细地址：
          </dt> 
          <dd>
           <input type="text" style="ime-mode:abled" class="cart_long" id="address" maxlength="40" data-input="text" value="" name="area" />
           <font class="ml10 cleb6100" style="display: none;" id="f1">详细地址不能为空</font>
          </dd> 
         </dl> 
         <dl> 
          <dt>
           <span>*</span>收 货 人：
          </dt> 
          <dd>
           <input type="text" class="cart_long" id="realname" maxlength="20" data-input="text" value="" />
           <font class="ml10 cleb6100" style="display: none;" id="f2">收货人不能为空</font>
          </dd> 
         </dl> 
         <dl> 
          <dt>
           <span></span>手&nbsp;&nbsp;&nbsp;&nbsp;机：
          </dt> 
          <dd>
           <input type="text" class="cart_long" id="phone"  maxlength="11" data-msg="收货手机号码格式不正确" data-input="text" data-type="cellphone" value="" />&nbsp;用于接收发货通知及送货前确认
          </dd> 
         </dl> 
         <dl> 
          <dd>
           <input id="isdefault" checked="checked" name="default" type="checkbox" class="cart_n_box" />设为默认地址
          </dd> 
         </dl> 
         <dl> 
          <dd>
           <a href="javascript:void(0)" class="ncart_btn_on" onclick="savemsg();">保存</a>
          </dd> 
         </dl> 
        </form>
       </div>
       <script type="text/javascript" src="js/city.js"></script> 
       <script type="text/javascript" src="js/zjdz.js"></script> 
      </div> 
     </div> 
     <!--收货信息 结束--> 
     <!--订单支付 开始--> 
     <form action="sumbitOrder.do" method="post" name="myform" id="myform"> 
      <div class="orderplace"> 
       <div class="o_title"> 
        <h2>支付</h2> 
       </div> 
       <div id="formwarp"> 
        <dl> 
         <dt>
          支付方式：
         </dt> 
         <dd> 
          <input type="hidden" name="tag" id="orderid" value="${orderId }" /> 
          <input type="hidden" name="sender" id="senderid" /> 
          <input type="radio" name="PayType" id="huo" checked="checked" value="1" />货到付款 
          <input type="radio" name="PayType" id="pay" value="2" />在线支付 
         </dd> 
        </dl> 
       </div> 
      </div> 
      <!--订单支付 结束--> 
      <!--商品信息 开始--> 
      <div class="orderplace"> 
       <div class="o_title"> 
        <h2>商品信息</h2>
       </div> 
       <table border="0" cellspacing="0" cellpadding="0" class="gridtable cart-2" width="100%"> 
        <tbody>
         <tr class="com_list_tit"> 
          <th>商品名称</th> 
          <th>单价(元)</th> 
          <th>数量</th> 
          <th>合计</th> 
         </tr> 
         <c:forEach items="${buyGoodsList }" var="g">
         	<tr> 
	          <td><a href="goodsPage.do?id=${g.id }" target="_blank"> ${g.name }</a></td> 
	          <td align="center">${g.price }</td> 
	          <td align="center">${g.num }</td> 
	          <td align="center">${g.total }</td> 
	        </tr>
         </c:forEach>
		 <!-- 订单商品循环go -->
          
		 <!-- 订单商品循环end -->
        </tbody>
       </table> 
      </div> 
      <!--商品信息 结束--> 
      <!--发票信息 开始--> 
      <div class="orderplace fapiao"> 
       <h2> 留言信息</h2> 
       <textarea name="liuyan" rows="4" cols="60"></textarea>
      </div> 
      <!--发票信息 结束--> 
      <!--提交信息 开始--> 
      <div class="orderplace trans"> 
       <p><b><span  class="red">${buyGoodsList.size() }</span></b>件商品</p> 
       <p class="jiesuan">应付总额 <span id="TotalNeedPay" class="red">￥${zongjia }</span>元 <a class="btn_submit_pay" onclick="makeorder();return false">提交订单</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p> 
       <!--提交信息 结束--> 
      </div> 
     </form> 
    </div> 
    <!-- /主体 --> 
   </div>
  </div> 
  <%@ include file="floor.jsp" %> 
  <!-- /底部 --> 
  </body>
</html>
