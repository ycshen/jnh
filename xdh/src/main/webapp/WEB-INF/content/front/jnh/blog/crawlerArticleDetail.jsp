<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../common/head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>${crawlerArticle.title}-小青年 </title>
<meta name="keywords" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<meta name="description" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<%@ include file="plugins/bootstrap.jsp"%>
<style type="text/css">
.a_title{
	width: 100%;
	height: auto;
	text-align: center;
}
.a_con1{
	width: 100%;
	height: auto;
	font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	margin-top: 20px;
	margin-bottom: 20px;
}
.a_con1_left{
	width: 80%;
	float:left;
}

.a_con1_right{
	width: 19%;
	float: right;
}
.a_con1_detail{ 
	width: 100%;
	height: auto;
	text-align: center;
}
.a_con1_bottom{
	width: 100%;
	border: 1px solid #ccc;
	line-height: 36px;
}
.a_con1_ad{
	width: 100%;
	margin-top: 10px;
	margin-bottom: 10px;
	text-align:center;
}
</style>
</head>
<body>
	<%@ include file="plugins/banner.jsp"%>
	<div class="container">		
		<div class="a_con1">
			<div class="a_con1_left">
				<div class="a_title">
					<h2>${crawlerArticle.title}</h2>
				</div>
				<div class="a_con1_detail">
					发布日期：  ${crawlerArticle.crawlerTime} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览： ${crawlerArticle.hits}
				</div>
				<div class="a_con1_ad">
				<%@ include file="plugins/ad728_90.jsp"%>
				</div>
				
				<div class="a_con1">
					${crawlerArticle.content}
				</div>
				<div class="a_con1_bottom">
					<c:if test="${preCrawlerArticle != null}">
					上一篇:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${ctx}/blog/${preCrawlerArticle.id}">${preCrawlerArticle.title}</a>
					</c:if>
					<br/>
					<c:if test="${nextCrawlerArticle != null}">
					下一篇:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${ctx}/blog/${nextCrawlerArticle.id}">${nextCrawlerArticle.title}</a>
					</c:if>
					
					
					
				</div>
				
				
			</div>
			<div class="a_con1_right">
				<%@ include file="../wz/plugins/ad200_200.jsp"%>
			</div>
		 	
		</div>
		
	</div>
	<div class="container">
		<%@ include file="plugins/partner.jsp"%>
	</div>
	<%@ include file="plugins/foot.jsp"%>
</body>
</html>