<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>套餐名称列表</title>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="套餐名称列表" pageTitleContent="首页图文推荐-婚纱摄影/婚礼策划图文推荐" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box purple">
						<div class="portlet-title">
							<h4>
								<i class="diy_icon_04_38"></i>套餐名称列表
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
										<!-- <div class="span3">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                          <input type="text" id="email" class="m-wrap span12" placeholder="邮箱">
		                                       </div>
		                                    </div>
	                                 	</div> -->
	                                 	
	                                 	<div class="span2">
		                                    <!-- <div class="control-group">
		                                       <div class="controls">
		                                          <input type="text" id="name" class="m-wrap span12" placeholder="姓名">
		                                       </div>
		                                    </div> -->
	                                 	</div>
	                                 	
	                                 	<div class="span4">
		                                    <div class="control-group">
		                                       <!-- <div class="controls input-append date form_date" 
		                                       		data-date-format="yyyy-mm-dd"
		                                       		id="time">
													<input id="createDate" class="span10 m-wrap" type="text" readonly="readonly" placeholder="时间">
													<span class="add-on"><i class="icon-th"></i></span>
		                                       </div> -->
		                                    </div>
	                                 	</div>
	                                 	
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
	App.activeMenu("cms/recomendItems/list");
	Page.initData(
		{
			url:"${ctx}/cms/recomendItems/page",
			tableId : "#sample_1",
			pageSize : 10
		},
		null,
		[
		 
		 
		 {cName:"type",cValue:"推荐栏目", format: function(i, value, item){
			 if(value == 0){
				 return "婚礼策划";
			 }else if(value == 1){
				 return "婚纱摄影";
			 }
		 }},
		 {cName:"recomendName",cValue:"推荐项名称"},
		 {cName:"recomendTime",cValue:"推荐时间"},
		 {cName:"status",cValue:"推荐", format: function(i, value, item){
			 if(value == "0"){
				 return "未推荐";
			 }else if(value == "1"){
				 return "已推荐";
			 }
		 }},
		 {cName:"status",cValue:"操作",format:function(i,value,item){
			 var $a = $('<a href="javascript:void(0)" alt="'+item.status+'" data-id="'+item.id+'" data-placement="right" class="btn mini tooltips" onclick="javascript:changeStatus(this)"></a>');
			 if(value === "1"){
				 return $a.clone().attr("data-original-title","").addClass("green").html('<i class="icon-unlock"></i>');
			 }
			 
			 return $a.attr("data-original-title","首页推荐").addClass("green").html('<i class="icon-lock">首页推荐</i>');
			 
	 	}}
		 ]
	);
});


function changeStatus(obj){
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

</script>
</body>
</html>