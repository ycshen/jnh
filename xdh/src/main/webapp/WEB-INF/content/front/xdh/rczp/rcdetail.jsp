<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<title>${obj.company}招聘${obj.position}-嘉年华婚礼创意馆|嘉年华婚礼|成都嘉年华婚礼|嘉年华婚纱摄影|嘉年华婚礼策划|嘉年华宝宝宴|嘉年华造型设计|嘉年华商业演出|嘉年华礼服租赁|嘉年华花艺造型|嘉年华寿宴</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<!-- css -->

<link href="${ctx }/assets/xdh/common/rc.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/css/cms.css" rel="stylesheet" type="text/css" />
<script src="${ctx }/assets/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="${ctx }/assets/js/layer/layer.js" type="text/javascript"></script>
<script src="${ctx }/assets/js/rc.js" type="text/javascript"></script>

</head>
<body>
	
	<%@ include file="top/top.jsp"%>
	<%@include file="banner/banner.jsp" %>
	<%@include file="search.jsp" %>
	<div style="width:1000px;margin-left:auto;margin-right:auto;margin-top:10px;color:#444;font-size:14px;">
		<img src="${ctx }/assets/img/daohang.jpg" style="width:20px;height:20px;vertical-align: bottom;"/>
		<a href="http://www.52jnh.com" style="color:#444;font-size:14px;">嘉年华</a>
		->
		<a href="http://www.52jnh.com/xdh/rc.html"  style="color:#444;font-size:14px;">嘉年华人才招聘</a>
		->
		招聘信息-${obj.company}<span style="color:#1c86ee;">[${obj.position}]</span>
	</div>
	<div style="width:1000px;margin-left:auto;margin-right:auto;">
		<div style="float:left;width:1000px;font-size: 20px;color:#444;font-weight:bold;margin-top:10px;line-height:40px;">
			
			${obj.company}<span style="color:#1c86ee;">[${obj.position}]</span>[${obj.createDate}]
		</div>
		<div style="float:left;width:1000px;margin-top:10px;">
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">招聘职位：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:150px;text-align:left;">${obj.position}</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">工作地点：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${obj.place}</div>
		</div>
		<div style="float:left;width:1000px;margin-top:10px;font-size:20px;color:#7cb101;line-height:40px;">
			联系方式
		</div>
		<div style="float:left;width:1000px;margin-top:10px;">
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">&nbsp;&nbsp;联系人：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:150px;text-align:left;">${user.email}</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">联系电话：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${user.mobilePhone}</div>
		</div>
		<div style="float:left;width:1000px;margin-top:10px;">
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">公司名称：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:900px;text-align:left;">${obj.company}</div>
			
		</div>
		<div style="float:left;width:1000px;margin-top:10px;font-size:20px;color:#7cb101;line-height:40px;">
			招聘要求
		</div>
		<div style="float:left;width:1000px;margin-top:10px;">
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">薪&nbsp;&nbsp;&nbsp;&nbsp;水：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:150px;text-align:left;"><span style="font-weight:bold;color:red;font-size:16px;">${obj.salaryStart}-${obj.salaryEnd}</span>&nbsp;元/月</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">工作方式：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${obj.workWay}</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">工作经验：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${obj.workTime}</div>
		</div>
		<div style="float:left;width:1000px;margin-top:10px;">
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">性别要求：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:150px;text-align:left;">${obj.sex }</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">招聘人数：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${obj.personNum}人</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">教育程度：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${obj.eduDegree}</div>
		</div>
		<div style="float:left;width:1000px;margin-top:10px;">
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">公司类型：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:150px;text-align:left;">${obj.companyType eq "0" ? "摄影摄像公司" : "婚纱婚庆公司"}</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">工作地点：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${obj.place}</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;">&nbsp;&nbsp;关注度：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;text-align:left;">${obj.hits}</div>
		</div>
		<div style="float:left;width:1000px;margin-top:10px;font-size:20px;color:#7cb101;line-height:40px;">
			招聘简介
		</div>
		<div style="float:left;width:1000px;margin-top:10px;line-height:28px;font-size:14px;color:#666;">
			${obj.content}
		</div>
		<div style="float:left;width:1000px;margin-top:10px;font-size:14px;color:#7cb101;line-height:28px;margin-bottom:30px;">
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;font-weight:bold;">更新时间：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:150px;text-align:left;">${obj.updateDate}</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:100px;font-weight:bold;">发布时间：</div>
			<div style="font-size:14px;color:#666;line-height:28px;float:left;width:150px;text-align:left;">${obj.createDate}</div>
		</div>
	</div>
	<%@include file="foot.jsp" %>
</body>
</html>