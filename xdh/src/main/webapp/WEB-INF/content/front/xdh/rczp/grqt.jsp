<%@page import="org.guess.showcase.cms.controller.RecruitController"%>
<%@page import="org.guess.showcase.cms.model.Recruit"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<ul>
	<c:forEach var="gr" items="${page5.result }">
		<li><a href="${ctx}/xdh/grdetail/${gr.id}.html" title="${gr.myname}-求职${recruit.position}">[${gr.place}]-${gr.myname}-<span style="color:#7cb101;font-size:14px;">求职${gr.position}</span></a></li>
	</c:forEach>
</ul>