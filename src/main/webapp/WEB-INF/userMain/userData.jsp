<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script type="text/javascript" src="js/laydate/laydate.js"></script>
<div class="center_right" id="MemberCenterCtrl" style="display: block;">
	<h3 class="cr_h3 cr_h3_gray">个人资料</h3>
	<form method="post" id="fro" class="person-info" name="form" action="userDataUpdate.do">		
		<ul style="margin-left:40px;">
			<li><span>真实姓名:</span><input id="truename" name="truename" value="${userBean.truename }" type="text"> <span id="s10"></span></li>
			<li><span>性别：</span><select id="sex" name="sex"><option <c:if test="${userBean.sex=='男' }">selected = "selected"</c:if>>男</option><option <c:if test="${userBean.sex=='女' }">selected = "selected"</c:if>>女</option></select></li>
			<li><span>账号:</span>${userBean.username }</li>
			<li><span>生日：</span><input type="text" name="birthday" id="birthday" value="<fmt:formatDate value="${userBean.birthday }" pattern="yyyy-MM-dd"/>" placeholder="请输入日期" class="laydate-icon" onclick="laydate()"></li>
			<li><span>身份证号:</span><input id="statusID" name="statusid" value="${userBean.statusid }" type="text"><span id="s11"></span></li>
			<li><span>手机号:</span><input id="phone" name="phone" value="${userBean.phone }" type="text" ><span id="s12"></span></li>
			<li><span>邮箱:</span><input  id="email" name="email" value="${userBean.email }" type="text"> <span id="s13"></span></li>
			<li><input name="id" value="${userBean.id }" type="hidden"> </li><br>
			<li><input class="btn-xiugai orange" value="修改" type="button" id="xgmsg" > </li><br>
		</ul> 
	</form>
	<script type="text/javascript">
		$(function(){
			$("#truename").blur(function(){
				var truename=$("#truename").val();
				if(truename.trim()==""){
					$("#truename").attr("placeholder","账号不能为空");
				}else{
					$("#truename").attr();
				}
			});
			$("#statusID").blur(function(){
				var statusID=$("#statusID").val();
				//console.log($("#statusID").val());
				var IDreg=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|x)$/;
				if(IDreg.test(statusID)){
				}else{
					//alert(1);
					$("#statusID").val("");
					$("#statusID").attr("placeholder","身份证格式不正确");
				}
			});
			$("#phone").blur(function(){
				var reg=/^1[3|4|5|7|8]\d{9}$/;
				var phone=$("#phone").val();
				//alert(reg.test(phone));
				if(reg.test(phone)){
				}else{
					$("#phone").val("");
					$("#phone").attr("placeholder","电话号码格式不正确");
				}
			});
			$("#email").blur(function(){
				var reg1=/^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/;
				var email=$("#email").val();
				//alert(reg.test(phone));
				if(reg1.test(email)){
				}else{
					$("#email").val("");
					$("#email").attr("placeholder","邮箱格式不正确");
				}
			});
			$("#xgmsg").click(function(){
				var truename=$("#truename").val();
				if(truename.trim()==""){
					$("#truename").attr("placeholder","账号不能为空");
					return;
				}else{
					$("#truename").attr("placeholder","");
				}
				var statusID=$("#statusID").val();
				if(statusID.trim()==""){
					$("#statusID").attr("placeholder","身份证号不能为空");
					return;
				}else{
					$("#statusID").attr("placeholder","");
				}
				console.log("sdfsdf");
				var IDreg=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|x)$/;
				if(IDreg.test(statusID)){
				}else{
					$("#statusID").val("");
					$("#statusID").attr("placeholder","身份证格式不正确");
				}
				var phone=$("#phone").val();
				if(phone.trim()==""){
					$("#phone").attr("placeholder","电话不能为空");
					return;
				}else{
					$("#phone").attr("placeholder","");
				}
				var reg=/^1[3|4|5|7|8]\d{9}$/;
				if(reg.test(phone)){
				}else{
					$("#phone").val("");
					$("#phone").attr("placeholder","电话号码格式不正确");
					return;
				}
				var reg1=/^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/;
				var email=$("#email").val();
				if(email.trim()==""){
					$("#email").attr("placeholder","邮箱不能为空");
					return;
				}else{
					$("#email").attr("placeholder","");
				}
				//alert(reg.test(phone));
				if(reg1.test(email)){
				}else{
					$("#email").val("");
					$("#email").attr("placeholder","邮箱格式不正确");
					return
				}
				var user ={"truename":$("#truename").val(),"statusid":$("#statusID").val(),"phone":$("#phone").val(),"email":$("#email").val(),"id":$("#userid").val(),"birthday":$("#birthday").val(),"sex":$("#sex option:selected").text()}
				$.ajax({
					type:'post', //传送的方式,get/post
					url:'userDataUpdate.do', //发送数据的地址
					data:{"user":JSON.stringify(user)},
					 dataType: "json",
					success:function(data){
						if(data.success){
							layer.alert('修改成功',{icon:1,shift:4});
						}else{
							layer.alert('修改失败',{icon:2,shift:4});
						}
						
					}});
			});
		});
	</script>
	<style>
		.layui-layer-btn .layui-layer-btn0{
			border-color: #f60;
		    background-color: #f40;
		    color: #fff;
		}
	</style>
</div>