<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../jnh/common/head.jsp"%>
<html>
<head>
<title></title>
 <meta name="decorator" content="cms_xdh" /> 
<link href="${ctx }/assets/css/shootMenu.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="shoot_main_div">
		<div class="shoot_nav">
			<a href="#">首页</a> >> <a href="#">套餐报价</a> >> <a href="#">婚纱摄影套餐报价</a>
		</div>
		<div class="shoot_title">
			<a href="${ctx }/xdh/weddingPrice/2.html"><img src="${ctx }/assets/img/ws_011.png"/></a>
			<a href="${ctx }/xdh/shootPrice/2.html" class="shoot_title_a"><img src="${ctx }/assets/img/ws_022.png"/></a>
		</div>
		<div class="shoot_banner">
			<c:forEach items="${menuPriceList }" var="menuPrice">
				<a href="${ctx }/xdh/shootPrice/${menuPrice.id}.html"><div class="shoot_banner_sub">${menuPrice.menuName }</div></a>
			</c:forEach>
		</div>
		<div class="shoot_content">
			<div class="shoot_content_title">
				${menuPrice.menuName}
			</div>
			<div class="shoot_content_banner">
				<div class="shoot_content_price">价格：${menuPrice.menuPrice} 元</div>
				<div class="shoot_content_banner_con">${menuPrice.menuBanner}</div>
			</div>
			<div class="shoot_content_con">
				<c:forEach items="${caseList}" var="casez">
					<div class="shoot_content_model">
						<div class="shoot_content_model_title">${casez.caseType}</div>
						<div class="shoot_content_model_con">
							${casez.content}
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>