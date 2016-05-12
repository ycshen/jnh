<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="pageTitle" value="${empty obj ? '发布个人求职信息':'修改个人求职信息' }" scope="page" />
<html>
<head>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<title>${pageTitle }</title>
<script type="text/javascript">

</script>
<style type="text/css">
.show_rows{
	width: 100%;
	height: 40px;
	border-top: 1px #ccc dotted;
}
.show_rows_colum{
	width: 20%;
	height: 40px;
	float:left;
	text-align:center;
}
</style>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="${pageTitle }"
				pageTitleContent="系统管理-个人求职信息管理-${pageTitle }" titleIcon="icon-home" />
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box blue">
						<div class="portlet-title">
							<h4>
								<i class="icon-reorder"></i>请填写需要求职的信息  &nbsp;&nbsp;&nbsp;&nbsp;<a class='btn' href="${header.Referer }">返回</a>
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<form class="form-horizontal form_sync"
								method="post" id="form1">
								<!-- 招聘ID -->
								<input type="hidden" value="${obj.id }" name="id">
								<!-- 招聘创建日期 -->
							
								<div class="control-group">
									<label class="control-label">套餐名称:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											name="myname" value="${obj.menuName}" />
									</div>
									
								</div>
								<div class="control-group">
									<label class="control-label">套餐类型:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											name="myname" value="${obj.menuType eq 0 ? "婚庆套餐" : "婚纱摄影套餐"}" />
									</div>
									
								</div>
								<div class="control-group">
									<label class="control-label"></label>
									<div class="controls">
										<a class='btn' href="${ctx}/cms/case/addCaseModel/${obj.id }/${obj.menuType}">添加套餐对应模块</a>
									</div>
									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="show_rows">
						<div class="show_rows_colum">
							排序
						</div>
						<div class="show_rows_colum">
							模块ID
						</div>
						<div class="show_rows_colum">
							模块类型
						</div>
						<div class="show_rows_colum">
							模块套餐ID
						</div>
						<div class="show_rows_colum">
							操作
						</div>
						
					</div>
				<c:forEach items="${caseList}" var="cases">
					<div class="show_rows">
					<div class="show_rows_colum">
						${cases.sort }
						</div>
						<div class="show_rows_colum">
						${cases.id }
						</div>
						<div class="show_rows_colum">
							${cases.caseType }
						</div>
						<div class="show_rows_colum">
							${cases.menuPriceId }
						</div>
						<div class="show_rows_colum">
							<a href="${ctx }/cms/case/update/${cases.id }/${obj.menuType}">修改</a>&nbsp;&nbsp;&nbsp;
							<a>查看详细</a>&nbsp;&nbsp;&nbsp;
							<a href="${ctx }/cms/case/delete/${cases.id }">删除</a>
						</div>
					</div>
					
				</c:forEach>
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