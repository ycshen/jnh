<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

<title>其他菜单-嘉年华婚礼创意馆</title>
<%@ include file="../common/plugins/bootstrap.jsp"%>
<style type="text/css">
.page_con_main{
	width: 94%;
	padding: 3% 3% 3% 3%; 
}
</style>
<script type="text/javascript">
	function forward(url){
		window.location.href = "${pageContext.request.contextPath}" + url;
	}
</script>
</head>
<body>
		<div class="page_con_main">
			<button type="button" class="btn btn-success" onclick="forward('/cms/gr/list')">返回后台管理主页</button>
			${user.loginId}
		</div>
		<div class="page_con_main">
		<button type="button" class="btn btn-primary" onclick="forward('/cms/link/create');">添加友情链接</button>
		<button type="button" class="btn btn-primary">档期规划</button>
		</div>
</body>
</html>