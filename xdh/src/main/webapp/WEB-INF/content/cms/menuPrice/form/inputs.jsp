<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--ID -->
<input type="hidden" value="${menuPrice.id }" name="id">
<div class="control-group">
	<label class="control-label">套餐类型:</label>
	<div class="controls">
		<select name="menuType" id="selectMenuType">
			<option value="0">婚庆套餐</option>
			<option value="1">婚纱摄影套餐</option>
		</select>
	</div>
</div>
<div class="control-group">
	<label class="control-label">套餐名称:</label>
	<div class="controls">
		<input type="text" name="menuName" value="${menuPrice.menuName }"/>
	</div>
</div>
<div class="control-group">
	<label class="control-label">套餐价格:</label>
	<div class="controls">
		<input type="text" name="menuPrice" value="${menuPrice.menuPrice}"/>
	</div>
</div>
<div class="control-group">
	<label class="control-label">套餐标语:</label>
	<div class="controls">
		<input type="text" name="menuBanner" value="${menuPrice.menuBanner}"/>
	</div>
</div>
<script type="text/javascript">
$(function(){

	initSelectValue();
});
function initSelectValue(){
	var menuType = "${menuPrice.menuType}";
	if(menuType == "" || menuType == null || menuType == undefined){
		menuType = "0";
	}
	
	$("#selectMenuType").val(menuType);

}
</script>
