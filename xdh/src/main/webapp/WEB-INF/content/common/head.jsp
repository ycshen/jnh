<%@ page contentType="text/html;charset=UTF-8"%>
<%
	
	String domain = request.getRequestURL().toString();
	String ctx = "";
	if(domain == null || domain == ""){
		ctx = "/52jnh";
	}else if(domain.contains("http://www.52jnh.com/52jnh/")){
		ctx = "";
	}else if(domain.contains("http://localhost:8080/52jnh/")){
		ctx = "/52jnh";
	}
	
	request.setAttribute("ctx", ctx);
	request.setAttribute("domain", domain);
%>