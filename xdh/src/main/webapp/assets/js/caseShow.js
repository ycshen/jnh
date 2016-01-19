$(function(){
	var cid = window.location.search.split("&")[0].split("=")[1];
	if(cid == 40){
		$("#caseshow_banner_img_2 img").attr("src", "/xdh/assets/img/caseShow/c_22.png");
		$("#caseshow_banner_img_3 img").attr("src", "/xdh/assets/img/caseShow/c_3.png");
		$("#caseshow_banner_img_4 img").attr("src", "/xdh/assets/img/caseShow/c_4.png");
	}else if(cid == 48){
		$("#caseshow_banner_img_2 img").attr("src", "/xdh/assets/img/caseShow/c_2.png");
		$("#caseshow_banner_img_3 img").attr("src", "/xdh/assets/img/caseShow/c_33.png");
		$("#caseshow_banner_img_4 img").attr("src", "/xdh/assets/img/caseShow/c_4.png");
	}else if(cid == 49){
		$("#caseshow_banner_img_2 img").attr("src", "/xdh/assets/img/caseShow/c_2.png");
		$("#caseshow_banner_img_3 img").attr("src", "/xdh/assets/img/caseShow/c_3.png");
		$("#caseshow_banner_img_4 img").attr("src", "/xdh/assets/img/caseShow/c_44.png");
	}
});