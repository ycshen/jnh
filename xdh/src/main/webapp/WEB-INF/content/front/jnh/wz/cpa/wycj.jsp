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
		font: 14px Microsoft Yahei,Verdana,宋体,sans-serif;
		height: 24px;
		vertical-align: middle;
		
	}
	.main_div_good_detail_con{
	
	}  
	.main_div_form {
		width: 100%;
		margin: 10px 0px 10px 0px;
		text-align: center;
	} 
</style>
<script type="text/javascript">
	function back(){
		window.location.href = "${ctx}/wz/kanjia";
		}
</script>
</head>
<body>
	<div class="main_div">
		<div class="main_div_form">
		<form>
		  <div class="form-group">
		    <input type="text" class="form-control" id="txtName" placeholder="请输入用户名">
		  </div>
		  <div class="form-group">
		    <input type="text" class="form-control" id="txtPhone" placeholder="请输入手机号">
		  </div>
		  
		  <button type="submit" class="btn btn-danger">报名参与</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <button onclick="back();" type="button" class="btn btn-success">返回</button>
		</form>
		</div>
		<div class="main_div_good_detail">
				<div class="main_div_good_detail_title">
					活动规则
				</div>
				<div class="main_div_good_detail_con">
				
				</div>
			</div>
	</div>
</body>
</html>