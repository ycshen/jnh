$(function(){
	$(".banner_ul_li_con").mouseover(function(){
		mouseover(this);
	});
	$(".banner_ul_li_con").mouseout(function(){
		mouseout(this);
	});
});

/**
 * 鼠标离开触发事件
 */
function mouseout(obj){
	var topHtml = $(obj).find(".banner_ul_li_con_top").html();
	var bottomHtml = $(obj).find(".banner_ul_li_con_bottom").html();
	$(obj).find(".banner_ul_li_con_top").html(bottomHtml).css("color", "#000");
	$(obj).find(".banner_ul_li_con_bottom").html(topHtml).css("color", "#000");
}

/**
 * 鼠标进入触发事件
 */
function mouseover(obj){
	var topHtml = $(obj).find(".banner_ul_li_con_top").html();
	var bottomHtml = $(obj).find(".banner_ul_li_con_bottom").html();
	$(obj).find(".banner_ul_li_con_top").html(bottomHtml).css("color", "#fff");
	$(obj).find(".banner_ul_li_con_bottom").html(topHtml).css("color", "#fff");
}