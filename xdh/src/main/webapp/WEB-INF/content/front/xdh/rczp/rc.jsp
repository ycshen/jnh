<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<title>人才招聘-嘉年华婚礼创意馆|嘉年华婚礼|成都嘉年华婚礼|嘉年华婚纱摄影|嘉年华婚礼策划|嘉年华宝宝宴|嘉年华造型设计|嘉年华商业演出|嘉年华礼服租赁|嘉年华花艺造型|嘉年华寿宴</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link href="${ctx }/assets/xdh/favicon.ico" rel="shortcut icon"/>

<link href="${ctx }/assets/xdh/common/rc.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/css/cms.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/css.css" rel="stylesheet" type="text/css" />
<script src="${ctx }/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx }/assets/js/layer/layer.js" type="text/javascript"></script>
<script src="${ctx }/assets/js/rc.js" type="text/javascript"></script>

</head>
<body>
	<%@ include file="top/top.jsp"%>
	<%@include file="banner/banner.jsp" %>
	<div style="width:1000px;min-height:220px;margin-left:auto;margin-right:auto;">
		<div style="width:410px;height:200px;margin-top:5px;float:left;">
			<%@include file="login.jsp" %>
		</div>
		<div style="width:355px;height:200px;margin-top:5px;border:1px dotted #ccc;float:left;">
			<%@include file="lx.jsp" %>
		</div>
		<div style="width:220px;height:200px;margin-top:5px;float:left;">
			<%@include file="lxqq.jsp" %>
			
		</div>
	</div>
	<%@include file="search.jsp" %>
	<div style="width:1000px;min-height:500px;;margin-left:auto;margin-right:auto;border-top: 3px #484647 solid;">
		<div style="width:500px;height:500px;margin-top:15px;float:left;">
			<div style="float:left;width:500px;height:50px;">
				<img src="${ctx }/assets/xdh/common/rc_ylzp.jpg"  style="border: 0px;"/><a title="更多影楼招聘信息" href="rclist/1.html"><img src="${ctx }/assets/xdh/common/rc_more.jpg" /></a>
			</div>
			<div style="float:left;width:500px;height:450px;" class="zp_div">
				<%@include file="yl.jsp" %>
			
			</div>
		</div>
		<div style="width:500px;height:500px;margin-top:15px;float:left;">
			<div style="float:left;width:500px;height:50px;">
				<img src="${ctx }/assets/xdh/common/rc_hshq.jpg"  style="border: 0px;"/><a title="更多婚纱婚庆招聘信息" href="rclist/2.html"><img src="${ctx }/assets/xdh/common/rc_more.jpg"/></a>
			</div>
			<div style="float:left;width:500px;height:450px;" class="zp_div">
				<%@include file="hshq.jsp" %>
			</div>
		</div>
		<div style="width:500px;height:530px;margin-top:15px;float:left;">
			<div style="float:left;width:500px;height:50px;">
				<img src="${ctx }/assets/xdh/common/rc_qt.jpg"  style="border: 0px;"/><a title="更多其他招聘信息" href="rclist/3.html"><img src="${ctx }/assets/xdh/common/rc_more.jpg"/></a>
			</div>
			<div style="float:left;width:500px;height:530px;" class="zp_div">
				<%@include file="qt.jsp" %>
			</div>
			
		</div>
		<div style="width:500px;height:530px;margin-top:15px;float:left;">
			<div style="float:left;width:500px;height:50px;">
				<img src="${ctx }/assets/xdh/common/rc_grqz.jpg" style="border: 0px;"/><a title="更多个人摄影求职信息" href="rclist/4.html"><img src="${ctx }/assets/xdh/common/rc_more.jpg"/></a>
			</div>
			<div style="float:left;width:500px;height:530px;" class="zp_div">
				<%@include file="grqz.jsp" %>
			</div>
		</div>
		<div style="width:500px;height:530px;margin-top:15px;float:left;">
			<div style="float:left;width:500px;height:50px;">
				<img src="${ctx }/assets/xdh/common/rc_grhq.jpg"  style="border: 0px;"/><a title="更多个人婚庆岗位求职信息" href="rclist/4.html"><img src="${ctx }/assets/xdh/common/rc_more.jpg"/></a>
			</div>
			<div style="float:left;width:500px;height:530px;" class="zp_div">
				<%@include file="grhq.jsp" %>
			</div>
		</div>
		<div style="width:500px;height:530px;margin-top:15px;float:left;">
			<div style="float:left;width:500px;height:50px;">
				<img src="${ctx }/assets/xdh/common/rc_grqt.jpg"  style="border: 0px;"/><a title="更多个人其他岗位求职信息" href="rclist/4.html"><img src="${ctx }/assets/xdh/common/rc_more.jpg"/></a>
			</div>
			<div style="float:left;width:500px;height:530px;" class="zp_div">
				<%@include file="grqt.jsp" %>
			</div>
		</div>
	</div>
	
	
	<%@ include file="foot.jsp"%>
</body>
</html>