<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../jnh/common/head.jsp"%>
<html>
<head>
<title></title>
<meta name="decorator" content="cms_xdh" />
<style type="text/css">
	.page a{
		clear: none !important;
		float: none !important;
		width: none !important;
		border-bottom-width: none !important;
		border-bottom-style: none !important;
		border-bottom-color: none !important;
		line-height: none !important;
		height: none !important;
	}
	.page a:HOVER{
		color: red;
	}
	.sid_nav{ width: 100%;}
	.neicont{width: 998px;
		border: 1px solid #3ec0c0;
		margin-top: 20px;
		border-radius: 5px;
	}
	.neicont ul li{
		list-style: none;
		float: left;
		width: 15%;
		line-height: 64px;
		margin-top: 20px;
		font: 18px Microsoft Yahei,Verdana,宋体,sans-serif !important;
	}
	
	.neicont ul li a{
		color: #444;
		line-height: 64px;
		font: 16px Microsoft Yahei,Verdana,宋体,sans-serif !important;
	}
</style>
</head>
<body>
<div style="width:100%;height:auto;background-color:#FFF;float:left;">	
	<div style="width:1000px;margin-left:auto;margin-right:auto;height:auto;">
		<div class="sid_nav">
			<a href="http://www.52jnh.com">首页</a> >> <a href="${ctx}/xdh/ourLink.html">婚礼导航</a>
		</div>
		<div class="neicont">
			<ul>
				<c:forEach items="${linkList}" var="link">
					<li><a href="${link.href}" target="_blank">${link.title}</a></li> 
				</c:forEach>
				
			</ul>
		</div>
		<%@ include file="ad/960_90_text_baidu_ad.jsp"%>
	</div>
</div>
	
	<%@ include file="layouts/bTip/bTipAndAddress.jsp"%>
</body>
</html>