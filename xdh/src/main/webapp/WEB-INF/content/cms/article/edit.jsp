<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="pageTitle" value="${empty obj ? '添加文章':'修改文章' }" scope="page" />
<html>
<head>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<title>${pageTitle }</title>
<style type="text/css">
	.navbar-fixed-top{
		z-index: 1000;
	}
</style>
</head>
<body>
<%@ include file="/WEB-INF/content/cms/category/tree.jsp" %>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="cms-文章管理-${pageTitle }" titleIcon="diy_icon_01_46" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>请填写表单
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> 
								<a href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<%@ include file="/WEB-INF/content/cms/article/form/ueditor.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/content/common/plugins/jquery-validation.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/bootstrap-fileupload.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/ueditor.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/bootstrap-tree.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/jquery-tagsinput.jsp"%>
<script type="text/javascript">
	$(function(){
		App.activeMenu("cms/");
		App.cancleActiveMenu("/cms/category/list");
		App.cancleActiveMenu("/cms/site/list");
		App.cancleActiveMenu("/cms/comment/list");
		UE.getEditor('ueditor');
		
		$('.tags').tagsInput();
	});
	function showCaTree(){
		$("#caTree").modal();
	}
	function selCategory(obj){
		$obj = $("#tree_1").find("a.selected:first");
		$('#caTree').modal('hide');
		$('input[id=caName]').val($obj.text());
		$('input[id=caId]').val($obj.attr("data-id"));
	}
</script>
</body>
</html>