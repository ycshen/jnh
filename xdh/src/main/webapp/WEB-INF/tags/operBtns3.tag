<%@ tag language="java" pageEncoding="UTF-8" description="页面顶部导航栏"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ attribute name="modelKey" type="java.lang.String" required="true" description="模块key" %>

<div class="span4 pull-right">
		<a class="btn green" href="javascript:void(0)" onclick="Page.addObj();">
			发布招聘信息<i class="icon-plus"></i>
		</a>
	<a class="btn blue" href="javascript:void(0);" onclick="Page.updateObj();">
			修改招聘信息<i class="icon-pencil"></i>
	</a>
	<a class="btn red" href="javascript:void(0);" onclick="Page.deleteObj();">
			删除招聘信息<i class="icon-trash"></i>
	</a>
	<a class="btn blue" href="javascript:void(0);" onclick="Page.viewObj();">
			详细<i class="icon-search"></i>
	</a>
</div>
