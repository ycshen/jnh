<%@ page contentType="text/html;charset=UTF-8"%>
<link rel="stylesheet" href="${ctx }/assets/js/FlexSlider/flexslider.css" media="screen" />
<script type="text/javascript" src="${ctx }/assets/js/FlexSlider/jquery.flexslider-min.js">
</script>
<script type="text/javascript">
	$(window).load(function() {
	  $('.flexslider').flexslider({
	    animation: "slide"
	  });
	  
	  $("ol").remove();
	});
	
</script>

<div class="top">
	<%-- <a href="http://www.rguess.com"><img
		src="${ctx }/assets/xdh/common/xdh_home1.jpg" width="1000px;" height="359"
		border="0">
	</a> --%>
	
	<div class="flexslider">
	  <ul class="slides">
	    <li>
	      <a href="http://www.xdhphoto.com"><img
			src="${ctx }/assets/xdh/common/xdh_home1.jpg" width="1000px;" height="359"
			border="0"></a>
	    </li>
	    <li>
	     <a href="http://www.xdhphoto.com"><img
		src="${ctx }/assets/xdh/common/xdh_home.jpg" width="1000px;" height="359"
		border="0"></a>
	    </li>
	  </ul>
</div>
</div>