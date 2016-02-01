<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form action="${ctx }/cms/keyValue/edit" class="form-horizontal form_sync" method="post" id="form1" enctype="multipart/form-data">
	<%@ include file="/WEB-INF/content/cms/style/form/inputs.jsp"%>
	
	<div class="form-actions">
		<button type="submit" class="btn blue">提交</button>
		<a class='btn' href="${header.Referer }">返回</a>
	</div>
</form>