<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--ID -->
<input type="hidden" value="${obj.id}" name="id">
<input type="hidden" value="${obj.menuPriceId}" name="menuPriceId">
<div class="control-group">
	<label class="control-label">模块名称:</label>
	<div class="controls">
		<select name="caseType" id="selectCaseType">
			<c:forEach items="${caseTypeList}" var="caseType">
			 	<option value="${caseType}">${caseType}</option>
			</c:forEach>
		</select>
	</div>
</div>
<div class="control-group">
	<label class="control-label">套餐顺序:</label>
	<div class="controls">
		<select name="sort" id="selectSort">
			<c:forEach items="${caseTypeList}" varStatus="status" >
			 	<option value="${status.index + 1}">${status.index + 1}</option>
			</c:forEach>
		</select>
	</div>
</div>

<script type="text/javascript">
$(function(){

	initSelectValue();
});
function initSelectValue(){
	var caseType = "${obj.caseType}";
	if(caseType == "" || caseType == null || caseType == undefined){
		caseType = "舞台区通道";
	}
	
	$("#selectCaseType").val(caseType);
	var sort = ${obj.sort};
	if(sort == "" || sort == null || sort == undefined){
		sort = "0";
	}
	$("#selectSort").val(sort);
}
</script>



