<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../jnh/common/head.jsp"%>
<html>
<head>
<title></title>
<meta name="decorator" content="cms_xdh" />
<link href="${ctx }/assets/css/caseShow.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript">
$(function(){
	var cid = window.location.search.split("&")[0].split("=")[1];
	if(cid == 40){
		$("#caseshow_banner_img_2 img").attr("src", "${ctx }/assets/img/caseShow/c_22.png");
		$("#caseshow_banner_img_3 img").attr("src", "${ctx }/assets/img/caseShow/c_3.png");
		$("#caseshow_banner_img_4 img").attr("src", "${ctx }/assets/img/caseShow/c_4.png");
	}else if(cid == 48){
		$("#caseshow_banner_img_2 img").attr("src", "${ctx }/assets/img/caseShow/c_2.png");
		$("#caseshow_banner_img_3 img").attr("src", "${ctx }/assets/img/caseShow/c_33.png");
		$("#caseshow_banner_img_4 img").attr("src", "${ctx }/assets/img/caseShow/c_4.png");
	}else if(cid == 49){
		$("#caseshow_banner_img_2 img").attr("src", "${ctx }/assets/img/caseShow/c_2.png");
		$("#caseshow_banner_img_3 img").attr("src", "${ctx }/assets/img/caseShow/c_3.png");
		$("#caseshow_banner_img_4 img").attr("src", "${ctx }/assets/img/caseShow/c_44.png");
	}
});
</script>
	</head>
<body>
	<div class="caseshow_main">
		<div class="caseshow_banner">
			<div class="caseshow_banner_img">
				<img src="${ctx }/assets/img/caseShow/c_1.png"/>
			</div>
			<div class="caseshow_banner_nav">
				<a href="/xdh/index.html">首页</a>>><a href="${ctx }/xdh/caseshow/caseshow.html?cid=40">案例展示</a>
			</div>
			<div class="caseshow_banner_detail">
				<a href="${ctx }/xdh/caseshow/caseshow.html?cid=40" id="caseshow_banner_img_2"><img src="${ctx }/assets/img/caseShow/c_22.png" style="border: 1px solid #3ec0c0;"/></a>
				<a href="${ctx }/xdh/caseshow/caseshow.html?cid=48" id="caseshow_banner_img_3"><img src="${ctx }/assets/img/caseShow/c_3.png" style="border: 1px solid #ccc;"/></a>
				<a href="${ctx }/xdh/caseshow/caseshow.html?cid=49" id="caseshow_banner_img_4"><img src="${ctx }/assets/img/caseShow/c_4.png" style="border: 1px solid #ccc;"/></a>
			</div>
		</div>
		<div class="caseshow_list">
			<c:forEach var="article" items="${page.result }">
				<a href="${ctx }/xdh/caseshow/${article.id}.html" 
					title="${article.title }">
					<img src="${ctx }/${article.imgpath}" width="250" height="200">
					<p style="color:#444;font-size:14px;width:100%;text-align:center;">${article.title }</p>
				</a>
			</c:forEach>
		</div>
		<div class="caseshow_page">
			<div class="caseshow_page_center">
				<div class="caseshow_page_div" style="cursor: not-allowed">共${page.totalItems }条</div>
				<div class="caseshow_page_div"><a href="${ctx }/xdh/caseshow/caseshow.html?cid=${cid}">首页</a></div>
				<div class="caseshow_page_div"><a href="${ctx }/xdh/caseshow/caseshow.html?cid=${cid}&p=${pr}">上一页</a></div>
				<div class="caseshow_page_div"><a href="${ctx }/xdh/caseshow/caseshow.html?cid=${cid}&p=${pn}">下一页 </a></div>
				<div class="caseshow_page_div"><a href="${ctx }/xdh/caseshow/caseshow.html?cid=${cid}&p=${pp}">末页 </a></div>
				<div class="caseshow_page_div"  style="cursor: not-allowed">${p }/${pp}页 </div>
				<div class="caseshow_page_div"  style="cursor: not-allowed">12条/页</div>
			</div>	
		</div>
	</div>										
	<%@ include file="layouts/bTip/bTipAndAddress.jsp"%>
	
</body>
</html>