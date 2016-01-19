<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>个人求职信息列表</title>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="婚纱风格信息列表" pageTitleContent="系统管理-婚纱风格信息-婚纱风格信息列表" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box purple">
						<div class="portlet-title">
							<h4>
								<i class="diy_icon_04_38"></i>婚纱风格信息列表
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
		                                       <!-- <div class="controls">
		                                         <a class="btn blue" href="javascript:void(0)" onclick="javascript:doQuery();">
		                                         	<i class="icon-search"></i>
		                                         	查询</a>
		                                         <button type="reset" class="btn" onclick="javascript:Page.clearQuery();">
		                                         	<i class="icon-trash"></i>清空
		                                         </button>
		                                       </div> -->
		                                    </div>
	                                 	</div>
									</div>
								</form>
								<tool:operBtns modelKey="user"></tool:operBtns>
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
	App.activeMenu("cms/style/list");
	Page.initData(
		{
			url:"${ctx}/cms/style/page",
			tableId : "#sample_1",
			pageSize : 10
		},
		null,
		[
		 
		 
		 {cName:"styleType",cValue:"婚纱摄影风格类型", format: function(i, value, item){
			 if(value == "0"){
				 return "自然范";
			 }else if(value == "1"){
				 return "清新范";
			 }else if(value == "2"){
				 return "文艺范";
			 }else if(value == "3"){
				 return "纪实范";
			 }else if(value == "4"){
				 return "罗马范";
			 }else if(value == "5"){
				 return "海洋范";
			 }
		 }},
		 {cName:"hits",cValue:"点击数"},
		 {cName:"status",cValue:"状态", format: function(i, value, item){
			 if(value == "0"){
				 return "内嵌页";
			 }else if(value == "1"){
				 return "首页";
			 }
		 }},
		 {cName:"status",cValue:"操作",format:function(i,value,item){
			 var $a = $('<a href="javascript:void(0)" alt="'+item.status+'" data-id="'+item.id+'" data-placement="right" class="btn mini tooltips" onclick="javascript:changeStatus(this)"></a>');
			 if(value === "1"){
				 return $a.clone().attr("data-original-title","").addClass("green").html('<i class="icon-unlock"></i>');
			 }
			 
			 return $a.attr("data-original-title","设置到首页显示").addClass("grey").html('<i class="icon-lock">设置到首页显示</i>');
			 
	 	}}
		 ]
	);
});

function changeStatus(obj){
	
	 
	 if($(obj).attr("alt") == "1"){
		 alert("只有一项婚纱摄影风格在首页，请修改不在首页的婚纱摄影风格!");
	 }
	$.ajax({
		type : "POST",
		dataType : "json",
		url : Page.subUrl()+"/changeStatus",
		data : {"id":$(obj).attr("data-id")},
		success : function(data){
			alert(data);
			if(data == 1){
				$(obj).removeAttr("data-original-title").attr("data-original-title","不在首页显示").removeClass("grey").addClass("green").html('<i class="icon-unlock"></i>不在首页显示');
			}else{
				$(obj).removeAttr("data-original-title").attr("data-original-title","设置到首页显示").removeClass("green").addClass("grey").html('<i class="icon-lock">设置到首页显示</i>');
			}
			unBlockUI();
		}
	});
	window.location.href = "${ctx}/cms/style/list";
}

function doQuery(){
	var queryObj = {
		search_LIKES_email : App.isEqPlacehoder($("#email")),
		search_LIKES_name : App.isEqPlacehoder($("#name")),
		search_EQD_createDate : App.isEqPlacehoder($("#createDate"))
	};
	Page.doQuery(queryObj);
}
</script>
</body>
</html>