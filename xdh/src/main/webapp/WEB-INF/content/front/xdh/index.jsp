<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../jnh/common/head.jsp"%>
<html>
<head>
<title>嘉年华婚礼创意馆官方网站</title>
<meta name="decorator" content="cms_xdh"/>
<link href="${ctx}/assets/xdh/css/cms.css" rel="stylesheet" type="text/css"></link>
<link href="${ctx}/assets/css/hsfg.css" rel="stylesheet" type="text/css"/>
<script src="${ctx}/assets/js/index.js" type="text/javascript"></script>
</head>
<body>
	<div style="width:100%;height:auto;">
		<%@ include file="layouts/scroll.jsp"%>
		<%@ include file="layouts/bTip/bTip.jsp"%>
		<%@ include file="serviceItem/serviceItems.jsp"%>
		<%@ include file="layouts/index/weddingshoot.jsp"%>
	</div>
	
	<div style="width:100%;background-color:#3ec0c0;">
		<div style="width:1000px;margin-left:auto;margin-right:auto;">
			<div style="width:100%;" id="index_news_1">
			<%@ include file="layouts/index/yj.jsp"%>
			</div>
			<div style="width:100%;display:none;" id="index_news_2">
			<%@ include file="layouts/index/hq.jsp"%>
			</div>
			<div style="width:100%;display:none;" id="index_news_3">
			<%@ include file="layouts/index/cz.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>