<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../common/head.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>联系我们-小青年网络科技有限公司 </title>
<meta name="keywords" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<meta name="description" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<%@ include file="plugins/bootstrap.jsp"%>
<style type="text/css">
.a_title{
	width: 100%;
	height: auto;
}
.a_con1{
	width: 50%;
	float:left;
	height: auto;
	font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	line-height: 50px;
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<%@ include file="plugins/banner.jsp"%>
	<div class="container">	
		<div class="a_title">
			<img src="${ctx}/assets/img/wz/link.png"  class="img-responsive"/>
		</div>	
		<div class="a_con1">
				
		 		小青年网络科技有限公司<br/>
		 		公司地址：四川省成都市新都区大丰街道铁石板街68号<br/>
		 		官方网站：www.52jnh.com/wz<br/>
		 		24小时热线：13608236879<br/>
		 		电子邮箱：449614531<br/>
		 		微信：13608236879<br/>
		 		QQ：449614531<br/>
		 		公交：15路、24路、129路、168路、316路、530路、663路、690路大丰公交站下
		
		</div>
		<div class="a_con">
		公司地图：<br/>
		<iframe class="ueditor_baidumap" src="${ctx}/assets/comp/ueditor/dialogs/map/show.html#center=104.058578,30.76997&zoom=18&width=530&height=340&markers=104.059054,30.769683&markerStyles=l,A" frameborder="0" width="534" height="344"></iframe>
		</div>

	</div>
	<div class="container">
		<%@ include file="plugins/partner.jsp"%>
	</div>
	<%@ include file="plugins/qq.jsp"%>
	<%@ include file="plugins/foot.jsp"%>
	
</body>
</html>