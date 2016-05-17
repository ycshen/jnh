<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../../common/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>${title}</title>
<meta name="keywords" content="小青年网络科技有限公司" />
<meta name="description" content="小青年网络科技有限公司" />


<%@ include file="../plugins/bootstrap.jsp"%>
<script src="${ctx }/assets/js/layer/layer.js" type="text/javascript"></script>
<style type="text/css">
	.main_div{
		width: 100%;
		height: auto;
		max-width: 600px;
	}
	.main_div_tou{
		
	}
	.main_div_tou_img{
		
	}
	.main_div_tou_time{
	}
	.main_div_tip{
		width: 100%;
	}
	
	.main_div_tip_wz{
		width: 100%;
		line-height: 24px;
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
		margin: 10px 0px 10px 0px;
	}
	.main_div_tip_btn{
		width: 100%;
		text-align: center;
		margin: 10px 0px 10px 0px;
	} 
	.main_div_tip_list{
		width: 100%;
	}
	.main_div_tip_list table tr td{
		text-align: center;
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	}
	.main_div_good_detail{
		width: 100%;
	} 
	.main_div_good_detail_title{
		width: 100%;
		text-align: center;
		margin: 10px 0px 10px 0px;
		color: #fff;
		background-color: #d9534f ;
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
		height: 24px;
		vertical-align: middle;
		
	}
	.main_div_good_detail_con{
	
	}  
	.main_div_form {
		width: 100%;
		margin: 50px 0px 10px 0px;
		text-align: center;
		
	} 
</style>
<script type="text/javascript">
	function back(){
		window.location.href = "${ctx}/wz/kanjia";
	}

	function register(){
		var flag = true;
		var name = $("#txtName").val();
		if(name == null || name == ""){
			layer.alert('请输入用户名!', {
			    icon: 2,
			    skin: 'layer-ext-moon'
			});
			flag = false;
			return flag;
		}

		if(name.length < 2){
			layer.alert('用户名至少由2个字符组成!', {
			    icon: 2,
			    skin: 'layer-ext-moon'
			});
			flag = false;
			return flag;
		}

		var mobile = $("#txtPhone").val();
		if(mobile == null || mobile == ""){
			layer.alert('请输入电话号码!', {
			    icon: 2,
			    skin: 'layer-ext-moon'
			});
			flag = false;
			return flag;
		}

		if(mobile.length != 11){
			layer.alert('请输入正确的电话号码!', {
			    icon: 2,
			    skin: 'layer-ext-moon'
			});
			flag = false;
			return flag;
		}

		if(flag){
			var domainForm = window.document.getElementById("domainForm");//获取domainForm对象
			domainForm.action ="${ctx}/wz/register";
	        domainForm.submit();
		}
		
	}
</script>
</head>
<body>
	<div class="main_div">
		<div class="main_div_form">
		<form  method="post" id="domainForm">
			<input name="inviteId" value="${inviteId}" type="hidden"/>
		  <div class="form-group">
		    <input type="text" class="form-control" id="txtName" placeholder="请输入用户名" name="name">
		  </div>
		  <div class="form-group">
		    <input type="text" class="form-control" id="txtPhone" placeholder="请输入手机号" name="mobile" onkeyup="this.value=this.value.replace(/\D/g,'')" maxlength="11">
		  </div>
		  
		  <button type="botton" class="btn btn-danger" onclick="return register();">报名参与</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <button onclick="back();" type="button" class="btn btn-success">返回</button>
		</form>
		</div>
		<div class="main_div_good_detail">
				<div class="main_div_good_detail_title">
					活动规则
				</div>
				<div class="main_div_good_detail_con">
					${cpaArticle.content }
				</div>
			</div>
	</div>
</body>
</html>