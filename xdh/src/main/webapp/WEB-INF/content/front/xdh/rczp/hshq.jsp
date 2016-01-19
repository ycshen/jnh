<%@page import="org.guess.showcase.cms.controller.RecruitController"%>
<%@page import="org.guess.showcase.cms.model.Recruit"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<ul>
	<c:forEach var="recruit" items="${page1.result }">
		<li><a href="${ctx}/xdh/rcdetail/${recruit.id}.html" title="${recruit.company}-招聘${recruit.position}">[${recruit.place}]-${recruit.company}-<span style="color:#7cb101;font-size:14px;">招聘${recruit.position}</span></a></li>
	</c:forEach>	
</ul>