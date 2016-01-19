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
	<div style="width:100%;height:auto;background-color:#FFF;float:left;">
		<div style="width:1000px;margin-left:auto;margin-right:auto;height:auto;">
						<div class="neicont">
							<div class="dianpu" style="width:900px; border:0px;background-color:#FFF;">
								<c:forEach var="article" items="${page.result }">
									<a href="${ctx }/xdh/imgarticle/${article.id}.html" 
										title="${article.title }">
										<img src="${ctx }/${article.imgpath}" width="200" height="200">
										<p>${article.title }</p>
									</a>
								</c:forEach>
								<p style="text-align:center; border:none;list-style:none; margin-top:30px; width:540px; float:left; clear:both">
								</p>
								<table width="100%" style="color: #444444; font-size: 12px"
									align="center" class="page">
									<tbody>
										<tr>
											<td>共 <b>${page.totalItems }</b> 条&nbsp;&nbsp;
											<a href="${ctx }/xdh/imglist/${cid}.html">首页</a>
											<a href="${ctx }/xdh/imglist/${cid}.html?p=${pr}">上一页</a>
											<a href="${ctx }/xdh/imglist/${cid}.html?p=${pn}">下一页 </a>
											<a href="${ctx }/xdh/imglist/${cid}.html?p=${pp}">尾页 </a>
											 &nbsp;页次：<strong><font
													color="red">${p }</font>/${pp}</strong>页 &nbsp;<b>12</b>条/页
											</td>
										</tr>
									</tbody>
								</table>
								<p></p>
							</div>
						</div>
					</div>
				</div>
	
	<%@ include file="layouts/bTip/bTipAndAddress.jsp"%>
</body>
</html>