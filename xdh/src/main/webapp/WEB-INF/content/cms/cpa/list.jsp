<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>

<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="cpa内容" pageTitleContent="系统管理-cpa内容-cpa内容列表" titleIcon="icon-home"/>
			<!-- 主体内容 -->
			<div class="row-fluid">
				<div class="span12">
					<div class="portlet box purple">
						<div class="portlet-title">
							<h4>
								<i class="diy_icon_04_38"></i>cpa内容
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
	App.activeMenu("cms/cpa/list");
	Page.initData(
		{
			url:"${ctx}/cms/cpa/page",
			tableId : "#sample_1",
			pageSize : 10
		},
		null,
		[
		 {cName:"contentType",cValue:"内容类型", format: function(i, value, item){
			 if(value == "1"){
				 return "活动规则";
			 }else if(value == "2"){
				 return "商品详情";
			 }
		 }},
		 {cName:"articleType",cValue:"产品类型", format: function(i, value, item){
			 if(value == "0"){
				 return "砍价";
			 }else if(value == "1"){
				 return "其他";
			 }
		 }}
		 ]
	);
});


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