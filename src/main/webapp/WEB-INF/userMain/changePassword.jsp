<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<style>
.control-group input{
    width:260px;
    height:25px;
}
</style>
<div class="center_right" id="MemberCenterCtrl" style="display: block;">
	<h3 class="cr_h3 cr_h3_gray">修改密码</h3>
	<form id="fro" class="form-horizontal" role="form"  method="post" style="width: 60%; margin: 0 auto;">
          <div class="control-group">
            <label class="control-label" >原密码</label>
            <div class="controls">
              <input type="password"  class="span3" placeholder="请输入原密码"  name="old" id="old">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" >新密码</label>
            <div class="controls">
              <input type="password"  class="span3" placeholder="请输入密码"  name="password" id="dypassword">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" >确认密码</label>
            <div class="controls">
              <input type="password"  class="span3" placeholder="请再次输入密码" id="cfpassword">
            </div>
            <div class="controls Validform_checktip text-warning"></div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="bu" type="button" class="v_dark_btn">提 交</button>
            </div>
          </div>
        </form>
        <script type="text/javascript">
        	$('#bu').click(
        		function (){
        			var p=$("#old").val();
        			var p1 = $("#dypassword").val();
        			var p2 = $("#cfpassword").val();
        			if(p1.trim()==""||p.trim()==""||p2.trim()==""){
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
        				url:'changePassword.do', //发送数据的地址
        				data:{"password1":p,"password2":p1},
        				 dataType: "json",
        				success:function(data){
        					//alert()
        					if(data.success){
        						layer.alert('修改成功,下次登录生效！',{icon:1});
        					}else{
        						layer.alert('原密码错误！',{icon:2});
        					}
        					
        				}}); 
        		}		
        	);
        </script>
</div>