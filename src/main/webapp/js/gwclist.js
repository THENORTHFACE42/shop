$(function(){
	showTotal();
	$("#selectAll").click(function(){
		var bool=document.getElementById("selectAll").checked;
		var list=$(".row-selected");
		if(bool){
			for(var i=0;i<list.length;i++){
				list[i].checked=true;
			}
		}else{
			for(var i=0;i<list.length;i++){
				list[i].checked=false;
			}
		}
		showTotal();
		setJieSuan(bool);
	});
	$(":checkbox[name=checkboxBtn]").click(function () {
        var all = $(":checkbox[name=checkboxBtn]").length;//所有条目的个数
        //console.log("一共"+all);
        var select = $(":checkbox[name=checkboxBtn]:checked").length;//获取所有被选择条目的个数
        //console.log("选中"+select);
        if (all == select) {//全都选中了
        	document.getElementById("selectAll").checked=true;//勾选全选复选框
            setJieSuan(true);//让结算按钮有效
        } else if (select == 0) {//谁都没有选中
        	document.getElementById("selectAll").checked=false;//取消全选
            setJieSuan(false);//让结算失效
        } else {
        	document.getElementById("selectAll").checked=false;//取消全选
            setJieSuan(true);//让结算有效				
        }
        showTotal();//重新计算总计
    });
	$(".jia").click(function(){
		var id = $(this).attr("gid");
        // 获取输入框中的数量
		var num=parseInt($("#" + id + "num").val())+1;
		var shoplist={"id": id,"sum":num};
		$.ajax({
			type: 'post', //传送的方式,get/post
            url: 'updategwNum.do', //发送数据的地址
            data: {"shoplist":JSON.stringify(shoplist)},
            dataType: "json",
            success:function(result){
            	if(result.success=="true"){
            		location.reload(true);
            		showTotal();
            	}else{
            		alert("数量增加失败")
            	}
            }
		});
	});
	$(".jian").click(function(){
		var id = $(this).attr("gid");
        // 获取输入框中的数量
		var num=parseInt($("#" + id + "num").val())-1;
		if(num<1){
			return;
		}
		var shoplist={"id": id,"sum":num};
		$.ajax({
			type: 'post', //传送的方式,get/post
            url: 'updategwNum.do', //发送数据的地址
            data: {"shoplist":JSON.stringify(shoplist)},
            dataType: "json",
            success:function(result){
            	if(result.success=="true"){
            		location.reload(true);
            		showTotal();
            	}else{
            		alert("数量减少失败")
            	}
            }
		});
	});
	/*$("#jiesuan").click(function(){
	var select = $(":checkbox[name=checkboxBtn]:checked").length;
	console.log(select);
	if(select==0){
		return;
	}
   	 var gwclist=[];
   	 $(":checkbox[name=checkboxBtn]:checked").each(function () {
   	        //2. 获取复选框的值，即其他元素的前缀
   	        var id = $(this).val();
   	        //3. 再通过前缀找到小计元素，获取其文本
   	        var text = $("#" + id + "Subtotal").text();
   	        //找到数量
   	        var num = $("#" + id + "num").val();
   	        //4. 累加计算
   	        var goodsmsg={"id":id,"price":text,"num":num};
   	        gwclist.push(goodsmsg);
   	    });
   	 alert(1);
   	$.ajax({
		type: 'post', //传送的方式,get/post
        url: 'buygoodsbygwc.do', //发送数据的地址
        data: {"gwclist":JSON.stringify(gwclist)},//把数组用json对象转成字符串
        dataType: "json",
        success:function(result){
        	if(result.success=="true"){
        		location.href="buy.do"
        	}else{
        		alert("购买失败")
        	}
        }
	});
   });*/
});
function showTotal() {
    var total = 0;
    /*
     1. 获取所有的被勾选的条目复选框！循环遍历之
     */
    $(":checkbox[name=checkboxBtn]:checked").each(function () {
        //2. 获取复选框的值，即其他元素的前缀
        var id = $(this).val();
        //3. 再通过前缀找到小计元素，获取其文本
        var text = $("#" + id + "Subtotal").text();
        //找到数量
        var num = $("#" + id + "num").val();
        //4. 累加计算
        total += text * num;
    });
    $("#total").text(round(total, 2));
}
function round(num, dec) {
    var strNum = num + '';/*把要转换的小数转换成字符串*/
    var index = strNum.indexOf("."); /*获取小数点的位置*/
    if (index < 0) {
        return num;/*如果没有小数点，那么无需四舍五入，返回这个整数*/
    }
    var n = strNum.length - index - 1;/*获取当前浮点数，小数点后的位数*/
    if (dec < n) {
        /*把小数点向后移动要保留的位数，把需要保留的小数部分变成整数部分，只留下不需要保留的部分为小数*/
        var e = Math.pow(10, dec);
        num = num * e;
        /*进行四舍五入，只保留整数部分*/
        num = Math.round(num);
        /*再把原来小数部分还原为小数*/
        return num / e;
    } else {
        return num;/*如果当前小数点后的位数等于或小于要保留的位数，那么无需处理，直接返回*/
    }
}
function setJieSuan(bool) {
    if (bool) {
        $("#jiesuan").removeClass("btn_submit_pay_kill").addClass("btn_submit_pay");
        
    } else {
        $("#jiesuan").removeClass("btn_submit_pay").addClass("btn_submit_pay_kill");
    }

}
function jiesuan(){
	var select = $(":checkbox[name=checkboxBtn]:checked").length;
	console.log(select);
	if(select==0){
		return;
	}
   	 var gwclist=[];
   	 $(":checkbox[name=checkboxBtn]:checked").each(function () {
   	        //2. 获取复选框的值，即其他元素的前缀
   	        var id = $(this).val();
   	        //3. 再通过前缀找到小计元素，获取其文本
   	        var text = $("#" + id + "Subtotal").text();
   	        //找到数量
   	        var num = $("#" + id + "num").val();
   	        //4. 累加计算
   	        var goodsmsg={"id":id,"price":text,"num":num};
   	        gwclist.push(goodsmsg);
   	    });
   	var gwclist=JSON.stringify(gwclist)
   	location.href="buygoodsbygwc.do?gwclist="+gwclist
}