<%@ page contentType="text/html;charset=UTF-8"%>
<div style="height:30px;width:1000px;float:left;margin-top:10px;">
	<img src="${r'$'}{ctx }/assets/xdh/common/seller_show.jpg" title="商家展示" alt="商家展示"/>
</div>
<div class="dianpu scroller_roll" id="dianpu">
	<ul>
		<#list list as obj>
			<li>
				<a href="${r'$'}{ctx }/xdh/article/${obj.id}.html" title="${obj.title}">
				<img src="${r'$'}{ctx }/${obj.imgpath}"></a>
			</li>
	    </#list>
	</ul>
</div>