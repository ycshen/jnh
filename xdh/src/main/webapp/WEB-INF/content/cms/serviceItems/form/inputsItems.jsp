<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--ID -->
<input type="hidden" value="${obj.id}" name="id">
<input type="hidden" value="${obj.serviceItemsParentId}" name="serviceItemsParentId">
<div class="control-group">
	<label class="control-label">服务子项目项目类型:</label>
	<div class="controls">
		<select name="serviceItemsType" id="selectServiceItemsType">
			<option value="文字">文字</option>
			<option value="图片">图片</option>
		</select>
	</div>
</div>

<script type="text/javascript">
$(function(){
	var serviceItemsType = "${obj.serviceItemsType}";
	if(serviceItemsType == "" || serviceItemsType == null){
		serviceItemsType = "文字";
	}
	
	$("#selectServiceItemsType").val(serviceItemsType);
});
</script>



