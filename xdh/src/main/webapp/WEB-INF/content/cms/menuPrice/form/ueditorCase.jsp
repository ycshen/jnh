<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<form action="${ctx }/cms/case/editCase" class="form-horizontal form_sync" method="post" id="form1" enctype="multipart/form-data">
	<%@ include file="/WEB-INF/content/cms/menuPrice/form/inputsCase.jsp"%>
	<div class="control-group" id="ueditor_comment">
		<label class="control-label">模块内容：</label>
		<div class="controls">
			<script id="ueditor" type="text/plain" name="content" style="width: 90%">${obj.content}</script>
		</div>
	</div>
	<div class="form-actions">
		<button type="submit" class="btn blue">提交</button>
		<a class='btn' href="${header.Referer }">返回</a>
	</div>
</form>