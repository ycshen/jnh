<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<title>审核个人求职信息列表</title>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="审核个人求职信息列表" pageTitleContent="系统管理-审核个人求职信息-审核个人求职信息列表" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box purple">
						<div class="portlet-title">
							<h4>
								<i class="diy_icon_04_38"></i>列表
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
										
	                                 	
	                                 	<div class="span3">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                          <select id="status">
		                                          	<option value="">请选择</option>
		                                          	<option value="0">未审核</option>
		                                          	<option value="1">已审核</option>
		                                          </select>
		                                       </div>
		                                    </div>
	                                 	</div> 
	                                 	
	                                 	
	                                 	<div class="span4">
		                                    <div class="control-group">
		                                      
		                                    </div>
	                                 	</div>
	                                 	
	                                 	<div class="span5">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                         <a class="btn blue" href="javascript:void(0)" onclick="javascript:doQuery();">
		                                         	<i class="icon-search"></i>
		                                         	查询</a>
		                                       
		                                       </div>
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
	App.activeMenu("cms/gr/slist");
	Page.initData(
		{
			url:"${ctx}/cms/gr/auditpage",
			tableId : "#sample_1",
			pageSize : 10
		},
		null,
		[{cName:"myname",cValue:"求职人"},
		 {cName:"position",cValue:"意向职位"},
		 {cName:"salary",cValue:"期望薪水"},
		 {cName:"hits",cValue:"访问量"},
		 {cName:"workWay",cValue:"期望工作方式"},
		 {cName:"eduDegree",cValue:"个人教育程度"},
		 {cName:"sex",cValue:"性别"},
		 {cName:"workTime",cValue:"工作经历"},
		 {cName:"place",cValue:"期望工作地点"},
		 {cName:"sourceAddr",cValue:"籍贯"},
		 {cName:"age",cValue:"年龄"},
		 {cName:"marryStatus",cValue:"婚姻状况"},
		 {cName:"companyType",cValue:"招聘公司类型", format: function(i, value, item){
			 if(value == "0"){
				 return "影楼公司";
			 }else if(value == "1"){
				 return "婚纱婚庆公司";
			 }else if(value == "2"){
				 return "其他类型公司";
			 }
		 }},
		 {cName:"status",cValue:"审核操作(状态)",format:function(i,value,item){
				 var $a = $('<a href="javascript:void(0)" data-id="'+item.id+'" data-placement="right" class="btn mini tooltips" onclick="javascript:changeStatus(this)"></a>');
				 if(value === "1"){
					 return $a.clone().attr("data-original-title","审核不通过( 已审核 )").addClass("green").html('<i class="icon-unlock"></i>审核不通过( 已审核 )');
				 }
				 
				 return $a.attr("data-original-title","审核通过(未审核)").addClass("grey").html('<i class="icon-lock"></i>审核通过(未审核)');
				 
		 }}
		 ]
	);
});

//更改用户状态
function changeStatus(obj){
	var callback = function(result){
		if(!result){
			return;
		}
		blockUI();
		$.ajax({
			type : "POST",
			dataType : "json",
			url : Page.subUrl()+"/changeStatus",
			data : {"id":$(obj).attr("data-id")},
			success : function(data){
				if(data == 1){
					$(obj).removeAttr("data-original-title").attr("data-original-title","审核不通过(已审核)").removeClass("grey").addClass("green").html('<i class="icon-unlock"></i>审核不通过(已审核)');
				}else{
					$(obj).removeAttr("data-original-title").attr("data-original-title","审核通过( 未审核 )").removeClass("green").addClass("grey").html('<i class="icon-lock"></i>审核通过( 未审核 )');
				}
				unBlockUI();
			}
		});
	};
	App.confirm(callback); 
}
function doQuery(){
	/* if($("#status").val() == ""){
		alert("请选择查询条件");
		return;
	} */
	
	var queryObj = {
		search_EQS_status : App.isEqPlacehoder($("#status"))
	};
	Page.doQuery(queryObj);
}

</script>
</body>
</html>