<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
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
</style>
</head>
<body>
<%@ include file="layouts/bTip/bTipAndAddress.jsp"%>
	<div style="width:100%;height:auto;background-color:#3ec0c0;margin-top:20px;">
		<div style="width:1000px;margin-left:auto;margin-right:auto;height:auto;">
				<div class="cont1">
				<%@ include file="category.jsp"%>
				<div class="right">
					<div class="neicont">
						<div class="neicont">
							<c:choose>
								<c:when test="${category.module eq 'inlink' }">
									<div class="w100">
										<c:forEach var="article" items="${page.result }">
											<a href="${ctx }/xdh/article/${article.id}.html">
												<span style="color:#444;font-size:14px;">${article.title }</span><span class="fr" style="color:#444;font-size:14px;"><fmt:formatDate value="${article.createDate }" pattern="yyyy-MM-dd"/></span>
											</a>
										</c:forEach>
										<p
											style="text-align: center; border: none; list-style: none; margin-top: 30px; width: 540px; float: left; clear: both">
										</p>
										<table width="100%" style="color: #000000; font-size: 12px"
											align="center" class="page">
											<tbody>
												<tr>
													<td>共 <b>${page.totalItems }</b> 条&nbsp;&nbsp;
													<a href="${ctx }/xdh/list/${cid}.html">首页</a>
													<a href="${ctx }/xdh/list/${cid}.html?p=${pr}">上一页</a>
													<a href="${ctx }/xdh/list/${cid}.html?p=${pn}">下一页 </a>
													<a href="${ctx }/xdh/list/${cid}.html?p=${pp}">尾页 </a>
													 &nbsp;页次：<strong><font
															color="red">${p }</font>/${pp}</strong>页 &nbsp;<b>12</b>条/页
													</td>
												</tr>
											</tbody>
										</table>
										<p></p>
									</div>
								</c:when>
								<c:when test="${category.module eq 'picture' }">
									<div class="dianpu" style="width:765px; padding:0px;  border:0px;">
										<c:forEach var="article" items="${page.result }">
											<a href="${ctx }/xdh/article/${article.id}.html" 
												title="${article.title }">
												<img src="${ctx }/${article.imgpath}" width="300" height="300">
												<p style="color:#D50168;font-size:14px;">${article.title }</p>
											</a>
										</c:forEach>
										<p style="text-align:center; border:none;list-style:none; margin-top:30px; width:540px; float:left; clear:both">
										</p>
										<table width="100%" style="color: #000000; font-size: 12px"
											align="center" class="page">
											<tbody>
												<tr>
													<td>共 <b>${page.totalItems }</b> 条&nbsp;&nbsp;
													<a href="${ctx }/xdh/list/${cid}.html">首页</a>
													<a href="${ctx }/xdh/list/${cid}.html?p=${pr}">上一页</a>
													<a href="${ctx }/xdh/list/${cid}.html?p=${pn}">下一页 </a>
													<a href="${ctx }/xdh/list/${cid}.html?p=${pp}">尾页 </a>
													 &nbsp;页次：<strong><font
															color="red">${p }</font>/${pp}</strong>页 &nbsp;<b>12</b>条/页
													</td>
												</tr>
											</tbody>
										</table>
										<p></p>
									</div>
								</c:when>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</body>
</html>