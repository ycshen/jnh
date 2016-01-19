<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/content/common/common.jsp"%>
<c:set var="pageTitle" value="${empty obj ? '发布个人求职信息':'修改个人求职信息' }" scope="page" />
<html>
<head>
<title>${pageTitle }</title>
<script type="text/javascript">
$(function(){
	$("input[type='radio'][name='sex'][value='${obj.sex}']").attr("checked", 'checked');		
	$("input[type='radio'][name='sex']").parent('span').removeClass('checked');		
	$("input[type='radio'][name='sex']:checked").parent('span').addClass('checked');
	//alert($("input[name='sex']:checked").val());
	//$("input[name='eduDegree'][value='${obj.eduDegree}']").attr("checked", "checked");

	$("input[type='radio'][name='workWay'][value='${obj.workWay}']").attr("checked", 'checked');		
	$("input[type='radio'][name='workWay']").parent('span').removeClass('checked');		
	$("input[type='radio'][name='workWay']:checked").parent('span').addClass('checked');

	$("input[type='radio'][name='eduDegree'][value='${obj.eduDegree}']").attr("checked", 'checked');		
	$("input[type='radio'][name='eduDegree']").parent('span').removeClass('checked');		
	$("input[type='radio'][name='eduDegree']:checked").parent('span').addClass('checked');

	$("input[type='radio'][name='workTime'][value='${obj.workTime}']").attr("checked", 'checked');		
	$("input[type='radio'][name='workTime']").parent('span').removeClass('checked');		
	$("input[type='radio'][name='workTime']:checked").parent('span').addClass('checked');

	$("input[type='radio'][name='companyType'][value='${obj.companyType}']").attr("checked", 'checked');		
	$("input[type='radio'][name='companyType']").parent('span').removeClass('checked');		
	$("input[type='radio'][name='companyType']:checked").parent('span').addClass('checked');
	
	$("input[type='radio'][name='marryStatus'][value='${obj.marryStatus}']").attr("checked", 'checked');		
	$("input[type='radio'][name='marryStatus']").parent('span').removeClass('checked');		
	$("input[type='radio'][name='marryStatus']:checked").parent('span').addClass('checked');
});
</script>
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
								<i class="icon-reorder"></i>请填写需要求职的信息
							</h4>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove"></a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="${ctx }/cms/gr/edit" class="form-horizontal form_sync"
								method="post" id="form1">
								<!-- 招聘ID -->
								<input type="hidden" value="${obj.id }" name="id">
								<!-- 招聘创建日期 -->
								<c:if test="${not empty obj }">
									<!-- 用户状态 -->
									<input type="hidden" value="${obj.status }" name="status">
									<input type="hidden" id="time" value="<fmt:formatDate value='${obj.createDate }'/>" name="createDate">
								</c:if>
								<div class="control-group">
									<label class="control-label">求职人姓名:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,minlength:2,maxlength:100}"
											name="myname" value="${obj.myname}" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">意向职位:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,minlength:2,maxlength:50}"
											name="position" value="${obj.position}" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">意向工作地点:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,minlength:2,maxlength:50}"
											name="place" value="${obj.place}" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">期望薪水:</label>
									<div class="controls">
										<input type="text" id="salary" 
											validate="{required:true}" name="salary"
											value="${obj.salary }"  onkeyup="value=value.replace(/[^\d]/g,'')" style="width:100px;height:20px;border:1px solid #ccc;"/>
											元/月
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">期望工作方式:</label>
									<div class="controls">
										
										<input type="radio" name="workWay" value="全职"  checked="checked" style="margin-left:0px;"/>全职
										<input type="radio" name="workWay" value="兼职" style="margin-left:0px;"/>兼职
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">个人教育程度:</label>
									<div class="controls">
										<input name="eduDegree" type="radio" value="高中以上" checked="checked" style="margin-left:0px;"/>高中以上
										<input name="eduDegree"  type="radio" value="中专以上" style="margin-left:0px;"/>中专以上
										<input name="eduDegree"  type="radio" value="专科以上" style="margin-left:0px;"/>专科以上
										<input name="eduDegree"  type="radio" value="本科以上" style="margin-left:0px;"/>本科以上
										<input name="eduDegree"  type="radio" value="硕士以上" style="margin-left:0px;"/>硕士以上
										<input name="eduDegree"  type="radio" value="博士以上" style="margin-left:0px;"/>博士以上
										<input name="eduDegree"  type="radio" value="其他" style="margin-left:0px;"/>其他
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">性别:</label>
									<div class="controls">
										<input type="radio" name="sex" checked="checked"  value="男" style="margin-left:0px;"/>男
										<input type="radio" name="sex"  value="女" style="margin-left:0px;"/>女
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">年龄:</label>
									<div class="controls">
										<input type="text" id="age" 
											validate="{required:true,minlength:1,maxlength:3}" name="age"
											value="${obj.age }"  onkeyup="value=value.replace(/[^\d]/g,'')" style="width:100px;height:20px;border:1px solid #ccc;"/>
											岁
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">籍贯:</label>
									<div class="controls">
										<input type="text" class="span6 m-wrap"
											validate="{required:true,minlength:2,maxlength:50}"
											name="sourceAddr" value="${obj.sourceAddr}" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">婚姻状况:</label>
									<div class="controls">
										<input type="radio" name="marryStatus"  checked="checked"  value="已婚" style="margin-left:0px;"/>已婚
										<input type="radio" name="marryStatus"  value="未婚" style="margin-left:0px;"/>未婚
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">个人工作经验:</label>
									<div class="controls">
										<input type="radio" name="workTime" checked="checked" value="1年以下" style="margin-left:0px;"/>1年以下
										<input type="radio" name="workTime"  value="1-2年" style="margin-left:0px;"/>1-2年
										<input type="radio" name="workTime"  value="2-3年" style="margin-left:0px;"/>2-3年
										<input type="radio" name="workTime"  value="3-5年" style="margin-left:0px;"/>3-5年
										<input type="radio" name="workTime"  value="5年以上" style="margin-left:0px;"/>5年以上
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">求职意向岗位类型:</label>
									<div class="controls">
										<input type="radio" name="companyType" checked="checked" value="0" style="margin-left:0px;"/>摄影岗位
										<input type="radio" name="companyType"  value="1" style="margin-left:0px;"/>婚庆岗位
										<input type="radio" name="companyType"  value="2" style="margin-left:0px;"/>其他岗位
									</div>
								</div>
								<div class="control-group" id="ueditor_comment">
									<input type="hidden" name="isWord" value="1">
									<label class="control-label">个人求职简介：</label>
									<div class="controls">
										<script id="ueditor" type="text/plain" name="content" style="width: 90%">${obj.content}</script>
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