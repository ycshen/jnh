<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../../common/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>XXX正在砍价iPhone6，快来帮砍价</title>
<meta name="keywords" content="小青年网络科技有限公司" />
<meta name="description" content="小青年网络科技有限公司" />


<%@ include file="../plugins/bootstrap.jsp"%>
<style type="text/css">
	.main_div{
		width: 100%;
		height: auto;
		max-width: 600px;
	}
	.main_div_tou{
		
	}
	.main_div_tou_img{
		
	}
	.main_div_tou_time{
	}
	.main_div_tip{
		width: 100%;
	}
	
	.main_div_tip_wz{
		width: 100%;
		line-height: 24px;
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
		margin: 10px 0px 10px 0px;
	}
	.main_div_tip_btn{
		width: 100%;
		text-align: center;
		margin: 10px 0px 10px 0px;
	} 
	.main_div_tip_list{
		width: 100%;
	}
	.main_div_tip_list table tr td{
		text-align: center;
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
	}
	.main_div_good_detail{
		width: 100%;
	} 
	.main_div_good_detail_title{
		width: 100%;
		text-align: center;
		margin: 10px 0px 10px 0px;
		color: #fff;
		background-color: #d9534f ;
		font: 16px Microsoft Yahei,Verdana,宋体,sans-serif;
		height: 24px;
		vertical-align: middle;
		
	}
	.main_div_good_detail_con{
	
	}   
</style>
<script type="text/javascript">
	function join(){
		window.location.href = "${ctx}/wz/join";
		}
</script>
</head>
<body>
	<div class="main_div">
		<div class="main_div_tou">
			<div class="main_div_tou_img">
				 <img src="${ctx}/assets/img/cpa/tou.jpg" class="img-responsive">
			</div>
			<div class="main_div_tou_time">
				
			</div>
		</div>
		<div class="main_div_tip">
			<div class="main_div_tip_wz">
				亲爱的XXXX:<br/>
					&nbsp;&nbsp;&nbsp;&nbsp;已经有X位好友帮你砍价了，你当前的价格为XXXX元，离福利更近一步了，疯狂的要求好友帮忙吧！
			</div>
			<div class="main_div_tip_btn">
				<input onclick="join();" type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;帮砍一刀&nbsp;&nbsp;&nbsp;&nbsp;" class="btn btn-danger"/>&nbsp;&nbsp;&nbsp;&nbsp;
				<input onclick="join();"  type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;我要参加&nbsp;&nbsp;&nbsp;&nbsp;" class="btn btn-danger"/>
			</div>
			<div class="main_div_tip_list">
				<table class="table">
					<tr class="danger">
						<td>亲友团</td>
						<td>砍掉价格</td>
						<td>砍后价格</td>
					</tr>
					<tr>
						<td>老鼠爱大米</td>
						<td>33.56</td>
						<td>131</td>
					</tr>
					
					<tr>
						<td>老鼠爱大米</td>
						<td>33.56</td>
						<td>131</td>
					</tr>
					<tr>
						<td>老鼠爱大米</td>
						<td>33.56</td>
						<td>131</td>
					</tr>
				</table>
			</div>
			<div class="main_div_good_detail">
				<div class="main_div_good_detail_title">
					商品详情
				</div>
				<div class="main_div_good_detail_con">
				</div>
			</div>
			<div class="main_div_good_detail">
				<div class="main_div_good_detail_title">
					砍价排行榜
				</div>
				<div class="main_div_tip_list">
				<table class="table">
					<tr class="danger">
						<td>排行榜</td>
						<td>用户名</td>
						<td>价格</td>
					</tr>
					<tr>
						<td>1</td>
						<td>33.56</td>
						<td>131</td>
					</tr>
					
					<tr>
						<td>2</td>
						<td>33.56</td>
						<td>131</td>
					</tr>
					<tr>
						<td>3</td>
						<td>33.56</td>
						<td>131</td>
					</tr>
				</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>