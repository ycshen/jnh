<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<c:set var="pageTitle" value="${empty obj ? '添加推广说明':'修改推广说明' }" scope="page" />
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
				pageTitleContent="系统管理-cpa说明管理-${pageTitle }" titleIcon="icon-home" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>请填写需要推广的信息
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="${ctx }/cms/cpa/edit" class="form-horizontal form_sync"
								method="post" id="form1">
								<input type="hidden" value="${obj.id }" name="id">
								
								<c:if test="${not empty obj }">
									<input type="hidden" id="time" value="<fmt:formatDate value='${obj.createDate }'/>" name="createDate">
								</c:if>
								
								 <div class="control-group">
									<label class="control-label">内容类型:</label>
									<div class="controls">
										<select name="contentType">
											<option value="1">请选择</option>
											<option value="1">活动规则</option>
											<option value="2">商品详情</option>
											<option value="3">活动主题</option>
											<option value="4">IOS下载地址</option>
											<option value="5">Android下载地址</option>
											<option value="6">商品价格</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">产品类型:</label>
									<div class="controls">
										<select name="articleType">
											<option value="1">请选择</option>
											<option value="1">砍价产品</option>
											<option value="2">其他</option>
										</select>
									</div>
								</div>
								<div class="control-cpaoup" id="ueditor_comment">
									<input type="hidden" name="isWord" value="1">
									<label class="control-label">内容：</label>
									<div class="controls">
										<script id="ueditor" type="text/plain" name="content" style="width: 90%">${obj.content}</script>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn blue">提交</button>
									<a class='btn' href="${header.Referer }">返回</a>
								</div>
							</form>
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
		App.activeMenu("cms/cpa/list");
		UE.getEditor('ueditor');
	});
</script>
</body>
</html>