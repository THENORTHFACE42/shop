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
    
    <title>${tname }_搜索</title>
    
	<link href="css/top.css" rel="stylesheet" /> 
	<link href="css/detail.css" rel="stylesheet" /> 
	<link href="css/footer.css" rel="stylesheet" /> 
	<link href="css/tuan.css" rel="stylesheet" /> 
	<link href="css/common.css" rel="stylesheet" />
	<script type="text/javascript" src="js/public.js"></script> 
	<script type="text/javascript" src="js/jquery.min.js"></script>
  </head>
  <body>
<%@ include file="top.jsp"  %>
  <div class="yershop_wrapper"> 
   <!-- logo --> 
<%@ include file="hader1.jsp" %>
   <!-- /头部 --> 
   <!-- 菜单 --> 
   <!-- 导航条--> 
   <!-- 导航条--> 
   <div class="menu-wrapper"> 
   <div class="nava"> 
    <div class="nav-all"> 
     <div class="all_class" id="all-class"> 
      <h2><span class="grid"><img src="images/grid.png" /></span><span>商品分类</span><b></b></h2> 
     </div> 
     <div class="all-goods" style="display: none;" id="all-goods"> 
      <!-- 循环开始 --> 
      <c:forEach items="${floor }" var="bt">
         <div class="item"> 
          <div class="product">
           <h4><a href="search.do?bid=${bt.id }&p=1">${bt.name }</a> </h4>
          </div> 
          <div class="product-wrap pos"> 
           <!--子分类--> 
           <div class="cf"> 
            <div class="fl wd252 pr20"> 
            
             <ul class="cf"> 
             <c:forEach items="${bt.smallTypeList }" var="sm">
              <li><span><a href="search.do?sid=${sm.id }&p=1">${sm.name }</a></span> </li> 
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
     <li> <a href="index.do" target="_self">首页</a> </li>
     <li> <a href="#" target="_blank">团购</a> </li>
     <li> <a href="#" target="_self">抢购</a> </li>
     <li> <a href="#" target="_self">预约</a> </li> 
    </ul> 
    </div>
   </div>
   <!-- /菜单 --> 
   <!-- 主体 --> 
   <div class="commom_wrapper"> 
    <!-- Contents  --> 
    <div class="ml_content"> 
     <div class="goodlist-main"> 
      <div class="lists-position"> 
      <!-- 如果搜索的是大类则左侧显示小类集合 -->
      <c:if test="${type=='bid' }">
       <div class="category-title"> 
        <h4><span>${tname }</span></h4> 
        <div class="category-child"> 
        
    		<c:forEach items="${floor }" var="bt" >
    		
    			<c:if test="${bt.id==param.bid }">
    				<c:forEach items="${bt.smallTypeList }" var="small">
         				<span><a href="search.do?sid=${small.id }&p=1">${small.name }</a></span>
    				</c:forEach>
    			</c:if>
    		</c:forEach>
        </div> 
       </div>  
       </c:if>
       
       <div class="salesrank"> 
        <h5><span>销量排行</span></h5> 
        <ul>
         <!-- 销量排行循环开始 -->
         
       	<c:forEach items="${salesTop }" var="sg">
         <li>
         <a class="picture" href="goodsPage.do?id=${sg.id }">
         <img src="${sg.propic }" />
         </a> 
         <a class="title" href="goodsPage.do?id=${sg.id }"> ${sg.name }</a> 
         <span>￥${sg.price }</span> 
         </li> 
         </c:forEach>
         <!-- 销量排行循环开始 --> 
        </ul> 
       </div> 
      </div> 
      <div class="lists-area"> 
       <p class="serach-title" id="s">"${tname }"的相关结果</p>
       <ul class="ml_content_top">
        <li <c:if test="${param.order=='1' || param.order==null }">class="active"</c:if> ><a href="search.do?${type }=${s }&p=1&order=1" class="asc">热度<i></i></a></li>
        <li <c:if test="${param.order=='2' }">class="active"</c:if> ><a href="search.do?${type }=${s }&p=1&order=2" class="asc">最新<i></i></a></li>
        <li <c:if test="${param.order=='3' }">class="active"</c:if> ><a href="search.do?${type }=${s }&p=1&order=3" class="asc">价格<i></i></a></li>
        <li <c:if test="${param.order=='4' }">class="active"</c:if> ><a href="search.do?${type }=${s }&p=1&order=4" class="asc">销量<i></i></a></li>
       </ul> 
       <ul class="goodlist"> 
       <c:if test="${PageDate.count==0 }">
        	<img src="images/s404.png" />
        	抱歉！没有找到与“${tname }”相关的宝贝。
        </c:if>
       <!-- 商品展示循环开始 -->
       	<c:forEach items="${PageDate.data }" var="goods">
       	<li class="face" onmouseover="this.className='facehover'" onmouseout="this.className='face'"> 
        	<a href="goodsPage.do?id=${goods.id }" class="list-img"> 
        		<img src="${goods.propic }" />
        	</a> 
	        <p> 
	        	<a href="goodsPage.do?id=${goods.id }" class="t2"> ${goods.name }</a>
	        </p> 
	        <p>
	        	<span class="red" title="预览：4.90">价格：￥${goods.price }</span>
	        </p> 
        </li> 
        </c:forEach>
        <!-- 商品展示循环结束 -->
       </ul> 
       <!-- 分页 --> 
       <c:if test="${PageDate.count!=0 }">
       <div class="page"> 
        <div> 
        	<c:if test="${param.p!=1  }">
        		<a class="prev" href="search.do?${type }=${s }&p=${param.p-1 }&order=${order }#s">上一页</a>
        	</c:if>
        	<c:forEach begin="1" end="${PageDate.pagetotal }" varStatus="sta">
        		<c:if test="${param.p==sta.count }">
        			<span class="current">${param.p }</span>
        		</c:if>
        		<c:if test="${param.p!=sta.count }">
        			<a class="num" href="search.do?${type }=${s }&p=${sta.count }&order=${order }#s">${sta.count }</a>
        		</c:if>
        	</c:forEach>
        	<c:if test="${param.p!=PageDate.pagetotal}">
        		<a class="next" href="search.do?${type }=${s }&p=${param.p+1 }&order=${order }#s">下一页</a>
        	</c:if>
         	<span class="rows">共${PageDate.count } 条记录</span>
        </div> 
       </div>
       </c:if>
      </div> 
     </div> 
    </div> 
   </div> 
   <!-- 主体 --> 
   
 
   <!-- /购物车js --> 
   <!-- 底部 --> 
   <!-- 底部--> 
   <script type="text/javascript" charset="utf-8" src="js/menudown.js"></script> 
  </div> 
 <%@ include file="floor.jsp" %> 
  </body>
</html>
