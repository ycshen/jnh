<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<title>嘉年华婚礼-西南地区十大婚纱摄影，婚礼策划机构</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link href="${ctx }/assets/xdh/favicon.ico" rel="shortcut icon"/>
<!-- css -->
<link href="${ctx }/assets/xdh/common/rc.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/css.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-front-icon.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-front-mess.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-front-invite.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-webim-lite.css" rel="stylesheet" type="text/css" />

<script src="${ctx }/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>

<sitemesh:head />
</head>
<body>
	<div style="width:100%;background-color:#D50168;">
		<div style="width:100%;height:80px;background-color:#D50168;">
			<%@include file="nav.jsp" %>
		</div><%-- 
		<%@ include file="scroll.jsp"%>
		<%@ include file="hsfg.jsp"%> --%>
		<div style="width:1000px;margin-left:auto;margin-right:auto;">
		
		 
	
		
		<sitemesh:body />
		
		</div>
		<%@ include file="foot.jsp"%>
	</div>
</body>
</html>