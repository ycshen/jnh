<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../jnh/common/head.jsp"%>
<html>
<head>
<title></title>
 <meta name="decorator" content="cms_xdh" /> 
<link href="${ctx }/assets/css/caseShowDetail.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="caseshow_main">

	<div class="caseshow_banner">
		<div class="caseshow_banner_img">
			<img src="${ctx }/assets/img/caseShow/c_1.png"/>
		</div>
		<div class="caseshow_banner_nav">
		<a href="/xdh/index.html">首页</a>>><a href="${ctx }/xdh/caseshow/caseshow.html?cid=40">案例展示</a>>><a href="${ctx }/xdh/caseshow/${obj.id}.html">${obj.title}</a>
		</div>
	</div>	
	<div class="caseshowdetail_detail">
		<div class="caseshowdetail_detail_title">${obj.title}</div>
		<div class="caseshowdetail_detail_con">
			${obj.content}
		</div>
		<div class="caseshowdetail_detail_keywords">
			标签：${obj.keywords}
		</div>
	</div>
	<%@ include file="recomment.jsp"%>
</div>
<%@ include file="layouts/bTip/bTipAndAddress.jsp"%>
</body>
</html>