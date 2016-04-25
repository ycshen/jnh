<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../jnh/common/head.jsp"%>
<html>
<head>
<title></title>
<meta name="decorator" content="cms_xdh" />
<link href="${ctx}/assets/css/plan.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="main_div">
		<div class="plan_main_div">
			<div class="sid_nav">
				<a href="http://www.52jnh.com">首页</a> >> <a href="${ctx}/xdh/plan/plan.html">档期查询</a>
			</div>
			<div class="plan_query">
				<form action="${ctx }/xdh/plan/plan.html" method="post">
					<input type="text" class="plan_txt" placeholder="请输入新郎或者新娘名字" name="man" value="${planQuery.man}"/> <input value="查询档期" type="submit"   class="plan_btn"/>
				</form>
			</div>
			<div class="plan_con">
				<c:choose>  
  
			   <c:when test="${plan == null}">   
			   		<div class="plan_tip">亲，没有查询到你的档期，联系嘉年华婚礼~~~</div>
			   </c:when>  
			     
			   <c:otherwise>
			 
					<div class="plan_colomu">
					<div class="plan_colomu_left">新郎：</div>
					<div class="plan_colomu_right">${plan.man}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">新娘：</div>
					<div class="plan_colomu_right">${plan.women}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">拍摄地点：</div>
					<div class="plan_colomu_right">${plan.shootPlace}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">拍摄时间：</div>
					<div class="plan_colomu_right">${plan.shootTime}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">衣服套数（套）：</div>
					<div class="plan_colomu_right">${plan.dressNum}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">选衣时间：</div>
					<div class="plan_colomu_right">${plan.selectDressTime}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">选衣地点：</div>
					<div class="plan_colomu_right">${plan.selectDressPalce}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">摄影师：</div>
					<div class="plan_colomu_right">${plan.shootPerson}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">化妆师：</div>
					<div class="plan_colomu_right">${plan.makeUpPerson}</div>
				</div><div class="plan_colomu">
					<div class="plan_colomu_left">入场费（元）：</div>
					<div class="plan_colomu_right">${plan.enterPrice}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">交通费用（元）：</div>
					<div class="plan_colomu_right">${plan.ridePrice}</div>
				</div>
				<div class="plan_colomu">
					<div class="plan_colomu_left">餐费（元）：</div>
					<div class="plan_colomu_right">${plan.eatPrice}</div>
				</div>	
				<div class="plan_row">
					<div class="plan_row_left">注意事项：</div>
					<div class="plan_row_right">${plan.remark}</div>
				</div>
				  </c:otherwise>  
			</c:choose>  
							
			</div>
			</div>
		</div>									
	
	<%@ include file="../layouts/bTip/bTipAndAddress.jsp"%>
</body>
</html>
