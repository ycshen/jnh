<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<c:set var="pageTitle" value="${empty obj ? '添加链接':'修改链接' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="系统管理-测试管理-${pageTitle }" titleIcon="icon-home" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>请填写表单
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="${ctx}/cms/link/edi" class="form-horizontal form_sync"
								method="post" id="form1" enctype="multipart/form-data">
								
								<input type="hidden" value="${obj.id}" name="id">
								<input type="hidden" value="${obj.category.id }" name="category.id" id="caId">
								<input type="hidden" value="${obj.category.name }" id="caName">
								<%-- <div class="control-group">
									<label class="control-label">栏目:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,minlength:2,maxlength:10}" 
											value="${obj.category.name }"  id="caName" /><!-- onfocus="showCaTree()" -->
									</div>
								</div> --%>
								
								<div class="control-group">
									<label class="control-label">链接名称:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true}"
											name="title" value="${obj.title }" />
									</div>
								</div>
								
								<div class="control-group">
								   <label class="control-label">链接图片:</label>
								   <div class="controls">
								      <div class="fileupload fileupload-new" data-provides="fileupload">
								         <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
								         	<c:choose>
												<c:when test="${not empty obj.image }">
													<c:set var="imgpath" value="${ctx }/${obj.image }" scope="page" />
												</c:when>
												<c:otherwise>
													<c:set var="imgpath" value="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" scope="page" />
												</c:otherwise>
											</c:choose>
								            <img src="${imgpath}"  alt="" />
								         </div>
								         <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
								         <div>
								            <span class="btn btn-file"><span class="fileupload-new">选择</span>
								            <span class="fileupload-exists">更改</span>
								            <input type="file" class="default" name="imgFile"/></span>
								            <input type="hidden" name="imgpath" value="${obj.image }"/>
								            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">移除</a>
								         </div>
								      </div>
								      <span class="label label-important">注：如果是图片新闻，请务必上传图片</span>
								   </div>
								</div>
								
								<div class="control-group">
									<label class="control-label">链接地址:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true}"
											name="href" value="${obj.href }" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">权重，越大越靠前:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true}"
											name="weight" value="${obj.weight }" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">过期时间</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											name="weightDate" value="${obj.weightDate }" />
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
<%@ include file="/WEB-INF/content/cms/category/tree.jsp" %>
<%@ include file="/WEB-INF/content/common/plugins/jquery-validation.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/bootstrap-tree.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/bootstrap-fileupload.jsp"%>
<script type="text/javascript">
	$(function(){
		App.activeMenu("cms/");
		App.cancleActiveMenu("/cms/category/list");
		App.cancleActiveMenu("/cms/site/list");
		App.cancleActiveMenu("/cms/comment/list");
		init();
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

	function init(){
		var obj = "${obj}";
		if( obj == ""){
			$('input[id=caName]').val("友情链接");
			$('input[id=caId]').val(35);
		}
	}
</script>
</body>
</html>