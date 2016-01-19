<%@ page contentType="text/html;charset=UTF-8"%>
<div style="height:40px;width:1000px;float:left;">
	<img src="${r'$'}{ctx }/assets/xdh/common/hssy.png" style="cursor:pointer;" id="index_img_1"/>	
	<img src="${r'$'}{ctx }/assets/img/i2.png"/>
	<img src="${r'$'}{ctx }/assets/xdh/common/hq.png" style="cursor:pointer;" id="index_img_2" />
	<img src="${r'$'}{ctx }/assets/img/i2.png"/>
	<img src="${r'$'}{ctx }/assets/xdh/common/hslf.png"  style="cursor:pointer;" id="index_img_3"/>
</div>
<div style="width:100%;height:240px;border-top:1px solid #ccc;border-bottom:1px solid #ccc;float:left;margin-top: 10px;">
			
			<div style="width:1000px;height:240px;float:left;">
				<div style="width:375px;height:240px;float:left;" class="cms_new">
					<#list listo as objone>
						<a href="${r'$'}{ctx }/xdh/article/${objone.id}.html" title="${objone.title}">
						<img src="${r'$'}{ctx }/${objone.imgpath}" style="width:355px;height:230px;margin: 5px 10px 5px 10px;"></a>
					</#list>
				</div>
				<div style="width:600px;height:40px;float:left;">
				<div class="title_new" style="float:left">
				<#list listo as objone>
					<a href="${r'$'}{ctx }/xdh/article/${objone.id}.html" title="${objone.title}">${objone.title}</a>
				</#list>
				</div>
				<div style="width:80px;height:40px;float:left;"><a href="${r'$'}{ctx }/xdh/list/57.html"><img src="${r'$'}{ctx }/assets/img/i_4.png" alt="更多资讯"/></a></div>
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