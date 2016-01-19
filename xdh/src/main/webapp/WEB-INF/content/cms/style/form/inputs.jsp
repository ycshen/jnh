<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--ID -->
<input type="hidden" value="${obj.id }" name="id">
<div class="control-group">
	<label class="control-label">婚纱照类型:</label>
	<div class="controls">
		<select name="styleType">
			<option value="0">自然范</option>
			<option value="1">清新范</option>
			<option value="2">文艺范</option>
			<option value="3">纪实范</option>
			<option value="4">罗马范</option>
			<option value="5">海洋范</option>
		</select>
	</div>
</div>
<div class="control-group">
   <label class="control-label">首页展示图片</label>
   <div class="controls">
      <div class="fileupload fileupload-new" data-provides="fileupload">
         <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
         	<c:choose>
				<c:when test="${not empty obj.imgpath }">
					<c:set var="imgpath" value="${ctx }/${obj.imgpath }" scope="page" />
				</c:when>
				<c:otherwise>
					<c:set var="imgpath" value="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" scope="page" />
				</c:otherwise>
			</c:choose>
            <img src="${imgpath}"  alt="" />
         </div>
         <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
         <div>
            <span class="btn btn-file"><span class="fileupload-new">选择</span>
            <span class="fileupload-exists">更改</span>
            <input type="file" class="default fileimg" name="imgFile"/></span>
            <input type="hidden" name="imgpath" value="${obj.imgpath }"/>
            <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">移除</a>
         </div>
      </div>
      <span class="label label-important">注：如果需要展示到首页的六大风格，请务必上传图片,文件大小不能超过4M</span>
   </div>
</div>


