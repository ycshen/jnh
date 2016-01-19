<%@ page language="java" contentType="text/html; utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<meta name="keywords" content="嘉年华婚礼创意馆,嘉年华婚礼，嘉摄影,成都婚庆,成都大丰婚庆,成都大丰镇婚庆,成都大丰婚礼,嘉年华,成都大丰较好的婚庆，成都大丰婚庆推荐" />
<meta name="description" content="嘉年华婚礼创意馆,嘉年华婚礼，嘉摄影,成都婚庆,成都大丰婚庆,成都大丰镇婚庆,成都大丰婚礼,嘉年华,成都大丰较好的婚庆，成都大丰婚庆推荐" />

<title>嘉年华婚礼创意馆官网-用户登陆</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<link href="/assets/favicon.ico" rel="shortcut icon"/>
<link href="${ctx}/assets/comp/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/metro.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/bootstrap/css/bootstrap-responsive.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/style_responsive.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/css/login.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/comp/gritter/css/jquery.gritter.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/assets/favicon.ico" rel="shortcut icon"/>
<script src="${ctx}/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx}/assets/comp/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/assets/js/jquery.getparam.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function(){
		var error = $.getParam("error");
		var content = "";
		switch(error)
		{
		case "kickout":
		  content = "账号被其他人登录！"
		  break;
		case "unauthor":
		  content = "拒绝访问！"
		  break;
		default:
		}
		
		var remind = $("#remind").text();
		if(remind == null || "" == remind){
			$("#remind").text(content);
		}
		
		clearTip();
	});
	
	function clearTip(){
		$(".login_login_center_txt").live("focusin", function(){
			$("#remind").text("");
		});
		
	}
</script>
</head>
<body class="login_bg_color">

<div class="login_main">
		<div class="login_main_logo">
			<img src="${ctx}/assets/img/login_logo.png"/>
		</div>
		<div class="login_declare">
			嘉年华婚礼创意馆
		</div>
		<div class="login_tips">
			婚纱摄影、婚庆、宝宝宴、寿宴
		</div>
		<div class="login_login_main">
			<div class="login_login_center">
			<form class="form-horizontal" action="${ctx }/login" method="post">
				<span style="color: red" id="remind">${message_login }</span>
				<input type="text" name="userName" class="login_login_center_txt" placeholder="登录名"/><br/>
				<input type="password" name="password" class="login_login_center_txt" placeholder="密码"/><br/>
				<input type="checkbox" class="login_login_center_chk" name="rememberMe" value="true"/>记住我<br/>
				<input type="submit" class="login_login_center_btn" value="立即登陆嘉年华"/>
			</form>
			</div>
			
		</div>
	</div>
	
</body>
</html>