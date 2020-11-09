<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<h1>navbarEx2</h1>
request 참조값: <%=System.identityHashCode(request) %>

<%= request instanceof HttpServletRequest %>
<%= request instanceof ServletRequestWrapper %>

<%
Object original =((ServletRequestWrapper) request).getRequest();
out.print(System.identityHashCode(original));
%>