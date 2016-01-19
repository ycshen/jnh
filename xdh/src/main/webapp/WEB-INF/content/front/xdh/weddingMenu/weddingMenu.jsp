<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title></title>
 <meta name="decorator" content="cms_xdh" /> 
<link href="${ctx }/assets/css/weddingMenu.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="wm_main_div">
		<div class="wm_nav">
			<a href="http://www.52jnh.com">首页</a> >> <a href="${ctx }/xdh/weddingPrice/2.html">套餐报价</a> >> <a href="${ctx }/xdh/weddingPrice/${menuPrice.id}.html">婚庆套餐报价</a>
		</div>
		<div class="wm_title">
			<a href="${ctx}/xdh/weddingPrice/2.html" class="wm_title_a"><img src="${ctx }/assets/img/ws_01.png"/></a><a href="${ctx }/xdh/shootPrice/2.html"><img src="${ctx }/assets/img/ws_02.png"/></a>
		</div>
		<div class="wm_banner">
			<c:forEach items="${menuPriceList }" var="menuPrice">
				<a href="${ctx }/xdh/weddingPrice/${menuPrice.id}.html"><div class="wm_banner_sub">${menuPrice.menuName }</div></a>
			</c:forEach>
			<div class="wm_banner_sub"><a href="${ctx }/xdh/weddingPrice/jnhMenu.html">定制婚庆报价详细清单</a></div>
		</div>
		<div class="wm_content">
			<div class="wm_content_title">
				${menuPrice.menuName}
			</div>
			<div class="wm_content_banner">
				<div class="wm_content_price">价格：${menuPrice.menuPrice} 元</div>
				<div class="wm_content_banner_con">${menuPrice.menuBanner}</div>
			</div>
			<div class="wm_content_module">
				<c:forEach items="${caseList}" var="cases">
					<div class="wm_content_module_sub">
						<div class="wm_content_module_sub_left">
							${cases.caseType}
						</div>
						<div class="wm_content_module_sub_right">
							${cases.content}
						</div>
					</div>
				</c:forEach>
				
			</div>
		</div>
	</div>

</body>
</html>