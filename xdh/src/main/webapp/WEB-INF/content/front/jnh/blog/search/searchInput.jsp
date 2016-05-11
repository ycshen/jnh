<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.pageSearch{
		width: 100%;
		margin-bottom: 10px;
	}
	.caseshow_page_Search{
	width: 1000px;
	height: 60px;
	float:left;
	text-align: center;
}
.caseshow_page_center_Search{
	height: 60px;
	float:left;
	width: 800px;
	margin-left: 200px;
	
}
.txtSearch{
	width: 400px;
	height: 40px;
 	font: 16px Microsoft Yahei,Verdana,瀹嬩綋,sans-serif;
 	border-radius: 5px;
 	border: 1px solid #ccc;
}
</style>
<div class="pageSearch">
	<div class="caseshow_page_Search">
		<div class="caseshow_page_center_Search">
			<form action="${ctx}/blog/search" method="post">
				<input name="queryString" type="text" class="txtSearch" placeholder="请输入需要查询的关键词"/> 
				<input type="submit" value="全文搜索" class="btn btn-success"/>
			</form>
		</div>	
	</div>
</div>