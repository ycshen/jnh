<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<!-- BEGIN HEADER -->
<div class="header navbar navbar-inverse navbar-fixed-top">
	<!-- BEGIN TOP NAVIGATION BAR -->
	<div class="navbar-inner">
		<div class="container-fluid">
			<!-- BEGIN LOGO -->
			<a class="brand" href="index.html"><img src="${ctx}/assets/img/logo.png" alt="logo" /></a>
				<li class="dropdown user">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="${ctx}/assets/img/avatar1_small.jpg" />
							<span class="username"><shiro:principal/></span> 
							<i class="icon-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="javascript:void(0);">
							<i class="icon-user"></i>&nbsp&nbsp&nbsp<span>个人信息</span>
							</a>
						</li>
						<li><a href="javascript:void(0);" onclick="javascript:Header.changePwd();">
							<i class="icon-wrench"></i>&nbsp&nbsp&nbsp<span>修改密码</span>
							</a>
						</li>
						<li><a href="javascript:void(0);">
							<i class="icon-calendar"></i>&nbsp&nbsp&nbsp<span>我的任务</span>
							</a>
						</li>
						<li><a href="javascript:void(0);" onclick="javascript:Header.loadSysSetting();">
							<i class="icon-cog"></i>&nbsp&nbsp&nbsp<span>系统设置</span>
							</a>
						</li>
						<li class="divider"></li>
						<li><a href="${ctx }/logout/"><i class="icon-key"></i>退出</a></li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
			<!-- END TOP NAVIGATION MENU -->
		</div>
	</div>
	<!-- END TOP NAVIGATION BAR -->
</div>
<script src="${ctx}/assets/js/sys/header.js"></script>
<c:if test="${not empty sessionScope.cursite }">
<script type="text/javascript">
	var siteName = "${sessionScope.cursite.name}"
	$(function(){
		$(".notification li").removeClass("active");
		$(".notification li[data-sitename='"+siteName+"']").addClass("active");
	});
</script>
</c:if>