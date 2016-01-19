<%@ page contentType="text/html;charset=UTF-8"%>
<div class="fl w100 p10 lianjie" style="margin: 10px 0px;">
	<div style="float:left;width:100%;">
		<img src="${r'$'}{ctx }/assets/xdh/common/link_show.jpg" title="友情连接" alt="友情链接"/>
	</div>
	<div style="float:left;width:100%;text-align:center;margin-top:10px;">
		<#list list as obj>
		<div style="float:left;height:40px;width:100px;margin: 10px 25px 0px 0px;text-aligin:right;font-size:18px;color:#444;">
			<a href="${obj.href}" style="width:100px;text-align:right;">${obj.title}</a>
		</div>
		</#list>
	</div>
</div>