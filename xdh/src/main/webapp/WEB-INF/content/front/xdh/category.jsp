<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="left">
	<div class="left_title">${category.name }</div>
	<div class="leftbox">
		<c:forEach var="ca" items="${category.childList }">
			<c:choose>
				<c:when test="${ca.module eq 'inlink' }">
					<a href="${ctx }/xdh/${ca.url}">${ca.name }</a>
				</c:when>
				<c:when test="${ca.module eq 'article' or  ca.module eq 'picture'}">
					<a href="${ctx }/xdh/list/${ca.id}.html">${ca.name }</a>
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
</div>