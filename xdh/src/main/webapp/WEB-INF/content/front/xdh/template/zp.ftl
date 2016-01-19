<%@ page contentType="text/html;charset=UTF-8"%>
<div style="height:30px;width:1000px;float:left;margin-top:10px;">
	<img src="${r'$'}{ctx }/assets/xdh/common/zp.jpg" title="招聘专场" alt="招聘专场"/>
	<a href="${r'$'}{ctx }/xdh/list/58.html"><img src="${r'$'}{ctx }/assets/xdh/common/more.jpg" title="更多招聘专场" alt="更多招聘专场"/></a>
</div>
<div style="width:100%;height:240px;border-top:1px solid #ccc;border-bottom:1px solid #ccc;float:left;">
			
			<div style="width:1000px;height:240px;float:left;">
				<div style="width:375px;height:240px;float:left;" class="cms_new">
					<#list listo as objone>
						<a href="${r'$'}{ctx }/xdh/article/${objone.id}.html" title="${objone.title}">
						<img src="${r'$'}{ctx }/${objone.imgpath}" style="width:355px;height:230px;margin: 5px 10px 5px 10px;"></a>
					</#list>
				</div>
				<div style="width:600px;height:40px;float:left;">
				<div style="width:80px;height:40px;float:left;"><img src="${r'$'}{ctx }/assets/xdh/common/news.jpg" alt="婚庆婚纱最新消息"/></div>
				<div class="title_new" style="float:left">
				<#list listo as objone>
					<a href="${r'$'}{ctx }/xdh/article/${objone.id}.html" title="${objone.title}">${objone.title}</a>
				</#list>
				</div>
				</div>
				<div style="width:300px;height:200px;float:left;" class="cms_new">
					<ul>
						<#list list as obj>
							<li><a href="${r'$'}{ctx }/xdh/article/${obj.id}.html" title="${obj.title}">${obj.title}</a></li>
						</#list>
					</ul>
						
				</div>
				<div style="width:300px;height:200px;float:left;padding-left:20px;" class="cms_new">
					<ul>
						<#list listt as objtwo>
							<li><a href="${r'$'}{ctx }/xdh/article/${objtwo.id}.html" title="${objtwo.title}">${objtwo.title}</a></li>
						</#list>
					</ul>
				</div>
			</div>
		</div>