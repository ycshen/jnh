<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../jnh/common/head.jsp"%>
<html>
<head>
<title></title>
<meta name="decorator" content="cms_xdh" />
<link href="${ctx }/assets/css/serviceItemsDetail.css" rel="stylesheet" type="text/css"/>


	</head>
<body>
	<div class="sid_main_div">
		<div class="sid_nav">
			<a href="#">首页</a> >> <a href="#">服务项目</a>
		</div>
		<div class="sid_title">
			<img src="${ctx }/assets/img/p_1.png"/>
		</div>
		<div class="sid_banner">
		<c:forEach items="${serviceItemsList}" var="serviceItems">
			<a href="${ctx }/xdh/serviceItem/serviceItemDetail${serviceItems.id}.html"><div class="sid_banner_sub">${serviceItems.serviceItemsName }</div></a>
		</c:forEach>
			
		</div>
		<div class="sid_content_title">${oldServiceItems.serviceItemsName}</div>
		<div class="sid_content">
			<c:forEach items="${itemsList }" var="items">
				<c:choose>
			       <c:when test="${items.serviceItemsType == '文字'}">
			              <div class="sid_content_xz">${items.serviceItemsName }</div>
			       </c:when>
			       <c:otherwise>
			              <div class="sid_content_img">${items.serviceItemsName }</div>
			       </c:otherwise>
			</c:choose>
				
				
			</c:forEach>
		</div>
	</div>									
	
	
</body>
</html>