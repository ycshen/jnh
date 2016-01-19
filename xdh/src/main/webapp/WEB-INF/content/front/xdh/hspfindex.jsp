<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="http://www.xdhphoto.com" />
<html>
<head>
<title>嘉年华婚礼创意馆|嘉年华婚礼|成都嘉年华婚礼|嘉年华婚纱摄影|嘉年华婚礼策划|嘉年华宝宝宴|嘉年华造型设计|嘉年华商业演出|嘉年华礼服租赁|嘉年华花艺造型|嘉年华寿宴</title>
<meta name="keywords" content="嘉年华婚礼创意馆|嘉年华婚礼|成都嘉年华婚礼|嘉年华婚纱摄影|嘉年华婚礼策划|嘉年华宝宝宴|嘉年华造型设计|嘉年华商业演出|嘉年华礼服租赁|嘉年华花艺造型|嘉年华寿宴" />
<meta name="description" content="嘉年华婚礼创意馆|嘉年华婚礼|成都嘉年华婚礼|嘉年华婚纱摄影|嘉年华婚礼策划|嘉年华宝宝宴|嘉年华造型设计|嘉年华商业演出|嘉年华礼服租赁|嘉年华花艺造型|嘉年华寿宴" />

<!-- <meta name="decorator" content="cms_xdh"/> -->
<link href="${ctx }/assets/xdh/common/css1.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-front-icon.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-front-mess.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-front-invite.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/xdh/common/m-webim-lite.css" rel="stylesheet" type="text/css" />
<link href="${ctx }/assets/comp/scoller/scroller_roll.css" rel="stylesheet" type="text/css"></link>
<link href="${ctx }/assets/xdh/css/cms.css" rel="stylesheet" type="text/css"></link>
<link href="${ctx }/assets/xdh/common/rc.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div style="width:100%">
	<div style="width:1000px;margin-left:auto;margin-right:auto;">
	<div style="width:100%;height:40px;background-color:#484647;">
		<%@include file="nav.jsp" %>
	</div>
	<div style="width:100%;">
		<%@ include file="layouts/index/hq.jsp"%>
		<%@ include file="layouts/index/cont1.jsp"%>
		<%@ include file="layouts/index/yj.jsp"%>
		<%@ include file="layouts/index/cz.jsp"%>
		<%-- <%@ include file="layouts/index/huodong.jsp"%> --%>
		<%@ include file="layouts/index/flinks.jsp"%>
	</div>
	
	</div>
	</div>
	<script type="text/javascript" src="${ctx }/assets/comp/scoller/scroller_roll.js"></script>
	<script type="text/javascript">
		$(function(){
			scroller("#dianpu");
			scroller("#huodong");
		});
		function scroller(id){
			$(id).scroller_roll({
			    title_show: 'enable',//enable  disable
			    time_interval: '20',
			    window_background_color: "rgb(247, 247, 247)",
			    window_padding: '1',
			    border_size: '1',
			    border_color: 'rgb(236, 236, 236)',
			    images_width: '185',
			    images_height: '148',
			    images_margin: '10',
			    title_size: '12',
			    title_color: 'black',
			    show_count: '5'
			});
			$(id).css("width","1000px");
		}
	</script>
</body>
</html>