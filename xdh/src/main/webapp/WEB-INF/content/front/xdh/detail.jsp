<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../jnh/common/head.jsp"%>
<html>
<head>
<title></title>
 <meta name="decorator" content="cms_xdh" /> 
<style type="text/css">
	
</style>
</head>
<body>
<div style="width:100%;height:auto;float:left;">
		
		<div style="width:1000px;margin-left:auto;margin-right:auto;">
			<div>
				<%@ include file="category.jsp"%>
				<div style="width:800px;float:left;">
					<h2>${obj.title}</h2>
					<p align="center" style="font-size:14px;font-family: 微软雅黑, 'Microsoft YaHei';">
					发布时间：<fmt:formatDate value="${obj.createDate }" pattern="yyyy-MM-dd hh:MM:ss"/> &nbsp;&nbsp;&nbsp;&nbsp;
					访问量：${obj.hits }&nbsp;&nbsp;&nbsp;&nbsp;
					作者：${obj.createBy.loginId }
					</p>
					<div style="padding:20px;width:760px;">
						${obj.content}
					</div>
					<p/>
					<div style="width:760px;font-size:16px; line-heght:48px;padding:20px;font-family: 微软雅黑, 'Microsoft YaHei';">
						<div style="float:left;width: auto; height: 30px;">标签：</div>
						<c:forEach items="${labelList}" var="label">
							<div style="float:left;width: auto; height: 30px; background-color: #3ec0c0;color:#fff;margin-right: 20px;
							line-height: 30px;padding:0px 15px 0px 15px;border-radius: 5px;">${label}</div>
						</c:forEach>
					</div>
					<script type="text/javascript">
    /*728*90 创建于 2015-12-04*/
    var cpro_id = "u2432834";
</script>
<script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
					
				</div>
			</div>
		</div>
		<%@ include file="layouts/bTip/bTipAndAddress.jsp"%>
		<%@ include file="recomment.jsp"%>
	</div>
</body>
</html>