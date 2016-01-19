<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title></title>
 <meta name="decorator" content="cms_xdh" /> 
<style type="text/css">
	
</style>
</head>
<body>
<div style="width:100%;height:auto;background-color:#3ec0c0;float:left;">
		<div style="width:1000px;margin-left:auto;margin-right:auto;">
			<div>
				<div style="width:1000px;float:left;">
					<div >
						<div>
							<div>
								${obj.content}
							</div>
							
						</div>
					</div>
					<div style="font-size:14px;color:#fff;padding:10px;padding-left:50px;width: 1000px;text-align:right;">访问量:${obj.hits}次</div>
				</div>
			</div>
		</div>
		<%@ include file="recomment.jsp"%>    
	</div>
	
</body>
</html>