<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<c:set var="pageTitle" value="${empty obj ? '添加参数设置':'修改参数设置' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="系统管理-参数设置-${pageTitle }" titleIcon="icon-home" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>参数信息  &nbsp;&nbsp;&nbsp;&nbsp;<a class='btn' href="${header.Referer }">返回</a>
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<div class="control-group">
								<label class="control-label">键:</label>
								<div class="controls">
									<input type="text" class="span6 m-wrap" validate="{required:true,minlength:1,maxlength:40}" name="keyParams" value="${obj.keyParams}" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">值:</label>
								<div class="controls">
									<input type="text" class="span6 m-wrap" validate="{required:true,minlength:1,maxlength:200}" name="valueParams" value="${obj.valueParams}" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">说明:</label>
								<div class="controls">
									<input type="text" class="span6 m-wrap" validate="{required:true,minlength:1,maxlength:200}" name="remark" value="${obj.remark }" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/content/common/plugins/jquery-validation.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/jquery-validation.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/bootstrap-fileupload.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/ueditor.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/bootstrap-tree.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/jquery-tagsinput.jsp"%>
<script type="text/javascript">
	$(function(){
		App.activeMenu("sys/gr/list");
		UE.getEditor('ueditor');
	});
</script>
</body>
</html>