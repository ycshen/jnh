<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="../common/head.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>网站建设报价-小青年网络科技有限公司 </title>
<meta name="keywords" content="网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<meta name="description" content="网站建设报价，小青年,小青年网络科技，小青年网络科技有限公司,网站建设,400电话,域名注册,网站部署,SEO优化,微信公众平台" />
<%@ include file="plugins/bootstrap.jsp"%>
<style type="text/css">
	.table tr td{
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	}
	.font14{
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
		color: #3ec0c0;
		font-weight: bold;
	}
	.font15{
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
		color: red;
	}
</style>
</head>
<body>
	<%@ include file="plugins/banner.jsp"%>
	<div class="container">		
	<img src="${pageContext.request.contextPath}/assets/img/wz/modelPrice.jpg" class="img-responsive"/>	
	
		<div class="table-responsive">
			<table class="table">
				<tr>
					<td>报&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</td>
					<td><span class="font14">1200元（终身,不包括服务器+域名）</span></td>
				</tr>
				<tr>
					<td>续费项目：</td>
					<td>服务器（700元/年） + 域名（60元/年）+ 维护费用<span class="font15">(可选)</span>（500元/年）</td>
				</tr>
				<tr>
					<td>制作周期：</td>
					<td>3天左右</td>
				</tr>
				<tr>
					<td>兼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容：</td>
					<td>360浏览器、谷歌浏览器、IE8以上浏览器、搜狗浏览器、firefox浏览等各大主流浏览器</td>
				</tr>
				<tr>
					<td>使用技术：</td>
					<td>Java+JavaScript+jsp+mysql+css</td>
				</tr>
				<tr>
					<td>基本模块:</td>
					<td>
						首页 、 关于我们 新闻资讯、产品介绍（服务领域、主营业务），成功案例（案例赏析)<br/>
						在线留言，人力资源（人才招聘），招商加盟，客户服务（服务流程）联系我们
					</td>
				</tr>
				<tr class="danger">
					<td>第一年安装总价：</td>
					<td><span class="font14">1200(网站)+700（服务器）+60（域名）=1960（元）</span></td>
				</tr>
				<tr>
					<td>报价单下载：</td>
					<td><a href="${pageContext.request.contextPath}/wz/download"><button type="button" class="btn btn-success">点击下载报价清单</button></a>(小青年网站报价清单.rar)</td>
				</tr
				<tr>
					<td>合作流程：</td>
					<td>
						签订合同----支付首款--模板选择--栏目维护---内测--网站验收--支付尾款--上线运行--提交百度收录。
					</td>
				</tr>
				<tr>
					<td>付款方式：</td>
					<td>首付：50%         尾款：50%</td>
				</tr>
			</table>
		</div>
		
		
	</div>
	<div class="container">
		<%@ include file="common/design.jsp"%>
		<%@ include file="common/pageStyle.jsp"%>
		<%@ include file="plugins/partner.jsp"%>
	</div>
	
	<%@ include file="plugins/qq.jsp"%>
	<%@ include file="plugins/foot.jsp"%>
</body>
</html>