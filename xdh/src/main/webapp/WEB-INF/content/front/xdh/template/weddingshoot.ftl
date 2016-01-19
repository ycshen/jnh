<%@ page contentType="text/html;charset=UTF-8"%>
<link href="${r'$'}{ctx }/assets/css/hsfg.css" rel="stylesheet" type="text/css"/>
<div class="hsfg_main">
	<div class="hsgf_main_title">
		<div class="hsgf_main_title_img">
			<img src="${r'$'}{ctx }/assets/img/hsfg/0705.jpg"/>
		</div>
		<div class="hsgf_main_title_more">
			<a href="${r'$'}{ctx }/xdh/caseshow/caseshow.html?cid=48">More>></a>
		</div>
		
	</div>
	<div class="hsgf_main_con">
		<#list list_wedding as wedding>
			<div class="hsfg_ul_li"><a href="${r'$'}{ctx }/xdh/imgarticle/${wedding.recomendId}.html" ><img alt="${wedding.recomendName}" src="${r'$'}{ctx }/${wedding.imgPath}" style="width:300px;height:200px;"/></a></div>
		</#list>
		
	</div>
</div>
<div class="hsfg_main">
	<div class="hsgf_main_title">
		<div class="hsgf_main_title_img">
			<img src="${r'$'}{ctx }/assets/img/hsfg/0706.jpg"/>
		</div>
		<div class="hsgf_main_title_more">
			<a href="${r'$'}{ctx }/xdh/caseshow/caseshow.html?cid=40">More>></a>
		</div>
		
	</div>
	<div class="hsgf_main_con">
		<#list list_shoot as shoot>
			<div class="hsfg_ul_li"><a href="${r'$'}{ctx }/xdh/imgarticle/${shoot.recomendId}.html"><img alt="${shoot.recomendName}" src="${r'$'}{ctx }/${shoot.imgPath}" style="width:300px;height:200px;"/></a></div>
		</#list>
	</div>
</div>