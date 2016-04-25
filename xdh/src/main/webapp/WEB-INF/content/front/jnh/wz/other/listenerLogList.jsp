<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../../common/head.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>网站监控-小青年网络科技有限公司 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="keywords" content="网站监控，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<meta name="description" content="网站监控，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<%@ include file="../plugins/bootstrap.jsp"%>
<style type="text/css">

	.a_1{
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
		color: #444;
	}
</style>
</head>
<body>
	<%@ include file="../plugins/banner.jsp"%>
	<div class="container" style="margin: 30px auto 20px auto;font: 12px Microsoft Yahei,Verdana,宋体,sans-serif;">	
	今日访问：${todayNum}&nbsp;&nbsp;&nbsp; 昨日访问：${yestodayNum}
	</div>
	<div class="container">	
		<table class="table table-bordered">
			<tr>
				<td>序号</td>
				<td>域名</td>
				<td>网站名称</td>
				<td>访问IP</td>
				<td>访问者所属国家</td>
				<td>访问者所属省份</td>
				<td>访问者所属城市</td>
				<td>访问时间</td>
				<td>备注</td>
			</tr>
			<c:forEach var="lisLog" items="${page.result}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${lisLog.domain}</td>
					<td>${lisLog.siteName}</td>
					<td>${lisLog.ip}</td>
					<td>${lisLog.country}</td>
					<td>${lisLog.province}</td>
					<td>${lisLog.city}</td>
					<td>${lisLog.accessTime}</td>
					<td>${lisLog.remark}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6">共 <b>${page.totalItems }</b> 条&nbsp;&nbsp;
				<a href="${ctx }/wz/logList">首页</a>
				<a href="${ctx }/wz/logList?p=${pr}">上一页</a>
				<a href="${ctx }/wz/logList?p=${pn}">下一页 </a>
				<a href="${ctx }/wz/logList?p=${pp}">尾页 </a>
				 &nbsp;页次：<strong><font
						color="red">${p }</font>/${pp}</strong>页 &nbsp;<b>50</b>条/页
				</td>
			</tr>
		</table>
	</div><%@ include file="../plugins/ad.jsp"%>
	<div class="container">
		<%@ include file="../plugins/partner.jsp"%>
	</div>
	<%@ include file="../plugins/qq.jsp"%>
	
</body>
</html>