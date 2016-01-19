<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<title>嘉年华婚礼创意馆|嘉年华婚礼|成都嘉年华婚礼|嘉年华婚纱摄影|嘉年华婚礼策划|嘉年华宝宝宴|嘉年华造型设计|嘉年华商业演出|嘉年华礼服租赁|嘉年华花艺造型|嘉年华寿宴</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link href="${ctx}/assets/xdh/favicon.ico" rel="shortcut icon"/>
<!-- css -->

<link href="${ctx }/assets/xdh/common/rc.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/css/cms.css" rel="stylesheet" type="text/css" />
<script src="${ctx }/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx }/assets/js/layer/layer.js" type="text/javascript"></script>
<script src="${ctx }/assets/js/rc.js" type="text/javascript"></script>

</head>
<body>
	<div style="width:100%;height:80px;background-color:#D50168;">
		<%@include file="nav.jsp" %>
	</div>
	<%@include file="search.jsp" %>
	<div style="width:1000px;margin-left:auto;margin-right:auto;margin-top:10px;color:#444;font-size:14px;">
		<img src="${ctx }/assets/img/daohang.jpg" style="width:20px;height:20px;vertical-align: bottom;"/>
		<a href="http://www.xdhphoto.com" style="color:#444;font-size:14px;">西都汇</a>
		->
		<a href="http://www.xdhphoto.com/xdh/rc.html"  style="color:#444;font-size:14px;">西都汇人才招聘</a>
		->
		招聘信息列表信息
	</div>
	<div style="width:1000px;margin-left:auto;margin-right:auto;">
		<div class="w100">
			<div style="width:1000px;float:left;line-height:30px;margin-top:30px;margin-bottom:10px;">
			<div style="float:left;width:500px;font-size:14px;font-weight:bold;color:#999;">工作地点/企业名称</div>
			<div style="float:left;width:300px;font-size:14px;font-weight:bold;color:#999;">招聘职位</div>
			<div style="float:left;width:200px;font-size:14px;font-weight:bold;color:#999;">发布时间</div>
			</div>
							<c:forEach var="recruit" items="${page.result }">
								<div style="width:1000px;float:left;line-height:30px;">
									
										<div style="float:left;width:500px;font-size:14px;color:#444;"><a href="${ctx}/xdh/rcdetail/${recruit.id}.html" style="font-size:14px;color:#444;">[${recruit.place }][<span style="color:#7cb101;">${recruit.company}]</span></a></div>
										<div style="float:left;width:300px;font-size:14px;color:#444;">${recruit.position }</div>
										<div style="float:left;width:200px;font-size:14px;color:#444;">${recruit.createDate }</div>
								</div>
							</c:forEach>
							<p
								style="text-align: center; border: none; list-style: none; margin-top: 30px; width: 540px; float: left; clear: both">
							</p>
							<table width="100%" style="color: #000000; font-size: 12px"
								align="center" class="page">
								<tbody>
									<tr>
										<td>共 <b>${page.totalItems }</b> 条&nbsp;&nbsp;
										<a href="${ctx }/xdh/rclist/${cid}.html">首页</a>
										<a href="${ctx }/xdh/rclist/${cid}.html?p=${pr}">上一页</a>
										<a href="${ctx }/xdh/rclist/${cid}.html?p=${pn}">下一页 </a>
										<a href="${ctx }/xdh/rclist/${cid}.html?p=${pp}">尾页 </a>
										 &nbsp;页次：<strong><font
												color="red">${p }</font>/${pp}</strong>页 &nbsp;<b>30</b>条/页
										</td>
									</tr>
								</tbody>
							</table>
							<p></p>
						</div>
	</div>
	
	<div style="width:1000px;;margin-left:auto;margin-right:auto;margin-top: 30px;">
			<%@include file="layouts/index/flinks.jsp" %>
	</div>
	<%@include file="foot.jsp" %>
	
</body>
</html>