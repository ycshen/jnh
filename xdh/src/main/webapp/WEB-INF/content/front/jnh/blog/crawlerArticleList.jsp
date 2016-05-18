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
<title>小青年-我们只关心互联网技术 </title>
<meta name="keywords" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<meta name="description" content="关于我们,网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<%@ include file="plugins/bootstrap.jsp"%>
<style type="text/css">
.a_title{
	margin-top: 20px;
	width: 100%;
	height: auto;
	font: 18px Microsoft Yahei,Verdana,瀹嬩綋,sans-serif;
	font-weight: bold;
}
.a_con1{
	width: 100%;
	height: auto;
	font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	margin-top: 20px;
	margin-bottom: 20px;
	float:left;
}
.a_con1_left{
	width: 80%;
	float:left;
}

.a_con1_right{
	width: 20%;
	min-width: 200px;
	float:left;
}
.a_con1_detail{ 
	width: 100%;
	height: auto;
	font: 12px Microsoft Yahei,Verdana,宋体,sans-serif;
	margin-top: 10px;
	margin-bottom: 10px;
}
.a_con1_bottom{
	width: 100%;
	border: 1px solid #ccc;
	line-height: 36px;
}

.a_content{
	width: 100%;
	height: auto;
	font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	margin-top: 20px;
	margin-bottom: 20px;
    word-break: break-all;
    word-wrap: break-word;
}
</style>
</head>
<body>
	<%@ include file="plugins/banner.jsp"%>
	<div class="container">
		<%@ include file="../wz/plugins/ad1000_100.jsp"%>
	</div>
	<div class="container">		
		<div class="a_con1">
			<div class="a_con1_left">
				<%@ include file="search/searchInput.jsp"%>
			</div>
			<div class="a_con1_left">
				<%@ include file="page/crawlerArticleListPage.jsp"%>
			</div>
			<div class="a_con1_left">
				<c:forEach var="crawlerArticle" items="${page.result }">
					<div class="a_title">
					<a href="${ctx}/blog/${crawlerArticle.id}" target="_blank">${crawlerArticle.title}</a>
					</div>
					<div class="a_con1_detail">
						${crawlerArticle.crawlerTime} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;浏览： ${crawlerArticle.hits}
					</div>
					<div class="a_content">
						&nbsp;&nbsp;&nbsp;&nbsp;${crawlerArticle.describle}
					</div>
				</c:forEach>
				
			</div>
			<div class="a_con1_right">
			<%@ include file="../wz/plugins/ad200_200.jsp"%>
				
			</div>
			<div class="a_con1_left">
				<%@ include file="page/crawlerArticleListPage.jsp"%>
			</div>
		 	
		</div>
		
	</div>
	<div class="container">
		<%@ include file="../wz/plugins/ad1000_100.jsp"%>
	</div>
	<div class="container">
		<%@ include file="plugins/partner.jsp"%>
	</div>
	<%@ include file="plugins/foot.jsp"%>
</body>
</html>