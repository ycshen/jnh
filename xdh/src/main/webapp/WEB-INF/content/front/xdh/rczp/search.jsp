<%@ page contentType="text/html;charset=UTF-8"%>

        <!--引用地区选择插件-->
<link href="${ctx }/assets/js/city/areaselect.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.txtpro {
background-image:url(${ctx }/assets/img/select.jpg);
/*如果想添加你的网站Logo，可将这两行注释启用
background-repeat: no-repeat; 
background-position: center center;
*/
}
</style>


<div style="width:1000px;height:80px;;margin-left:auto;margin-right:auto;border-bottom: 1px #484647 solid;">
		<div style="width:100px;float:left;height:50px;font-size:20px;color:#999;margin-top:30px;text-align:center;">请搜索:</div>
		<div style="width:900px;float:left;height:80px;">
        
			 <input class="txtpro" type="text" id="pro" placeholder="请选择省份..." style="font-size:14px;color:#444;width:100px;height:30px;margin-top:25px;border:1px solid #ccc;"/>
			<input class="txtpro" type="text" id="city" placeholder="请选择城市..." style="font-size:14px;color:#444;width:100px;height:30px;margin-top:25px;border:1px solid #ccc;"/>
			<input class="txtpro" id="position" type="text" placeholder="请选择职位..." style="font-size:14px;color:#444;width:100px;height:30px;margin-top:25px;border:1px solid #ccc;"/>
			<input type="text" id="myName" placeholder="也可输入企业名称，姓名进行搜索" style="font-size:14px;color:#444;width:250px;height:30px;margin-top:25px;border:1px solid #ccc;"/>
			<input type="button" class="btn3" onclick="searchRc();" value="搜人才"/>
			<input type="button"  class="btn3" onclick="searchGz();" value="搜工作"/>
		</div>
	</div>
<div id="positionDiv" style="width:500px;height:230px;display:none;border:2px solid #4490f7;background-color: #f8f8f8;">
	<div style="border-bottom: 1px dotted #ccc;width:500px;height:60px;padding-top:10px;line-height:30px;">
		<div style="float:left;font-size:12px;color:#999;width:70px;height:60px;margin-right:29px;text-align:right;">摄影类</div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">摄影总监/主管</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">摄影师</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">摄影助理</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">写真摄影师</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">摄影学徒</a></div>
	</div>
	<div style="border-bottom: 1px dotted #ccc;width:500px;height:60px;padding-top:10px;line-height:30px;">
		<div style="float:left;font-size:12px;color:#999;width:70px;height:60px;margin-right:29px;text-align:right;">化妆类</div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">化妆总监/主管</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">化妆师</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">化妆助理</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">礼服师</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">写真化妆师</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">化妆学徒</a></div>
	</div>
	<div style="border-bottom: 0px dotted #ccc;width:500px;height:30px;padding-top:10px;line-height:30px;">
		<div style="float:left;font-size:12px;color:#999;width:70px;height:60px;margin-right:29px;text-align:right;">婚庆类</div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">婚庆策划</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">婚庆主持</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">婚礼摄像师</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">摄像助理</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">花艺师</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">布场助理</a></div>
		<div style="float:left;font-size:12px;color:#444;width:100px;"><a href="javascript:void(0);" onclick="getValue(this);">婚庆学徒</a></div>
	</div>
	
</div>
 <script type="text/javascript" src="${ctx }/assets/js/city/jquery.js"></script>
<script type="text/javascript" src="${ctx }/assets/js/city/data.js"></script>
<script type="text/javascript" src="${ctx }/assets/js/city/areaselect.js"></script>

<script type="text/javascript">
	function searchRc(){
		var pro = $("#pro").val();
		var city = $("#city").val();
		var position = $("#position").val();
		var name = $("#myName").val();
		
		window.location.href = "${ctx }/xdh/search/0.html?companyType=0&pro=" + pro + "&city="+ city + "&position="+position + "&name=" + name;
	}
	
	function searchGz(){
		var pro = $("#pro").val();
		var city = $("#city").val();
		var position = $("#position").val();
		var name = $("#myName").val();
		window.location.href = "${ctx }/xdh/search/1.html?companyType=0&pro=" + pro + "&city="+ city + "&position="+position + "&name=" + name;
	}
	

	 new locationCard({
         ids: ['pro', 'city', 'country']
     }).init();
	 
	 $("#position").live("click", function(){
		 showDiv();
	 });
	 
	 function showDiv(){
		 var positions = $("#position").offset();
		 var topmuch = positions.top - 20;
		 var tops = topmuch + "px;";
		 var lefts = positions.left + "px";
		 var positionDiv = $("#positionDiv");
		 positionDiv.css("position", "absolute").css({
	            'top': tops,
	            'left': lefts
	        	}).show();
	 }
	 function clearDiv(){
		 var positionDiv = $("#positionDiv");
		 positionDiv.hide();
	 }
	 
	 function getValue(obj){
		 $("#position").val('');
		 $("#position").val($(obj).html());
	 }
	 
     document.onclick = function (event) {
         var e = event || window.event;
         var elem = e.srcElement || e.target;
         while (elem) {
             if (elem != document) {
                 if (elem.id == "position") {
                	 showDiv();
                     return;
                 }
                 elem = elem.parentNode;
             } else {
            	 clearDiv();
                 return;
             }
         }
     }
</script>