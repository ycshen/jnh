<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

<title>首页banner图片更新</title>
<%@ include file="../../common/plugins/bootstrap.jsp"%>
<%@ include file="../../common/plugins/layer.jsp"%>
<style type="text/css">
.page_con_main{
	width: 94%;
	padding: 3% 3% 3% 3%; 
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="page_con_main">
		<form action="${pageContext.request.contextPath}/other/config/updateScrollImage" method="post" id="form1" enctype="multipart/form-data">
			<table class="table">
				<tr>
					<td colspan="2">Scroll图片：<input type="file" id="imgFile" name="imgFile"></td>
				</tr>
				<tr>
					<td colspan="2" class="color:red;">注意：图片大小不能超过300kb,图片分辨率为1920*600px,图片更新的是最久一次更新的图片</td>
					
				</tr>
				<tr>
					<td style="text-align: center;"> <button type="submit" class="btn btn-default">更新图片</button></td>
				</tr>
				
			</table>
					  
		</form>
		<span style="color:red;">${result}</span><a href="http://www.52jnh.com" target="_blank">查看更新状况</a><br/>
		首页banner图片地址：
		http://www.52jnh.com/upload/scroll/scroll_1.png
		http://www.52jnh.com/upload/scroll/scroll_2.png
		http://www.52jnh.com/upload/scroll/scroll_3.png
	</div>
	
</body>
</html>