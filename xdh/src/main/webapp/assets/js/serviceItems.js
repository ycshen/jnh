$(function(){
	$(".top_weixin").mouseover(function(){
		top_mouseover();
	});
	$(".top_weixin").mouseout(function(){
		top_mouseout();
	});
});

function top_mouseover(){
	$(".top_weixin_ewm_hide_div").css("display", "inline")
		.css("position", "relative").css("top", "60px")
}

function top_mouseout(){
	$(".top_weixin_ewm_hide_div").css("display", "none");
}
