<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style>
.control-group input{
    width:260px;
    height:25px;
}
</style>
<div class="center_right" id="MemberCenterCtrl" style="display: block;">
	<h3 class="cr_h3 cr_h3_gray">找回密码</h3>
	<form id="fro" class="form-horizontal" role="form"  method="post" style="width: 60%; margin: 0 auto;">
		  <div class="control-group">
            <label class="control-label" >用户名</label>
            <div class="controls">
              <input type="text"  class="span3" placeholder="请输用户名"  name="user" id="yhm" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" >用户电话</label>
            <div class="controls">
              <input type="text"  class="span3" placeholder="请输电话"  name="phone" id="yhdh">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" >新密码</label>
            <div class="controls">
              <input type="password"  class="span3" placeholder="请输入密码"  name="password" id="szmm" >
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" >确认密码</label>
            <div class="controls">
              <input type="password"  class="span3" placeholder="请再次输入密码" id="qrmm" >
            </div>
            <div class="controls Validform_checktip text-warning"></div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="bu1" type="button" class="v_dark_btn">提 交</button>
            </div>
          </div>
        </form>
        <script type="text/javascript">
        	$('#bu1').click(
        		function (){
        			var p1 = $("#szmm").val();
        			var p2 = $("#qrmm").val();
        			var user=$("#yhm").val();
        			var phone=$("#yhdh").val();
        			if(user.trim()==""){
        				layer.alert('用户名不能为空！',{icon:0});
        				return;
        			}
        			if(phone.trim()==""){
        				layer.alert('电话号码不能为空！',{icon:0});
        				return;
        			}
        			var reg=/^1[3|4|5|7|8]\d{9}$/;
        			if(reg.test(phone)){
        			}else{
        				layer.alert('电话号码格式不正确！',{icon:0});
        				return;
        			}
        			if(p1.trim()==""||p2.trim()==""){
        				layer.alert('密码不能为空！',{icon:0});
        				return;
        			}
        			if(p1.length>20||p1.length<6){
        				layer.alert('请输入6位以上20位以下新密码！',{icon:0});
        				return;
        			}
        			if(p1!=p2){
        				layer.alert('两次密码输入不一致',{icon:2});
        				return;
        			}
        			 $.ajax({
        				type:'post', //传送的方式,get/post
        				url:'findPassword.do', 
        				data:{"p1":p1,"user":user,"phone":phone},
        				 dataType: "json",
        				success:function(data){
        					//alert()
        					if(data.success){
        						auto();
        						$("#zhcg").show();
        						var id=setInterval(function(){
        							$("#zhcg").hide();
        							$(".dlk").show();
        							clearInterval(id);
        						}, 1000);
        					}else{
        						layer.alert('账号或手机号错误！',{icon:2});
        					}
        					
        				}}); 
        		}		
        	);
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
        </script>
</div>