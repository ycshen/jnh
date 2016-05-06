<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.page{
		width: 100%;
	}
	.caseshow_page{
	width: 1000px;
	height: 40px;
	float:left;
	text-align: center;
}
.caseshow_page_div{
	float:left;
	margin: 0px 10px 0px 10px;
	height: 24px;
	padding-top:2px;
	border: 1px solid #3ec0c0;
 	font: 14px Microsoft Yahei,Verdana,瀹嬩綋,sans-serif;
 	padding: 0px 10px 0px 10px;
	text-align: center;
	
}
.caseshow_page_center{
	height: 40px;
	float:left;
	width: 800px;
	margin-left: 200px;
	
}
</style>
<div class="page">
	<div class="caseshow_page">
		<div class="caseshow_page_center">
			<div class="caseshow_page_div" style="cursor: not-allowed">共${page.totalItems }篇文章</div>
			<div class="caseshow_page_div"><a href="${ctx}/blog/page/1">首页</a></div>
			<div class="caseshow_page_div"><a href="${ctx}/blog/page/${pr}">上一页</a></div>
			<div class="caseshow_page_div"><a href="${ctx}/blog/page/${pn}">下一页 </a></div>
			<div class="caseshow_page_div"><a href="${ctx}/blog/page/${pp}">末页 </a></div>
			<div class="caseshow_page_div"  style="cursor: not-allowed">${p}/${pp}页 </div>
			<div class="caseshow_page_div"  style="cursor: not-allowed">20篇/页</div>
		</div>	
	</div>
</div>