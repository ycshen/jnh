<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form action="${ctx }/cms/serviceItems/edit" class="form-horizontal form_sync" method="post" id="form1" enctype="multipart/form-data">
	<%@ include file="/WEB-INF/content/cms/serviceItems/form/inputsItems.jsp"%>
	<div class="control-group" id="ueditor_comment">
		<label class="control-label">模块内容：</label>
		<div class="controls">
			<script id="ueditor" type="text/plain" name="serviceItemsName" style="width: 90%">${obj.serviceItemsName}</script>
		</div>
	</div>
	
	<div class="form-actions">
		<button type="submit" class="btn blue">提交</button>
		<a class='btn' href="${header.Referer }">返回</a>
	</div>
</form>