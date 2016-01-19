$(function(){
	$("#index_img_1").live("mouseover", function(){
		$("#index_news_2").css("display", "none");
		$("#index_news_3").css("display", "none");
		$("#index_news_1").css("display", "inline");
		
	});
	$("#index_img_2").live("mouseover", function(){
		$("#index_news_1").css("display", "none");
		$("#index_news_3").css("display", "none");
		$("#index_news_2").css("display", "inline");
		
	});
	
	$("#index_img_3").live("mouseover", function(){
		$("#index_news_1").css("display", "none");
		$("#index_news_3").css("display", "inline");
		$("#index_news_2").css("display", "none");
		
	});
});