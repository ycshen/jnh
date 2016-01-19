<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<title>嘉年华婚礼创意馆|嘉年华婚礼|成都嘉年华婚礼|嘉年华婚纱摄影|嘉年华婚礼策划|嘉年华宝宝宴|嘉年华造型设计|嘉年华商业演出|嘉年华礼服租赁|嘉年华花艺造型|嘉年华寿宴</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link href="${ctx }/assets/xdh/favicon.ico" rel="shortcut icon"/>
<!-- css -->

<link href="${ctx }/assets/xdh/common/css.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/zc.css" rel="stylesheet" type="text/css" />
<script src="${ctx }/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx }/assets/js/zc.js" type="text/javascript"></script>
<script type="text/javascript">
function submit(){
	var loginId = $("#loginId").val();
	if(loginId == "" || loginId.length < 6 || loginId.length > 12){
		alert("用户名是由6-12数字或者字母组成");
		return;
	}
	
	var passwd = $("#passwd").val();
	if(passwd == "" || passwd.length < 6 || passwd.length  > 12){
		alert("密码的长度是6到12位");
		return;
	}
	
	var pass = $("#pass").val();
	if(pass != passwd){
		alert("两次输入的密码不一致");
		return; 
	}
	
	/* var remark = $("#remark").val();
	if(remark == "" || remark.length > 50){
		alert("必须输入正确的公司名称,长度小于50个字符");
		return;
	} */
	var address = $("#address").val();
	if(address == "" || address.length > 200){
		alert("所在城市不能为空,（eg：成都、贵州、北京）");
		return;
	}
	
	var email = $("#email").val();
	if(email.length > 50 || email == ""){
		alert("请输入联系人");
		return;
	}
	
	var mobilePhone = $("#mobilePhone").val();
	if(mobilePhone == "" || mobilePhone.length > 20){
		alert("请输入联系电话，联系电话必须是数字");
		return;
	}
	
	var phone = $("#phone").val();
	if(phone == "" || phone.length != 11){
		alert("手机号码是11位数字");
		return; 
	}
	
	var qq = $("#qq").val();
	if(qq == "" || qq.length > 20){
		alert("请输入正确的qq");
		return;
	} 
	
	var obj = new Object();
	obj.loginId = loginId;
	obj.passwd = passwd;
	obj.remark = "普通注册用户";
	obj.address = address;
	obj.email = email;
	obj.mobilePhone = mobilePhone;
	obj.phone = phone;
	obj.qq = qq; 
	
	var jsonData = JSON.stringify(obj);
	$.ajax({
		type: "post",
		contentType: "application/json",
		data: jsonData,
		url: "${ctx}/cms/zcuser/addUser",
		success: function(v){
			if(v == "0"){
				alert("已经存在相同的用户，请重新注册用户");
			}else if(v == "1"){
				alert("尊敬的西都汇会员，恭喜你注册成功,赶快去登录吧!");
				window.location.href = "rc.html";
			}else {
				alert("系统暂时繁忙，请联系客服028-68168188");
				//window.location.href = "rc.html";
			}
		}
	});
}
</script>
</head>
<body>
	
	<div style="width:100%;height:80px;background-color:#D50168;">
		<%@include file="nav.jsp" %>
	</div>
	<div style="width:1000px;margin-left:auto;margin-right:auto;margin-top:10px;color:#444;font-size:14px;">
		<img src="${ctx }/assets/img/daohang.jpg" style="width:20px;height:20px;vertical-align: bottom;"/>
		<a href="http://www.52jnh.com" style="color:#444;font-size:14px;">嘉年华</a>
		->
		<a href="http://www.52jnh.com/xdh/rc.html"  style="color:#444;font-size:14px;">嘉年华人才招聘</a>
		->
		会员注册
	</div>
	<div style="width:1000px;min-height:600px;margin-left:auto;margin-right:auto;">
		<div style="width: 1000px;float:left;height:80px;margin-top: 5px;">	
		<div style="width: 500px;float:left;height:60px;padding-top:20px;">
			<img src="${ctx }/assets/xdh/common/rc_zc.jpg"/>
		</div>
		<div style="width: 500px;float:left;height:80px;">
			<input type="button" value="企业会员注册通道" class="btn3" onclick="javascript:location.href='qyzc.html'"/>
		</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				嘉年华会员名：
			</div>
			<div style="float:left;width:300px;">
				<input type="text" style="width: 300px;height:30px; border: 1px solid #ccc;" id="loginId"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*用户名是由6-12数字或者字母组成
			</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				登录密码：
			</div>
			<div style="float:left;width:300px;">
				<input type="password" style="width: 300px;height:30px; border: 1px solid #ccc;" id="passwd"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*密码的长度是6到12位
			</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				确认密码:
			</div>
			<div style="float:left;width:300px;">
				<input type="password" style="width: 300px;height:30px; border: 1px solid #ccc;" id="pass"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*两次输入的密码必须一致
			</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				所在城市：
			</div>
			<div style="float:left;width:300px;">
				<input type="text" style="width: 300px;height:30px; border: 1px solid #ccc;" id="address"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*所在城市不能为空,（eg：成都、贵州、北京）
			</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				联系人：
			</div>
			<div style="float:left;width:300px;">
				<input type="text" style="width: 300px;height:30px; border: 1px solid #ccc;" id="email"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*请输入联系人
			</div>
		</div><div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				联系电话：
			</div>
			<div style="float:left;width:300px;">
				<input type="text" style="width: 300px;height:30px; border: 1px solid #ccc;" id="mobilePhone"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*联系电话必须是数字
			</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				手机：
			</div>
			<div style="float:left;width:300px;">
				<input type="text" maxlength="11" style="width: 300px;height:30px; border: 1px solid #ccc;" id="phone"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*手机号码是11位数字
			</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:120px;text-align:right;" class="title_div">
				QQ：
			</div>
			<div style="float:left;width:300px;">
				<input type="text" style="width: 300px;height:30px; border: 1px solid #ccc;" id="qq"/>
			</div>
			<div style="float:left;width: 400px;" class="tips_div">
				*请输入qq
			</div>
		</div>
		<div style="width: 1000px;float:left;height:40px;">
			<div style="float:left;width:500px;text-align:center;" class="title_div">
				<input type="button" value="立即注册成为嘉年华会员" class="btn3" onclick="submit();"/>
			</div>
			<div style="float:left;width:500px;text-align:left;" class="title_div">
				<input type="button" value="返回人才招聘" class="btn2" onclick="returnZp();"/>
			</div>
		</div>
	</div>
	
	<div style="width:1000px;;margin-left:auto;margin-right:auto;margin-top: 30px;border-top: 3px #484647 solid;">
			<%@include file="layouts/index/flinks.jsp" %>
	</div>
	
	<%@include file="foot.jsp" %>
	
</body>
</html>