<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<html>
<head>
<title>用户列表</title>
</head>
<body>
	<div class="page-content">
		<div class="container-fluid">
			<!-- 页面导航 -->
			<tool:navBar pageTitle="用户列表" pageTitleContent="系统管理-用户管理-用户列表" titleIcon="icon-home"/>
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
										<!-- <div class="span3">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                          <input type="text" id="email" class="m-wrap span12" placeholder="邮箱">
		                                       </div>
		                                    </div>
	                                 	</div> -->
	                                 	
	                                 	<div class="span2">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                          <input type="text" id="name" class="m-wrap span12" placeholder="姓名">
		                                       </div>
		                                    </div>
	                                 	</div>
	                                 	
	                                 	<!-- <div class="span4">
		                                    <div class="control-group">
		                                       <div class="controls input-append date form_date" 
		                                       		data-date-format="yyyy-mm-dd"
		                                       		id="time">
													<input id="createDate" class="span10 m-wrap" type="text" readonly="readonly" placeholder="时间">
													<span class="add-on"><i class="icon-th"></i></span>
		                                       </div>
		                                    </div>
	                                 	</div> -->
	                                 	
	                                 	<div class="span5">
		                                    <div class="control-group">
		                                       <div class="controls">
		                                         <a class="btn blue" href="javascript:void(0)" onclick="javascript:doQuery();">
		                                         	<i class="icon-search"></i>
		                                         	查询</a>
		                                         <button type="reset" class="btn" onclick="javascript:Page.clearQuery();">
		                                         	<i class="icon-trash"></i>清空
		                                         </button>
		                                       </div>
		                                    </div>
	                                 	</div>
									</div>
								</form>
								<tool:operBtns1 modelKey="user"></tool:operBtns1>
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
	App.activeMenu("sys/user/vlist");
	Page.initData(
		{
			url:"${ctx}/sys/user/vpage",
			tableId : "#sample_1",
			pageSize : 10
		},
		null,
		[
		 {cName:"email",cValue:"联系人"},
		 {cName:"loginId",cValue:"会员名"},
		 {cName:"phone",cValue:"联系方式"},
		 {cName:"mobilePhone",cValue:"手机",noSort:true},
		 {cName:"address",cValue:"地址"},
		 {cName:"remark",cValue:"公司名称"},
		 {cName:"qq",cValue:"QQ"},
		 {cName:"createDate",cValue:"加入时间"},
		 {cName:"status",cValue:"操作(是否是会员)",format:function(i,value,item){
			 
			 var $a = $('<a href="javascript:void(0)" data-id="'+item.id+'" data-placement="right" class="btn mini tooltips" onclick="javascript:changeUserStatus(this)"></a>');
			 if(value === 3){
				 return $a.clone().attr("data-original-title","点击取消VIP资格(是VIP)").addClass("grey").html('<i class="icon-unlock"></i>点击取消VIP资格(是VIP)');
			 }
			 	//return "<span class='label label-danger'>禁用</span>";
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
				if(data == 3){
					$(obj).removeAttr("data-original-title").attr("data-original-title","点击取消VIP资格").removeClass("green").addClass("grey").html('<i class="icon-unlock"></i>点击取消VIP资格(是VIP)');
				}else{
					$(obj).removeAttr("data-original-title").attr("data-original-title","点击成为VIP").removeClass("grey").addClass("green").html('<i class="icon-lock"></i>点击成为VIP（非VIP）');
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