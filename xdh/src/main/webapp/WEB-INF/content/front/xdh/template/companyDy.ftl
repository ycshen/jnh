<%@ page contentType="text/html;charset=UTF-8"%>
<div class="boxcont">
	<#list list as obj>
		<a href="${r'$'}{ctx }/xdh/article/${obj.id}.html"
			title="${obj.title}"><span class="fl">${obj.title}</span><span
			class="shijian">[${obj.createDate?string('yyyy-MM-dd')}]</span> </a>
    </#list>
</div>