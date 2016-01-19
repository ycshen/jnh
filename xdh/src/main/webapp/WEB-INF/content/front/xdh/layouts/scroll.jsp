<%@ page contentType="text/html;charset=UTF-8"%>
<script src="${ctx }/assets/static/kinMaxShow/jquery.kinMaxShow-1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	
	$("#kinMaxShow").kinMaxShow({
			height:600,
			intervalTime: 4,
			button:{
					showIndex:false,
					normal:{background:'url(${ctx }/assets/static/kinMaxShow/button.png) no-repeat -14px 0',marginRight:'8px',border:'0',right:'48%',bottom:'20px'},
					focus:{background:'url(${ctx }/assets/static/kinMaxShow/button.png) no-repeat 0 0',border:'0'}
				}
		});
});
</script>	
<div id="kinMaxShow" style="width:100%;max-width:1920px;height:600px;margin-left:auto;margin-right:auto;float:left;">
   <div><a href="http://www.52jnh.com" target="_blank"><img alt="" src="${ctx }/assets/xdh/common/scroll_1.png"></a></div>
   <div><a href="http://www.52jnh.com" target="_blank"><img alt="" src="${ctx }/assets/xdh/common/scroll_2.png"></a></div>
   <div><a href="http://www.52jnh.com" target="_blank"><img alt="" src="${ctx }/assets/xdh/common/scroll_3.jpg"></a></div>
</div>
	
