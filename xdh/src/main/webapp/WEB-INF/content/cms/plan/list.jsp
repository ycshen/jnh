<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>档期列表</title>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="档期列表" pageTitleContent="档期查询-档期列表" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box purple">
						<div class="portlet-title">
							<h4>
								<i class="diy_icon_04_38"></i>档期列表
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a><a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body">
							<div class="row-fluid">
								<form class="queryForm span8">
									<div class="row-fluid">
	                                 	
	                                 	<div class="span5">
		                                    <div class="control-group">
		                                      
		                                    </div>
	                                 	</div>
									</div>
								</form>
							</div>
							<table class="table table-striped table-bordered table-hover" id="sample_1">
								
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="/WEB-INF/content/common/plugins/datepicker.jsp"%>
<%@ include file="/WEB-INF/content/common/plugins/page.jsp"%>

<script type="text/javascript">
$(document).ready(function() {
	//高亮左侧菜单
	App.activeMenu("cms/plan/list");
	Page.initData(
		{
			url:"${ctx}/cms/plan/page",
			tableId : "#sample_1",
			pageSize : 10
		},
		null,
		[
		 {cName:"man",cValue:"新郎"},
		 {cName:"women",cValue:"新娘"},
		 {cName:"shootPlace",cValue:"拍摄地点"},
		 {cName:"shootTime",cValue:"拍摄时间"}
		
		 ]
	);
});


/* function changeStatus(obj){
	$.ajax({
		type : "POST",
		dataType : "json",
		url : Page.subUrl()+"/changeStatus",
		data : {"id":$(obj).attr("data-id")},
		success : function(data){
			if(data == 1){
				$(obj).removeAttr("data-original-title").attr("data-original-title","取消推荐").removeClass("grey").addClass("green").html('<i class="icon-unlock"></i>取消推荐');
			}else{
				$(obj).removeAttr("data-original-title").attr("data-original-title","首页推荐").removeClass("green").addClass("grey").html('<i class="icon-lock">首页推荐</i>');
			}
			unBlockUI();
		}
	});
	window.location.href = "${ctx}/cms/recomendItems/list";
}
 */
</script>
</body>
</html>