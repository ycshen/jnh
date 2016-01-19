<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title></title>
 <meta name="decorator" content="cms_xdh" /> 
</head>
<body>
<div style="width:100%;height:auto;float:left;">
		<div style="width:1000px;margin-left:auto;margin-right:auto;">
			<div>
				<div style="width:1000px;float:left;">
					<div style="width:100%;">
						<h2>${obj.title}</h2>
						<p align="center" style="font-size:14px;font-family: 微软雅黑, 'Microsoft YaHei';">发布时间：<fmt:formatDate value="${obj.createDate }" pattern="yyyy-MM-dd hh:MM:ss"/></p>
						<div style="width:100%;">
							${obj.content}
						</div>
						<div style="width:100%;font-size:16px; line-heght:48px;padding:20px;font-family: 微软雅黑, 'Microsoft YaHei';">
							标签：${obj.keywords}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>