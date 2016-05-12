<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--ID -->
<input type="hidden" value="${obj.id }" name="id">
<input type="hidden" value="${obj.category.id }" name="category.id" id="caId">
<div class="control-group">
	<label class="control-label">标题:</label>
	<div class="controls">
		<input type="text" class="span6 m-wrap"
			validate="{required:true,minlength:2,maxlength:40}" name="title"
			value="${obj.title }" />
	</div>
</div>
<div class="control-group">
	<label class="control-label">栏目:</label>
	<div class="controls">
		<input type="text" class="span6 m-wrap"
			validate="{required:true,minlength:2,maxlength:10}" 
			value="${obj.category.name }" onfocus="showCaTree()" id="caName"/>
	</div>
</div>
<div class="control-group">
   <label class="control-label">图片</label>
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
      <span class="label label-important">注：如果是图片新闻，请务必上传图片,文件大小不能超过4M</span>
   </div>
</div>
<div class="control-group">
	<label class="control-label">文章类型:</label>
	<div class="controls">
		<select name="isBlog">
			<option value="">请选择</option>
			<option value="0">资讯</option>
			<option value="1">博客</option>
		</select>
	</div>
</div>
<div class="control-group">
	<label class="control-label">关键字:</label>
	<div class="controls">
		<input type="text" class="span6 m-wrap tags" name="keywords" value="${obj.keywords }" />
	</div>
</div>
<div class="control-group">
	<label class="control-label">描述、摘要:</label>
	<div class="controls">
		<textarea rows="3" cols="6" class="span6 m-wrap" name="description">${obj.description }</textarea>
	</div>
</div>


