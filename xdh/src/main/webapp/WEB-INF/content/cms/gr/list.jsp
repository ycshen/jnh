<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>

<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="个人求职信息列表" pageTitleContent="系统管理-个人求职信息-个人求职信息列表" titleIcon="icon-home"/>
			
${ctx }申鱼川${domain}
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box purple">
						<div class="portlet-title">
							<h4>
								<i class="diy_icon_04_38"></i>个人求职列表
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
								<tool:operBtns2 modelKey="user"></tool:operBtns2>
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
	App.activeMenu("cms/gr/list");
	Page.initData(
		{
			url:"${ctx}/cms/gr/page",
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
		 {cName:"companyType",cValue:"意向公司类型", format: function(i, value, item){
			 if(value == "0"){
				 return "影楼公司";
			 }else if(value == "1"){
				 return "婚纱婚庆公司";
			 }else if(value == "2"){
				 return "其他类型公司";
			 }
		 }},
		 {cName:"status",cValue:"状态", format: function(i, value, item){
			 if(value == "0"){
				 return "未审核";
			 }else if(value == "1"){
				 return "已审核";
			 }
		 }}
		 ]
	);
});

//更改用户状态
function changeUserStatus(obj){
	var callback = function(result){
		if(!result){
			return;
		}
		blockUI();
		$.ajax({
			type : "POST",
			dataType : "json",
			url : Page.subUrl()+"/changeUserStatus",
			data : {"id":$(obj).attr("data-id")},
			success : function(data){
				if(data == 1){
					$(obj).removeAttr("data-original-title").attr("data-original-title","点击禁用").removeClass("grey").addClass("green").html('<i class="icon-unlock"></i>启用');
				}else{
					$(obj).removeAttr("data-original-title").attr("data-original-title","点击启用").removeClass("green").addClass("grey").html('<i class="icon-lock"></i>禁用');
				}
				unBlockUI();
			}
		});
	};
	App.confirm(callback);
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