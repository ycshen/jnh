<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	StringBuffer url = request.getRequestURL();
	if(url.toString().contains("http://www.xdhphoto.com")){
		request.setAttribute("ctxto", "http://www.xdhphoto.com");
	}else if(url.toString().contains("http://localhost:8080")){
		request.setAttribute("ctxto", request.getContextPath());
	}else if(url.toString().contains("http://hd.xdhphoto.com")){
		request.setAttribute("ctxto", "http://www.xdhphoto.com");
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>西都汇_西都汇摄影器材城_西都汇婚纱婚庆城</title>
<link href="${ctxto}/assets/xdh/favicon.ico" rel="shortcut icon"/>
<meta name="description" content="西都汇，西都汇摄影器材城，西都汇婚纱婚庆城">
<meta name="keywords" content="西都汇，西都汇摄影器材城，西都汇婚纱婚庆城">
<script type="text/javascript" async="" charset="utf-8" src="${ctxto}/assets/xdh/hd/hd201411170900/core.php"></script><script type="text/javascript" async="" src="${ctxto}/assets/xdh/hd/hd201411170900/ga.js"></script><script type="text/javascript" src="${ctxto}/assets/xdh/hd/hd201411170900/jquery-1.3.2.js"></script>
<link href="${ctxto}/assets/xdh/hd/hd201411170900/index_css6th.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctxto}/assets/xdh/hd/hd201411170900/scroll.js"></script>
<script type="text/javascript" src="${ctxto}/assets/xdh/hd/hd201411170900/expo_share.js"></script><script src="${ctxto}/assets/xdh/hd/hd201411170900/share.js"></script>


<script>
function tiao(pling){
	document.documentElement.scrollTop=pling;
}
function CloseQQ(id)
{
	if(id==1){
		document.getElementById("lovexin1").style.display="none";
	}else if(id==2){
		document.getElementById("lovexin2").style.display="none";
	}else if(id==3){
		document.getElementById("lovexin3").style.display="none";
	}else if(id==4){
		document.getElementById("lovexin4").style.display="none";
	}
	return true;
}
function showline(lineObj,Num){
if(lineObj.className == "lineact")return;
var lineTabs = lineObj.parentNode.id;
var showline = document.getElementById(lineTabs).getElementsByTagName("li");
for(i=0; i <showline.length; i++)
{
  if (i == Num)
  {
   lineObj.className = "lineact"; 
      document.getElementById(lineTabs+"_Content"+i).style.display = "block";
  }else{
   showline[i].className = "linenor"; 
   document.getElementById(lineTabs+"_Content"+i).style.display = "none";
  }
} 
}
</script>
<style>
.showact{background:url(${ctxto}/assets/xdh/hd/hd201411170900/sp_bg_red.jpg) repeat-x;width:148px;height:49px;float:left;font-size:20px;color:#FFFFFF;line-height:49px;font-weight:bold;text-align:center;margin-left:1px; cursor:pointer}	
.shownor{background:url(${ctxto}/assets/xdh/hd/hd201411170900/sp_bg_grey.jpg) repeat-x;width:148px;height:49px;float:left;font-size:20px;color:#615959;line-height:49px;font-weight:bold;text-align:center;margin-left:1px;cursor:pointer}
.sp_div{width:448px;height:260px;margin-top:3px}
.civil_no{width:440px;text-align:center;line-height:200px;font-size:16px;color:#FF3E60}
.sp_new{width:448px;height:316px;border:1px solid #FF4364;padding:1px 0;margin-left:30px;}
.sp_new ul{width:448px;height:51px}

.bg_head{width:100%; height:auto; overflow:hidden; text-align:center;}
.bg_hp{width:100%;background-position:center top;overflow:hidden}
.hh1{background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_01.jpg); height:120px;}
.hh2{background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_02.jpg); height:120px;}
.hh3{background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_03.jpg); height:120px;}
.hh4{background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_04.jpg); height:140px;}
.hh6{background:#4490f7}
.divv7{background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_05.jpg); background-repeat:no-repeat;height:92px; margin:0 auto; width:1440px}
.divv8{width:980px; height:92px; margin:0 auto;}
.aa1{height:92px; width:256px; display:block; margin-top:0px; float:right; margin-right:50px;}

.a_title{width:980px; height:71px; margin:0 auto;}
.a_title a{height:71px; width:222px; display:block; margin-top:0px; float:right; margin-right:50px}
.m_div{width:1017px;padding: 0px;margin:0 auto;height:auto;overflow:hidden;margin-bottom:100px}
.m1_div{background:url(${ctxto}/assets/xdh/hd/hd201411170900/expo_sh_new_07.jpg) repeat-y;width:1017px;overflow:hidden}
.pp2{width:127px; height:37px;float:left;}
.pp3{width:435px; height:30px; line-height:25px; background-color:#EDEDED; color:#B40017; padding-left:15px; font-size:14px; font-weight:bold;margin-left:30px;  padding-top:5px;}
.pp4{width:1020px;margin:0 auto}
.sp1{margin-right:10px; display:inherit; color:#B40017}
.pdl1{padding-left:20px;}
.divv1{width:920px;margin:0 auto}
.ull1{margin-left:60px;margin-top:15px;margin-bottom: 18px; line-height: 20px; color:#999999; text-align:left}
.ull1 li {list-style-type: square;}
.table4{margin-left:25px;margin-top:15px;margin-bottom: 30px;line-height:25px}
.hidimg{margin-top:10px; display:none}
.divv2{width:955px;margin:0 auto;padding-top:10px}
.divv3{width:1000px;margin:0 auto;overflow:hidden}
.divv4{width: 100px;height: 32px;font-size: 14px;font-weight: bold;color: #333333;line-height: 33px;text-align:center;border:1px #E6E6E6 solid;margin-left:10px;border-bottom:none;margin-bottom: -2px;overflow: hidden;list-style-type: none;position: relative;clear:right;background:#FFFFFF}
.divv5{height:auto;width: 980px;margin:20px auto; overflow:hidden;}
.divv6{width: 100px;height: 32px;font-size: 14px;font-weight: bold;color: #333333;line-height: 33px; margin-top:25px;text-align:center;border:1px #E6E6E6 solid;margin-left:10px;border-bottom:none;margin-bottom: -2px;overflow: hidden;list-style-type: none;position: relative;clear:right;background:#FFFFFF;float:left}
.more_them{float:right;width: 100px;height: 32px;line-height: 33px;margin-top: 25px;text-align:right;margin-right: 10px;overflow: hidden;list-style-type: none;background: #FFFFFF;}
.more_them a{font-size: 12px;;color:#666666;}
#table1{margin:20px 0;}
#player1{width:380px; height:260px; margin-right:20px;}
#form1{width:450px;height:320px;margin-left:40px;}
#address2{width:80px;height:22px;vertical-align:middle;line-height:22px;float:left}
#order_sh{ cursor:pointer;background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expo_sub.jpg); border:0;width:129px; height:39px;}
.pp1{width:154px; text-align:center; float:left; height:39px; font-size:14px; color:#FF6666; overflow:hidden; line-height:39px; background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expo_num_show.jpg); background-repeat:no-repeat;}
.fontt1{font-size:22px; color:#FF0000; font-family:Arial;}
.fontt1 span{ font-weight:700}
.table2{background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/expo_add_bo.jpg); background-repeat:no-repeat; width:450px; height:320px;}
.cccleft{width: 100px;position: fixed;_position: absolute;_position: absolute;_top:expression(documentElement.scrollTop + 220 + "px");top: 220px;left: 50%;margin-left: -595px;z-index: 10000;}

.bbbright{ width:100px;position:fixed;_position:absolute;_position: absolute; _top: expression(documentElement.scrollTop + 220 + "px");top:220px;right:50%;margin-right:-595px;z-index:60;}
.hbh_bz{width:979px;margin:0 auto;overflow:hidden;}
.h551{height:581px;}
.hbh_bz h2{margin-top:-20px;*+margin-top:-25px;}
.h781{height:781px;}
.h608{height:781px;}
.h1135{height:1793px;}
.h1680{height:680px;}
.h3764{height:3765px;}
.xm_ul{width:950px;margin:0 auto; overflow:hidden;margin-bottom:20px}
.xm_cul_a{padding-bottom:15px;font-size:22px;color:#333333;padding-left:100px;display:block;font-family:'黑体';margin-top: -30px;}
.xm_ul li{width:286px;height:210px;float:left;margin:20px 15px 0 15px;display:inline}

.img_ci{width:957px;margin:0 auto;overflow:hidden;}
.hbh_bz h3{margin-top:-20px;*+margin-top:-25px;}
.img30p{width:950px;margin:30px auto;display:block;}
.mov{ position:relative;margin-top: -507px; *+margin-top:-120px;*+z-index:10;  background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/video_expo_05_130325new.jpg); width:410px; height:303px; padding:22px 0 0 8px;_padding:22px 0 0 8px;  margin-left:50px;}
.state{ position:relative; margin-top:40px;*+position:absolute; *+margin-top:380px; *+z-index:3; font-size:12px;margin-left:50px; *+margin-left:0px;width:415px; line-height:18px; text-align:justify;text-justify:inter-ideograph;height: 126px;overflow: hidden;}
.s_td{ position:relative;  width:468px; height:80px; overflow:hidden;}
.s_td h1 {margin-left:50px;margin-top:20px;color:#BC044A; font-size: 24px;  margin-bottom: -22px;*+position:absolute;*+margin-top:20px;}
.hb_shouju{width:955px; height:1000px; margin:10px auto;overflow:hidden;padding-top: 10px}
.hb_shouju li{ float:left; width:150px; margin-left:15px; text-align:left; height:20px; margin-top:10px;display:inline}
.hb_shouju ul{ margin-left:80px;}
.youqing{height:auto;border-top:1px #E6E6E6 solid;overflow: hidden;z-index:1}
.youqing ul {margin-bottom:20px;margin-left:10px}
.youqing ul li{float:left;width:100px;height:30px;;text-align: left;line-height: 30px;display:inline}
.youqing ul li a{color:#666666;}
.zhuanti{height:auto;border-top:1px #E6E6E6 solid;overflow: hidden;z-index:1}
.zhuanti ul { margin-bottom:20px;margin-left:10px}
.zhuanti ul li{float:left;width:470px;height:130px;margin:20px 10px 10px 0;overflow:hidden;text-align: left;line-height: 25px;display:inline}
.zhuanti ul li div{float:left;overflow:hidden;width:280px;margin-left:20px}
.zhuanti ul li a{color:#D76A70;font-weight:bold}
.zhuanti ul li span a{color:#666666;font-weight:normal}

.lineact{
font-weight: bold;
border: 1px #E6E6E6 solid;
border-bottom: 1px solid white;
background-color: white;}
.linenor{color: #333;
background-color: #F4F4F4;}
#lineTabs{list-style: none;
clear: right;
cursor: pointer;
z-index: 3;
position: relative;
margin-bottom: -1px;}
#lineTabs li{float: left;
width: 70px;
cursor: pointer;
padding-top: 0px;
padding-right: 0px;
padding-left: 0px;
padding-bottom: 0px;
list-style-type: none;
text-align: center;
line-height: 24px;
margin-bottom: -2px;
overflow: hidden;
margin-right: 2px;
font-size: 12px;}
.line_div{width:350px;overflow:hidden;border: 1px #E6E6E6 solid;height:auto;text-align:center;padding:10px 0}
.line_add{width:180px;margin:5px auto;line-height:25px;border:1px solid #D4D4D4;box-shadow:inset 0 2px 5px #eee;}
.line_new{width:350px;margin:10px auto}

.topt_temaiC1{ width:980px; margin:12px auto;height:60px;}
.topt_temaiC1 a{ display:block; float:left}
.nav_temai{ width:100%; height:40px; background-color:#FF4B4B}.nav_temai_center{ width:980px; margin:0 auto 0 auto}
.nav_temai a{ display:block; float:left; color:#FFF; height:40px; line-height:40px; width:145px; font-size:15px; text-align:center; font-weight:bold}
.nav_temai_d{ background-image:url(${ctxto}/assets/xdh/hd/hd201411170900/20140221_xstm_03.jpg); background-repeat:no-repeat; background-position:100px 6px}
.srhBtn input{background:url(${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_37.jpg) repeat-x;height:21px;border:1px #E6E6E6 solid;width:80px }
.srhBtn2 input{background:url(${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_37.jpg) repeat-x;height:21px;border:1px #E6E6E6 solid;width:80px }
#div1{display:block;clear:both;width:100%; position:fixed;bottom:-1px; left:0;_left:auto;_position:absolute;_bottom:auto;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop,10)||0)-(parseInt(this.currentStyle.marginBottom,10)||0))); display:none;background:#4490f7}
.green_tit{background:url(${ctxto}/assets/xdh/hd/hd201411170900/expo0625_01.jpg) no-repeat;width:979px;margin:0 auto;height:59px;text-align:center}
.green_tit span{font-size:28px;color:#FFFFFF;font-family:'黑体','微软雅黑','Arial','宋体';line-height:59px}
.yellow_tit{background:url(${ctxto}/assets/xdh/hd/hd201411170900/expo0625_02.jpg) no-repeat;width:467px;height:63px;text-align:center;margin:0 auto;margin-top:20px;margin-bottom:10px}
.yellow_tit span{font-size:28px;color:#333333;font-family:'黑体','微软雅黑','Arial','宋体';line-height:63px;}
</style>
<link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_16.css?v=f4b44e79.css"></head>

<body>
<div id="Hproject">
	<div id="navigation" class="navirz">
		<ul>
			<li style="line-height:0px"><img src="${ctxto}/assets/xdh/hd/hd201411170900/xdh_01.jpg" style="margin-top:2px;"></li>
			<li style="line-height:0px;"><img src="${ctxto}/assets/xdh/hd/hd201411170900/cd130115_01.jpg" style="margin-top:2px;"></li>			
			<li><a href="http://www.xdhphoto.com" style="color:#FFFFFF;font-size:14px;text-decoration:none" rel="nofollow">首 页</a></li>
			
			<li><a href="${ctxto}/assets/xdh/hd/hd201411170900/成都婚博会官网_成都婚博会_成都婚博会索票_成都结婚展.htm" title="婚博会" class="arrNavi">婚博会</a></li>
			<li><a href="expo.php" title="全国婚博会" style="background: url(${ctxto}/assets/xdh/hd/hd201411170900/navigation_bg.jpg);" id="expo_ch">全国婚博会</a></li>
						<li><a href="http://cd.591wed.com/Hotel/?tg_src=&tg_type=&tg_item=hunbohui" title="婚宴酒店" style="color:#FFFFFF;font-size:14px;text-decoration:none" rel="nofollow">婚宴酒店</a></li>
						
			<li><a href="http://cd.591wed.com/4/?tg_src=&tg_type=&tg_item=hunbohui" title="婚纱摄影" style="color:#FFFFFF;font-size:14px;text-decoration:none" rel="nofollow">婚纱摄影</a></li>
			
			<li><a href="http://cd.591wed.com/2/?tg_src=&tg_type=&tg_item=hunbohui" title="婚庆服务" style="color:#FFFFFF;font-size:14px;text-decoration:none" rel="nofollow">婚庆服务</a></li>
			
			<li><a href="http://www.xdhphoto.com/xdh/article/37.html" title="婚戒首饰" style="color:#FFFFFF;font-size:14px;text-decoration:none" rel="nofollow">公司概况</a></li>
			
			<li><a href="http://www.xdhphoto.com/xdh/article/54.html" title="婚纱礼服" style="color:#FFFFFF;font-size:14px;text-decoration:none" rel="nofollow">联系我们</a></li> 
						
									
		</ul>
	</div>
</div>
<div class="bg_head">
	<p class="bg_hp hh1"></p>
    <p class="bg_hp hh2"></p>
    <p class="bg_hp hh3"></p>
    <p class="bg_hp hh4"></p>
    <div class="bg_hp hh6"><div class="divv7"><div class="divv8"><a href="http://www.xdhphoto.com" class="aa1" onclick="javascript:document.getElementById(&#39;iframe_expo&#39;).contentWindow.document.getElementById(&#39;name1&#39;).focus();"></a></div></div></div>
</div>
<div class="m_div">
	<div class="m1_div">
		<div style="width:955px;margin:5px auto"><a href="http://vg520.com/huodong/hunbohui/" target="_blank"><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_ads.jpg" width="955"></a></div>
	<div style="width:955px;margin:5px auto">
		<table width="955" id="table1">
		<tbody><tr>
		<td class="s_td">
		<h1>西都汇简介</h1>
			<p class="state">&nbsp;&nbsp;&nbsp;&nbsp;成都西都汇摄影器材城和成都西都汇婚纱婚庆城是四川西都汇商贸有限公司旗下全资子公司。<br/>&nbsp;&nbsp;&nbsp;&nbsp;目前商城提供专业摄影器材、数码产品、婚纱礼服、婚庆用品、男士礼服、儿童服饰、相框相册、背景道具、影楼彩妆、饰品、婚庆百货相关产品及影楼化妆摄影培训专业学校和婚庆公司等相关批发以及零售业务。
			</p>		
			
			
		</td>
			<td align="left">
			
			<p class="pp3" align="right"><span style="float:left;">历届西都汇活动</span><a href="http://www.xdhphoto.com/xdh/list/39.html" target="_blank"><span class="sp1">更多&gt;&gt;</span></a></p>
				<ul class="list_lijie" style=" font-family:&#39;宋体&#39;; font-size:12px; color:#333333;">
                    	<li style="padding-left:20px;">·2014天府杯影展</li>
                        <li>·西都汇九寨沟摄影作品</li>
						<li style="padding-left:20px;">·西都汇天台山独家摄影拍摄活动</li>
						<li>·“金色夕阳”老年摄影作品展</li>
						<li style="padding-left:20px;">·西都汇摄影器材城开业活动</li><!-- 
                        <li>·成都婚博会让你结婚准备变“轻松”</li> -->
						
            </ul>	
			</td>
			</tr>
	</tbody></table> 
	</div>
	<div class="hbh_bz h781">
		<h2>西都汇摄影器材城、西都汇婚纱婚庆城经营项目</h2>
		<div class="green_tit">
			<span>西都汇经营项目 让您省时、省力、省钱</span>
		</div>
	<ul class="xm_ul">
		<li>
		<a href="http://cd.591wed.com/Hotel/" target="_blank" title="婚宴酒店" rel="nofollow"><img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_09.jpg" alt="成都婚博会婚宴酒店"></a>
		<a href="http://cd.591wed.com/Hotel/" target="_blank" title="婚宴酒店" rel="nofollow" class="xm_cul_a">婚宴酒店</a></li>
		<li>
		<a href="http://cd.591wed.com/4/" target="_blank" title="婚纱摄影" rel="nofollow"><img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_10.jpg" alt="成都婚博会婚纱摄影"></a>
		<a href="http://cd.591wed.com/4/" target="_blank" ttitle="婚纱摄影" rel="nofollow" class="xm_cul_a">婚纱摄影</a></li>
		<li>
		<a href="http://cd.591wed.com/2/" target="_blank" title="婚庆公司" rel="nofollow"><img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_11.jpg" alt="成都婚博会婚庆公司"></a>
		<a href="http://cd.591wed.com/2/" target="_blank" title="婚庆公司" rel="nofollow" class="xm_cul_a">婚庆公司</a></li>
		<li>
		<a href="http://cd.591wed.com/6/" target="_blank" title="钻戒对戒" rel="nofollow"><img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_12.jpg" alt="成都婚博会钻戒对戒"></a>
		<a href="http://cd.591wed.com/6/" target="_blank" title="钻戒对戒" rel="nofollow" class="xm_cul_a">钻戒对戒</a></li>
		<li>
		<a href="http://cd.591wed.com/5/" target="_blank" title="婚纱礼服" rel="nofollow"><img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_13.jpg" alt="成都婚博会婚纱礼服"></a>
		<a href="http://cd.591wed.com/5/" target="_blank" title="婚纱礼服" rel="nofollow" class="xm_cul_a">婚纱礼服</a></li>
		<li>
		<img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_14.jpg" alt="成都婚博会家装建材">
		<a title="家装建材" rel="nofollow" class="xm_cul_a">家装建材</a></li>
		<li>
		<a title="婚车服务" rel="nofollow"><img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_15.jpg" alt="成都婚博会婚车服务"></a>
		<a target="_blank" title="婚车服务" rel="nofollow" class="xm_cul_a">婚车服务</a></li>
		<li>
		<img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_16.jpg" alt="成都婚博会婚礼用品">
		<a title="婚礼用品" rel="nofollow" class="xm_cul_a">婚礼用品</a></li>
		<li>
		<a href="http://cd.591wed.com/9/" target="_blank" title="喜糖喜酒" rel="nofollow"><img src="${ctxto}/assets/xdh/hd/hd201411170900/exposh_new_17.jpg" alt="成都婚博会喜糖喜酒"></a>
		<a href="http://cd.591wed.com/9/" target="_blank" title="喜糖喜酒" rel="nofollow" class="xm_cul_a">喜糖喜酒</a></li>
	</ul></div>
	
	<div class="hbh_bz"><h2>西都汇摄影器材城、西都汇婚纱婚庆城保障</h2>
		<div class="green_tit">
			<span>西都汇消费保障</span>
		</div>
        
		<img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_12.jpg" alt="西都汇消费承诺" class="img30p">
        
	</div>
	<div class="hbh_bz h680">
	<h2>西都汇摄影器材城、西都汇婚纱婚庆城地图</h2>
	<div class="green_tit">
			<span>西都汇摄影器材城、西都汇婚纱婚庆城地图</span>
		</div>
	<table>
		<tbody><tr>
			<td width="500" align="center">
			<img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_08.jpg" alt="成都婚博会展馆图">
			</td>
			<td>
				<div style="margin:0 auto;width:350px;padding:20px">
				<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_09.jpg"></p>
				<p style="margin-bottom:10px"><span style="font-size:18px;font-family:&#39;黑体&#39;,&#39;微软雅黑&#39;,&#39;宋体&#39;">乘坐地铁线路</span><br>地铁1号线，在火车北站-c出口前行50米直达西都汇</p>
				<p style="margin-bottom:10px"><span style="font-size:18px;font-family:&#39;黑体&#39;,&#39;微软雅黑&#39;,&#39;宋体&#39;">乘坐公交线路</span><br>2路 16路 24路 27路 28路 303路 308路 55路 34路 54路 57路 59路 64路 65路 70路 73路 9路 80路等</p>
				<p><span style="font-size:18px;font-family:&#39;黑体&#39;,&#39;微软雅黑&#39;,&#39;宋体&#39;">交通路线查询</span></p>
				<div class="line_new">
	<ul id="lineTabs">
		
		<li class="lineact" >公交线路</li>
		<li class="linenor" >自驾线路</li>
		
	</ul>
	<div style="clear:both"></div>
	
	<div class="line_div" id="lineTabs_Content0">
		终点站：火车北站&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="http://map.baidu.com/" target="_blank"><img src="${ctxto}/assets/xdh/hd/hd201411170900/query.jpg"/></a>
		</div>
	
	<p style="margin-bottom:10px;margin-top:10px;line-height:25px">【西都汇摄影器材、婚纱婚庆咨询群】qq群297058820，<br>
快来加入我们，轻松筹备你的摄影器材，婚纱婚庆相关用品吧！</p>
</div>
				
			</div></td>
		</tr>
	</tbody></table>
	
	</div>
	<div class="hbh_bz">
	<h2>西都汇摄影器材城、西都汇婚纱婚庆城回顾</h2>
	<div class="green_tit">
			<span>西都汇摄影器材城、西都汇婚纱婚庆城火爆批发采购现场回顾</span>
		</div>
	<div class="divv2">
		
		
		
		<div class="img_ci">
			<h3>西都汇批发采购现场回顾</h3>
			<div class="yellow_tit">
						<span>西都汇批发采购现场回顾</span>
					</div>
			<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expo0626_10.jpg"></p>
			
		</div>
		
		
		<div class="img_ci">
			<h3>部分商家展示</h3>
			<div class="yellow_tit">
						<span>部分商家展示</span>
					</div>
			<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_10.jpg"></p>
			<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_0630_11.jpg"></p>
			<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_1017_02.jpg"></p>
			<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_1017_03.jpg"></p>
			<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_1017_04.jpg"></p>
			<p><img src="${ctxto}/assets/xdh/hd/hd201411170900/expocd_1017_05.jpg"></p>
		</div>
		
		</div>
	</div>
	<div class="green_tit">
			<span>西都汇历届活动商家公示(排名不论先后顺序)</span>
		</div>
		<div style="width:978px;  margin:10px auto;overflow:hidden;text-align:center;height:auto" class="hb_shouju">
	<ul>
<li>爱丽丝婚纱礼服馆</li>
<li>依贝姿精品婚纱礼服</li>
<li>影响婚礼花艺</li>
<li>羽梦婚纱</li>
<li>媛缘精品婚纱</li>
<li>精蕊婚庆</li>
<li>顺鑫韩派男士礼服</li>
<li>天府喜庆</li>
<li>芊芊婚庆</li>
<li>欧丽莎国际婚纱礼服</li>
<li>圣迪奥婚纱礼服</li>
<li>圣希亚婚纱</li>
<li>柏俪婚纱礼服</li>
<li>卫东婚纱</li>
<li>佳丽婚纱礼服</li>
<li>最美的时光婚纱礼服馆</li>
<li>涵涵婚庆</li>
<li>香港依莲娜</li>
<li>欣芯婚庆</li>
<li>欣芯婚纱</li>
<li>鑫鸿韩派绅士礼服</li>
<li>西雅图婚纱</li>
<li>名媛婚纱</li>
<li>丽雅缘婚纱礼服</li>
<li>金宝婚纱</li>
<li>金创婚庆</li>
<li>成都爱诺依（ANOY)婚纱</li>
<li>成都云裳嫁衣（婚纱礼服）</li>
<li>涵涵婚纱</li>
<li>成都合喜婚纱批发部</li>
<li>星心背景道具店</li>
<li>站稳影楼用品店</li>
<li>星月照材</li>
<li>时代背景影楼用品</li>
<li>伟红相框</li>
<li>红鹰相框</li>
<li>千彩影像</li>
<li>汇聚彩妆</li>
<li>千久彩妆</li>
<li>诚信相框 沁心彩妆</li>
<li>欣芯化妆品</li>
<li>好摄彩影楼百货</li>
<li>银河二手相机</li>
<li>雅美后期制作公司</li>
<li>太鑫摄影器材行</li>
<li>丽丰摄影器材</li>
<li>成都方方摄影器材</li>
<li>成都鑫宏相机行</li>
<li>城名摄影器材店</li>
<li>金贝店</li>
<li>方宏数码</li>
<li>富诚摄影器材</li>
<li>成都好好摄影器材</li>
<li>成都毓果专业摄影器材店</li>
</ul>
	
	
</div>
	

  </div>
  <p class="pp4"><img src="${ctxto}/assets/xdh/hd/hd201411170900/expo_bottom.jpg"></p>
  <div class="divv5">
					<div class="divv4" style="">友情链接</div>
			<div class="youqing">
				<ul>
									<li><a href="http://www.meileche.com/" title="美乐信息" target="_blank">美乐信息</a></li>
									
								</ul>
			</div>
				<div style="clear:both"></div>
					<%-- <div class="divv6">西都汇批发专题</div>
			<div class="more_them"><a href="1000/Theme/" target="_blank" rel="nofollow">更多&gt;&gt;</a></div><a href="1000/Theme/" target="_blank" rel="nofollow">
			<div style="clear:both"></div>
			</a><div class="zhuanti"><a href="1000/Theme/" target="_blank" rel="nofollow">
					</a><ul><a href="1000/Theme/" target="_blank" rel="nofollow">
										</a><li><a href="1000/Theme/" target="_blank" rel="nofollow"></a><a href="1000/Theme/27565.html" title="冬季成都婚博打造一站式结婚大采购" target="_blank" style="float:left;display:block"><img src="${ctxto}/assets/xdh/hd/hd201411170900/1413015358.jpg" width="160" alt="冬季成都婚博打造一站式结婚大采购"></a><div><a href="1000/Theme/27565.html" title="冬季成都婚博打造一站式结婚大采购" target="_blank">冬季成都婚博打造一站式结婚大采购</a><br><span><a href="1000/Theme/27565.html" target="_blank">　　冬季成都婚博会时间定11月29-30日，成都婚博会地点在成都世纪城新会展中心盛大开幕。成都婚博会是成都地区最有影响力、参展企业最多、成交金额最大的行业盛典..</a></span></div></li>
										<li><a href="1000/Theme/27551.html" title="11月冬季成都婚博会一站式婚礼大采购！" target="_blank" style="float:left;display:block"><img src="${ctxto}/assets/xdh/hd/hd201411170900/1411895672.jpg" width="160" alt="11月冬季成都婚博会一站式婚礼大采购！"></a><div><a href="1000/Theme/27551.html" title="11月冬季成都婚博会一站式婚礼大采购！" target="_blank">11月冬季成都婚博会一站式婚礼大采购！</a><br><span><a href="1000/Theme/27551.html" target="_blank">　　11月29-30日成都(冬季)婚博会的大幕就要在世纪城新会展中心甜蜜开启啦！准新人们，对照你的筹婚计划书，看看结婚还有什么是需要采购的，和亲爱的TA一起来成都..</a></span></div></li>
										<li><a href="1000/Theme/27541.html" title="冬季成都婚博会现场内容精彩纷呈" target="_blank" style="float:left;display:block"><img src="${ctxto}/assets/xdh/hd/hd201411170900/1411639153.jpg" width="160" alt="冬季成都婚博会现场内容精彩纷呈"></a><div><a href="1000/Theme/27541.html" title="冬季成都婚博会现场内容精彩纷呈" target="_blank">冬季成都婚博会现场内容精彩纷呈</a><br><span><a href="1000/Theme/27541.html" target="_blank">　　由四川省婚庆行业协会、成都市博览局主办成都（冬季）婚博会11月29日在世纪城新会展盛大启幕。从成都婚博会组委会获悉，本届成都婚博会展览面积达2.2万平方米..</a></span></div></li>
										<li><a href="1000/Theme/27499.html" title="冬季成都婚博会索票网址、地址路线一览表" target="_blank" style="float:left;display:block"><img src="${ctxto}/assets/xdh/hd/hd201411170900/1410956878.jpg" width="160" alt="冬季成都婚博会索票网址、地址路线一览表"></a><div><a href="1000/Theme/27499.html" title="冬季成都婚博会索票网址、地址路线一览表" target="_blank">冬季成都婚博会索票网址、地址路线一览表</a><br><span><a href="1000/Theme/27499.html" target="_blank">　　冬季成都婚博会门票将于11月29日在成都世纪城新会展中心隆重开幕。本次成都婚博会的门票可以在成都婚博会官网免费索取 !2014成都婚博会举办时间为11月29日~3..</a></span></div></li>
									</ul>
			</div>
			<div style="clear:both"></div> --%>
			
	
	</div>	
	<div style="width:980px;margin:10px auto;text-align:right"><a href="http://www.xdhphoto.com/login" target="_blank" style="color:#666666">西都汇商家登录 &gt;&gt;</a></div><a href="http://www.xdhphoto.com/login" target="_blank" style="color:#666666">
	</a></div><a href="expo/" target="_blank" style="color:#666666">	
		
	

<div style="display: none;" id="div2"></div>
</a><div id="div1" style="display: none;"><a href="http://www.xdhphoto.com" target="_blank" style="color:#666666"></a><div class="divv7"><a href="http://www.xdhphoto.com" target="_blank" style="color:#666666"></a><div class="divv8"><a href="http://www.xdhphoto.com" target="_blank" style="color:#666666"></a><a href="http://www.xdhphoto.com" class="aa1" onclick="javascript:document.getElementById(&#39;iframe_expo&#39;).contentWindow.document.getElementById(&#39;name1&#39;).focus();"></a></div></div></div>
<div class="right_all" id="div3" style="display: none;">
<div class="bbq_ bbq_b" id="show_qq"><a style="color:#FF4B4B" href="http://wpa.qq.com/msgrd?v=3&uin=2542402132&site=qq&menu=yes" target="_blank"><img src="${ctxto}/assets/xdh/hd/hd201411170900/expo_right_new_02.gif"><br>在线咨询</a></div>
<div class="bbq_ bbq_b" id="show_qq"><a style="color:#FF4B4B" href="http://wpa.qq.com/msgrd?v=3&uin=1809568798&site=qq&menu=yes" target="_blank"><img src="${ctxto}/assets/xdh/hd/hd201411170900/expo_right_new_02.gif"><br>在线咨询</a></div>
<div class="bbq_ bbq_c"><p><a title="返回顶部" id="return_top" style="color:#FF4B4B"><img src="${ctxto}/assets/xdh/hd/hd201411170900/expo_right_new_04.jpg"><br>返回顶部</a>
</p></div>
</div>
<script>
$("#address_new").focus(function(){
		//alert("sssss");
		if($("#address_new").val()=="请准确输入能接收门票和礼品卡地址!"){
			$("#address_new").val("");
		}
	});
	
	$("#address_new").blur(function(){
		if($("#address_new").val()==""){
		$("#address_new").val("请准确输入能接收门票和礼品卡地址!");
			//alert("sssss");
		}
	});
	function get(id)
{
	return document.getElementById(id);
}
function check(){

	if(get('name1').value=="")
	{
		alert("请填写新郎姓名！");
		get('name1').focus();
		return false;
	}
	if(get('name2').value=="")
	{
		alert("请填写新娘姓名！");
		get('name2').focus();
		return false;
	}
	
	if(get('phone1').value=="" || get('phone1').value.length!=11 || get('phone1').value.match(/[^\d]/))
	{
		alert("请正确填写新郎手机！");
		get('phone1').focus();
		return false;
	}
	if(get('phone2').value=="" || get('phone2').value.length!=11 || get('phone2').value.match(/[^\d]/))
	{
		alert("请正确填写新娘手机！");
		get('phone2').focus();
		return false;
	}
	if($("#address2").val() =="区域"){
			alert("请选择您的所在地区！");
			return false;
	}
	if(get('address_new').value=="" || get('address_new').value=="请准确输入能接收门票和礼品卡地址!" || DataLength(get('address_new').value)<10)
	{
		alert("请准确输入能接收门票和礼品卡地址!");
		get('address_new').focus();
		return false;
	}
	$("#order_sh").attr("disabled",true);
	return true;
}
</script>



<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-3140126-1']);
  _gaq.push(['_setDomainName', '591wed.com']);
  _gaq.push(['_addOrganic', 'soso', 'w']);
  _gaq.push(['_addOrganic', 'sogou', 'query']);
  _gaq.push(['_addOrganic', 'youdao', 'q']);
  _gaq.push(['_addOrganic', 'so.360.cn', 'q']);
  _gaq.push(['_addOrganic', 'vnet', 'kw']);
  _gaq.push(['_addOrganic', '3721', 'name']);
  _gaq.push(['_addOrganic', 'www.baidu.com', 'word']);
  _gaq.push(['_addOrganic', 'm.baidu.com', 'word']);
  _gaq.push(['_addOrganic', 'wap.baidu.com', 'word']);
  _gaq.push(['_addOrganic', 'image.baidu.com', 'word']);
  _gaq.push(['_addOrganic', 'cache.baidu.com', 'query']);
  _gaq.push(['_addOrganic', 'map.baidu.com']);
  _gaq.push(['_addOrganic', 'so.com', 'q']);
  _gaq.push(['_trackPageview']);


  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? "https://" : "http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30030259'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30030259' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_30030259"></span><script src="${ctxto}/assets/xdh/hd/hd201411170900/c.php" type="text/javascript"></script>




</body></html>