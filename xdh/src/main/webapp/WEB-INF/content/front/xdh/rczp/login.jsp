<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
function login(){
	var userName = $("#txtuserName").val();
	if(userName == ""){
		layer.alert("请输入登陆用户名", 8);
		return;
	}
	
	var password = $("#txtpassword").val();
	if(password == ""){
		layer.alert("请输入登陆密码", 8);
		return;
	}
	
	$.ajax({
		type: "get",
		dataType: "text",
		url: "${ctx}/denglu?userName=" + userName +"&password=" + password,
		async: false, 
		success: function(v){
			if(v == "0"){
				layer.alert("用户名或者密码错误", 8);
			}else if(v == "1"){
				window.location.href = "${ctx}/cms/gr/list";
			}
		}
	}); 
}


	
</script>
<div style="height:50px;width:410px;float:left;padding-top:20px;">
	<div style="float:left;width:100px;font-size:14px;text-align:right;padding-right:10px;
		padding-top:10px;color:#999;">
	登陆用户
	</div>
	<div style="float:left;width:300px;">
		<input type="text" id="txtuserName" name="userName" style="width: 250px;height: 30px;border:1px solid #ccc;" placeholder="请输入登陆用户名"/>
	</div>
</div>
<div style="height:50px;width:410px;float:left;">
	<div style="float:left;width:100px;font-size:14px;text-align:right;padding-right:10px;
		padding-top:10px;color:#999;">
	登陆密码
	</div>
	<div style="float:left;width:300px;">
		<input type="password" id="txtpassword" name="password" style="width: 250px;height: 30px;border:1px solid #ccc;"  placeholder="请输入登陆密码"/>
	</div>
</div>
<div style="height:50px;width:410px;float:left;">
	<div style="width:200px;height:50px;float:left;text-align:center;">
		<input type="button" value="登陆" class="btn2" onclick="login();"/>
	</div>
	<div style="width:200px;height:50px;float:left;text-align:center;">
		<input type="button" value="注册" class="btn1" onclick="zc();"/>
	</div>
</div>