<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../common/head.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>赞助我们-小青年网络科技有限公司 </title>
<meta name="keywords" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<meta name="description" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<%@ include file="plugins/bootstrap.jsp"%>
<style type="text/css">
.a_title{
	width: 100%;
	height: auto;
}
.a_con{
	width: 100%;
	height: auto;
	font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	line-height: 36px;
	margin-top: 20px;
	margin-bottom: 20px;
}
.navbar{
	border: 0px;
}
.h_row{
	width: 100%;
	height: auto;
}
.h_col1{
	width: 60%;
	height: 100%;
	float: left;
	font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
}
.h_col2{
	width: 40%;
	height: 100%;
	float: left;
	font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	text-align: right;
}
</style>
</head>
<body>
	<div style="width: 100%; height: auto;background-color: #222;">
		<div class="container">
			<nav class="navbar navbar-inverse" role="navigation">
			   <div class="navbar-header">
				   <a href="http://www.52jnh.com/wz"<a class="navbar-brand">
				   	<img src="http://www.52jnh.com/assets/img/wz/xqn.jpg"  class="img-responsive"/>
				   </a>
			   </div>
			   <div class="navbar-header">
				   <a href="http://www.52jnh.com"<a class="navbar-brand">
				   	<img src="${pageContext.request.contextPath}/assets/img/wz/52jnh.png"  class="img-responsive"/>
				   </a>
			   </div>
			</nav>
			
		</div>
	</div>
	<div class="container" style="margin-top: 30px;">	
		<form action="https://shenghuo.alipay.com/send/payment/fill.htm" method="POST" target="_blank" accept-charset="GBK">
		    <input name="optEmail" type="hidden" value="13608236879" />
		    <input name="payAmount" type="hidden" value="10" />
		    <input id="title" name="title" type="hidden" value="一杯咖啡钱" />
		    <input name="memo" type="hidden" value="打赏一杯咖啡给你缓解一下疲劳吧~~~" /> 
		    <input type="submit" value="赞助我们" class="btn btn-default  btn-lg" style="font: 16px Microsoft Yahei,Verdana,宋体,sans-serif;"/>
		</form>
	</div>
	
	<div class="container" style="margin-top: 30px;">
			<div class="h_row">
				<div class="h_col1">1.账号为180****8045的朋友打赏了一杯咖啡~~~</div>
				<div class="h_col2">2015-11-24</div>
			</div>
			<div class="h_row">
				<div class="h_col1">2.账号为4496****1@qq.com的朋友打赏了一杯咖啡~~~</div>
				<div class="h_col2">2015-11-11</div>
			</div>
			<div class="h_row">
				<div class="h_col1">3.账号为zhang****的朋友打赏了一杯咖啡~~~</div>
				<div class="h_col2">2015-09-26</div>
			</div>
	</div>
	<%@ include file="plugins/foot.jsp"%>
</body>
</html>