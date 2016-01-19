<%@ page contentType="text/html;charset=UTF-8"%>
<script type="text/javascript">
	function fabu(){
		window.location.href = "${ctx}/login";
	}
</script>
<div style="width:355px;float:left;">
	<img src="${ctx }/assets/xdh/common/dh_xdh.jpg"/>
</div>
<div style="width:355px;float:left;color:#666;text-align:center;font-size:14px;">
	<span style="color:#4490f7;font-weight:bold;font-size: 30px;">50万</span>会员的选择!
</div>
<div style="width:355px;float:left;text-align:center;">
	<input type="button" value="发布招聘" class="btn2" onclick="fabu();"/>
	<input type="button" value="发布个人求职" class="btn2" onclick="fabu();"/>
</div>